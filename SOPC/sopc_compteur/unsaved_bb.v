
module unsaved (
	boutons_external_connection_export,
	clk_clk,
	leds_external_connection_export,
	pwm_out_test_new_writeresponsevalid_n);	

	input	[1:0]	boutons_external_connection_export;
	input		clk_clk;
	output	[7:0]	leds_external_connection_export;
	output		pwm_out_test_new_writeresponsevalid_n;
endmodule
