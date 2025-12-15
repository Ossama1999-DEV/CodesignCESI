library ieee;
use ieee.std_logic_1164.all;

entity TB_mae is
end entity;

architecture behav of TB_mae is

    constant clk_period : time := 20 ns; -- 50 MHz

    signal clk_tb  : std_logic := '0';
    signal rst_tb  : std_logic := '1';
    signal in0_tb  : std_logic := '0';
    signal in1_tb  : std_logic := '0';
    signal out1_tb : std_logic;

    component mae
        port (
            clk  : in  std_logic;
            rst  : in  std_logic;
            in0  : in  std_logic;
            in1  : in  std_logic;
            out1 : out std_logic
        );
    end component;

begin

    uut : mae
        port map (
            clk  => clk_tb,
            rst  => rst_tb,
            in0  => in0_tb,
            in1  => in1_tb,
            out1 => out1_tb
        );

    -- Horloge 50 MHz
    clk_process : process
    begin
        while true loop
            clk_tb <= '0'; wait for clk_period/2;
            clk_tb <= '1'; wait for clk_period/2;
        end loop;
    end process;

    -- Stimuli
    stim_proc : process
    begin
        -- RESET
        rst_tb <= '1';
        in0_tb <= '0';
        in1_tb <= '0';
        wait for clk_period;
        rst_tb <= '0';

        -- Etat1 -> Etat2 (in1 = 1)
        wait for clk_period/2;
        in1_tb <= '1';
        wait for clk_period;       -- capturé au front montant
        in1_tb <= '0';

        -- attendre
        wait for 2 * clk_period;

        -- Etat2 -> Etat1 (in0 = 1)
        wait for clk_period/2;
        in0_tb <= '1';
        wait for clk_period;
        in0_tb <= '0';

        -- attendre
        wait for 2 * clk_period;

        wait;
    end process;

end architecture;
