	component sopc is
		port (
			buttons_external_connection_export : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			clk_clk                            : in  std_logic                    := 'X';             -- clk
			in_freq_anemometre_export_conduit  : in  std_logic                    := 'X';             -- conduit
			leds_external_connection_export    : out std_logic_vector(7 downto 0);                    -- export
			pwm_out_writeresponsevalid_n       : out std_logic                                        -- writeresponsevalid_n
		);
	end component sopc;

	u0 : component sopc
		port map (
			buttons_external_connection_export => CONNECTED_TO_buttons_external_connection_export, -- buttons_external_connection.export
			clk_clk                            => CONNECTED_TO_clk_clk,                            --                         clk.clk
			in_freq_anemometre_export_conduit  => CONNECTED_TO_in_freq_anemometre_export_conduit,  --   in_freq_anemometre_export.conduit
			leds_external_connection_export    => CONNECTED_TO_leds_external_connection_export,    --    leds_external_connection.export
			pwm_out_writeresponsevalid_n       => CONNECTED_TO_pwm_out_writeresponsevalid_n        --                     pwm_out.writeresponsevalid_n
		);

