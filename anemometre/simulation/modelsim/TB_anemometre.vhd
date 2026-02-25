library ieee;
use ieee.std_logic_1164.all;

entity TB_anemometre is end;
architecture tb of TB_anemometre is

  signal clk_50M : std_logic := '0';
  signal raz_n   : std_logic := '0';

  signal in_freq_anemometre : std_logic := '0';
  signal continu    : std_logic := '0';
  signal start_stop : std_logic := '0';

  signal data_valid      : std_logic;
  signal data_anemometre : std_logic_vector(7 downto 0);
  signal etat_dbg        : std_logic_vector(1 downto 0);

  constant CLK_PERIOD : time := 20 ns;

  signal gen_hz : integer := 0;

begin
  -- DUT
  dut: entity work.anemometre
    generic map (
      CLK_HZ   => 50_000_000,
      WINDOW_S => 1
    )
    port map (
      clk_50M => clk_50M,
      raz_n => raz_n,
      in_freq_anemometre => in_freq_anemometre,
      continu => continu,
      start_stop => start_stop,
      data_valid => data_valid,
      data_anemometre => data_anemometre,
      etat_dbg => etat_dbg
    );

  -- clock
  clk_50M <= not clk_50M after CLK_PERIOD/2;

  -- freq generator
  process
    variable halfp : time;
  begin
    wait for 1 ms;
    loop
      if gen_hz <= 0 then
        in_freq_anemometre <= '0';
        wait for 1 ms;
      else
        halfp := (1 sec / gen_hz) / 2;
        in_freq_anemometre <= '1'; wait for halfp;
        in_freq_anemometre <= '0'; wait for halfp;
      end if;
    end loop;
  end process;

  -- scenario
  process
  begin
    -- reset
    raz_n <= '0';
    continu <= '0';
    start_stop <= '0';
    gen_hz <= 0;
    wait for 200 ns;
    raz_n <= '1';
    wait for 10 ms;

    -- MONOCOUP 10 Hz  -> data_anemometre doit devenir 10 après 1s
    gen_hz <= 10;
    start_stop <= '1';
    wait for 1.2 sec;
    start_stop <= '0';
    wait for 200 ms;

    -- MONOCOUP 200 Hz -> data_anemometre doit devenir 200 après 1s
    gen_hz <= 200;
    start_stop <= '1';
    wait for 1.2 sec;
    start_stop <= '0';
    wait;

  end process;

end architecture;