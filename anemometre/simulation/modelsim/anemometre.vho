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

-- DATE "02/25/2026 09:24:40"

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

ENTITY 	anemometre IS
    PORT (
	clk : IN std_logic;
	chipselect : IN std_logic;
	write_n : IN std_logic;
	reset_n : IN std_logic;
	writedata : IN std_logic_vector(31 DOWNTO 0);
	address : IN std_logic_vector(1 DOWNTO 0);
	readdata : OUT std_logic_vector(31 DOWNTO 0);
	FREQ_IN : IN std_logic;
	data_valid : OUT std_logic;
	data_anemometre : OUT std_logic_vector(7 DOWNTO 0);
	etat_dbg : OUT std_logic_vector(1 DOWNTO 0)
	);
END anemometre;

-- Design Ports Information
-- writedata[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[7]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[8]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[9]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[11]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[13]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[14]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[15]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[16]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[17]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[18]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[19]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[20]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[21]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[22]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[23]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[24]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[25]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[26]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[27]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[28]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[29]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[30]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[31]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_valid	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[4]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[7]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- etat_dbg[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- etat_dbg[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_n	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipselect	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FREQ_IN	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF anemometre IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_chipselect : std_logic;
SIGNAL ww_write_n : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_FREQ_IN : std_logic;
SIGNAL ww_data_valid : std_logic;
SIGNAL ww_data_anemometre : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_etat_dbg : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \writedata[3]~input_o\ : std_logic;
SIGNAL \writedata[4]~input_o\ : std_logic;
SIGNAL \writedata[5]~input_o\ : std_logic;
SIGNAL \writedata[6]~input_o\ : std_logic;
SIGNAL \writedata[7]~input_o\ : std_logic;
SIGNAL \writedata[8]~input_o\ : std_logic;
SIGNAL \writedata[9]~input_o\ : std_logic;
SIGNAL \writedata[10]~input_o\ : std_logic;
SIGNAL \writedata[11]~input_o\ : std_logic;
SIGNAL \writedata[12]~input_o\ : std_logic;
SIGNAL \writedata[13]~input_o\ : std_logic;
SIGNAL \writedata[14]~input_o\ : std_logic;
SIGNAL \writedata[15]~input_o\ : std_logic;
SIGNAL \writedata[16]~input_o\ : std_logic;
SIGNAL \writedata[17]~input_o\ : std_logic;
SIGNAL \writedata[18]~input_o\ : std_logic;
SIGNAL \writedata[19]~input_o\ : std_logic;
SIGNAL \writedata[20]~input_o\ : std_logic;
SIGNAL \writedata[21]~input_o\ : std_logic;
SIGNAL \writedata[22]~input_o\ : std_logic;
SIGNAL \writedata[23]~input_o\ : std_logic;
SIGNAL \writedata[24]~input_o\ : std_logic;
SIGNAL \writedata[25]~input_o\ : std_logic;
SIGNAL \writedata[26]~input_o\ : std_logic;
SIGNAL \writedata[27]~input_o\ : std_logic;
SIGNAL \writedata[28]~input_o\ : std_logic;
SIGNAL \writedata[29]~input_o\ : std_logic;
SIGNAL \writedata[30]~input_o\ : std_logic;
SIGNAL \writedata[31]~input_o\ : std_logic;
SIGNAL \readdata[0]~output_o\ : std_logic;
SIGNAL \readdata[1]~output_o\ : std_logic;
SIGNAL \readdata[2]~output_o\ : std_logic;
SIGNAL \readdata[3]~output_o\ : std_logic;
SIGNAL \readdata[4]~output_o\ : std_logic;
SIGNAL \readdata[5]~output_o\ : std_logic;
SIGNAL \readdata[6]~output_o\ : std_logic;
SIGNAL \readdata[7]~output_o\ : std_logic;
SIGNAL \readdata[8]~output_o\ : std_logic;
SIGNAL \readdata[9]~output_o\ : std_logic;
SIGNAL \readdata[10]~output_o\ : std_logic;
SIGNAL \readdata[11]~output_o\ : std_logic;
SIGNAL \readdata[12]~output_o\ : std_logic;
SIGNAL \readdata[13]~output_o\ : std_logic;
SIGNAL \readdata[14]~output_o\ : std_logic;
SIGNAL \readdata[15]~output_o\ : std_logic;
SIGNAL \readdata[16]~output_o\ : std_logic;
SIGNAL \readdata[17]~output_o\ : std_logic;
SIGNAL \readdata[18]~output_o\ : std_logic;
SIGNAL \readdata[19]~output_o\ : std_logic;
SIGNAL \readdata[20]~output_o\ : std_logic;
SIGNAL \readdata[21]~output_o\ : std_logic;
SIGNAL \readdata[22]~output_o\ : std_logic;
SIGNAL \readdata[23]~output_o\ : std_logic;
SIGNAL \readdata[24]~output_o\ : std_logic;
SIGNAL \readdata[25]~output_o\ : std_logic;
SIGNAL \readdata[26]~output_o\ : std_logic;
SIGNAL \readdata[27]~output_o\ : std_logic;
SIGNAL \readdata[28]~output_o\ : std_logic;
SIGNAL \readdata[29]~output_o\ : std_logic;
SIGNAL \readdata[30]~output_o\ : std_logic;
SIGNAL \readdata[31]~output_o\ : std_logic;
SIGNAL \data_valid~output_o\ : std_logic;
SIGNAL \data_anemometre[0]~output_o\ : std_logic;
SIGNAL \data_anemometre[1]~output_o\ : std_logic;
SIGNAL \data_anemometre[2]~output_o\ : std_logic;
SIGNAL \data_anemometre[3]~output_o\ : std_logic;
SIGNAL \data_anemometre[4]~output_o\ : std_logic;
SIGNAL \data_anemometre[5]~output_o\ : std_logic;
SIGNAL \data_anemometre[6]~output_o\ : std_logic;
SIGNAL \data_anemometre[7]~output_o\ : std_logic;
SIGNAL \etat_dbg[0]~output_o\ : std_logic;
SIGNAL \etat_dbg[1]~output_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \writedata[0]~input_o\ : std_logic;
SIGNAL \chipselect~input_o\ : std_logic;
SIGNAL \write_n~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \cfg~0_combout\ : std_logic;
SIGNAL \writedata[2]~input_o\ : std_logic;
SIGNAL \cfg~3_combout\ : std_logic;
SIGNAL \cfg[1]~2_combout\ : std_logic;
SIGNAL \writedata[1]~input_o\ : std_logic;
SIGNAL \cfg~1_combout\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \state.S_LATCH~q\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state.S_VALID~q\ : std_logic;
SIGNAL \tick_cnt~4_combout\ : std_logic;
SIGNAL \tick_cnt~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \tick_cnt~0_combout\ : std_logic;
SIGNAL \tick_cnt~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \tick_cnt~3_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \tick_cnt~5_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \tick_cnt~6_combout\ : std_logic;
SIGNAL \tick_cnt~7_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \pulse_cnt~3_combout\ : std_logic;
SIGNAL \pulse_cnt~2_combout\ : std_logic;
SIGNAL \tick_cnt~12_combout\ : std_logic;
SIGNAL \tick_cnt~10_combout\ : std_logic;
SIGNAL \tick_cnt~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \tick_cnt~9_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \tick_cnt~11_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \tick_cnt~13_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \tick_cnt~15_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \tick_cnt~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \tick_cnt~17_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \tick_cnt~18_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \tick_cnt~19_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \tick_cnt~20_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \tick_cnt~22_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \tick_cnt~23_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \tick_cnt~31_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \tick_cnt~24_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \tick_cnt~26_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \tick_cnt~25_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \tick_cnt~27_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \tick_cnt~28_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \tick_cnt~29_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \tick_cnt~30_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \tick_cnt~39_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \tick_cnt~32_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \tick_cnt~33_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \tick_cnt~34_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \tick_cnt~35_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \tick_cnt~36_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \tick_cnt~37_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \tick_cnt~38_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \tick_cnt~14_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \tick_cnt~21_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \state~8_combout\ : std_logic;
SIGNAL \state.S_IDLE~feeder_combout\ : std_logic;
SIGNAL \state.S_IDLE~q\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state.S_COUNT~q\ : std_logic;
SIGNAL \pulse_cnt~0_combout\ : std_logic;
SIGNAL \FREQ_IN~input_o\ : std_logic;
SIGNAL \f1~0_combout\ : std_logic;
SIGNAL \f1~q\ : std_logic;
SIGNAL \f2~0_combout\ : std_logic;
SIGNAL \f2~q\ : std_logic;
SIGNAL \f2_d~0_combout\ : std_logic;
SIGNAL \f2_d~q\ : std_logic;
SIGNAL \pulse_in~0_combout\ : std_logic;
SIGNAL \pulse_in~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \pulse_cnt~1_combout\ : std_logic;
SIGNAL \pulse_cnt~24_combout\ : std_logic;
SIGNAL \pulse_cnt~22_combout\ : std_logic;
SIGNAL \pulse_cnt~20_combout\ : std_logic;
SIGNAL \pulse_cnt~16_combout\ : std_logic;
SIGNAL \pulse_cnt~14_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \pulse_cnt~12_combout\ : std_logic;
SIGNAL \pulse_cnt~13_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \pulse_cnt~15_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \pulse_cnt~17_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \pulse_cnt~18_combout\ : std_logic;
SIGNAL \pulse_cnt~19_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \pulse_cnt~21_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \pulse_cnt~23_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \pulse_cnt~25_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \pulse_cnt~5_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \pulse_cnt~4_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \pulse_cnt~6_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \pulse_cnt~7_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \pulse_cnt~8_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \pulse_cnt~9_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \pulse_cnt~10_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \pulse_cnt~11_combout\ : std_logic;
SIGNAL \data_reg[4]~17_combout\ : std_logic;
SIGNAL \data_reg[4]~16_combout\ : std_logic;
SIGNAL \data_reg[4]~18_combout\ : std_logic;
SIGNAL \data_reg~20_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \data_reg[4]~19_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \data_reg~21_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \data_reg~22_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \data_reg~23_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \data_reg~24_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \data_reg~25_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \data_reg~26_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \data_reg~27_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \valid_reg~0_combout\ : std_logic;
SIGNAL \valid_reg~1_combout\ : std_logic;
SIGNAL \valid_reg~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \etat_dbg~3_combout\ : std_logic;
SIGNAL \etat_dbg~4_combout\ : std_logic;
SIGNAL data_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL cfg : std_logic_vector(2 DOWNTO 0);
SIGNAL pulse_cnt : std_logic_vector(15 DOWNTO 0);
SIGNAL tick_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_etat_dbg~4_combout\ : std_logic;
SIGNAL \ALT_INV_etat_dbg~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_chipselect <= chipselect;
ww_write_n <= write_n;
ww_reset_n <= reset_n;
ww_writedata <= writedata;
ww_address <= address;
readdata <= ww_readdata;
ww_FREQ_IN <= FREQ_IN;
data_valid <= ww_data_valid;
data_anemometre <= ww_data_anemometre;
etat_dbg <= ww_etat_dbg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_etat_dbg~4_combout\ <= NOT \etat_dbg~4_combout\;
\ALT_INV_etat_dbg~3_combout\ <= NOT \etat_dbg~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X14_Y34_N23
\readdata[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \readdata[0]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\readdata[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \readdata[1]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\readdata[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \readdata[2]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\readdata[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \readdata[3]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\readdata[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \readdata[4]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\readdata[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \readdata[5]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\readdata[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \readdata[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\readdata[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \readdata[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\readdata[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[8]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\readdata[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \readdata[9]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\readdata[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[10]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\readdata[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\readdata[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[12]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\readdata[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\readdata[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[14]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\readdata[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\readdata[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[16]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\readdata[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[17]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\readdata[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[18]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\readdata[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[19]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\readdata[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[20]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\readdata[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[21]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\readdata[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[22]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\readdata[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[23]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\readdata[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[24]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\readdata[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[25]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\readdata[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[26]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\readdata[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[27]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\readdata[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[28]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\readdata[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[29]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\readdata[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[30]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\readdata[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[31]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\data_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid_reg~q\,
	devoe => ww_devoe,
	o => \data_valid~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\data_anemometre[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(0),
	devoe => ww_devoe,
	o => \data_anemometre[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\data_anemometre[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(1),
	devoe => ww_devoe,
	o => \data_anemometre[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\data_anemometre[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(2),
	devoe => ww_devoe,
	o => \data_anemometre[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\data_anemometre[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(3),
	devoe => ww_devoe,
	o => \data_anemometre[3]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\data_anemometre[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(4),
	devoe => ww_devoe,
	o => \data_anemometre[4]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\data_anemometre[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(5),
	devoe => ww_devoe,
	o => \data_anemometre[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\data_anemometre[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(6),
	devoe => ww_devoe,
	o => \data_anemometre[6]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\data_anemometre[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_reg(7),
	devoe => ww_devoe,
	o => \data_anemometre[7]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\etat_dbg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_etat_dbg~3_combout\,
	devoe => ww_devoe,
	o => \etat_dbg[0]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\etat_dbg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_etat_dbg~4_combout\,
	devoe => ww_devoe,
	o => \etat_dbg[1]~output_o\);

-- Location: IOIBUF_X20_Y34_N8
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y34_N15
\writedata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\chipselect~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_chipselect,
	o => \chipselect~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\write_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_n,
	o => \write_n~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X18_Y30_N16
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\address[1]~input_o\) # (((\write_n~input_o\) # (\address[0]~input_o\)) # (!\chipselect~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \chipselect~input_o\,
	datac => \write_n~input_o\,
	datad => \address[0]~input_o\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X16_Y34_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LCCOMB_X18_Y30_N28
\cfg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cfg~0_combout\ = (\reset_n~input_o\ & ((\process_0~0_combout\ & ((cfg(0)))) # (!\process_0~0_combout\ & (!\writedata[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[0]~input_o\,
	datab => \process_0~0_combout\,
	datac => cfg(0),
	datad => \reset_n~input_o\,
	combout => \cfg~0_combout\);

-- Location: FF_X18_Y30_N29
\cfg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cfg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cfg(0));

-- Location: IOIBUF_X18_Y34_N1
\writedata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: LCCOMB_X18_Y30_N8
\cfg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cfg~3_combout\ = (\reset_n~input_o\ & \writedata[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \writedata[2]~input_o\,
	combout => \cfg~3_combout\);

-- Location: LCCOMB_X18_Y30_N26
\cfg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cfg[1]~2_combout\ = (!\process_0~0_combout\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \process_0~0_combout\,
	combout => \cfg[1]~2_combout\);

-- Location: FF_X18_Y30_N9
\cfg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cfg~3_combout\,
	ena => \cfg[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cfg(2));

-- Location: IOIBUF_X31_Y34_N8
\writedata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: LCCOMB_X18_Y30_N24
\cfg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cfg~1_combout\ = (\reset_n~input_o\ & \writedata[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => \writedata[1]~input_o\,
	combout => \cfg~1_combout\);

-- Location: FF_X18_Y30_N25
\cfg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cfg~1_combout\,
	ena => \cfg[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cfg(1));

-- Location: LCCOMB_X18_Y30_N20
\state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~7_combout\ = (\reset_n~input_o\ & (!cfg(0) & ((cfg(2)) # (cfg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => cfg(0),
	datac => cfg(2),
	datad => cfg(1),
	combout => \state~7_combout\);

-- Location: LCCOMB_X17_Y30_N18
\state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~9_combout\ = (\state~7_combout\ & \state~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state~7_combout\,
	datad => \state~8_combout\,
	combout => \state~9_combout\);

-- Location: FF_X17_Y30_N19
\state.S_LATCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_LATCH~q\);

-- Location: LCCOMB_X17_Y30_N14
\state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (\state~7_combout\ & ((\state.S_VALID~q\ & ((!cfg(1)))) # (!\state.S_VALID~q\ & (\state.S_LATCH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~7_combout\,
	datab => \state.S_LATCH~q\,
	datac => \state.S_VALID~q\,
	datad => cfg(1),
	combout => \state~13_combout\);

-- Location: FF_X17_Y30_N15
\state.S_VALID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_VALID~q\);

-- Location: LCCOMB_X17_Y26_N22
\tick_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~4_combout\ = (tick_cnt(2) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tick_cnt(2),
	datad => \state.S_VALID~q\,
	combout => \tick_cnt~4_combout\);

-- Location: LCCOMB_X17_Y26_N26
\tick_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~2_combout\ = (tick_cnt(1) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tick_cnt(1),
	datad => \state.S_VALID~q\,
	combout => \tick_cnt~2_combout\);

-- Location: LCCOMB_X18_Y26_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = tick_cnt(0) $ (VCC)
-- \Add1~1\ = CARRY(tick_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X17_Y26_N18
\tick_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~0_combout\ = (tick_cnt(0) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tick_cnt(0),
	datad => \state.S_VALID~q\,
	combout => \tick_cnt~0_combout\);

-- Location: LCCOMB_X17_Y26_N28
\tick_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~1_combout\ = (\state~7_combout\ & ((\tick_cnt~0_combout\) # ((\state.S_COUNT~q\ & \Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \Add1~0_combout\,
	datac => \state~7_combout\,
	datad => \tick_cnt~0_combout\,
	combout => \tick_cnt~1_combout\);

-- Location: FF_X18_Y26_N11
\tick_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tick_cnt~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(0));

-- Location: LCCOMB_X18_Y26_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (tick_cnt(1) & (!\Add1~1\)) # (!tick_cnt(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!tick_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X17_Y26_N4
\tick_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~3_combout\ = (\state~7_combout\ & ((\tick_cnt~2_combout\) # ((\state.S_COUNT~q\ & \Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~2_combout\,
	datab => \state.S_COUNT~q\,
	datac => \state~7_combout\,
	datad => \Add1~2_combout\,
	combout => \tick_cnt~3_combout\);

-- Location: FF_X18_Y26_N9
\tick_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tick_cnt~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(1));

-- Location: LCCOMB_X18_Y26_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (tick_cnt(2) & (\Add1~3\ $ (GND))) # (!tick_cnt(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((tick_cnt(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X17_Y26_N0
\tick_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~5_combout\ = (\state~7_combout\ & ((\tick_cnt~4_combout\) # ((\state.S_COUNT~q\ & \Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~4_combout\,
	datab => \state.S_COUNT~q\,
	datac => \state~7_combout\,
	datad => \Add1~4_combout\,
	combout => \tick_cnt~5_combout\);

-- Location: FF_X18_Y26_N31
\tick_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tick_cnt~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(2));

-- Location: LCCOMB_X18_Y26_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (tick_cnt(3) & (!\Add1~5\)) # (!tick_cnt(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!tick_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X17_Y26_N2
\tick_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~6_combout\ = (tick_cnt(3) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tick_cnt(3),
	datad => \state.S_VALID~q\,
	combout => \tick_cnt~6_combout\);

-- Location: LCCOMB_X17_Y26_N16
\tick_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~7_combout\ = (\state~7_combout\ & ((\tick_cnt~6_combout\) # ((\Add1~6_combout\ & \state.S_COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \state.S_COUNT~q\,
	datac => \state~7_combout\,
	datad => \tick_cnt~6_combout\,
	combout => \tick_cnt~7_combout\);

-- Location: FF_X18_Y26_N3
\tick_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tick_cnt~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(3));

-- Location: LCCOMB_X17_Y26_N6
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (tick_cnt(3) & (tick_cnt(0) & (tick_cnt(1) & tick_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(3),
	datab => tick_cnt(0),
	datac => tick_cnt(1),
	datad => tick_cnt(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X18_Y27_N28
\pulse_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~3_combout\ = (\state.S_VALID~q\ & \state~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_VALID~q\,
	datad => \state~7_combout\,
	combout => \pulse_cnt~3_combout\);

-- Location: LCCOMB_X17_Y26_N8
\pulse_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~2_combout\ = (\state~7_combout\ & \state.S_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state~7_combout\,
	datad => \state.S_COUNT~q\,
	combout => \pulse_cnt~2_combout\);

-- Location: LCCOMB_X19_Y26_N10
\tick_cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~12_combout\ = (tick_cnt(6) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(6),
	datad => \state.S_VALID~q\,
	combout => \tick_cnt~12_combout\);

-- Location: LCCOMB_X19_Y26_N12
\tick_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~10_combout\ = (tick_cnt(5) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(5),
	datad => \state.S_VALID~q\,
	combout => \tick_cnt~10_combout\);

-- Location: LCCOMB_X19_Y26_N28
\tick_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~8_combout\ = (tick_cnt(4) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tick_cnt(4),
	datad => \state.S_VALID~q\,
	combout => \tick_cnt~8_combout\);

-- Location: LCCOMB_X18_Y26_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (tick_cnt(4) & (\Add1~7\ $ (GND))) # (!tick_cnt(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((tick_cnt(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X19_Y26_N30
\tick_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~9_combout\ = (\state~7_combout\ & ((\tick_cnt~8_combout\) # ((\state.S_COUNT~q\ & \Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \tick_cnt~8_combout\,
	datac => \state~7_combout\,
	datad => \Add1~8_combout\,
	combout => \tick_cnt~9_combout\);

-- Location: FF_X18_Y26_N19
\tick_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tick_cnt~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(4));

-- Location: LCCOMB_X18_Y26_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (tick_cnt(5) & (!\Add1~9\)) # (!tick_cnt(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!tick_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X19_Y26_N6
\tick_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~11_combout\ = (\state~7_combout\ & ((\tick_cnt~10_combout\) # ((\state.S_COUNT~q\ & \Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~10_combout\,
	datab => \state.S_COUNT~q\,
	datac => \state~7_combout\,
	datad => \Add1~10_combout\,
	combout => \tick_cnt~11_combout\);

-- Location: FF_X19_Y26_N7
\tick_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(5));

-- Location: LCCOMB_X18_Y26_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (tick_cnt(6) & (\Add1~11\ $ (GND))) # (!tick_cnt(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((tick_cnt(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X19_Y26_N20
\tick_cnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~13_combout\ = (\state~7_combout\ & ((\tick_cnt~12_combout\) # ((\state.S_COUNT~q\ & \Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~12_combout\,
	datab => \state.S_COUNT~q\,
	datac => \state~7_combout\,
	datad => \Add1~12_combout\,
	combout => \tick_cnt~13_combout\);

-- Location: FF_X19_Y26_N21
\tick_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(6));

-- Location: LCCOMB_X18_Y26_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (tick_cnt(7) & (!\Add1~13\)) # (!tick_cnt(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!tick_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X17_Y26_N12
\tick_cnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~15_combout\ = (\tick_cnt~14_combout\ & ((\Add1~14_combout\) # ((tick_cnt(7) & \pulse_cnt~3_combout\)))) # (!\tick_cnt~14_combout\ & (((tick_cnt(7) & \pulse_cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \Add1~14_combout\,
	datac => tick_cnt(7),
	datad => \pulse_cnt~3_combout\,
	combout => \tick_cnt~15_combout\);

-- Location: FF_X17_Y26_N13
\tick_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(7));

-- Location: LCCOMB_X18_Y26_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (tick_cnt(8) & (\Add1~15\ $ (GND))) # (!tick_cnt(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((tick_cnt(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X19_Y25_N0
\tick_cnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~16_combout\ = (\pulse_cnt~3_combout\ & ((tick_cnt(8)) # ((\Add1~16_combout\ & \pulse_cnt~2_combout\)))) # (!\pulse_cnt~3_combout\ & (\Add1~16_combout\ & ((\pulse_cnt~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~3_combout\,
	datab => \Add1~16_combout\,
	datac => tick_cnt(8),
	datad => \pulse_cnt~2_combout\,
	combout => \tick_cnt~16_combout\);

-- Location: FF_X19_Y25_N1
\tick_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(8));

-- Location: LCCOMB_X18_Y26_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (tick_cnt(9) & (!\Add1~17\)) # (!tick_cnt(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!tick_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X19_Y25_N22
\tick_cnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~17_combout\ = (\Add1~18_combout\ & ((\pulse_cnt~2_combout\) # ((tick_cnt(9) & \pulse_cnt~3_combout\)))) # (!\Add1~18_combout\ & (((tick_cnt(9) & \pulse_cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \pulse_cnt~2_combout\,
	datac => tick_cnt(9),
	datad => \pulse_cnt~3_combout\,
	combout => \tick_cnt~17_combout\);

-- Location: FF_X19_Y25_N23
\tick_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(9));

-- Location: LCCOMB_X18_Y26_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (tick_cnt(10) & (\Add1~19\ $ (GND))) # (!tick_cnt(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((tick_cnt(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X19_Y25_N16
\tick_cnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~18_combout\ = (\pulse_cnt~3_combout\ & ((tick_cnt(10)) # ((\pulse_cnt~2_combout\ & \Add1~20_combout\)))) # (!\pulse_cnt~3_combout\ & (\pulse_cnt~2_combout\ & ((\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~3_combout\,
	datab => \pulse_cnt~2_combout\,
	datac => tick_cnt(10),
	datad => \Add1~20_combout\,
	combout => \tick_cnt~18_combout\);

-- Location: FF_X19_Y25_N17
\tick_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(10));

-- Location: LCCOMB_X18_Y26_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (tick_cnt(11) & (!\Add1~21\)) # (!tick_cnt(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!tick_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X19_Y25_N10
\tick_cnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~19_combout\ = (\pulse_cnt~3_combout\ & ((tick_cnt(11)) # ((\pulse_cnt~2_combout\ & \Add1~22_combout\)))) # (!\pulse_cnt~3_combout\ & (\pulse_cnt~2_combout\ & ((\Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~3_combout\,
	datab => \pulse_cnt~2_combout\,
	datac => tick_cnt(11),
	datad => \Add1~22_combout\,
	combout => \tick_cnt~19_combout\);

-- Location: FF_X19_Y25_N11
\tick_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(11));

-- Location: LCCOMB_X18_Y26_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (tick_cnt(12) & (\Add1~23\ $ (GND))) # (!tick_cnt(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((tick_cnt(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X17_Y25_N4
\tick_cnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~20_combout\ = (\tick_cnt~14_combout\ & ((\Add1~24_combout\) # ((\pulse_cnt~3_combout\ & tick_cnt(12))))) # (!\tick_cnt~14_combout\ & (\pulse_cnt~3_combout\ & (tick_cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => tick_cnt(12),
	datad => \Add1~24_combout\,
	combout => \tick_cnt~20_combout\);

-- Location: FF_X17_Y25_N5
\tick_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(12));

-- Location: LCCOMB_X18_Y26_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (tick_cnt(13) & (!\Add1~25\)) # (!tick_cnt(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!tick_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X18_Y26_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (tick_cnt(14) & (\Add1~27\ $ (GND))) # (!tick_cnt(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((tick_cnt(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X17_Y25_N28
\tick_cnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~22_combout\ = (\tick_cnt~14_combout\ & ((\Add1~28_combout\) # ((\pulse_cnt~3_combout\ & tick_cnt(14))))) # (!\tick_cnt~14_combout\ & (\pulse_cnt~3_combout\ & (tick_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => tick_cnt(14),
	datad => \Add1~28_combout\,
	combout => \tick_cnt~22_combout\);

-- Location: FF_X17_Y25_N29
\tick_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(14));

-- Location: LCCOMB_X18_Y26_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (tick_cnt(15) & (!\Add1~29\)) # (!tick_cnt(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!tick_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X17_Y25_N22
\tick_cnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~23_combout\ = (\tick_cnt~14_combout\ & ((\Add1~30_combout\) # ((tick_cnt(15) & \pulse_cnt~3_combout\)))) # (!\tick_cnt~14_combout\ & (((tick_cnt(15) & \pulse_cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \Add1~30_combout\,
	datac => tick_cnt(15),
	datad => \pulse_cnt~3_combout\,
	combout => \tick_cnt~23_combout\);

-- Location: FF_X17_Y25_N23
\tick_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(15));

-- Location: LCCOMB_X18_Y25_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (tick_cnt(16) & (\Add1~31\ $ (GND))) # (!tick_cnt(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((tick_cnt(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X17_Y25_N20
\tick_cnt~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~31_combout\ = (\pulse_cnt~2_combout\ & ((\Add1~32_combout\) # ((tick_cnt(16) & \pulse_cnt~3_combout\)))) # (!\pulse_cnt~2_combout\ & (((tick_cnt(16) & \pulse_cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~2_combout\,
	datab => \Add1~32_combout\,
	datac => tick_cnt(16),
	datad => \pulse_cnt~3_combout\,
	combout => \tick_cnt~31_combout\);

-- Location: FF_X17_Y25_N21
\tick_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(16));

-- Location: LCCOMB_X18_Y25_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (tick_cnt(17) & (!\Add1~33\)) # (!tick_cnt(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!tick_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X17_Y25_N30
\tick_cnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~24_combout\ = (\tick_cnt~14_combout\ & ((\Add1~34_combout\) # ((tick_cnt(17) & \pulse_cnt~3_combout\)))) # (!\tick_cnt~14_combout\ & (((tick_cnt(17) & \pulse_cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \Add1~34_combout\,
	datac => tick_cnt(17),
	datad => \pulse_cnt~3_combout\,
	combout => \tick_cnt~24_combout\);

-- Location: FF_X17_Y25_N31
\tick_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(17));

-- Location: LCCOMB_X18_Y25_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (tick_cnt(18) & (\Add1~35\ $ (GND))) # (!tick_cnt(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((tick_cnt(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X17_Y25_N6
\tick_cnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~26_combout\ = (\Add1~36_combout\ & ((\pulse_cnt~2_combout\) # ((\pulse_cnt~3_combout\ & tick_cnt(18))))) # (!\Add1~36_combout\ & (\pulse_cnt~3_combout\ & (tick_cnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => tick_cnt(18),
	datad => \pulse_cnt~2_combout\,
	combout => \tick_cnt~26_combout\);

-- Location: FF_X17_Y25_N7
\tick_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(18));

-- Location: LCCOMB_X18_Y25_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (tick_cnt(19) & (!\Add1~37\)) # (!tick_cnt(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!tick_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X17_Y25_N16
\tick_cnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~25_combout\ = (\tick_cnt~14_combout\ & ((\Add1~38_combout\) # ((\pulse_cnt~3_combout\ & tick_cnt(19))))) # (!\tick_cnt~14_combout\ & (\pulse_cnt~3_combout\ & (tick_cnt(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => tick_cnt(19),
	datad => \Add1~38_combout\,
	combout => \tick_cnt~25_combout\);

-- Location: FF_X17_Y25_N17
\tick_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(19));

-- Location: LCCOMB_X18_Y25_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (tick_cnt(20) & (\Add1~39\ $ (GND))) # (!tick_cnt(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((tick_cnt(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X17_Y25_N26
\tick_cnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~27_combout\ = (\tick_cnt~14_combout\ & ((\Add1~40_combout\) # ((tick_cnt(20) & \pulse_cnt~3_combout\)))) # (!\tick_cnt~14_combout\ & (((tick_cnt(20) & \pulse_cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \Add1~40_combout\,
	datac => tick_cnt(20),
	datad => \pulse_cnt~3_combout\,
	combout => \tick_cnt~27_combout\);

-- Location: FF_X17_Y25_N27
\tick_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(20));

-- Location: LCCOMB_X18_Y25_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (tick_cnt(21) & (!\Add1~41\)) # (!tick_cnt(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!tick_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X17_Y25_N12
\tick_cnt~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~28_combout\ = (\tick_cnt~14_combout\ & ((\Add1~42_combout\) # ((tick_cnt(21) & \pulse_cnt~3_combout\)))) # (!\tick_cnt~14_combout\ & (((tick_cnt(21) & \pulse_cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \Add1~42_combout\,
	datac => tick_cnt(21),
	datad => \pulse_cnt~3_combout\,
	combout => \tick_cnt~28_combout\);

-- Location: FF_X17_Y25_N13
\tick_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(21));

-- Location: LCCOMB_X18_Y25_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (tick_cnt(22) & (\Add1~43\ $ (GND))) # (!tick_cnt(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((tick_cnt(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X17_Y25_N14
\tick_cnt~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~29_combout\ = (\tick_cnt~14_combout\ & ((\Add1~44_combout\) # ((tick_cnt(22) & \pulse_cnt~3_combout\)))) # (!\tick_cnt~14_combout\ & (((tick_cnt(22) & \pulse_cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \Add1~44_combout\,
	datac => tick_cnt(22),
	datad => \pulse_cnt~3_combout\,
	combout => \tick_cnt~29_combout\);

-- Location: FF_X17_Y25_N15
\tick_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(22));

-- Location: LCCOMB_X18_Y25_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (tick_cnt(23) & (!\Add1~45\)) # (!tick_cnt(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!tick_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X17_Y25_N24
\tick_cnt~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~30_combout\ = (\tick_cnt~14_combout\ & ((\Add1~46_combout\) # ((\pulse_cnt~3_combout\ & tick_cnt(23))))) # (!\tick_cnt~14_combout\ & (\pulse_cnt~3_combout\ & (tick_cnt(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => tick_cnt(23),
	datad => \Add1~46_combout\,
	combout => \tick_cnt~30_combout\);

-- Location: FF_X17_Y25_N25
\tick_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(23));

-- Location: LCCOMB_X18_Y25_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (tick_cnt(24) & (\Add1~47\ $ (GND))) # (!tick_cnt(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((tick_cnt(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X19_Y25_N20
\tick_cnt~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~39_combout\ = (\Add1~48_combout\ & ((\pulse_cnt~2_combout\) # ((\pulse_cnt~3_combout\ & tick_cnt(24))))) # (!\Add1~48_combout\ & (\pulse_cnt~3_combout\ & (tick_cnt(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => tick_cnt(24),
	datad => \pulse_cnt~2_combout\,
	combout => \tick_cnt~39_combout\);

-- Location: FF_X19_Y25_N21
\tick_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(24));

-- Location: LCCOMB_X18_Y25_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (tick_cnt(25) & (!\Add1~49\)) # (!tick_cnt(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!tick_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X19_Y25_N18
\tick_cnt~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~32_combout\ = (\tick_cnt~14_combout\ & ((\Add1~50_combout\) # ((\pulse_cnt~3_combout\ & tick_cnt(25))))) # (!\tick_cnt~14_combout\ & (\pulse_cnt~3_combout\ & (tick_cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => tick_cnt(25),
	datad => \Add1~50_combout\,
	combout => \tick_cnt~32_combout\);

-- Location: FF_X19_Y25_N19
\tick_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(25));

-- Location: LCCOMB_X18_Y25_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (tick_cnt(26) & (\Add1~51\ $ (GND))) # (!tick_cnt(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((tick_cnt(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X19_Y25_N12
\tick_cnt~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~33_combout\ = (\pulse_cnt~3_combout\ & ((tick_cnt(26)) # ((\pulse_cnt~2_combout\ & \Add1~52_combout\)))) # (!\pulse_cnt~3_combout\ & (\pulse_cnt~2_combout\ & ((\Add1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~3_combout\,
	datab => \pulse_cnt~2_combout\,
	datac => tick_cnt(26),
	datad => \Add1~52_combout\,
	combout => \tick_cnt~33_combout\);

-- Location: FF_X19_Y25_N13
\tick_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(26));

-- Location: LCCOMB_X18_Y25_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (tick_cnt(27) & (!\Add1~53\)) # (!tick_cnt(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!tick_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X19_Y25_N6
\tick_cnt~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~34_combout\ = (\pulse_cnt~3_combout\ & ((tick_cnt(27)) # ((\pulse_cnt~2_combout\ & \Add1~54_combout\)))) # (!\pulse_cnt~3_combout\ & (\pulse_cnt~2_combout\ & ((\Add1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~3_combout\,
	datab => \pulse_cnt~2_combout\,
	datac => tick_cnt(27),
	datad => \Add1~54_combout\,
	combout => \tick_cnt~34_combout\);

-- Location: FF_X19_Y25_N7
\tick_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(27));

-- Location: LCCOMB_X18_Y25_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (tick_cnt(28) & (\Add1~55\ $ (GND))) # (!tick_cnt(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((tick_cnt(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X19_Y25_N30
\tick_cnt~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~35_combout\ = (\pulse_cnt~3_combout\ & ((tick_cnt(28)) # ((\pulse_cnt~2_combout\ & \Add1~56_combout\)))) # (!\pulse_cnt~3_combout\ & (\pulse_cnt~2_combout\ & ((\Add1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~3_combout\,
	datab => \pulse_cnt~2_combout\,
	datac => tick_cnt(28),
	datad => \Add1~56_combout\,
	combout => \tick_cnt~35_combout\);

-- Location: FF_X19_Y25_N31
\tick_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(28));

-- Location: LCCOMB_X18_Y25_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (tick_cnt(29) & (!\Add1~57\)) # (!tick_cnt(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!tick_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X19_Y25_N4
\tick_cnt~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~36_combout\ = (\Add1~58_combout\ & ((\pulse_cnt~2_combout\) # ((tick_cnt(29) & \pulse_cnt~3_combout\)))) # (!\Add1~58_combout\ & (((tick_cnt(29) & \pulse_cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \pulse_cnt~2_combout\,
	datac => tick_cnt(29),
	datad => \pulse_cnt~3_combout\,
	combout => \tick_cnt~36_combout\);

-- Location: FF_X19_Y25_N5
\tick_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(29));

-- Location: LCCOMB_X18_Y25_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (tick_cnt(30) & (\Add1~59\ $ (GND))) # (!tick_cnt(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((tick_cnt(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X19_Y25_N2
\tick_cnt~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~37_combout\ = (\pulse_cnt~3_combout\ & ((tick_cnt(30)) # ((\pulse_cnt~2_combout\ & \Add1~60_combout\)))) # (!\pulse_cnt~3_combout\ & (\pulse_cnt~2_combout\ & ((\Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~3_combout\,
	datab => \pulse_cnt~2_combout\,
	datac => tick_cnt(30),
	datad => \Add1~60_combout\,
	combout => \tick_cnt~37_combout\);

-- Location: FF_X19_Y25_N3
\tick_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(30));

-- Location: LCCOMB_X18_Y25_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (tick_cnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tick_cnt(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X19_Y25_N24
\tick_cnt~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~38_combout\ = (\pulse_cnt~3_combout\ & ((tick_cnt(31)) # ((\pulse_cnt~2_combout\ & \Add1~62_combout\)))) # (!\pulse_cnt~3_combout\ & (\pulse_cnt~2_combout\ & ((\Add1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~3_combout\,
	datab => \pulse_cnt~2_combout\,
	datac => tick_cnt(31),
	datad => \Add1~62_combout\,
	combout => \tick_cnt~38_combout\);

-- Location: FF_X19_Y25_N25
\tick_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(31));

-- Location: LCCOMB_X19_Y25_N26
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!tick_cnt(28) & (!tick_cnt(31) & (!tick_cnt(29) & !tick_cnt(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(28),
	datab => tick_cnt(31),
	datac => tick_cnt(29),
	datad => tick_cnt(30),
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X19_Y25_N8
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!tick_cnt(27) & !tick_cnt(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(27),
	datad => tick_cnt(26),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X19_Y25_N14
\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~9_combout\ & (tick_cnt(25) & (\Equal1~8_combout\ & !tick_cnt(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => tick_cnt(25),
	datac => \Equal1~8_combout\,
	datad => tick_cnt(24),
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X17_Y25_N8
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!tick_cnt(18) & tick_cnt(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(18),
	datad => tick_cnt(19),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X17_Y25_N10
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (tick_cnt(20) & (tick_cnt(23) & (tick_cnt(22) & tick_cnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(20),
	datab => tick_cnt(23),
	datac => tick_cnt(22),
	datad => tick_cnt(21),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X17_Y25_N2
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (tick_cnt(17) & (!tick_cnt(16) & (\Equal1~5_combout\ & \Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(17),
	datab => tick_cnt(16),
	datac => \Equal1~5_combout\,
	datad => \Equal1~6_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X17_Y26_N30
\tick_cnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~14_combout\ = (\pulse_cnt~2_combout\ & (((!\Equal1~4_combout\) # (!\Equal1~7_combout\)) # (!\Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~10_combout\,
	datab => \Equal1~7_combout\,
	datac => \pulse_cnt~2_combout\,
	datad => \Equal1~4_combout\,
	combout => \tick_cnt~14_combout\);

-- Location: LCCOMB_X17_Y25_N18
\tick_cnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt~21_combout\ = (\tick_cnt~14_combout\ & ((\Add1~26_combout\) # ((\pulse_cnt~3_combout\ & tick_cnt(13))))) # (!\tick_cnt~14_combout\ & (\pulse_cnt~3_combout\ & (tick_cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_cnt~14_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => tick_cnt(13),
	datad => \Add1~26_combout\,
	combout => \tick_cnt~21_combout\);

-- Location: FF_X17_Y25_N19
\tick_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tick_cnt~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(13));

-- Location: LCCOMB_X17_Y25_N0
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (tick_cnt(13) & (tick_cnt(12) & (tick_cnt(15) & tick_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(13),
	datab => tick_cnt(12),
	datac => tick_cnt(15),
	datad => tick_cnt(14),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X17_Y26_N14
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (tick_cnt(6) & (tick_cnt(4) & (tick_cnt(5) & !tick_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(6),
	datab => tick_cnt(4),
	datac => tick_cnt(5),
	datad => tick_cnt(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X19_Y25_N28
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!tick_cnt(11) & (!tick_cnt(8) & (!tick_cnt(9) & !tick_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(11),
	datab => tick_cnt(8),
	datac => tick_cnt(9),
	datad => tick_cnt(10),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X17_Y26_N24
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~3_combout\ & (\Equal1~1_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X17_Y26_N10
\state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~8_combout\ = (\state.S_COUNT~q\ & (\Equal1~4_combout\ & (\Equal1~7_combout\ & \Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \Equal1~4_combout\,
	datac => \Equal1~7_combout\,
	datad => \Equal1~10_combout\,
	combout => \state~8_combout\);

-- Location: LCCOMB_X17_Y30_N16
\state.S_IDLE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.S_IDLE~feeder_combout\ = \state~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state~7_combout\,
	combout => \state.S_IDLE~feeder_combout\);

-- Location: FF_X17_Y30_N17
\state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.S_IDLE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_IDLE~q\);

-- Location: LCCOMB_X17_Y30_N30
\state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (\state.S_COUNT~q\ & (((!cfg(1))))) # (!\state.S_COUNT~q\ & ((\state.S_IDLE~q\ & ((cfg(1)))) # (!\state.S_IDLE~q\ & (cfg(2) & !cfg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \state.S_IDLE~q\,
	datac => cfg(2),
	datad => cfg(1),
	combout => \state~10_combout\);

-- Location: LCCOMB_X17_Y30_N4
\state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\state.S_VALID~q\ & (((cfg(1))))) # (!\state.S_VALID~q\ & (!\state.S_LATCH~q\ & (\state~10_combout\ $ (cfg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => cfg(1),
	datac => \state.S_VALID~q\,
	datad => \state.S_LATCH~q\,
	combout => \state~11_combout\);

-- Location: LCCOMB_X17_Y26_N20
\state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (\state~11_combout\ & (\state~7_combout\ & ((\state.S_VALID~q\) # (!\state~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~8_combout\,
	datab => \state~11_combout\,
	datac => \state~7_combout\,
	datad => \state.S_VALID~q\,
	combout => \state~12_combout\);

-- Location: FF_X17_Y26_N21
\state.S_COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_COUNT~q\);

-- Location: LCCOMB_X19_Y30_N22
\pulse_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~0_combout\ = (\state.S_VALID~q\ & pulse_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_VALID~q\,
	datad => pulse_cnt(0),
	combout => \pulse_cnt~0_combout\);

-- Location: IOIBUF_X7_Y34_N15
\FREQ_IN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FREQ_IN,
	o => \FREQ_IN~input_o\);

-- Location: LCCOMB_X17_Y30_N28
\f1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1~0_combout\ = (\FREQ_IN~input_o\ & (\reset_n~input_o\ & !cfg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FREQ_IN~input_o\,
	datab => \reset_n~input_o\,
	datad => cfg(0),
	combout => \f1~0_combout\);

-- Location: FF_X17_Y30_N29
f1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1~q\);

-- Location: LCCOMB_X17_Y30_N22
\f2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2~0_combout\ = (\f1~q\ & (\reset_n~input_o\ & !cfg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1~q\,
	datac => \reset_n~input_o\,
	datad => cfg(0),
	combout => \f2~0_combout\);

-- Location: FF_X17_Y30_N23
f2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2~q\);

-- Location: LCCOMB_X18_Y30_N4
\f2_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f2_d~0_combout\ = (\reset_n~input_o\ & (\f2~q\ & !cfg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \f2~q\,
	datad => cfg(0),
	combout => \f2_d~0_combout\);

-- Location: FF_X18_Y30_N5
f2_d : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \f2_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f2_d~q\);

-- Location: LCCOMB_X18_Y30_N30
\pulse_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_in~0_combout\ = (\reset_n~input_o\ & (!cfg(0) & (!\f2_d~q\ & \f2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => cfg(0),
	datac => \f2_d~q\,
	datad => \f2~q\,
	combout => \pulse_in~0_combout\);

-- Location: FF_X19_Y29_N17
pulse_in : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pulse_in~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_in~q\);

-- Location: LCCOMB_X19_Y29_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (pulse_cnt(0) & (\pulse_in~q\ $ (VCC))) # (!pulse_cnt(0) & (\pulse_in~q\ & VCC))
-- \Add0~1\ = CARRY((pulse_cnt(0) & \pulse_in~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(0),
	datab => \pulse_in~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X19_Y30_N28
\pulse_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~1_combout\ = (\state~7_combout\ & ((\pulse_cnt~0_combout\) # ((\state.S_COUNT~q\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \state~7_combout\,
	datac => \pulse_cnt~0_combout\,
	datad => \Add0~0_combout\,
	combout => \pulse_cnt~1_combout\);

-- Location: FF_X19_Y29_N7
\pulse_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pulse_cnt~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(0));

-- Location: LCCOMB_X19_Y30_N26
\pulse_cnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~24_combout\ = (pulse_cnt(7) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pulse_cnt(7),
	datac => \state.S_VALID~q\,
	combout => \pulse_cnt~24_combout\);

-- Location: LCCOMB_X18_Y29_N18
\pulse_cnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~22_combout\ = (pulse_cnt(6) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(6),
	datac => \state.S_VALID~q\,
	combout => \pulse_cnt~22_combout\);

-- Location: LCCOMB_X18_Y30_N18
\pulse_cnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~20_combout\ = (pulse_cnt(5) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pulse_cnt(5),
	datac => \state.S_VALID~q\,
	combout => \pulse_cnt~20_combout\);

-- Location: LCCOMB_X19_Y26_N16
\pulse_cnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~16_combout\ = (pulse_cnt(3) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pulse_cnt(3),
	datad => \state.S_VALID~q\,
	combout => \pulse_cnt~16_combout\);

-- Location: LCCOMB_X18_Y29_N24
\pulse_cnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~14_combout\ = (pulse_cnt(2) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(2),
	datac => \state.S_VALID~q\,
	combout => \pulse_cnt~14_combout\);

-- Location: LCCOMB_X19_Y29_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (pulse_cnt(1) & (!\Add0~1\)) # (!pulse_cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!pulse_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pulse_cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X19_Y26_N18
\pulse_cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~12_combout\ = (pulse_cnt(1) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pulse_cnt(1),
	datad => \state.S_VALID~q\,
	combout => \pulse_cnt~12_combout\);

-- Location: LCCOMB_X19_Y26_N24
\pulse_cnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~13_combout\ = (\state~7_combout\ & ((\pulse_cnt~12_combout\) # ((\state.S_COUNT~q\ & \Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~7_combout\,
	datab => \state.S_COUNT~q\,
	datac => \Add0~2_combout\,
	datad => \pulse_cnt~12_combout\,
	combout => \pulse_cnt~13_combout\);

-- Location: FF_X19_Y26_N25
\pulse_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(1));

-- Location: LCCOMB_X19_Y29_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (pulse_cnt(2) & (\Add0~3\ $ (GND))) # (!pulse_cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((pulse_cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X18_Y29_N10
\pulse_cnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~15_combout\ = (\state~7_combout\ & ((\pulse_cnt~14_combout\) # ((\state.S_COUNT~q\ & \Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~7_combout\,
	datab => \pulse_cnt~14_combout\,
	datac => \state.S_COUNT~q\,
	datad => \Add0~4_combout\,
	combout => \pulse_cnt~15_combout\);

-- Location: FF_X18_Y29_N11
\pulse_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(2));

-- Location: LCCOMB_X19_Y29_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (pulse_cnt(3) & (!\Add0~5\)) # (!pulse_cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!pulse_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pulse_cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y26_N22
\pulse_cnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~17_combout\ = (\state~7_combout\ & ((\pulse_cnt~16_combout\) # ((\state.S_COUNT~q\ & \Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \pulse_cnt~16_combout\,
	datac => \state~7_combout\,
	datad => \Add0~6_combout\,
	combout => \pulse_cnt~17_combout\);

-- Location: FF_X19_Y26_N23
\pulse_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(3));

-- Location: LCCOMB_X19_Y29_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (pulse_cnt(4) & (\Add0~7\ $ (GND))) # (!pulse_cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((pulse_cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y26_N2
\pulse_cnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~18_combout\ = (pulse_cnt(4) & \state.S_VALID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pulse_cnt(4),
	datad => \state.S_VALID~q\,
	combout => \pulse_cnt~18_combout\);

-- Location: LCCOMB_X19_Y26_N4
\pulse_cnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~19_combout\ = (\state~7_combout\ & ((\pulse_cnt~18_combout\) # ((\state.S_COUNT~q\ & \Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~7_combout\,
	datab => \state.S_COUNT~q\,
	datac => \Add0~8_combout\,
	datad => \pulse_cnt~18_combout\,
	combout => \pulse_cnt~19_combout\);

-- Location: FF_X19_Y26_N5
\pulse_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(4));

-- Location: LCCOMB_X19_Y29_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (pulse_cnt(5) & (!\Add0~9\)) # (!pulse_cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!pulse_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pulse_cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X18_Y29_N4
\pulse_cnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~21_combout\ = (\state~7_combout\ & ((\pulse_cnt~20_combout\) # ((\state.S_COUNT~q\ & \Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \pulse_cnt~20_combout\,
	datac => \Add0~10_combout\,
	datad => \state~7_combout\,
	combout => \pulse_cnt~21_combout\);

-- Location: FF_X18_Y29_N5
\pulse_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(5));

-- Location: LCCOMB_X19_Y29_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (pulse_cnt(6) & (\Add0~11\ $ (GND))) # (!pulse_cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((pulse_cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pulse_cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X18_Y29_N6
\pulse_cnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~23_combout\ = (\state~7_combout\ & ((\pulse_cnt~22_combout\) # ((\state.S_COUNT~q\ & \Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \pulse_cnt~22_combout\,
	datac => \Add0~12_combout\,
	datad => \state~7_combout\,
	combout => \pulse_cnt~23_combout\);

-- Location: FF_X18_Y29_N7
\pulse_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(6));

-- Location: LCCOMB_X19_Y29_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (pulse_cnt(7) & (!\Add0~13\)) # (!pulse_cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!pulse_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X19_Y30_N4
\pulse_cnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~25_combout\ = (\state~7_combout\ & ((\pulse_cnt~24_combout\) # ((\state.S_COUNT~q\ & \Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~24_combout\,
	datab => \state~7_combout\,
	datac => \state.S_COUNT~q\,
	datad => \Add0~14_combout\,
	combout => \pulse_cnt~25_combout\);

-- Location: FF_X19_Y30_N5
\pulse_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(7));

-- Location: LCCOMB_X19_Y29_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (pulse_cnt(8) & (\Add0~15\ $ (GND))) # (!pulse_cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((pulse_cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X18_Y29_N26
\pulse_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~5_combout\ = (\pulse_cnt~2_combout\ & ((\Add0~16_combout\) # ((\pulse_cnt~3_combout\ & pulse_cnt(8))))) # (!\pulse_cnt~2_combout\ & (\pulse_cnt~3_combout\ & (pulse_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~2_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => pulse_cnt(8),
	datad => \Add0~16_combout\,
	combout => \pulse_cnt~5_combout\);

-- Location: FF_X18_Y29_N27
\pulse_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(8));

-- Location: LCCOMB_X19_Y29_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (pulse_cnt(9) & (!\Add0~17\)) # (!pulse_cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!pulse_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pulse_cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X18_Y29_N20
\pulse_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~4_combout\ = (\pulse_cnt~2_combout\ & ((\Add0~18_combout\) # ((\pulse_cnt~3_combout\ & pulse_cnt(9))))) # (!\pulse_cnt~2_combout\ & (\pulse_cnt~3_combout\ & (pulse_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~2_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => pulse_cnt(9),
	datad => \Add0~18_combout\,
	combout => \pulse_cnt~4_combout\);

-- Location: FF_X18_Y29_N21
\pulse_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(9));

-- Location: LCCOMB_X19_Y29_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (pulse_cnt(10) & (\Add0~19\ $ (GND))) # (!pulse_cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((pulse_cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pulse_cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X18_Y29_N22
\pulse_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~6_combout\ = (\Add0~20_combout\ & ((\pulse_cnt~2_combout\) # ((\pulse_cnt~3_combout\ & pulse_cnt(10))))) # (!\Add0~20_combout\ & (\pulse_cnt~3_combout\ & (pulse_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => pulse_cnt(10),
	datad => \pulse_cnt~2_combout\,
	combout => \pulse_cnt~6_combout\);

-- Location: FF_X18_Y29_N23
\pulse_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(10));

-- Location: LCCOMB_X19_Y29_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (pulse_cnt(11) & (!\Add0~21\)) # (!pulse_cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!pulse_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X18_Y29_N8
\pulse_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~7_combout\ = (\pulse_cnt~2_combout\ & ((\Add0~22_combout\) # ((\pulse_cnt~3_combout\ & pulse_cnt(11))))) # (!\pulse_cnt~2_combout\ & (\pulse_cnt~3_combout\ & (pulse_cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~2_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => pulse_cnt(11),
	datad => \Add0~22_combout\,
	combout => \pulse_cnt~7_combout\);

-- Location: FF_X18_Y29_N9
\pulse_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(11));

-- Location: LCCOMB_X19_Y29_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (pulse_cnt(12) & (\Add0~23\ $ (GND))) # (!pulse_cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((pulse_cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X18_Y29_N2
\pulse_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~8_combout\ = (\pulse_cnt~2_combout\ & ((\Add0~24_combout\) # ((\pulse_cnt~3_combout\ & pulse_cnt(12))))) # (!\pulse_cnt~2_combout\ & (\pulse_cnt~3_combout\ & (pulse_cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~2_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => pulse_cnt(12),
	datad => \Add0~24_combout\,
	combout => \pulse_cnt~8_combout\);

-- Location: FF_X18_Y29_N3
\pulse_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(12));

-- Location: LCCOMB_X19_Y29_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (pulse_cnt(13) & (!\Add0~25\)) # (!pulse_cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!pulse_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X18_Y29_N16
\pulse_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~9_combout\ = (\pulse_cnt~2_combout\ & ((\Add0~26_combout\) # ((\pulse_cnt~3_combout\ & pulse_cnt(13))))) # (!\pulse_cnt~2_combout\ & (\pulse_cnt~3_combout\ & (pulse_cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~2_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => pulse_cnt(13),
	datad => \Add0~26_combout\,
	combout => \pulse_cnt~9_combout\);

-- Location: FF_X18_Y29_N17
\pulse_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(13));

-- Location: LCCOMB_X19_Y29_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (pulse_cnt(14) & (\Add0~27\ $ (GND))) # (!pulse_cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((pulse_cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pulse_cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X18_Y29_N28
\pulse_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~10_combout\ = (\pulse_cnt~2_combout\ & ((\Add0~28_combout\) # ((\pulse_cnt~3_combout\ & pulse_cnt(14))))) # (!\pulse_cnt~2_combout\ & (\pulse_cnt~3_combout\ & (pulse_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_cnt~2_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => pulse_cnt(14),
	datad => \Add0~28_combout\,
	combout => \pulse_cnt~10_combout\);

-- Location: FF_X18_Y29_N29
\pulse_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(14));

-- Location: LCCOMB_X19_Y29_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \Add0~29\ $ (pulse_cnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pulse_cnt(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X18_Y29_N30
\pulse_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse_cnt~11_combout\ = (\Add0~30_combout\ & ((\pulse_cnt~2_combout\) # ((\pulse_cnt~3_combout\ & pulse_cnt(15))))) # (!\Add0~30_combout\ & (\pulse_cnt~3_combout\ & (pulse_cnt(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \pulse_cnt~3_combout\,
	datac => pulse_cnt(15),
	datad => \pulse_cnt~2_combout\,
	combout => \pulse_cnt~11_combout\);

-- Location: FF_X18_Y29_N31
\pulse_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pulse_cnt(15));

-- Location: LCCOMB_X18_Y29_N14
\data_reg[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[4]~17_combout\ = (pulse_cnt(10)) # ((pulse_cnt(12)) # ((pulse_cnt(11)) # (pulse_cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(10),
	datab => pulse_cnt(12),
	datac => pulse_cnt(11),
	datad => pulse_cnt(13),
	combout => \data_reg[4]~17_combout\);

-- Location: LCCOMB_X18_Y29_N12
\data_reg[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[4]~16_combout\ = (pulse_cnt(8)) # ((pulse_cnt(9)) # ((cfg(0)) # (!\reset_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(8),
	datab => pulse_cnt(9),
	datac => \reset_n~input_o\,
	datad => cfg(0),
	combout => \data_reg[4]~16_combout\);

-- Location: LCCOMB_X18_Y29_N0
\data_reg[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[4]~18_combout\ = (pulse_cnt(15)) # ((pulse_cnt(14)) # ((\data_reg[4]~17_combout\) # (\data_reg[4]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(15),
	datab => pulse_cnt(14),
	datac => \data_reg[4]~17_combout\,
	datad => \data_reg[4]~16_combout\,
	combout => \data_reg[4]~18_combout\);

-- Location: LCCOMB_X19_Y30_N0
\data_reg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg~20_combout\ = (\data_reg[4]~18_combout\ & (((\reset_n~input_o\ & !cfg(0))))) # (!\data_reg[4]~18_combout\ & (pulse_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(0),
	datab => \reset_n~input_o\,
	datac => \data_reg[4]~18_combout\,
	datad => cfg(0),
	combout => \data_reg~20_combout\);

-- Location: LCCOMB_X18_Y30_N12
\process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\reset_n~input_o\ & !cfg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datad => cfg(0),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X18_Y30_N6
\data_reg[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[4]~19_combout\ = ((\state.S_LATCH~q\ & ((cfg(2)) # (cfg(1))))) # (!\process_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \state.S_LATCH~q\,
	datac => cfg(2),
	datad => cfg(1),
	combout => \data_reg[4]~19_combout\);

-- Location: FF_X19_Y30_N1
\data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_reg~20_combout\,
	ena => \data_reg[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(0));

-- Location: LCCOMB_X18_Y30_N2
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((data_reg(0)))) # (!\address[0]~input_o\ & (!cfg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => cfg(0),
	datac => data_reg(0),
	datad => \address[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X19_Y30_N6
\data_reg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg~21_combout\ = (\data_reg[4]~18_combout\ & (\reset_n~input_o\ & ((!cfg(0))))) # (!\data_reg[4]~18_combout\ & (((pulse_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => pulse_cnt(1),
	datac => \data_reg[4]~18_combout\,
	datad => cfg(0),
	combout => \data_reg~21_combout\);

-- Location: FF_X19_Y30_N7
\data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_reg~21_combout\,
	ena => \data_reg[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(1));

-- Location: LCCOMB_X18_Y30_N10
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\address[1]~input_o\ & ((\address[0]~input_o\ & (data_reg(1))) # (!\address[0]~input_o\ & ((cfg(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(1),
	datab => cfg(1),
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X19_Y30_N24
\data_reg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg~22_combout\ = (\data_reg[4]~18_combout\ & (((\reset_n~input_o\ & !cfg(0))))) # (!\data_reg[4]~18_combout\ & (pulse_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(2),
	datab => \reset_n~input_o\,
	datac => \data_reg[4]~18_combout\,
	datad => cfg(0),
	combout => \data_reg~22_combout\);

-- Location: FF_X19_Y30_N25
\data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_reg~22_combout\,
	ena => \data_reg[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(2));

-- Location: LCCOMB_X18_Y30_N22
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\address[1]~input_o\ & ((\address[0]~input_o\ & (data_reg(2))) # (!\address[0]~input_o\ & ((cfg(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(2),
	datab => cfg(2),
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X19_Y30_N30
\data_reg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg~23_combout\ = (\data_reg[4]~18_combout\ & (\reset_n~input_o\ & ((!cfg(0))))) # (!\data_reg[4]~18_combout\ & (((pulse_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => pulse_cnt(3),
	datac => \data_reg[4]~18_combout\,
	datad => cfg(0),
	combout => \data_reg~23_combout\);

-- Location: FF_X19_Y30_N31
\data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_reg~23_combout\,
	ena => \data_reg[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(3));

-- Location: LCCOMB_X19_Y30_N12
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (data_reg(3) & (\address[0]~input_o\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(3),
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X19_Y30_N18
\data_reg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg~24_combout\ = (\data_reg[4]~18_combout\ & (((\reset_n~input_o\ & !cfg(0))))) # (!\data_reg[4]~18_combout\ & (pulse_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(4),
	datab => \reset_n~input_o\,
	datac => \data_reg[4]~18_combout\,
	datad => cfg(0),
	combout => \data_reg~24_combout\);

-- Location: FF_X19_Y30_N19
\data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_reg~24_combout\,
	ena => \data_reg[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(4));

-- Location: LCCOMB_X18_Y30_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\address[1]~input_o\ & (data_reg(4) & \address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => data_reg(4),
	datad => \address[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X19_Y30_N8
\data_reg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg~25_combout\ = (\data_reg[4]~18_combout\ & (\reset_n~input_o\ & ((!cfg(0))))) # (!\data_reg[4]~18_combout\ & (((pulse_cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_reg[4]~18_combout\,
	datab => \reset_n~input_o\,
	datac => pulse_cnt(5),
	datad => cfg(0),
	combout => \data_reg~25_combout\);

-- Location: FF_X19_Y30_N9
\data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_reg~25_combout\,
	ena => \data_reg[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(5));

-- Location: LCCOMB_X19_Y30_N10
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (data_reg(5) & (\address[0]~input_o\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_reg(5),
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X19_Y30_N16
\data_reg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg~26_combout\ = (\data_reg[4]~18_combout\ & (((\reset_n~input_o\ & !cfg(0))))) # (!\data_reg[4]~18_combout\ & (pulse_cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pulse_cnt(6),
	datab => \reset_n~input_o\,
	datac => \data_reg[4]~18_combout\,
	datad => cfg(0),
	combout => \data_reg~26_combout\);

-- Location: FF_X19_Y30_N17
\data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_reg~26_combout\,
	ena => \data_reg[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(6));

-- Location: LCCOMB_X19_Y30_N2
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (data_reg(6) & (\address[0]~input_o\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_reg(6),
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X19_Y30_N20
\data_reg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg~27_combout\ = (\data_reg[4]~18_combout\ & (\reset_n~input_o\ & ((!cfg(0))))) # (!\data_reg[4]~18_combout\ & (((pulse_cnt(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_reg[4]~18_combout\,
	datab => \reset_n~input_o\,
	datac => pulse_cnt(7),
	datad => cfg(0),
	combout => \data_reg~27_combout\);

-- Location: FF_X19_Y30_N21
\data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_reg~27_combout\,
	ena => \data_reg[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(7));

-- Location: LCCOMB_X19_Y30_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (data_reg(7) & (\address[0]~input_o\ & !\address[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_reg(7),
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X17_Y30_N12
\valid_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \valid_reg~0_combout\ = (\state.S_LATCH~q\) # ((\state.S_VALID~q\) # ((\state.S_COUNT~q\ & \valid_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \state.S_LATCH~q\,
	datac => \state.S_VALID~q\,
	datad => \valid_reg~q\,
	combout => \valid_reg~0_combout\);

-- Location: LCCOMB_X17_Y30_N0
\valid_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \valid_reg~1_combout\ = (\state~7_combout\ & \valid_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state~7_combout\,
	datad => \valid_reg~0_combout\,
	combout => \valid_reg~1_combout\);

-- Location: FF_X17_Y30_N1
valid_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \valid_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valid_reg~q\);

-- Location: LCCOMB_X18_Y30_N14
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\address[1]~input_o\ & (\valid_reg~q\ & \address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \valid_reg~q\,
	datad => \address[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X17_Y30_N10
\etat_dbg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat_dbg~3_combout\ = (\state.S_LATCH~q\) # (!\state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_IDLE~q\,
	datad => \state.S_LATCH~q\,
	combout => \etat_dbg~3_combout\);

-- Location: LCCOMB_X17_Y30_N24
\etat_dbg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat_dbg~4_combout\ = (\state.S_COUNT~q\) # (!\state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_COUNT~q\,
	datad => \state.S_IDLE~q\,
	combout => \etat_dbg~4_combout\);

-- Location: IOIBUF_X51_Y34_N1
\writedata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\writedata[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\writedata[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\writedata[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\writedata[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\writedata[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(8),
	o => \writedata[8]~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\writedata[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(9),
	o => \writedata[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\writedata[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(10),
	o => \writedata[10]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\writedata[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(11),
	o => \writedata[11]~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\writedata[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(12),
	o => \writedata[12]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\writedata[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(13),
	o => \writedata[13]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\writedata[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(14),
	o => \writedata[14]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\writedata[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(15),
	o => \writedata[15]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\writedata[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(16),
	o => \writedata[16]~input_o\);

-- Location: IOIBUF_X0_Y28_N8
\writedata[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(17),
	o => \writedata[17]~input_o\);

-- Location: IOIBUF_X53_Y20_N15
\writedata[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(18),
	o => \writedata[18]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\writedata[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(19),
	o => \writedata[19]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\writedata[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(20),
	o => \writedata[20]~input_o\);

-- Location: IOIBUF_X40_Y34_N1
\writedata[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(21),
	o => \writedata[21]~input_o\);

-- Location: IOIBUF_X25_Y34_N1
\writedata[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(22),
	o => \writedata[22]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\writedata[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(23),
	o => \writedata[23]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\writedata[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(24),
	o => \writedata[24]~input_o\);

-- Location: IOIBUF_X25_Y34_N15
\writedata[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(25),
	o => \writedata[25]~input_o\);

-- Location: IOIBUF_X25_Y34_N22
\writedata[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(26),
	o => \writedata[26]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\writedata[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(27),
	o => \writedata[27]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\writedata[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(28),
	o => \writedata[28]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\writedata[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(29),
	o => \writedata[29]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\writedata[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(30),
	o => \writedata[30]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\writedata[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(31),
	o => \writedata[31]~input_o\);

ww_readdata(0) <= \readdata[0]~output_o\;

ww_readdata(1) <= \readdata[1]~output_o\;

ww_readdata(2) <= \readdata[2]~output_o\;

ww_readdata(3) <= \readdata[3]~output_o\;

ww_readdata(4) <= \readdata[4]~output_o\;

ww_readdata(5) <= \readdata[5]~output_o\;

ww_readdata(6) <= \readdata[6]~output_o\;

ww_readdata(7) <= \readdata[7]~output_o\;

ww_readdata(8) <= \readdata[8]~output_o\;

ww_readdata(9) <= \readdata[9]~output_o\;

ww_readdata(10) <= \readdata[10]~output_o\;

ww_readdata(11) <= \readdata[11]~output_o\;

ww_readdata(12) <= \readdata[12]~output_o\;

ww_readdata(13) <= \readdata[13]~output_o\;

ww_readdata(14) <= \readdata[14]~output_o\;

ww_readdata(15) <= \readdata[15]~output_o\;

ww_readdata(16) <= \readdata[16]~output_o\;

ww_readdata(17) <= \readdata[17]~output_o\;

ww_readdata(18) <= \readdata[18]~output_o\;

ww_readdata(19) <= \readdata[19]~output_o\;

ww_readdata(20) <= \readdata[20]~output_o\;

ww_readdata(21) <= \readdata[21]~output_o\;

ww_readdata(22) <= \readdata[22]~output_o\;

ww_readdata(23) <= \readdata[23]~output_o\;

ww_readdata(24) <= \readdata[24]~output_o\;

ww_readdata(25) <= \readdata[25]~output_o\;

ww_readdata(26) <= \readdata[26]~output_o\;

ww_readdata(27) <= \readdata[27]~output_o\;

ww_readdata(28) <= \readdata[28]~output_o\;

ww_readdata(29) <= \readdata[29]~output_o\;

ww_readdata(30) <= \readdata[30]~output_o\;

ww_readdata(31) <= \readdata[31]~output_o\;

ww_data_valid <= \data_valid~output_o\;

ww_data_anemometre(0) <= \data_anemometre[0]~output_o\;

ww_data_anemometre(1) <= \data_anemometre[1]~output_o\;

ww_data_anemometre(2) <= \data_anemometre[2]~output_o\;

ww_data_anemometre(3) <= \data_anemometre[3]~output_o\;

ww_data_anemometre(4) <= \data_anemometre[4]~output_o\;

ww_data_anemometre(5) <= \data_anemometre[5]~output_o\;

ww_data_anemometre(6) <= \data_anemometre[6]~output_o\;

ww_data_anemometre(7) <= \data_anemometre[7]~output_o\;

ww_etat_dbg(0) <= \etat_dbg[0]~output_o\;

ww_etat_dbg(1) <= \etat_dbg[1]~output_o\;
END structure;


