--- Testbench pour l'anémomètre
-- Génère une horloge accélérée et un signal de capteur à 100 Hz
-- Permet de vérifier le fonctionnement du DUT sur une fenêtre de mesure complète
-- auteur : DBIBIH Oussama

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TB_anemometre is
end TB_anemometre;

architecture behav of TB_anemometre is

    -- =========================================================
    -- Horloge accélérée pour simulation
    -- 20 ns => 50 MHz
    -- La fenêtre "1 seconde" du DUT devient :
    -- 50_000_000 * 20 ns = 1 s
    -- =========================================================
    constant clk_period : time := 20 ns;

    -- Signal capteur anémomètre : 100 Hz
    -- T = 10 ms
    constant anemo_period : time := 10 ms;

    signal clk_50M            : std_logic := '0';
    signal raz_n              : std_logic := '0';
    signal in_freq_anemometre : std_logic := '0';
    signal continu            : std_logic := '0';
    signal start_stop         : std_logic := '0';
    signal data_anemometre    : std_logic_vector(7 downto 0);
    signal data_valid         : std_logic;
    signal compteur_out       : std_logic_vector(7 downto 0);
    signal state_out          : std_logic_vector(1 downto 0);

begin

    -- =========================================================
    -- Instanciation du DUT
    -- =========================================================
    uut : entity work.anemometre
        port map (
            clk_50M            => clk_50M,
            raz_n              => raz_n,
            in_freq_anemometre => in_freq_anemometre,
            continu            => continu,
            start_stop         => start_stop,
            data_anemometre    => data_anemometre,
            data_valid         => data_valid,
            compteur_out       => compteur_out,
            state_out          => state_out
        );

    -- =========================================================
    -- Horloge système accélérée
    -- =========================================================
    clk_process : process
    begin
        while true loop
            clk_50M <= '0';
            wait for clk_period / 2;
            clk_50M <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- =========================================================
    -- Génération du signal anémomètre
    -- 100 Hz => période 10 ms
    -- =========================================================
    anemo_process : process
    begin
        wait for 20 ms;
        while true loop
            in_freq_anemometre <= '1';
            wait for anemo_period / 2;
            in_freq_anemometre <= '0';
            wait for anemo_period / 2;
        end loop;
    end process;

    -- =========================================================
    -- Stimuli
    -- =========================================================
    stim_proc : process
    begin
        -- Reset initial
        raz_n <= '0';
        continu <= '0';
        start_stop <= '0';
        wait for 1 us;

        -- Fin reset
        raz_n <= '1';
        wait for 5 us;

        -- Démarrage en mode continu
        continu <= '1';

        -- Laisser tourner assez longtemps pour voir
        -- une fenêtre complète de mesure (~0,4 s)
        wait for 1500 ms;

        -- Arrêt
        continu <= '0';
        wait for 50 ms;

        wait;
    end process;

end behav;