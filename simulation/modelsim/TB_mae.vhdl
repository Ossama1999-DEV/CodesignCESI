library ieee;
use ieee.std_logic_1164.all;

entity TB_mae is
end entity;

architecture behav of TB_mae is
    constant clk_period : time := 20 ns; -- 50 MHz

    signal ck_tb   : std_logic := '0';
    signal rst_tb  : std_logic := '1';
    signal T1_2_tb : std_logic := '0';
    signal T2_1_tb : std_logic := '0';
    signal out1_tb : std_logic;

    component mae
        port (
            ck   : in  std_logic;
            rst  : in  std_logic;
            T1_2 : in  std_logic;
            T2_1 : in  std_logic;
            out1 : out std_logic
        );
    end component;

begin

    uut : mae
        port map (
            ck   => ck_tb,
            rst  => rst_tb,
            T1_2 => T1_2_tb,
            T2_1 => T2_1_tb,
            out1 => out1_tb
        );

    -- Horloge 50 MHz
    clk_process : process
    begin
        while true loop
            ck_tb <= '0'; wait for clk_period/2;
            ck_tb <= '1'; wait for clk_period/2;
        end loop;
    end process;

    -- Stimuli + checks
    stim_proc : process
        procedure wait_rise(n : natural) is
        begin
            for i in 1 to n loop
                wait until (ck_tb'event and ck_tb = '1');
            end loop;
        end procedure;
    begin
        ----------------------------------------------------------------
        -- CYCLE 1 : reset -> etat1 -> etat2 -> etat1
        ----------------------------------------------------------------
        rst_tb  <= '1';
        T1_2_tb <= '0';
        T2_1_tb <= '0';
        wait_rise(1);
        rst_tb  <= '0';
        wait_rise(1);

        assert out1_tb = '0' report "CYCLE1: apres reset, out1 doit etre 0 (etat1)" severity error;

        -- maintien en etat1 si on active T2_1 (pas de transition prévue)
        T2_1_tb <= '1'; wait_rise(1); T2_1_tb <= '0'; wait_rise(1);
        assert out1_tb = '0' report "CYCLE1: en etat1, T2_1 ne doit pas changer l'etat" severity error;

        -- etat1 -> etat2 via T1_2
        T1_2_tb <= '1'; wait_rise(1); T1_2_tb <= '0'; wait_rise(1);
        assert out1_tb = '1' report "CYCLE1: attendu etat2 (out1=1) apres T1_2" severity error;

        -- maintien en etat2 si on active T1_2 (pas de transition prévue)
        T1_2_tb <= '1'; wait_rise(1); T1_2_tb <= '0'; wait_rise(1);
        assert out1_tb = '1' report "CYCLE1: en etat2, T1_2 ne doit pas changer l'etat" severity error;

        -- etat2 -> etat1 via T2_1
        T2_1_tb <= '1'; wait_rise(1); T2_1_tb <= '0'; wait_rise(1);
        assert out1_tb = '0' report "CYCLE1: attendu retour etat1 (out1=0) apres T2_1" severity error;

        ----------------------------------------------------------------
        -- CYCLE 2 : refaire + reset en plein etat2
        ----------------------------------------------------------------
        -- etat1 -> etat2
        T1_2_tb <= '1'; wait_rise(1); T1_2_tb <= '0'; wait_rise(1);
        assert out1_tb = '1' report "CYCLE2: attendu etat2 (out1=1)" severity error;

        -- reset pendant etat2 => retour etat1
        rst_tb <= '1'; wait_rise(1);
        rst_tb <= '0'; wait_rise(1);
        assert out1_tb = '0' report "CYCLE2: reset en etat2 doit ramener etat1 (out1=0)" severity error;

        report "Simulation OK : MAE conforme (transitions, maintien, reset)" severity note;
        wait;
    end process;

end architecture;
