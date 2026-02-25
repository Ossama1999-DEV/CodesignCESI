library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TB_anemometre is
end entity;

architecture tb of TB_anemometre is

  signal clk        : std_logic := '0';
  signal chipselect : std_logic := '0';
  signal write_n    : std_logic := '1';
  signal reset_n    : std_logic := '0';
  signal writedata  : std_logic_vector(31 downto 0) := (others => '0');
  signal address    : std_logic_vector(1 downto 0) := "00";
  signal readdata   : std_logic_vector(31 downto 0);

  signal FREQ_IN : std_logic := '0';

  signal data_valid      : std_logic;
  signal data_anemometre : std_logic_vector(7 downto 0);
  signal etat_dbg        : std_logic_vector(1 downto 0);

  constant CLK_PERIOD : time := 20 ns; -- 50 MHz

  -- freq gen
  signal gen_run  : std_logic := '0';
  signal gen_freq : natural := 0;

  procedure drive_freq(signal s : out std_logic; signal run : in std_logic; f_hz : natural) is
    variable halfp : time;
    variable v : std_logic := '0';
  begin
    if f_hz = 0 then
      s <= '0';
      while run='1' loop wait for 1 ms; end loop;
    else
      halfp := (1 sec / f_hz) / 2;
      s <= '0';
      while run='1' loop
        v := not v; s <= v; wait for halfp;
      end loop;
      s <= '0';
    end if;
  end procedure;

  procedure write_cfg(signal clk : in std_logic;
                      signal chipselect : out std_logic;
                      signal write_n    : out std_logic;
                      signal address    : out std_logic_vector(1 downto 0);
                      signal writedata  : out std_logic_vector(31 downto 0);
                      raz_n_bit, continu_bit, start_bit : std_logic) is
    variable d : std_logic_vector(31 downto 0);
  begin
    d := (others => '0');
    d(0) := raz_n_bit;
    d(1) := continu_bit;
    d(2) := start_bit;

    address <= "00";
    writedata <= d;
    chipselect <= '1';
    write_n <= '0';
    wait until rising_edge(clk);
    chipselect <= '0';
    write_n <= '1';
  end procedure;

begin

  dut: entity work.anemometre
    generic map (
      CLK_HZ => 50_000_000,
      WINDOW_S => 1
    )
    port map (
      clk => clk,
      chipselect => chipselect,
      write_n => write_n,
      reset_n => reset_n,
      writedata => writedata,
      address => address,
      readdata => readdata,
      FREQ_IN => FREQ_IN,
      data_valid => data_valid,
      data_anemometre => data_anemometre,
      etat_dbg => etat_dbg
    );

  -- clock
  clk_p: process
  begin
    clk <= '0'; wait for CLK_PERIOD/2;
    clk <= '1'; wait for CLK_PERIOD/2;
  end process;

  -- freq generator (boucle)
  gen_p: process
  begin
    while true loop
      wait until gen_run='1';
      drive_freq(FREQ_IN, gen_run, gen_freq);
      wait for 0 ns;
    end loop;
  end process;

  stim: process
  begin
    report "=== TB START ===" severity note;

    -- reset
    reset_n <= '0';
    gen_run <= '0';
    wait for 200 ns;
    reset_n <= '1';
    wait for 200 ns;

    -- config initial: raz_n=1, continu=0, start=0
    write_cfg(clk, chipselect, write_n, address, writedata, '1','0','0');
    wait for 1 ms;

    -- ---------------------------
    -- Monocoup 10 Hz
    -- ---------------------------
    gen_freq <= 10;
    gen_run <= '1';
    write_cfg(clk, chipselect, write_n, address, writedata, '1','0','1'); -- start_stop=1

    wait for 1.2 sec; -- fenêtre 1s + marge

    assert data_valid='1' severity error;
    assert unsigned(data_anemometre)=to_unsigned(10,8)
      report "FAIL: expected data=10" severity error;

    -- stop monocoup
    write_cfg(clk, chipselect, write_n, address, writedata, '1','0','0');
    wait for 1 ms;
    assert data_valid='0' severity error;

    -- ---------------------------
    -- Continu 20 Hz
    -- ---------------------------
    gen_run <= '0'; wait for 2 ms;
    gen_freq <= 20; gen_run <= '1';
    write_cfg(clk, chipselect, write_n, address, writedata, '1','1','0'); -- continu=1

    wait for 1.2 sec;
    assert data_valid='1' severity error;
    assert unsigned(data_anemometre)=to_unsigned(20,8)
      report "FAIL: expected data=20" severity error;

    -- Change à 60 Hz
    gen_run <= '0'; wait for 2 ms;
    gen_freq <= 60; gen_run <= '1';
    wait for 1.2 sec;

    assert unsigned(data_anemometre)=to_unsigned(60,8)
      report "FAIL: expected data=60" severity error;

    report "=== TB END: PASS ===" severity note;
    wait;
  end process;

end architecture;