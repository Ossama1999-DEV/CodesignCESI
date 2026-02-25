library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity anemometre is
  generic (
    WINDOW_TICKS : natural := 500_000  -- par défaut 10ms @ 50MHz (pour simu rapide)
  );
  port (
    clk_50M            : in  std_logic;
    raz_n              : in  std_logic;
    in_freq_anemometre : in  std_logic;

    continu            : in  std_logic;
    start_stop         : in  std_logic;

    data_valid         : out std_logic;
    data_anemometre    : out std_logic_vector(7 downto 0);
    etat_dbg           : out std_logic_vector(2 downto 0)
  );
end entity;

architecture rtl of anemometre is

  type state_t is (S_IDLE, S_ARM, S_CLEAR, S_COUNT, S_LATCH, S_VALID_HOLD);
  signal state : state_t := S_IDLE;

  -- synchro + front montant
  signal ff1, ff2, ff2_d : std_logic := '0';
  signal pulse           : std_logic := '0';

  -- fenêtre
  signal tick_cnt : unsigned(31 downto 0) := (others=>'0');
  signal tick_end : std_logic := '0';

  -- compteurs
  signal live_cnt    : unsigned(15 downto 0) := (others=>'0'); -- compteur instantané
  signal latched_cnt : unsigned(15 downto 0) := (others=>'0'); -- résultat fenêtre

  signal data_valid_i : std_logic := '0';

  function sat8(x : unsigned(15 downto 0)) return unsigned is
  begin
    if x > to_unsigned(255, 16) then
      return to_unsigned(255, 8);
    else
      return resize(x, 8);
    end if;
  end function;

begin

  data_valid <= data_valid_i;

  -- sortie data_anemometre :
  -- - en continu : on montre le compteur live (ça bouge)
  -- - en monocoup : on montre la valeur figée (latched)
	with continu select
	  data_anemometre <= std_logic_vector(sat8(live_cnt))    when '1',
								std_logic_vector(sat8(latched_cnt)) when others;

  with state select
    etat_dbg <= "000" when S_IDLE,
                "001" when S_ARM,
                "010" when S_CLEAR,
                "011" when S_COUNT,
                "100" when S_LATCH,
                "101" when others;

  -- synchro + edge detect
  process(clk_50M)
  begin
    if rising_edge(clk_50M) then
      if raz_n='0' then
        ff1 <= '0'; ff2 <= '0'; ff2_d <= '0'; pulse <= '0';
      else
        ff1 <= in_freq_anemometre;
        ff2 <= ff1;
        ff2_d <= ff2;
        pulse <= ff2 and (not ff2_d);
      end if;
    end if;
  end process;

  -- timer fenêtre (actif en COUNT)
  process(clk_50M)
  begin
    if rising_edge(clk_50M) then
      if raz_n='0' then
        tick_cnt <= (others=>'0');
        tick_end <= '0';
      else
        tick_end <= '0';
        if state = S_COUNT then
          if tick_cnt = to_unsigned(WINDOW_TICKS-1, tick_cnt'length) then
            tick_cnt <= (others=>'0');
            tick_end <= '1';
          else
            tick_cnt <= tick_cnt + 1;
          end if;
        else
          tick_cnt <= (others=>'0');
        end if;
      end if;
    end if;
  end process;

  -- MAE
  process(clk_50M)
  begin
    if rising_edge(clk_50M) then
      if raz_n='0' then
        state        <= S_IDLE;
        live_cnt     <= (others=>'0');
        latched_cnt  <= (others=>'0');
        data_valid_i <= '0';

      else
        case state is

          when S_IDLE =>
            data_valid_i <= '0';
            live_cnt     <= (others=>'0');
            if (continu='1') or (start_stop='1') then
              state <= S_ARM;
            end if;

          when S_ARM =>
            state <= S_CLEAR;

          when S_CLEAR =>
            data_valid_i <= '0';
            live_cnt     <= (others=>'0');
            state        <= S_COUNT;

          when S_COUNT =>
            -- ✅ live compteur visible en continu
            if pulse='1' then
              live_cnt <= live_cnt + 1;
            end if;

            if tick_end='1' then
              state <= S_LATCH;
            end if;

          when S_LATCH =>
            -- ✅ on fige le résultat de la fenêtre
            latched_cnt <= live_cnt;
            state <= S_VALID_HOLD;

          when S_VALID_HOLD =>
            data_valid_i <= '1';

            if continu='1' then
              -- continu : on recommence une nouvelle fenêtre
              state <= S_CLEAR;
            else
              -- monocoup : on garde la valeur latched tant que start_stop=1
              if start_stop='0' then
                data_valid_i <= '0';
                state <= S_IDLE;
              end if;
            end if;

        end case;
      end if;
    end if;
  end process;

end architecture;