library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity anemometre is
  generic (
    CLK_HZ   : natural := 50_000_000; -- 50 MHz
    WINDOW_S : natural := 1           -- fenêtre de mesure en secondes
  );
  port (
    -- Avalon + clk/reset
    clk        : in  std_logic;
    chipselect : in  std_logic;
    write_n    : in  std_logic; -- 0=write
    reset_n    : in  std_logic; -- reset global (actif bas)
    writedata  : in  std_logic_vector(31 downto 0);
    address    : in  std_logic_vector(1 downto 0);
    readdata   : out std_logic_vector(31 downto 0);

    -- entrée capteur
    FREQ_IN    : in  std_logic;

    -- sorties “fonctionnelles”
    data_valid      : out std_logic;
    data_anemometre : out std_logic_vector(7 downto 0);

    -- debug pour visualiser la MAE facilement dans ModelSim
    etat_dbg : out std_logic_vector(1 downto 0)  -- 00 IDLE, 01 COUNT, 10 LATCH, 11 VALID
  );
end entity;

architecture rtl of anemometre is

  -- ====== config (écrite via Avalon) ======
  -- b0=raz_n (reset fonctionnel actif bas)
  -- b1=continu
  -- b2=start_stop
  signal cfg : std_logic_vector(2 downto 0) := "001"; -- raz_n=1 par défaut

  signal raz_n      : std_logic;
  signal continu    : std_logic;
  signal start_stop : std_logic;

  -- ====== grosse MAE ======
  type state_t is (S_IDLE, S_COUNT, S_LATCH, S_VALID);
  signal state : state_t := S_IDLE;

  -- synchronisation + front montant
  signal f1, f2, f2_d : std_logic := '0';
  signal pulse_in     : std_logic := '0';

  -- compteurs
  constant TICKS_PER_WINDOW : natural := CLK_HZ * WINDOW_S;
  signal tick_cnt  : unsigned(31 downto 0) := (others => '0');
  signal pulse_cnt : unsigned(15 downto 0) := (others => '0');

  -- sorties internes
  signal data_reg  : unsigned(7 downto 0) := (others => '0');
  signal valid_reg : std_logic := '0';

  function sat8(u : unsigned) return unsigned is
  begin
    if u'length <= 8 then
      return resize(u, 8);
    else
      if u > to_unsigned(255, u'length) then
        return to_unsigned(255, 8);
      else
        return resize(u, 8);
      end if;
    end if;
  end function;

begin

  raz_n      <= cfg(0);
  continu    <= cfg(1);
  start_stop <= cfg(2);

  data_valid      <= valid_reg;
  data_anemometre <= std_logic_vector(data_reg);

  -- debug état
  with state select
    etat_dbg <= "00" when S_IDLE,
                "01" when S_COUNT,
                "10" when S_LATCH,
                "11" when others; -- S_VALID

  -- ============================
  -- Avalon write (config)
  -- ============================
  process(clk)
  begin
    if rising_edge(clk) then
      if reset_n = '0' then
        cfg <= "001"; -- raz_n=1, continu=0, start_stop=0
      else
        if chipselect='1' and write_n='0' and address="00" then
          cfg <= writedata(2 downto 0);
        end if;
      end if;
    end if;
  end process;

  -- ============================
  -- Avalon read (combinatoire)
  -- addr 00 : config
  -- addr 01 : code -> bit9=valid, bits7..0=data
  -- ============================
  process(address, cfg, valid_reg, data_reg)
    variable r : std_logic_vector(31 downto 0);
  begin
    r := (others => '0');
    case address is
      when "00" =>
        r(2 downto 0) := cfg;
      when "01" =>
        r(9)          := valid_reg;
        r(7 downto 0) := std_logic_vector(data_reg);
      when others =>
        null;
    end case;
    readdata <= r;
  end process;

  -- ==========================================================
  -- GROSSE MAE (un seul process): sync + comptage + décisions
  -- ==========================================================
  process(clk)
    variable v_freq_u16 : unsigned(15 downto 0);
  begin
    if rising_edge(clk) then

      -- reset global OU reset fonctionnel
      if (reset_n='0') or (raz_n='0') then
        state     <= S_IDLE;
        f1        <= '0'; f2 <= '0'; f2_d <= '0';
        pulse_in  <= '0';
        tick_cnt  <= (others => '0');
        pulse_cnt <= (others => '0');
        data_reg  <= (others => '0');
        valid_reg <= '0';

      else
        -- (1) synchroniseur + pulse front montant
        f1 <= FREQ_IN;
        f2 <= f1;
        f2_d <= f2;
        pulse_in <= f2 and (not f2_d);

        -- (2) “abort” monocoup : si pas continu et start_stop=0 -> retour IDLE + valid=0
        if (continu='0') and (start_stop='0') then
          state     <= S_IDLE;
          tick_cnt  <= (others => '0');
          pulse_cnt <= (others => '0');
          valid_reg <= '0';

        else
          case state is

            when S_IDLE =>
              valid_reg <= '0';
              tick_cnt  <= (others => '0');
              pulse_cnt <= (others => '0');

              if (continu='1') or (start_stop='1') then
                state <= S_COUNT;
              end if;

            when S_COUNT =>
              -- comptage impulsions
              if pulse_in='1' then
                pulse_cnt <= pulse_cnt + 1;
              end if;

              -- comptage temps fenêtre
              if tick_cnt = to_unsigned(TICKS_PER_WINDOW-1, tick_cnt'length) then
                tick_cnt <= (others => '0');
                state <= S_LATCH;
              else
                tick_cnt <= tick_cnt + 1;
              end if;

            when S_LATCH =>
              -- fréquence (Hz) = nb d'impulsions sur 1 seconde
              v_freq_u16 := pulse_cnt;

              data_reg  <= sat8(resize(v_freq_u16, 16));
              valid_reg <= '1';

              -- reset pour prochaine mesure
              pulse_cnt <= (others => '0');
              tick_cnt  <= (others => '0');

              state <= S_VALID;

            when S_VALID =>
              valid_reg <= '1';

              if continu='1' then
                -- mode continu : relance une nouvelle fenêtre
                state <= S_COUNT;
              else
                -- monocoup : reste VALID tant que start_stop=1
                state <= S_VALID;
              end if;

          end case;
        end if;
      end if;
    end if;
  end process;

end architecture;