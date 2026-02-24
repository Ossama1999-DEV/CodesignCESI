-- ============================================================
--  anemometre (anemo.vhd)
--  Mesure fréquence 0..250 Hz sur fenêtre 1 seconde (clk 50MHz)
--  FSM: S_IDLE -> S_COUNT -> S_LATCH -> S_VALID
--  Interface Avalon:
--    Reg0 (addr 0): config[2:0] (R/W)
--       b0 = raz_n (0 = reset circuit)
--       b1 = continu
--       b2 = start/stop
--    Reg1 (addr 1): code[9:0] (R)
--       b9    = valid
--       b7..0 = data_anemometre
-- ============================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity anemometre is
  generic (
    CLK_HZ    : natural := 50_000_000; -- clk_50M
    WINDOW_S  : natural := 1;          -- fenêtre de mesure (secondes)
    -- Conversion freq -> vitesse : vitesse = freq * SCALE_NUM / SCALE_DEN
    -- Par défaut: 1:1 (donc data = freq saturée sur 8 bits)
    SCALE_NUM : natural := 1;
    SCALE_DEN : natural := 1
  );
  port (
    -- Horloge / reset global (FPGA)
    clk_50M   : in  std_logic;
    reset_n   : in  std_logic; -- reset FPGA global (actif à 0)

    -- Entrées capteur
    in_freq_anemometre : in std_logic; -- 0..250 Hz, asynchrone

    -- Entrées "pins" (optionnel si tu pilotes via Avalon)
    raz_n_in     : in std_logic; -- reset fonctionnel (actif à 0)
    continu_in   : in std_logic; -- 1 = continu
    start_stop_in: in std_logic; -- 1 = start

    -- Sorties directes
    data_valid     : out std_logic;
    data_anemometre: out std_logic_vector(7 downto 0);

    -- ========== Interface Avalon-MM (slave simple) ==========
    chipselect  : in  std_logic;
    write_n     : in  std_logic; -- 0 = write
    address     : in  std_logic_vector(2 downto 0);
    writedata   : in  std_logic_vector(31 downto 0);
    readdata    : out std_logic_vector(31 downto 0)
  );
end entity;

architecture rtl of anemometre is

  -- FSM
  type state_t is (S_IDLE, S_COUNT, S_LATCH, S_VALID);
  signal state : state_t := S_IDLE;

  -- Registres Avalon (config)
  signal cfg_raz_n     : std_logic := '1'; -- IMPORTANT: défaut à 1 sinon bloqué en reset
  signal cfg_continu   : std_logic := '0';
  signal cfg_start_stop: std_logic := '0';

  -- Signaux effectifs (pins + avalon)
  signal raz_n_eff      : std_logic;
  signal continu_eff    : std_logic;
  signal start_stop_eff : std_logic;

  -- Synchronisation entrée + edge detect
  signal anemo_ff1, anemo_ff2 : std_logic := '0';
  signal anemo_ff2_d          : std_logic := '0';
  signal pulse_in             : std_logic := '0'; -- 1 cycle sur front montant

  -- Tick 1 seconde
  constant TICKS_PER_WINDOW : natural := CLK_HZ * WINDOW_S;
  signal tick_cnt : unsigned(31 downto 0) := (others => '0');
  signal tick_1s  : std_logic := '0';

  -- Compteurs
  signal pulse_cnt       : unsigned(15 downto 0) := (others => '0'); -- large marge
  signal freq_hz_latched : unsigned(15 downto 0) := (others => '0');

  -- Sorties internes
  signal data_valid_i : std_logic := '0';
  signal data_i       : unsigned(7 downto 0) := (others => '0');

  -- Helpers
  function sat8(x : integer) return unsigned is
    variable r : unsigned(7 downto 0);
  begin
    if x < 0 then
      r := (others => '0');
    elsif x > 255 then
      r := to_unsigned(255, 8);
    else
      r := to_unsigned(x, 8);
    end if;
    return r;
  end function;

