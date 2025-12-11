-- 1. génère une horloge de 50 MHz et un reset pour piloter le compteur.
-- 2. instancie le composant compteur et observe sa sortie dout_tb.
-- 3. laisse tourner la simulation pour vérifier que le compteur compte de 0 à 15 puis revient à 0.

library ieee;
use ieee.std_logic_1164.all;

entity TB_compteur is
end entity;

architecture behav of TB_compteur is

    constant clk_period : time := 20 ns;  -- période horloge 50 MHz

    signal clk_tb  : std_logic := '0';
    signal rst_tb  : std_logic := '1';
    signal dout_tb : std_logic_vector(3 downto 0);

    -- instanciation du compteur
    -- component compteur
    component compteur09
        port (
            clk  : in  std_logic;
            rst  : in  std_logic;
            dout : out std_logic_vector(3 downto 0)
        );
    end component;

begin

    -- uut: compteur
    uut: compteur09
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

    -- séquence de reset pour tester rst = 1 et rst = 0
    stim_proc : process
    begin
        -- reset initial
        rst_tb <= '1';
        wait for 2 * clk_period;

        -- on relâche le reset : le compteur commence à compter
        rst_tb <= '0';
        wait for 10 * clk_period;

        -- on remet le reset à 1 : retour à 0
        rst_tb <= '1';
        wait for 3 * clk_period;

        -- on enlève à nouveau le reset : le compteur repart de 0
        rst_tb <= '0';
        wait for 20 * clk_period;

        wait;  -- stop simulation
    end process;

end architecture;
