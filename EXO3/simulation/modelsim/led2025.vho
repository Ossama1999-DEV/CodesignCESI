-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/16/2025 11:22:50"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exo5_top IS
    PORT (
	clk_50 : IN std_logic;
	rst : IN std_logic;
	go : IN std_logic;
	dout : OUT std_logic_vector(3 DOWNTO 0)
	);
END exo5_top;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dout[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dout[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dout[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rst	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- go	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF exo5_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_go : std_logic;
SIGNAL ww_dout : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \u_cnt|count~0_combout\ : std_logic;
SIGNAL \go~input_o\ : std_logic;
SIGNAL \u_mae|timer_cnt[0]~20_combout\ : std_logic;
SIGNAL \u_mae|timer_done~1_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[0]~21\ : std_logic;
SIGNAL \u_mae|timer_cnt[1]~22_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[1]~23\ : std_logic;
SIGNAL \u_mae|timer_cnt[2]~24_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[2]~25\ : std_logic;
SIGNAL \u_mae|timer_cnt[3]~26_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[3]~27\ : std_logic;
SIGNAL \u_mae|timer_cnt[4]~28_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[4]~29\ : std_logic;
SIGNAL \u_mae|timer_cnt[5]~30_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[5]~31\ : std_logic;
SIGNAL \u_mae|timer_cnt[6]~32_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[6]~33\ : std_logic;
SIGNAL \u_mae|timer_cnt[7]~34_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[7]~35\ : std_logic;
SIGNAL \u_mae|timer_cnt[8]~36_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[8]~37\ : std_logic;
SIGNAL \u_mae|timer_cnt[9]~38_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[9]~39\ : std_logic;
SIGNAL \u_mae|timer_cnt[10]~40_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[10]~41\ : std_logic;
SIGNAL \u_mae|timer_cnt[11]~42_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[11]~43\ : std_logic;
SIGNAL \u_mae|timer_cnt[12]~44_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[12]~45\ : std_logic;
SIGNAL \u_mae|timer_cnt[13]~46_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[13]~47\ : std_logic;
SIGNAL \u_mae|timer_cnt[14]~48_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[14]~49\ : std_logic;
SIGNAL \u_mae|timer_cnt[15]~50_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[15]~51\ : std_logic;
SIGNAL \u_mae|timer_cnt[16]~52_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[16]~53\ : std_logic;
SIGNAL \u_mae|timer_cnt[17]~54_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[17]~55\ : std_logic;
SIGNAL \u_mae|timer_cnt[18]~56_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt[18]~57\ : std_logic;
SIGNAL \u_mae|timer_cnt[19]~58_combout\ : std_logic;
SIGNAL \u_mae|timer_done~6_combout\ : std_logic;
SIGNAL \u_mae|timer_done~5_combout\ : std_logic;
SIGNAL \u_mae|timer_done~4_combout\ : std_logic;
SIGNAL \u_mae|timer_done~7_combout\ : std_logic;
SIGNAL \u_mae|timer_done~2_combout\ : std_logic;
SIGNAL \u_mae|timer_done~3_combout\ : std_logic;
SIGNAL \u_mae|timer_done~8_combout\ : std_logic;
SIGNAL \u_mae|timer_done~q\ : std_logic;
SIGNAL \u_mae|ep~11_combout\ : std_logic;
SIGNAL \u_mae|ep~12_combout\ : std_logic;
SIGNAL \u_mae|ep.wait_release~q\ : std_logic;
SIGNAL \u_mae|ep~9_combout\ : std_logic;
SIGNAL \u_mae|ep~10_combout\ : std_logic;
SIGNAL \u_mae|ep.idle~q\ : std_logic;
SIGNAL \u_mae|ep~7_combout\ : std_logic;
SIGNAL \u_mae|ep~8_combout\ : std_logic;
SIGNAL \u_mae|ep.debounce~q\ : std_logic;
SIGNAL \u_mae|ep~6_combout\ : std_logic;
SIGNAL \u_mae|ep.pulse~q\ : std_logic;
SIGNAL \u_cnt|count[0]~1_combout\ : std_logic;
SIGNAL \u_cnt|count~2_combout\ : std_logic;
SIGNAL \u_cnt|count~3_combout\ : std_logic;
SIGNAL \u_cnt|Add0~0_combout\ : std_logic;
SIGNAL \u_cnt|count~4_combout\ : std_logic;
SIGNAL \u_mae|timer_cnt\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u_cnt|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_mae|ALT_INV_timer_done~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50 <= clk_50;
ww_rst <= rst;
ww_go <= go;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\u_mae|ALT_INV_timer_done~8_combout\ <= NOT \u_mae|timer_done~8_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\dout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_cnt|count\(0),
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\dout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_cnt|count\(1),
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\dout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_cnt|count\(2),
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\dout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_cnt|count\(3),
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G18
\clk_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X41_Y14_N24
\u_cnt|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_cnt|count~0_combout\ = (\rst~input_o\ & !\u_cnt|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \u_cnt|count\(0),
	combout => \u_cnt|count~0_combout\);

-- Location: IOIBUF_X53_Y14_N1
\go~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_go,
	o => \go~input_o\);

-- Location: LCCOMB_X40_Y14_N12
\u_mae|timer_cnt[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[0]~20_combout\ = \u_mae|timer_cnt\(0) $ (VCC)
-- \u_mae|timer_cnt[0]~21\ = CARRY(\u_mae|timer_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(0),
	datad => VCC,
	combout => \u_mae|timer_cnt[0]~20_combout\,
	cout => \u_mae|timer_cnt[0]~21\);

-- Location: LCCOMB_X41_Y14_N4
\u_mae|timer_done~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_done~1_combout\ = (!\u_mae|ep.debounce~q\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \u_mae|ep.debounce~q\,
	combout => \u_mae|timer_done~1_combout\);

-- Location: FF_X40_Y14_N13
\u_mae|timer_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[0]~20_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(0));

-- Location: LCCOMB_X40_Y14_N14
\u_mae|timer_cnt[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[1]~22_combout\ = (\u_mae|timer_cnt\(1) & (!\u_mae|timer_cnt[0]~21\)) # (!\u_mae|timer_cnt\(1) & ((\u_mae|timer_cnt[0]~21\) # (GND)))
-- \u_mae|timer_cnt[1]~23\ = CARRY((!\u_mae|timer_cnt[0]~21\) # (!\u_mae|timer_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(1),
	datad => VCC,
	cin => \u_mae|timer_cnt[0]~21\,
	combout => \u_mae|timer_cnt[1]~22_combout\,
	cout => \u_mae|timer_cnt[1]~23\);

-- Location: FF_X40_Y14_N15
\u_mae|timer_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[1]~22_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(1));

-- Location: LCCOMB_X40_Y14_N16
\u_mae|timer_cnt[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[2]~24_combout\ = (\u_mae|timer_cnt\(2) & (\u_mae|timer_cnt[1]~23\ $ (GND))) # (!\u_mae|timer_cnt\(2) & (!\u_mae|timer_cnt[1]~23\ & VCC))
-- \u_mae|timer_cnt[2]~25\ = CARRY((\u_mae|timer_cnt\(2) & !\u_mae|timer_cnt[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(2),
	datad => VCC,
	cin => \u_mae|timer_cnt[1]~23\,
	combout => \u_mae|timer_cnt[2]~24_combout\,
	cout => \u_mae|timer_cnt[2]~25\);

-- Location: FF_X40_Y14_N17
\u_mae|timer_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[2]~24_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(2));

-- Location: LCCOMB_X40_Y14_N18
\u_mae|timer_cnt[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[3]~26_combout\ = (\u_mae|timer_cnt\(3) & (!\u_mae|timer_cnt[2]~25\)) # (!\u_mae|timer_cnt\(3) & ((\u_mae|timer_cnt[2]~25\) # (GND)))
-- \u_mae|timer_cnt[3]~27\ = CARRY((!\u_mae|timer_cnt[2]~25\) # (!\u_mae|timer_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(3),
	datad => VCC,
	cin => \u_mae|timer_cnt[2]~25\,
	combout => \u_mae|timer_cnt[3]~26_combout\,
	cout => \u_mae|timer_cnt[3]~27\);

-- Location: FF_X40_Y14_N19
\u_mae|timer_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[3]~26_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(3));

-- Location: LCCOMB_X40_Y14_N20
\u_mae|timer_cnt[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[4]~28_combout\ = (\u_mae|timer_cnt\(4) & (\u_mae|timer_cnt[3]~27\ $ (GND))) # (!\u_mae|timer_cnt\(4) & (!\u_mae|timer_cnt[3]~27\ & VCC))
-- \u_mae|timer_cnt[4]~29\ = CARRY((\u_mae|timer_cnt\(4) & !\u_mae|timer_cnt[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(4),
	datad => VCC,
	cin => \u_mae|timer_cnt[3]~27\,
	combout => \u_mae|timer_cnt[4]~28_combout\,
	cout => \u_mae|timer_cnt[4]~29\);

-- Location: FF_X40_Y14_N21
\u_mae|timer_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[4]~28_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(4));

-- Location: LCCOMB_X40_Y14_N22
\u_mae|timer_cnt[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[5]~30_combout\ = (\u_mae|timer_cnt\(5) & (!\u_mae|timer_cnt[4]~29\)) # (!\u_mae|timer_cnt\(5) & ((\u_mae|timer_cnt[4]~29\) # (GND)))
-- \u_mae|timer_cnt[5]~31\ = CARRY((!\u_mae|timer_cnt[4]~29\) # (!\u_mae|timer_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(5),
	datad => VCC,
	cin => \u_mae|timer_cnt[4]~29\,
	combout => \u_mae|timer_cnt[5]~30_combout\,
	cout => \u_mae|timer_cnt[5]~31\);

-- Location: FF_X40_Y14_N23
\u_mae|timer_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[5]~30_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(5));

-- Location: LCCOMB_X40_Y14_N24
\u_mae|timer_cnt[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[6]~32_combout\ = (\u_mae|timer_cnt\(6) & (\u_mae|timer_cnt[5]~31\ $ (GND))) # (!\u_mae|timer_cnt\(6) & (!\u_mae|timer_cnt[5]~31\ & VCC))
-- \u_mae|timer_cnt[6]~33\ = CARRY((\u_mae|timer_cnt\(6) & !\u_mae|timer_cnt[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(6),
	datad => VCC,
	cin => \u_mae|timer_cnt[5]~31\,
	combout => \u_mae|timer_cnt[6]~32_combout\,
	cout => \u_mae|timer_cnt[6]~33\);

-- Location: FF_X40_Y14_N25
\u_mae|timer_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[6]~32_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(6));

-- Location: LCCOMB_X40_Y14_N26
\u_mae|timer_cnt[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[7]~34_combout\ = (\u_mae|timer_cnt\(7) & (!\u_mae|timer_cnt[6]~33\)) # (!\u_mae|timer_cnt\(7) & ((\u_mae|timer_cnt[6]~33\) # (GND)))
-- \u_mae|timer_cnt[7]~35\ = CARRY((!\u_mae|timer_cnt[6]~33\) # (!\u_mae|timer_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(7),
	datad => VCC,
	cin => \u_mae|timer_cnt[6]~33\,
	combout => \u_mae|timer_cnt[7]~34_combout\,
	cout => \u_mae|timer_cnt[7]~35\);

-- Location: FF_X40_Y14_N27
\u_mae|timer_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[7]~34_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(7));

-- Location: LCCOMB_X40_Y14_N28
\u_mae|timer_cnt[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[8]~36_combout\ = (\u_mae|timer_cnt\(8) & (\u_mae|timer_cnt[7]~35\ $ (GND))) # (!\u_mae|timer_cnt\(8) & (!\u_mae|timer_cnt[7]~35\ & VCC))
-- \u_mae|timer_cnt[8]~37\ = CARRY((\u_mae|timer_cnt\(8) & !\u_mae|timer_cnt[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(8),
	datad => VCC,
	cin => \u_mae|timer_cnt[7]~35\,
	combout => \u_mae|timer_cnt[8]~36_combout\,
	cout => \u_mae|timer_cnt[8]~37\);

-- Location: FF_X40_Y14_N29
\u_mae|timer_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[8]~36_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(8));

-- Location: LCCOMB_X40_Y14_N30
\u_mae|timer_cnt[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[9]~38_combout\ = (\u_mae|timer_cnt\(9) & (!\u_mae|timer_cnt[8]~37\)) # (!\u_mae|timer_cnt\(9) & ((\u_mae|timer_cnt[8]~37\) # (GND)))
-- \u_mae|timer_cnt[9]~39\ = CARRY((!\u_mae|timer_cnt[8]~37\) # (!\u_mae|timer_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(9),
	datad => VCC,
	cin => \u_mae|timer_cnt[8]~37\,
	combout => \u_mae|timer_cnt[9]~38_combout\,
	cout => \u_mae|timer_cnt[9]~39\);

-- Location: FF_X40_Y14_N31
\u_mae|timer_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[9]~38_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(9));

-- Location: LCCOMB_X40_Y13_N0
\u_mae|timer_cnt[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[10]~40_combout\ = (\u_mae|timer_cnt\(10) & (\u_mae|timer_cnt[9]~39\ $ (GND))) # (!\u_mae|timer_cnt\(10) & (!\u_mae|timer_cnt[9]~39\ & VCC))
-- \u_mae|timer_cnt[10]~41\ = CARRY((\u_mae|timer_cnt\(10) & !\u_mae|timer_cnt[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(10),
	datad => VCC,
	cin => \u_mae|timer_cnt[9]~39\,
	combout => \u_mae|timer_cnt[10]~40_combout\,
	cout => \u_mae|timer_cnt[10]~41\);

-- Location: FF_X40_Y13_N1
\u_mae|timer_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[10]~40_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(10));

-- Location: LCCOMB_X40_Y13_N2
\u_mae|timer_cnt[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[11]~42_combout\ = (\u_mae|timer_cnt\(11) & (!\u_mae|timer_cnt[10]~41\)) # (!\u_mae|timer_cnt\(11) & ((\u_mae|timer_cnt[10]~41\) # (GND)))
-- \u_mae|timer_cnt[11]~43\ = CARRY((!\u_mae|timer_cnt[10]~41\) # (!\u_mae|timer_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(11),
	datad => VCC,
	cin => \u_mae|timer_cnt[10]~41\,
	combout => \u_mae|timer_cnt[11]~42_combout\,
	cout => \u_mae|timer_cnt[11]~43\);

-- Location: FF_X40_Y13_N3
\u_mae|timer_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[11]~42_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(11));

-- Location: LCCOMB_X40_Y13_N4
\u_mae|timer_cnt[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[12]~44_combout\ = (\u_mae|timer_cnt\(12) & (\u_mae|timer_cnt[11]~43\ $ (GND))) # (!\u_mae|timer_cnt\(12) & (!\u_mae|timer_cnt[11]~43\ & VCC))
-- \u_mae|timer_cnt[12]~45\ = CARRY((\u_mae|timer_cnt\(12) & !\u_mae|timer_cnt[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(12),
	datad => VCC,
	cin => \u_mae|timer_cnt[11]~43\,
	combout => \u_mae|timer_cnt[12]~44_combout\,
	cout => \u_mae|timer_cnt[12]~45\);

-- Location: FF_X40_Y13_N5
\u_mae|timer_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[12]~44_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(12));

-- Location: LCCOMB_X40_Y13_N6
\u_mae|timer_cnt[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[13]~46_combout\ = (\u_mae|timer_cnt\(13) & (!\u_mae|timer_cnt[12]~45\)) # (!\u_mae|timer_cnt\(13) & ((\u_mae|timer_cnt[12]~45\) # (GND)))
-- \u_mae|timer_cnt[13]~47\ = CARRY((!\u_mae|timer_cnt[12]~45\) # (!\u_mae|timer_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(13),
	datad => VCC,
	cin => \u_mae|timer_cnt[12]~45\,
	combout => \u_mae|timer_cnt[13]~46_combout\,
	cout => \u_mae|timer_cnt[13]~47\);

-- Location: FF_X40_Y13_N7
\u_mae|timer_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[13]~46_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(13));

-- Location: LCCOMB_X40_Y13_N8
\u_mae|timer_cnt[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[14]~48_combout\ = (\u_mae|timer_cnt\(14) & (\u_mae|timer_cnt[13]~47\ $ (GND))) # (!\u_mae|timer_cnt\(14) & (!\u_mae|timer_cnt[13]~47\ & VCC))
-- \u_mae|timer_cnt[14]~49\ = CARRY((\u_mae|timer_cnt\(14) & !\u_mae|timer_cnt[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(14),
	datad => VCC,
	cin => \u_mae|timer_cnt[13]~47\,
	combout => \u_mae|timer_cnt[14]~48_combout\,
	cout => \u_mae|timer_cnt[14]~49\);

-- Location: FF_X40_Y13_N9
\u_mae|timer_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[14]~48_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(14));

-- Location: LCCOMB_X40_Y13_N10
\u_mae|timer_cnt[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[15]~50_combout\ = (\u_mae|timer_cnt\(15) & (!\u_mae|timer_cnt[14]~49\)) # (!\u_mae|timer_cnt\(15) & ((\u_mae|timer_cnt[14]~49\) # (GND)))
-- \u_mae|timer_cnt[15]~51\ = CARRY((!\u_mae|timer_cnt[14]~49\) # (!\u_mae|timer_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(15),
	datad => VCC,
	cin => \u_mae|timer_cnt[14]~49\,
	combout => \u_mae|timer_cnt[15]~50_combout\,
	cout => \u_mae|timer_cnt[15]~51\);

-- Location: FF_X40_Y13_N11
\u_mae|timer_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[15]~50_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(15));

-- Location: LCCOMB_X40_Y13_N12
\u_mae|timer_cnt[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[16]~52_combout\ = (\u_mae|timer_cnt\(16) & (\u_mae|timer_cnt[15]~51\ $ (GND))) # (!\u_mae|timer_cnt\(16) & (!\u_mae|timer_cnt[15]~51\ & VCC))
-- \u_mae|timer_cnt[16]~53\ = CARRY((\u_mae|timer_cnt\(16) & !\u_mae|timer_cnt[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(16),
	datad => VCC,
	cin => \u_mae|timer_cnt[15]~51\,
	combout => \u_mae|timer_cnt[16]~52_combout\,
	cout => \u_mae|timer_cnt[16]~53\);

-- Location: FF_X40_Y13_N13
\u_mae|timer_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[16]~52_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(16));

-- Location: LCCOMB_X40_Y13_N14
\u_mae|timer_cnt[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[17]~54_combout\ = (\u_mae|timer_cnt\(17) & (!\u_mae|timer_cnt[16]~53\)) # (!\u_mae|timer_cnt\(17) & ((\u_mae|timer_cnt[16]~53\) # (GND)))
-- \u_mae|timer_cnt[17]~55\ = CARRY((!\u_mae|timer_cnt[16]~53\) # (!\u_mae|timer_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(17),
	datad => VCC,
	cin => \u_mae|timer_cnt[16]~53\,
	combout => \u_mae|timer_cnt[17]~54_combout\,
	cout => \u_mae|timer_cnt[17]~55\);

-- Location: FF_X40_Y13_N15
\u_mae|timer_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[17]~54_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(17));

-- Location: LCCOMB_X40_Y13_N16
\u_mae|timer_cnt[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[18]~56_combout\ = (\u_mae|timer_cnt\(18) & (\u_mae|timer_cnt[17]~55\ $ (GND))) # (!\u_mae|timer_cnt\(18) & (!\u_mae|timer_cnt[17]~55\ & VCC))
-- \u_mae|timer_cnt[18]~57\ = CARRY((\u_mae|timer_cnt\(18) & !\u_mae|timer_cnt[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(18),
	datad => VCC,
	cin => \u_mae|timer_cnt[17]~55\,
	combout => \u_mae|timer_cnt[18]~56_combout\,
	cout => \u_mae|timer_cnt[18]~57\);

-- Location: FF_X40_Y13_N17
\u_mae|timer_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[18]~56_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(18));

-- Location: LCCOMB_X40_Y13_N18
\u_mae|timer_cnt[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_cnt[19]~58_combout\ = \u_mae|timer_cnt\(19) $ (\u_mae|timer_cnt[18]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(19),
	cin => \u_mae|timer_cnt[18]~57\,
	combout => \u_mae|timer_cnt[19]~58_combout\);

-- Location: FF_X40_Y13_N19
\u_mae|timer_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_cnt[19]~58_combout\,
	sclr => \u_mae|timer_done~1_combout\,
	ena => \u_mae|ALT_INV_timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_cnt\(19));

-- Location: LCCOMB_X40_Y13_N28
\u_mae|timer_done~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_done~6_combout\ = (\u_mae|timer_cnt\(19) & (!\u_mae|timer_cnt\(13) & !\u_mae|timer_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_mae|timer_cnt\(19),
	datac => \u_mae|timer_cnt\(13),
	datad => \u_mae|timer_cnt\(10),
	combout => \u_mae|timer_done~6_combout\);

-- Location: LCCOMB_X40_Y13_N26
\u_mae|timer_done~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_done~5_combout\ = (\u_mae|timer_cnt\(16) & (\u_mae|timer_cnt\(17) & (\u_mae|timer_cnt\(14) & !\u_mae|timer_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(16),
	datab => \u_mae|timer_cnt\(17),
	datac => \u_mae|timer_cnt\(14),
	datad => \u_mae|timer_cnt\(15),
	combout => \u_mae|timer_done~5_combout\);

-- Location: LCCOMB_X40_Y14_N0
\u_mae|timer_done~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_done~4_combout\ = (!\u_mae|timer_cnt\(7) & (!\u_mae|timer_cnt\(8) & (\u_mae|timer_cnt\(9) & !\u_mae|timer_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(7),
	datab => \u_mae|timer_cnt\(8),
	datac => \u_mae|timer_cnt\(9),
	datad => \u_mae|timer_cnt\(6),
	combout => \u_mae|timer_done~4_combout\);

-- Location: LCCOMB_X40_Y13_N22
\u_mae|timer_done~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_done~7_combout\ = (\u_mae|timer_cnt\(18) & (\u_mae|timer_done~6_combout\ & (\u_mae|timer_done~5_combout\ & \u_mae|timer_done~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(18),
	datab => \u_mae|timer_done~6_combout\,
	datac => \u_mae|timer_done~5_combout\,
	datad => \u_mae|timer_done~4_combout\,
	combout => \u_mae|timer_done~7_combout\);

-- Location: LCCOMB_X40_Y14_N8
\u_mae|timer_done~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_done~2_combout\ = (\u_mae|timer_cnt\(5) & (\u_mae|timer_cnt\(2) & (\u_mae|timer_cnt\(3) & \u_mae|timer_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(5),
	datab => \u_mae|timer_cnt\(2),
	datac => \u_mae|timer_cnt\(3),
	datad => \u_mae|timer_cnt\(4),
	combout => \u_mae|timer_done~2_combout\);

-- Location: LCCOMB_X40_Y14_N10
\u_mae|timer_done~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_done~3_combout\ = (\u_mae|timer_cnt\(0) & (\u_mae|timer_cnt\(1) & (\u_mae|timer_done~2_combout\ & !\u_mae|timer_done~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(0),
	datab => \u_mae|timer_cnt\(1),
	datac => \u_mae|timer_done~2_combout\,
	datad => \u_mae|timer_done~1_combout\,
	combout => \u_mae|timer_done~3_combout\);

-- Location: LCCOMB_X40_Y13_N24
\u_mae|timer_done~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|timer_done~8_combout\ = (!\u_mae|timer_cnt\(12) & (!\u_mae|timer_cnt\(11) & (\u_mae|timer_done~7_combout\ & \u_mae|timer_done~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|timer_cnt\(12),
	datab => \u_mae|timer_cnt\(11),
	datac => \u_mae|timer_done~7_combout\,
	datad => \u_mae|timer_done~3_combout\,
	combout => \u_mae|timer_done~8_combout\);

-- Location: FF_X40_Y13_N25
\u_mae|timer_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|timer_done~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|timer_done~q\);

-- Location: LCCOMB_X41_Y14_N18
\u_mae|ep~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|ep~11_combout\ = (\u_mae|ep.wait_release~q\ & (!\go~input_o\ & ((!\u_mae|timer_done~q\) # (!\u_mae|ep.debounce~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|ep.debounce~q\,
	datab => \u_mae|ep.wait_release~q\,
	datac => \u_mae|timer_done~q\,
	datad => \go~input_o\,
	combout => \u_mae|ep~11_combout\);

-- Location: LCCOMB_X41_Y14_N14
\u_mae|ep~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|ep~12_combout\ = (\rst~input_o\ & ((\u_mae|ep.pulse~q\) # ((\u_mae|ep.idle~q\ & \u_mae|ep~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|ep.idle~q\,
	datab => \u_mae|ep.pulse~q\,
	datac => \rst~input_o\,
	datad => \u_mae|ep~11_combout\,
	combout => \u_mae|ep~12_combout\);

-- Location: FF_X41_Y14_N15
\u_mae|ep.wait_release\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|ep~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|ep.wait_release~q\);

-- Location: LCCOMB_X41_Y14_N12
\u_mae|ep~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|ep~9_combout\ = (\u_mae|ep.debounce~q\) # ((\u_mae|ep.wait_release~q\) # ((!\u_mae|ep.idle~q\ & !\u_mae|ep.pulse~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|ep.debounce~q\,
	datab => \u_mae|ep.wait_release~q\,
	datac => \u_mae|ep.idle~q\,
	datad => \u_mae|ep.pulse~q\,
	combout => \u_mae|ep~9_combout\);

-- Location: LCCOMB_X41_Y14_N26
\u_mae|ep~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|ep~10_combout\ = (\rst~input_o\ & ((!\go~input_o\) # (!\u_mae|ep~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|ep~9_combout\,
	datac => \rst~input_o\,
	datad => \go~input_o\,
	combout => \u_mae|ep~10_combout\);

-- Location: FF_X41_Y14_N27
\u_mae|ep.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|ep~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|ep.idle~q\);

-- Location: LCCOMB_X41_Y14_N20
\u_mae|ep~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|ep~7_combout\ = (!\u_mae|ep.pulse~q\ & ((\u_mae|ep.debounce~q\ & (!\u_mae|timer_done~q\)) # (!\u_mae|ep.debounce~q\ & ((!\u_mae|ep.idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|ep.debounce~q\,
	datab => \u_mae|timer_done~q\,
	datac => \u_mae|ep.idle~q\,
	datad => \u_mae|ep.pulse~q\,
	combout => \u_mae|ep~7_combout\);

-- Location: LCCOMB_X41_Y14_N10
\u_mae|ep~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|ep~8_combout\ = (!\go~input_o\ & (\rst~input_o\ & \u_mae|ep~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \go~input_o\,
	datac => \rst~input_o\,
	datad => \u_mae|ep~7_combout\,
	combout => \u_mae|ep~8_combout\);

-- Location: FF_X41_Y14_N11
\u_mae|ep.debounce\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|ep~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|ep.debounce~q\);

-- Location: LCCOMB_X41_Y14_N28
\u_mae|ep~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_mae|ep~6_combout\ = (\u_mae|ep.debounce~q\ & (\u_mae|timer_done~q\ & (\rst~input_o\ & !\go~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_mae|ep.debounce~q\,
	datab => \u_mae|timer_done~q\,
	datac => \rst~input_o\,
	datad => \go~input_o\,
	combout => \u_mae|ep~6_combout\);

-- Location: FF_X41_Y14_N29
\u_mae|ep.pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_mae|ep~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_mae|ep.pulse~q\);

-- Location: LCCOMB_X41_Y14_N30
\u_cnt|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_cnt|count[0]~1_combout\ = (\u_mae|ep.pulse~q\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \u_mae|ep.pulse~q\,
	combout => \u_cnt|count[0]~1_combout\);

-- Location: FF_X41_Y14_N25
\u_cnt|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_cnt|count~0_combout\,
	ena => \u_cnt|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_cnt|count\(0));

-- Location: LCCOMB_X41_Y14_N22
\u_cnt|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_cnt|count~2_combout\ = (\rst~input_o\ & (\u_cnt|count\(1) $ (\u_cnt|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \u_cnt|count\(1),
	datad => \u_cnt|count\(0),
	combout => \u_cnt|count~2_combout\);

-- Location: FF_X41_Y14_N23
\u_cnt|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_cnt|count~2_combout\,
	ena => \u_cnt|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_cnt|count\(1));

-- Location: LCCOMB_X41_Y14_N16
\u_cnt|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_cnt|count~3_combout\ = (\rst~input_o\ & (\u_cnt|count\(2) $ (((\u_cnt|count\(1) & \u_cnt|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_cnt|count\(1),
	datab => \rst~input_o\,
	datac => \u_cnt|count\(2),
	datad => \u_cnt|count\(0),
	combout => \u_cnt|count~3_combout\);

-- Location: FF_X41_Y14_N17
\u_cnt|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_cnt|count~3_combout\,
	ena => \u_cnt|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_cnt|count\(2));

-- Location: LCCOMB_X41_Y14_N8
\u_cnt|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_cnt|Add0~0_combout\ = \u_cnt|count\(3) $ (((\u_cnt|count\(0) & (\u_cnt|count\(1) & \u_cnt|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_cnt|count\(3),
	datab => \u_cnt|count\(0),
	datac => \u_cnt|count\(1),
	datad => \u_cnt|count\(2),
	combout => \u_cnt|Add0~0_combout\);

-- Location: LCCOMB_X41_Y14_N6
\u_cnt|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u_cnt|count~4_combout\ = (\u_cnt|Add0~0_combout\ & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_cnt|Add0~0_combout\,
	datac => \rst~input_o\,
	combout => \u_cnt|count~4_combout\);

-- Location: FF_X41_Y14_N7
\u_cnt|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \u_cnt|count~4_combout\,
	ena => \u_cnt|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_cnt|count\(3));

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;
END structure;


