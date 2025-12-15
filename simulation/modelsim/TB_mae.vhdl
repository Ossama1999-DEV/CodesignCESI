library ieee;
use ieee.std_logic_1164.all;

entity TB_mae is
end entity;

architecture behav of TB_mae is
    constant clk_period : time := 20 ns; -- 50 MHz

    signal clk_tb  : std_logic := '0';
    signal rst_tb  : std_logic := '1';
    signal in1_tb  : std_logic := '0';  -- in1 du schéma
    signal in2_tb  : std_logic := '0';  -- in2 du schéma
    signal out1_tb : std_logic;

    component mae
        port (
            clk  : in  std_logic;
            rst  : in  std_logic;
            in0  : in  std_logic; -- on l'utilise comme in2 (schéma)
            in1  : in  std_logic; -- in1 (schéma)
            out1 : out std_logic
        );
    end component;

begin
    -- Mapping conforme au schéma :
    -- in1_tb -> in1
    -- in2_tb -> in0 (car pas de port "in2" dans l'entity)
    uut : mae
        port map (
            clk  => clk_tb,
            rst  => rst_tb,
            in0  => in2_tb,   -- in2 du schéma
            in1  => in1_tb,   -- in1 du schéma
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

    -- Stimuli + checks (conformes au schéma)
    stim_proc : process
    begin
        ----------------------------------------------------------------
        -- ========== CYCLE 1 ==========
        ----------------------------------------------------------------
        -- RESET
        rst_tb <= '1';
        in1_tb <= '0';
        in2_tb <= '0';
        wait for clk_period;
        rst_tb <= '0';

        wait for clk_period; -- etat1 stable
        assert out1_tb = '0' report "CYCLE 1: out1 devrait etre 0 en etat1" severity error;

        -- etat1 -> etat2 (in1 = 1)
        wait for clk_period/2;
        in1_tb <= '1';
        wait for clk_period;
        in1_tb <= '0';

        wait for clk_period;
        assert out1_tb = '1' report "CYCLE 1: out1 devrait etre 1 en etat2" severity error;

        -- etat2 -> etat1 (in2 = 1)
        wait for clk_period/2;
        in2_tb <= '1';
        wait for clk_period;
        in2_tb <= '0';

        wait for clk_period;
        assert out1_tb = '0' report "CYCLE 1: retour etat1 attendu" severity error;

        ----------------------------------------------------------------
        -- ========== CYCLE 2 ==========
        ----------------------------------------------------------------
        -- RESET à nouveau
        rst_tb <= '1';
        wait for clk_period;
        rst_tb <= '0';

        wait for clk_period;
        assert out1_tb = '0' report "CYCLE 2: out1 devrait etre 0 en etat1" severity error;

        -- etat1 -> etat2 (in1 = 1)
        wait for clk_period/2;
        in1_tb <= '1';
        wait for clk_period;
        in1_tb <= '0';

        wait for clk_period;
        assert out1_tb = '1' report "CYCLE 2: out1 devrait etre 1 en etat2" severity error;

        -- etat2 -> etat1 (in2 = 1)
        wait for clk_period/2;
        in2_tb <= '1';
        wait for clk_period;
        in2_tb <= '0';

        wait for clk_period;
        assert out1_tb = '0' report "CYCLE 2: retour etat1 attendu" severity error;

        ----------------------------------------------------------------
        -- ========== CYCLE 3 ==========
        ----------------------------------------------------------------
       -- RESET à nouveau
        rst_tb <= '1';
        wait for clk_period;
        rst_tb <= '0';

        wait for clk_period;
        assert out1_tb = '0' report "CYCLE 3: out1 devrait etre 0 en etat1" severity error;

        -- etat1 -> etat2 (in1 = 1)
        wait for clk_period/2;
        in1_tb <= '1';
        wait for clk_period;
        in1_tb <= '0';

        rst_tb <= '1';
        wait for clk_period;
        rst_tb <= '0';

        wait for clk_period;
        assert out1_tb = '0' report "CYCLE 3: out1 devrait etre 0 en etat1" severity error;
        
        -- etat1 -> etat2 (in1 = 1)
        wait for clk_period/2;
        in1_tb <= '1';
        wait for clk_period;
        in1_tb <= '0';        

        -- etat2 -> etat1 (in2 = 1)
        wait for clk_period/2;
        in2_tb <= '1';
        wait for clk_period;
        in2_tb <= '0';

        wait for clk_period;
        assert out1_tb = '0' report "CYCLE 3: retour etat1 attendu" severity error;
        
        rst_tb <= '1';
        wait for clk_period;
        rst_tb <= '0';

        wait for clk_period;
        assert out1_tb = '0' report "CYCLE 3: out1 devrait etre 0 en etat1" severity error;        

        ----------------------------------------------------------------
        report "Simulation OK : 3 cycles complets MAE + RESET" severity note;
        wait;
    end process;

end architecture;