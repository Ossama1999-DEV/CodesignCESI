library ieee;
use ieee.std_logic_1164.all;

entity TB_mae is
end entity;

architecture behav of TB_mae is
    constant clk_period : time := 20 ns; -- 50 MHz

    signal ck_tb   : std_logic := '0';
    signal rst_tb  : std_logic := '1';
    signal in1_tb : std_logic := '0';
    signal in2_tb : std_logic := '0';
    signal out1_tb : std_logic;

    component mae
        port (
            ck   : in  std_logic;
            rst  : in  std_logic;
            in1 : in  std_logic;
            in2 : in  std_logic;
            out1 : out std_logic
        );
    end component;

begin

    uut : mae
        port map (
            ck   => ck_tb,
            rst  => rst_tb,
            in1 => in1_tb,
            in2 => in2_tb,
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
        in1_tb <= '0';
        in2_tb <= '0';
        wait_rise(1);
        rst_tb  <= '0';
        wait_rise(1);

        assert out1_tb = '0' report "CYCLE1: apres reset, out1 doit etre 0 (etat1)" severity error;

        -- maintien en etat1 si on active in2 (pas de transition prévue)
        in2_tb <= '1'; wait_rise(1); in2_tb <= '0'; wait_rise(1);
        assert out1_tb = '0' report "CYCLE1: en etat1, in2 ne doit pas changer l'etat" severity error;

        -- etat1 -> etat2 via in1
        in1_tb <= '1'; wait_rise(1); in1_tb <= '0'; wait_rise(1);
        assert out1_tb = '1' report "CYCLE1: attendu etat2 (out1=1) apres in1" severity error;

        -- maintien en etat2 si on active in1 (pas de transition prévue)
        in1_tb <= '1'; wait_rise(1); in1_tb <= '0'; wait_rise(1);
        assert out1_tb = '1' report "CYCLE1: en etat2, in1 ne doit pas changer l'etat" severity error;

        -- etat2 -> etat1 via in2
        in2_tb <= '1'; wait_rise(1); in2_tb <= '0'; wait_rise(1);
        assert out1_tb = '0' report "CYCLE1: attendu retour etat1 (out1=0) apres in2" severity error;

        ----------------------------------------------------------------
        -- CYCLE 2 : refaire + reset en plein etat2
        ----------------------------------------------------------------
        -- etat1 -> etat2
        in1_tb <= '1'; wait_rise(1); in1_tb <= '0'; wait_rise(1);
        assert out1_tb = '1' report "CYCLE2: attendu etat2 (out1=1)" severity error;

        -- reset pendant etat2 => retour etat1
        rst_tb <= '1'; wait_rise(1);
        rst_tb <= '0'; wait_rise(1);
        assert out1_tb = '0' report "CYCLE2: reset en etat2 doit ramener etat1 (out1=0)" severity error;

        report "Simulation OK : MAE conforme (transitions, maintien, reset)" severity note;
        wait;
    end process;

end architecture;
