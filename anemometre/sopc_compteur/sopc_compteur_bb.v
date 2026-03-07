
module sopc_compteur (
	buttons_external_connection_export,
	clk_clk,
	in_freq_anemometre_export_conduit,
	leds_external_connection_export,
	pwm_out_writeresponsevalid_n);	

	input	[1:0]	buttons_external_connection_export;
	input		clk_clk;
	input		in_freq_anemometre_export_conduit;
	output	[7:0]	leds_external_connection_export;
	output		pwm_out_writeresponsevalid_n;
endmodule
