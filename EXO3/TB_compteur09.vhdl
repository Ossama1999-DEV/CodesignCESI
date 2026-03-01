---! Testbench pour le compteur 0 à 9
---! Ce testbench génère une horloge de 50 MHz et un signal de reset
---! Autor: DBIBIH Oussama
---! Date: 2025/12

library ieee;
use ieee.std_logic_1164.all;

entity TB_compteur09 is
end entity;

architecture behav of TB_compteur09 is

    constant clk_period : time := 20 ns;  -- période horloge 50 MHz

    signal clk_tb  : std_logic := '0';
    signal rst_tb  : std_logic := '1';
    signal dout_tb : std_logic_vector(3 downto 0);

    -- instanciation du compteur 0→9
    component compteur09_1s
        port (
            clk  : in  std_logic;
            rst  : in  std_logic;
            dout : out std_logic_vector(3 downto 0)
        );
    end component;

begin

    uut: compteur09_1s
        port map (
            clk  => clk_tb,
            rst  => rst_tb,
            dout => dout_tb
        );

    -- génération de l’horloge 50 MHz
    clk_process : process
    begin
        while true loop
            clk_tb <= '0';
            wait for clk_period / 2;
            clk_tb <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- séquence de reset (rst = 1 puis rst = 0) + observation du comptage
    stim_proc : process
    begin
        -- reset initial
        rst_tb <= '1';
        wait for 2 * clk_period;

        -- relâche le reset : le compteur compte 0→9→0...
        rst_tb <= '0';
        wait for 25 * clk_period;  -- assez pour voir plusieurs incréments

        -- reset pendant l’exécution : retour à 0
        rst_tb <= '1';
        wait for 3 * clk_period;

        -- relâche à nouveau : il repart de 0
        rst_tb <= '0';
        wait for 25 * clk_period;

        wait;  -- stop simulation
    end process;

end architecture;
