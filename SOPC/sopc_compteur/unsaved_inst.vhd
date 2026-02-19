	component unsaved is
		port (
			boutons_external_connection_export    : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			clk_clk                               : in  std_logic                    := 'X';             -- clk
			leds_external_connection_export       : out std_logic_vector(7 downto 0);                    -- export
			pwm_out_test_new_writeresponsevalid_n : out std_logic                                        -- writeresponsevalid_n
		);
	end component unsaved;

	u0 : component unsaved
		port map (
			boutons_external_connection_export    => CONNECTED_TO_boutons_external_connection_export,    -- boutons_external_connection.export
			clk_clk                               => CONNECTED_TO_clk_clk,                               --                         clk.clk
			leds_external_connection_export       => CONNECTED_TO_leds_external_connection_export,       --    leds_external_connection.export
			pwm_out_test_new_writeresponsevalid_n => CONNECTED_TO_pwm_out_test_new_writeresponsevalid_n  --            pwm_out_test_new.writeresponsevalid_n
		);

