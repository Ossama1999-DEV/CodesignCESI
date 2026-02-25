library ieee;
use ieee.std_logic_1164.all;

entity TB_anemometre is
end entity;

architecture tb of TB_anemometre is

  signal clk_50M : std_logic := '0';
  signal raz_n   : std_logic := '0';

  signal in_freq_anemometre : std_logic := '0';
  signal continu    : std_logic := '0';
  signal start_stop : std_logic := '0';

  signal data_valid      : std_logic;
  signal data_anemometre : std_logic_vector(7 downto 0);
  signal etat_dbg        : std_logic_vector(2 downto 0);

  constant CLK_PERIOD : time := 20 ns; -- 50 MHz

  signal gen_hz : integer := 0;

begin

  dut: entity work.anemometre
    generic map (
      WINDOW_TICKS => 500_000  -- 10ms
    )
    port map (
      clk_50M => clk_50M,
      raz_n   => raz_n,
      in_freq_anemometre => in_freq_anemometre,
      continu => continu,
      start_stop => start_stop,
      data_valid => data_valid,
      data_anemometre => data_anemometre,
      etat_dbg => etat_dbg
    );

  clk_50M <= not clk_50M after CLK_PERIOD/2;

  -- générateur fréquence
  freq_gen: process
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

  -- scénario : continu puis monocoup puis continu
  stim: process
  begin
    -- reset
    raz_n <= '0';
    continu <= '0';
    start_stop <= '0';
    gen_hz <= 0;
    wait for 200 ns;
    raz_n <= '1';
    wait for 2 ms;

    -- 1) CONTINU : data_anemometre doit MONTER (compteur live)
    gen_hz <= 500;
    continu <= '1';
    wait for 30 ms;     -- plusieurs fenêtres, et surtout live_cnt bouge

    -- 2) Stop continu
    continu <= '0';
    wait for 5 ms;

    -- 3) MONOCOUP : on lance start_stop => à la fin data_valid=1 et data figée
    gen_hz <= 300;
    start_stop <= '1';
    wait for 15 ms;     -- 10ms + marge
    -- garde start_stop un peu pour voir HOLD
    wait for 10 ms;
    start_stop <= '0';
    wait for 5 ms;

    -- 4) Re-CONTINU avec autre freq (re-montera)
    gen_hz <= 800;
    continu <= '1';
    wait for 30 ms;

    continu <= '0';
    wait;

  end process;

end architecture;