begin

  -- sorties
  data_valid      <= data_valid_i;
  data_anemometre <= std_logic_vector(data_i);

  -- Signaux effectifs:
  -- - raz_n : AND (si l’un reset => reset)
  -- - continu/start_stop : OR (commande possible par pins OU avalon)
  raz_n_eff       <= reset_n and raz_n_in and cfg_raz_n;
  continu_eff     <= continu_in or cfg_continu;
  start_stop_eff  <= start_stop_in or cfg_start_stop;

  -- =========================================================
  -- Avalon write : Reg0 config (addr 0)
  -- =========================================================
  process(clk_50M)
  begin
    if rising_edge(clk_50M) then
      if reset_n = '0' then
        cfg_raz_n      <= '1';
        cfg_continu    <= '0';
        cfg_start_stop <= '0';
      else
        if (chipselect = '1') and (write_n = '0') then
          if address = "000" then
            cfg_raz_n      <= writedata(0);
            cfg_continu    <= writedata(1);
            cfg_start_stop <= writedata(2);
          end if;
        end if;
      end if;
    end if;
  end process;

  -- =========================================================
  -- Avalon read : Reg0 config / Reg1 code
  -- =========================================================
	process(address, cfg_raz_n, cfg_continu, cfg_start_stop, data_valid_i, data_i)
	  variable r : std_logic_vector(31 downto 0);
	begin
	  r := (others => '0');

	  case address is
		 when "000" =>
			r(0) := cfg_raz_n;
			r(1) := cfg_continu;
			r(2) := cfg_start_stop;

		 when "001" =>
			r(9)          := data_valid_i;
			r(7 downto 0) := std_logic_vector(data_i);

		 when others =>
			null;
	  end case;

	  readdata <= r;
	end process;

  -- =========================================================
  -- Synchroniseur + détection front montant
  -- =========================================================
  process(clk_50M)
  begin
    if rising_edge(clk_50M) then
      if raz_n_eff = '0' then
        anemo_ff1   <= '0';
        anemo_ff2   <= '0';
        anemo_ff2_d <= '0';
        pulse_in    <= '0';
      else
        anemo_ff1   <= in_freq_anemometre;
        anemo_ff2   <= anemo_ff1;
        anemo_ff2_d <= anemo_ff2;

        -- pulse 1 cycle sur front montant
        pulse_in <= anemo_ff2 and (not anemo_ff2_d);
      end if;
    end if;
  end process;

  -- =========================================================
  -- Diviseur / tick de fenêtre (1 seconde par défaut)
  -- tick_1s pulse 1 cycle à la fin de la fenêtre
  -- =========================================================
  process(clk_50M)
  begin
    if rising_edge(clk_50M) then
      if raz_n_eff = '0' then
        tick_cnt <= (others => '0');
        tick_1s  <= '0';
      else
        tick_1s <= '0';
        if state = S_COUNT then
          if tick_cnt = to_unsigned(TICKS_PER_WINDOW - 1, tick_cnt'length) then
            tick_cnt <= (others => '0');
            tick_1s  <= '1';
          else
            tick_cnt <= tick_cnt + 1;
          end if;
        else
          -- pas en COUNT => on garde le compteur à 0
          tick_cnt <= (others => '0');
        end if;
      end if;
    end if;
  end process;

  -- =========================================================
  -- FSM + compteur impulsions + latch + conversion
  -- =========================================================
  process(clk_50M)
    variable v_speed : integer;
    variable v_freq  : integer;
  begin
    if rising_edge(clk_50M) then
      if raz_n_eff = '0' then
        state          <= S_IDLE;
        pulse_cnt      <= (others => '0');
        freq_hz_latched<= (others => '0');
        data_valid_i   <= '0';
        data_i         <= (others => '0');
      else

        -- règle spec : si start_stop retombe à 0 (et pas en continu) => valid à 0 + retour idle
        if (continu_eff = '0') and (start_stop_eff = '0') then
          state        <= S_IDLE;
          data_valid_i <= '0';
          pulse_cnt    <= (others => '0');
        else
          case state is

            when S_IDLE =>
              data_valid_i <= '0';
              pulse_cnt    <= (others => '0');

              if (start_stop_eff = '1') or (continu_eff = '1') then
                state <= S_COUNT;
              end if;

            when S_COUNT =>
              -- comptage impulsions pendant la fenêtre
              if pulse_in = '1' then
                pulse_cnt <= pulse_cnt + 1;
              end if;

              if tick_1s = '1' then
                state <= S_LATCH;
              end if;

            when S_LATCH =>
              -- fige la fréquence (Hz) = nb impulsions en 1 s
              freq_hz_latched <= pulse_cnt;
              pulse_cnt       <= (others => '0');

              -- conversion freq -> vitesse (8 bits), saturée
              v_freq  := to_integer(freq_hz_latched);
              -- éviter division par 0
              if SCALE_DEN = 0 then
                v_speed := v_freq;
              else
                v_speed := (v_freq * integer(SCALE_NUM)) / integer(SCALE_DEN);
              end if;
              data_i <= sat8(v_speed);

              state <= S_VALID; -- immédiat (1 cycle)

            when S_VALID =>
              data_valid_i <= '1';

              if continu_eff = '1' then
                -- boucle : une mesure toutes les secondes
                state <= S_COUNT;
              else
                -- monocoup : on reste VALID tant que start_stop=1,
                -- et on revient à IDLE quand start_stop retombe à 0 (géré en haut du process)
                state <= S_VALID;
              end if;

          end case;
        end if;

      end if;
    end if;
  end process;

end architecture;