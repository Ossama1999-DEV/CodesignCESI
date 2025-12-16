library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TB_exo5 is
end entity;

architecture behav of TB_exo5 is
    constant clk_period : time := 20 ns;  -- 50 MHz
    constant debounce_t : time := 20 ms;  -- anti-rebond demandé

    signal clk_50_tb : std_logic := '0';
    signal rst_tb    : std_logic := '1';
    signal go_tb     : std_logic := '0';
    signal dout_tb   : std_logic_vector(3 downto 0);

begin

    -- UUT : top Exo5 (mae_go_20ms + compteur_en)
    uut : entity work.exo5_top
        port map (
            clk_50 => clk_50_tb,
            rst    => rst_tb,
            go     => go_tb,
            dout   => dout_tb
        );

    -- Horloge 50 MHz
    clk_process : process
    begin
        while true loop
            clk_50_tb <= '0'; wait for clk_period/2;
            clk_50_tb <= '1'; wait for clk_period/2;
        end loop;
    end process;

    -- Stimuli + checks
    stim_proc : process
        -- lecture pratique de dout en unsigned
        function to_u4(slv : std_logic_vector(3 downto 0)) return unsigned is
        begin
            return unsigned(slv);
        end function;

        -- rebonds rapides : alternances sur quelques ms (<20ms)
        procedure bounce_go is
        begin
            go_tb <= '1'; wait for 1 ms;
            go_tb <= '0'; wait for 1 ms;
            go_tb <= '1'; wait for 500 us;
            go_tb <= '0'; wait for 500 us;
            go_tb <= '1'; wait for 2 ms;
            go_tb <= '0'; wait for 2 ms;
        end procedure;

        -- appui stable (doit déclencher 1 incrément)
        procedure stable_press(hold_time : time) is
        begin
            go_tb <= '1';
            wait for hold_time; -- > 20ms recommandé
            go_tb <= '0';
        end procedure;

        variable v_before : unsigned(3 downto 0);
        variable v_after  : unsigned(3 downto 0);
    begin
        ----------------------------------------------------------------
        -- RESET
        ----------------------------------------------------------------
        rst_tb <= '1';
        go_tb  <= '0';
        wait for 200 ns;
        rst_tb <= '0';
        wait for 200 ns;

        ----------------------------------------------------------------
        -- TEST 1 : rebonds seuls (<20ms) => AUCUNE incrémentation
        ----------------------------------------------------------------
        v_before := to_u4(dout_tb);
        bounce_go;
        wait for 5 ms; -- laisse du temps à la MAE (mais pas 20ms stable)
        v_after := to_u4(dout_tb);

        assert v_after = v_before
            report "TEST 1 FAILED: rebonds <20ms ne doivent pas incrementer"
            severity error;

        ----------------------------------------------------------------
        -- TEST 2 : rebonds puis appui stable >20ms => +1 UNE FOIS
        ----------------------------------------------------------------
        v_before := to_u4(dout_tb);

        bounce_go;                    -- rebonds au début
        stable_press(30 ms);          -- appui stable (>=20ms)
        wait for 5 ms;                -- marge pour laisser passer l'impulsion

        v_after := to_u4(dout_tb);

        assert v_after = v_before + 1
            report "TEST 2 FAILED: un appui stable doit incrementer UNE fois"
            severity error;

        ----------------------------------------------------------------
        -- TEST 3 : appui long (maintenu) => +1 UNE FOIS (pas en continu)
        ----------------------------------------------------------------
        v_before := to_u4(dout_tb);

        stable_press(200 ms);         -- appui long
        wait for 10 ms;

        v_after := to_u4(dout_tb);

        assert v_after = v_before + 1
            report "TEST 3 FAILED: appui long doit incrementer UNE seule fois"
            severity error;

        ----------------------------------------------------------------
        -- TEST 4 : 2 appuis successifs => +2
        ----------------------------------------------------------------
        v_before := to_u4(dout_tb);

        stable_press(30 ms);
        wait for 50 ms;               -- relâchement suffisant
        stable_press(30 ms);
        wait for 10 ms;

        v_after := to_u4(dout_tb);

        assert v_after = v_before + 2
            report "TEST 4 FAILED: deux appuis doivent incrementer de 2"
            severity error;

        report "Simulation OK : anti-rebond 20ms + 1 increment par appui VALIDES" severity note;
        wait;
    end process;

end architecture;
