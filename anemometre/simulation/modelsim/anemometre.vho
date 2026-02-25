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

-- DATE "02/25/2026 11:37:00"

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
	clk_50M : IN std_logic;
	raz_n : IN std_logic;
	in_freq_anemometre : IN std_logic;
	continu : IN std_logic;
	start_stop : IN std_logic;
	data_valid : OUT std_logic;
	data_anemometre : OUT std_logic_vector(7 DOWNTO 0);
	etat_dbg : OUT std_logic_vector(2 DOWNTO 0)
	);
END anemometre;

-- Design Ports Information
-- data_valid	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[1]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[4]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_anemometre[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- etat_dbg[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- etat_dbg[1]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- etat_dbg[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50M	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- continu	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_stop	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- raz_n	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_freq_anemometre	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk_50M : std_logic;
SIGNAL ww_raz_n : std_logic;
SIGNAL ww_in_freq_anemometre : std_logic;
SIGNAL ww_continu : std_logic;
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_data_valid : std_logic;
SIGNAL ww_data_anemometre : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_etat_dbg : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \etat_dbg[2]~output_o\ : std_logic;
SIGNAL \clk_50M~input_o\ : std_logic;
SIGNAL \clk_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \start_stop~input_o\ : std_logic;
SIGNAL \continu~input_o\ : std_logic;
SIGNAL \raz_n~input_o\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state.S_IDLE~q\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state.S_ARM~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \state.S_CLEAR~q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \state.S_COUNT~q\ : std_logic;
SIGNAL \tick_cnt[0]~32_combout\ : std_logic;
SIGNAL \tick_cnt[29]~34_combout\ : std_logic;
SIGNAL \tick_cnt[0]~33\ : std_logic;
SIGNAL \tick_cnt[1]~35_combout\ : std_logic;
SIGNAL \tick_cnt[1]~36\ : std_logic;
SIGNAL \tick_cnt[2]~37_combout\ : std_logic;
SIGNAL \tick_cnt[2]~38\ : std_logic;
SIGNAL \tick_cnt[3]~39_combout\ : std_logic;
SIGNAL \tick_cnt[3]~40\ : std_logic;
SIGNAL \tick_cnt[4]~41_combout\ : std_logic;
SIGNAL \tick_cnt[4]~42\ : std_logic;
SIGNAL \tick_cnt[5]~43_combout\ : std_logic;
SIGNAL \tick_cnt[5]~44\ : std_logic;
SIGNAL \tick_cnt[6]~45_combout\ : std_logic;
SIGNAL \tick_cnt[6]~46\ : std_logic;
SIGNAL \tick_cnt[7]~47_combout\ : std_logic;
SIGNAL \tick_cnt[7]~48\ : std_logic;
SIGNAL \tick_cnt[8]~49_combout\ : std_logic;
SIGNAL \tick_cnt[8]~50\ : std_logic;
SIGNAL \tick_cnt[9]~51_combout\ : std_logic;
SIGNAL \tick_cnt[9]~52\ : std_logic;
SIGNAL \tick_cnt[10]~53_combout\ : std_logic;
SIGNAL \tick_cnt[10]~54\ : std_logic;
SIGNAL \tick_cnt[11]~55_combout\ : std_logic;
SIGNAL \tick_cnt[11]~56\ : std_logic;
SIGNAL \tick_cnt[12]~57_combout\ : std_logic;
SIGNAL \tick_cnt[12]~58\ : std_logic;
SIGNAL \tick_cnt[13]~59_combout\ : std_logic;
SIGNAL \tick_cnt[13]~60\ : std_logic;
SIGNAL \tick_cnt[14]~61_combout\ : std_logic;
SIGNAL \tick_cnt[14]~62\ : std_logic;
SIGNAL \tick_cnt[15]~63_combout\ : std_logic;
SIGNAL \tick_cnt[15]~64\ : std_logic;
SIGNAL \tick_cnt[16]~65_combout\ : std_logic;
SIGNAL \tick_cnt[16]~66\ : std_logic;
SIGNAL \tick_cnt[17]~67_combout\ : std_logic;
SIGNAL \tick_cnt[17]~68\ : std_logic;
SIGNAL \tick_cnt[18]~69_combout\ : std_logic;
SIGNAL \tick_cnt[18]~70\ : std_logic;
SIGNAL \tick_cnt[19]~71_combout\ : std_logic;
SIGNAL \tick_cnt[19]~72\ : std_logic;
SIGNAL \tick_cnt[20]~73_combout\ : std_logic;
SIGNAL \tick_cnt[20]~74\ : std_logic;
SIGNAL \tick_cnt[21]~75_combout\ : std_logic;
SIGNAL \tick_cnt[21]~76\ : std_logic;
SIGNAL \tick_cnt[22]~77_combout\ : std_logic;
SIGNAL \tick_cnt[22]~78\ : std_logic;
SIGNAL \tick_cnt[23]~79_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \tick_cnt[23]~80\ : std_logic;
SIGNAL \tick_cnt[24]~81_combout\ : std_logic;
SIGNAL \tick_cnt[24]~82\ : std_logic;
SIGNAL \tick_cnt[25]~83_combout\ : std_logic;
SIGNAL \tick_cnt[25]~84\ : std_logic;
SIGNAL \tick_cnt[26]~85_combout\ : std_logic;
SIGNAL \tick_cnt[26]~86\ : std_logic;
SIGNAL \tick_cnt[27]~87_combout\ : std_logic;
SIGNAL \tick_cnt[27]~88\ : std_logic;
SIGNAL \tick_cnt[28]~89_combout\ : std_logic;
SIGNAL \tick_cnt[28]~90\ : std_logic;
SIGNAL \tick_cnt[29]~91_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \tick_cnt[29]~92\ : std_logic;
SIGNAL \tick_cnt[30]~93_combout\ : std_logic;
SIGNAL \tick_cnt[30]~94\ : std_logic;
SIGNAL \tick_cnt[31]~95_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \tick_end~0_combout\ : std_logic;
SIGNAL \tick_end~q\ : std_logic;
SIGNAL \state~9_combout\ : std_logic;
SIGNAL \state.S_LATCH~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \state.S_VALID_HOLD~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \data_valid_i~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \in_freq_anemometre~input_o\ : std_logic;
SIGNAL \ff1~0_combout\ : std_logic;
SIGNAL \ff1~q\ : std_logic;
SIGNAL \ff2~0_combout\ : std_logic;
SIGNAL \ff2~q\ : std_logic;
SIGNAL \ff2_d~0_combout\ : std_logic;
SIGNAL \ff2_d~q\ : std_logic;
SIGNAL \pulse~0_combout\ : std_logic;
SIGNAL \pulse~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \latched_cnt~3_combout\ : std_logic;
SIGNAL \latched_cnt[10]~1_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \latched_cnt~4_combout\ : std_logic;
SIGNAL \latched_cnt~2_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \latched_cnt~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \latched_cnt~0_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \latched_cnt~7_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \latched_cnt~9_combout\ : std_logic;
SIGNAL \latched_cnt~6_combout\ : std_logic;
SIGNAL \latched_cnt~8_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \sat8~0_combout\ : std_logic;
SIGNAL \latched_cnt~10_combout\ : std_logic;
SIGNAL \sat8~1_combout\ : std_logic;
SIGNAL \latched_cnt~11_combout\ : std_logic;
SIGNAL \sat8~2_combout\ : std_logic;
SIGNAL \latched_cnt~12_combout\ : std_logic;
SIGNAL \sat8~3_combout\ : std_logic;
SIGNAL \latched_cnt~13_combout\ : std_logic;
SIGNAL \sat8~4_combout\ : std_logic;
SIGNAL \latched_cnt~14_combout\ : std_logic;
SIGNAL \sat8~5_combout\ : std_logic;
SIGNAL \latched_cnt~15_combout\ : std_logic;
SIGNAL \sat8~6_combout\ : std_logic;
SIGNAL \latched_cnt~16_combout\ : std_logic;
SIGNAL \sat8~7_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \etat_dbg~0_combout\ : std_logic;
SIGNAL \etat_dbg~1_combout\ : std_logic;
SIGNAL live_cnt : std_logic_vector(15 DOWNTO 0);
SIGNAL tick_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL latched_cnt : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_raz_n~input_o\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50M <= clk_50M;
ww_raz_n <= raz_n;
ww_in_freq_anemometre <= in_freq_anemometre;
ww_continu <= continu;
ww_start_stop <= start_stop;
data_valid <= ww_data_valid;
data_anemometre <= ww_data_anemometre;
etat_dbg <= ww_etat_dbg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50M~input_o\);
\ALT_INV_raz_n~input_o\ <= NOT \raz_n~input_o\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y0_N2
\data_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_valid_i~q\,
	devoe => ww_devoe,
	o => \data_valid~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\data_anemometre[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sat8~0_combout\,
	devoe => ww_devoe,
	o => \data_anemometre[0]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\data_anemometre[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sat8~1_combout\,
	devoe => ww_devoe,
	o => \data_anemometre[1]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\data_anemometre[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sat8~2_combout\,
	devoe => ww_devoe,
	o => \data_anemometre[2]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\data_anemometre[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sat8~3_combout\,
	devoe => ww_devoe,
	o => \data_anemometre[3]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\data_anemometre[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sat8~4_combout\,
	devoe => ww_devoe,
	o => \data_anemometre[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\data_anemometre[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sat8~5_combout\,
	devoe => ww_devoe,
	o => \data_anemometre[5]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\data_anemometre[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sat8~6_combout\,
	devoe => ww_devoe,
	o => \data_anemometre[6]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\data_anemometre[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sat8~7_combout\,
	devoe => ww_devoe,
	o => \data_anemometre[7]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\etat_dbg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \etat_dbg[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\etat_dbg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etat_dbg~0_combout\,
	devoe => ww_devoe,
	o => \etat_dbg[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\etat_dbg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \etat_dbg~1_combout\,
	devoe => ww_devoe,
	o => \etat_dbg[2]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50M,
	o => \clk_50M~input_o\);

-- Location: CLKCTRL_G2
\clk_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50M~inputclkctrl_outclk\);

-- Location: IOIBUF_X40_Y0_N22
\start_stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_stop,
	o => \start_stop~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\continu~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_continu,
	o => \continu~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\raz_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_raz_n,
	o => \raz_n~input_o\);

-- Location: LCCOMB_X41_Y5_N14
\state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~10_combout\ = ((!\start_stop~input_o\ & (\state.S_VALID_HOLD~q\ & !\continu~input_o\))) # (!\raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datab => \state.S_VALID_HOLD~q\,
	datac => \continu~input_o\,
	datad => \raz_n~input_o\,
	combout => \state~10_combout\);

-- Location: LCCOMB_X41_Y5_N0
\state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (\raz_n~input_o\ & (((\start_stop~input_o\ & !\continu~input_o\)) # (!\state.S_VALID_HOLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datab => \raz_n~input_o\,
	datac => \state.S_VALID_HOLD~q\,
	datad => \continu~input_o\,
	combout => \state~13_combout\);

-- Location: LCCOMB_X41_Y5_N18
\state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (!\state.S_ARM~q\ & (!\state.S_LATCH~q\ & ((!\tick_end~q\) # (!\state.S_COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_ARM~q\,
	datab => \state.S_COUNT~q\,
	datac => \tick_end~q\,
	datad => \state.S_LATCH~q\,
	combout => \state~12_combout\);

-- Location: LCCOMB_X41_Y5_N2
\state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (!\state.S_CLEAR~q\ & (\state~13_combout\ & \state~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CLEAR~q\,
	datab => \state~13_combout\,
	datad => \state~12_combout\,
	combout => \state~14_combout\);

-- Location: LCCOMB_X41_Y5_N28
\state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (!\state~10_combout\ & (((\state.S_IDLE~q\) # (!\state~14_combout\)) # (!\state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~11_combout\,
	datab => \state~10_combout\,
	datac => \state.S_IDLE~q\,
	datad => \state~14_combout\,
	combout => \state~15_combout\);

-- Location: FF_X41_Y5_N29
\state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_IDLE~q\);

-- Location: LCCOMB_X41_Y5_N12
\state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\state.S_IDLE~q\) # ((!\start_stop~input_o\ & !\continu~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datac => \continu~input_o\,
	datad => \state.S_IDLE~q\,
	combout => \state~11_combout\);

-- Location: LCCOMB_X41_Y5_N10
\state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (!\state~11_combout\ & (\state~13_combout\ & (!\state.S_CLEAR~q\ & \state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~11_combout\,
	datab => \state~13_combout\,
	datac => \state.S_CLEAR~q\,
	datad => \state~12_combout\,
	combout => \state~16_combout\);

-- Location: FF_X41_Y5_N11
\state.S_ARM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_ARM~q\);

-- Location: LCCOMB_X41_Y5_N22
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.S_ARM~q\) # ((\state.S_VALID_HOLD~q\ & \continu~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_VALID_HOLD~q\,
	datac => \continu~input_o\,
	datad => \state.S_ARM~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X41_Y5_N23
\state.S_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_CLEAR~q\);

-- Location: LCCOMB_X41_Y2_N8
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state.S_CLEAR~q\) # ((\state.S_COUNT~q\ & !\tick_end~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_CLEAR~q\,
	datac => \state.S_COUNT~q\,
	datad => \tick_end~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X41_Y2_N9
\state.S_COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_COUNT~q\);

-- Location: LCCOMB_X40_Y2_N0
\tick_cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[0]~32_combout\ = tick_cnt(0) $ (VCC)
-- \tick_cnt[0]~33\ = CARRY(tick_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(0),
	datad => VCC,
	combout => \tick_cnt[0]~32_combout\,
	cout => \tick_cnt[0]~33\);

-- Location: LCCOMB_X41_Y2_N24
\tick_cnt[29]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[29]~34_combout\ = ((!\Equal0~10_combout\) # (!\state.S_COUNT~q\)) # (!\raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \raz_n~input_o\,
	datac => \state.S_COUNT~q\,
	datad => \Equal0~10_combout\,
	combout => \tick_cnt[29]~34_combout\);

-- Location: FF_X40_Y2_N1
\tick_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[0]~32_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(0));

-- Location: LCCOMB_X40_Y2_N2
\tick_cnt[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[1]~35_combout\ = (tick_cnt(1) & (!\tick_cnt[0]~33\)) # (!tick_cnt(1) & ((\tick_cnt[0]~33\) # (GND)))
-- \tick_cnt[1]~36\ = CARRY((!\tick_cnt[0]~33\) # (!tick_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(1),
	datad => VCC,
	cin => \tick_cnt[0]~33\,
	combout => \tick_cnt[1]~35_combout\,
	cout => \tick_cnt[1]~36\);

-- Location: FF_X40_Y2_N3
\tick_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[1]~35_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(1));

-- Location: LCCOMB_X40_Y2_N4
\tick_cnt[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[2]~37_combout\ = (tick_cnt(2) & (\tick_cnt[1]~36\ $ (GND))) # (!tick_cnt(2) & (!\tick_cnt[1]~36\ & VCC))
-- \tick_cnt[2]~38\ = CARRY((tick_cnt(2) & !\tick_cnt[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(2),
	datad => VCC,
	cin => \tick_cnt[1]~36\,
	combout => \tick_cnt[2]~37_combout\,
	cout => \tick_cnt[2]~38\);

-- Location: FF_X40_Y2_N5
\tick_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[2]~37_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(2));

-- Location: LCCOMB_X40_Y2_N6
\tick_cnt[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[3]~39_combout\ = (tick_cnt(3) & (!\tick_cnt[2]~38\)) # (!tick_cnt(3) & ((\tick_cnt[2]~38\) # (GND)))
-- \tick_cnt[3]~40\ = CARRY((!\tick_cnt[2]~38\) # (!tick_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(3),
	datad => VCC,
	cin => \tick_cnt[2]~38\,
	combout => \tick_cnt[3]~39_combout\,
	cout => \tick_cnt[3]~40\);

-- Location: FF_X40_Y2_N7
\tick_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[3]~39_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(3));

-- Location: LCCOMB_X40_Y2_N8
\tick_cnt[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[4]~41_combout\ = (tick_cnt(4) & (\tick_cnt[3]~40\ $ (GND))) # (!tick_cnt(4) & (!\tick_cnt[3]~40\ & VCC))
-- \tick_cnt[4]~42\ = CARRY((tick_cnt(4) & !\tick_cnt[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(4),
	datad => VCC,
	cin => \tick_cnt[3]~40\,
	combout => \tick_cnt[4]~41_combout\,
	cout => \tick_cnt[4]~42\);

-- Location: FF_X40_Y2_N9
\tick_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[4]~41_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(4));

-- Location: LCCOMB_X40_Y2_N10
\tick_cnt[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[5]~43_combout\ = (tick_cnt(5) & (!\tick_cnt[4]~42\)) # (!tick_cnt(5) & ((\tick_cnt[4]~42\) # (GND)))
-- \tick_cnt[5]~44\ = CARRY((!\tick_cnt[4]~42\) # (!tick_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(5),
	datad => VCC,
	cin => \tick_cnt[4]~42\,
	combout => \tick_cnt[5]~43_combout\,
	cout => \tick_cnt[5]~44\);

-- Location: FF_X40_Y2_N11
\tick_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[5]~43_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(5));

-- Location: LCCOMB_X40_Y2_N12
\tick_cnt[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[6]~45_combout\ = (tick_cnt(6) & (\tick_cnt[5]~44\ $ (GND))) # (!tick_cnt(6) & (!\tick_cnt[5]~44\ & VCC))
-- \tick_cnt[6]~46\ = CARRY((tick_cnt(6) & !\tick_cnt[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(6),
	datad => VCC,
	cin => \tick_cnt[5]~44\,
	combout => \tick_cnt[6]~45_combout\,
	cout => \tick_cnt[6]~46\);

-- Location: FF_X40_Y2_N13
\tick_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[6]~45_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(6));

-- Location: LCCOMB_X40_Y2_N14
\tick_cnt[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[7]~47_combout\ = (tick_cnt(7) & (!\tick_cnt[6]~46\)) # (!tick_cnt(7) & ((\tick_cnt[6]~46\) # (GND)))
-- \tick_cnt[7]~48\ = CARRY((!\tick_cnt[6]~46\) # (!tick_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(7),
	datad => VCC,
	cin => \tick_cnt[6]~46\,
	combout => \tick_cnt[7]~47_combout\,
	cout => \tick_cnt[7]~48\);

-- Location: FF_X40_Y2_N15
\tick_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[7]~47_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(7));

-- Location: LCCOMB_X40_Y2_N16
\tick_cnt[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[8]~49_combout\ = (tick_cnt(8) & (\tick_cnt[7]~48\ $ (GND))) # (!tick_cnt(8) & (!\tick_cnt[7]~48\ & VCC))
-- \tick_cnt[8]~50\ = CARRY((tick_cnt(8) & !\tick_cnt[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(8),
	datad => VCC,
	cin => \tick_cnt[7]~48\,
	combout => \tick_cnt[8]~49_combout\,
	cout => \tick_cnt[8]~50\);

-- Location: FF_X40_Y2_N17
\tick_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[8]~49_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(8));

-- Location: LCCOMB_X40_Y2_N18
\tick_cnt[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[9]~51_combout\ = (tick_cnt(9) & (!\tick_cnt[8]~50\)) # (!tick_cnt(9) & ((\tick_cnt[8]~50\) # (GND)))
-- \tick_cnt[9]~52\ = CARRY((!\tick_cnt[8]~50\) # (!tick_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(9),
	datad => VCC,
	cin => \tick_cnt[8]~50\,
	combout => \tick_cnt[9]~51_combout\,
	cout => \tick_cnt[9]~52\);

-- Location: FF_X40_Y2_N19
\tick_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[9]~51_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(9));

-- Location: LCCOMB_X40_Y2_N20
\tick_cnt[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[10]~53_combout\ = (tick_cnt(10) & (\tick_cnt[9]~52\ $ (GND))) # (!tick_cnt(10) & (!\tick_cnt[9]~52\ & VCC))
-- \tick_cnt[10]~54\ = CARRY((tick_cnt(10) & !\tick_cnt[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(10),
	datad => VCC,
	cin => \tick_cnt[9]~52\,
	combout => \tick_cnt[10]~53_combout\,
	cout => \tick_cnt[10]~54\);

-- Location: FF_X40_Y2_N21
\tick_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[10]~53_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(10));

-- Location: LCCOMB_X40_Y2_N22
\tick_cnt[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[11]~55_combout\ = (tick_cnt(11) & (!\tick_cnt[10]~54\)) # (!tick_cnt(11) & ((\tick_cnt[10]~54\) # (GND)))
-- \tick_cnt[11]~56\ = CARRY((!\tick_cnt[10]~54\) # (!tick_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(11),
	datad => VCC,
	cin => \tick_cnt[10]~54\,
	combout => \tick_cnt[11]~55_combout\,
	cout => \tick_cnt[11]~56\);

-- Location: FF_X40_Y2_N23
\tick_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[11]~55_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(11));

-- Location: LCCOMB_X40_Y2_N24
\tick_cnt[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[12]~57_combout\ = (tick_cnt(12) & (\tick_cnt[11]~56\ $ (GND))) # (!tick_cnt(12) & (!\tick_cnt[11]~56\ & VCC))
-- \tick_cnt[12]~58\ = CARRY((tick_cnt(12) & !\tick_cnt[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(12),
	datad => VCC,
	cin => \tick_cnt[11]~56\,
	combout => \tick_cnt[12]~57_combout\,
	cout => \tick_cnt[12]~58\);

-- Location: FF_X40_Y2_N25
\tick_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[12]~57_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(12));

-- Location: LCCOMB_X40_Y2_N26
\tick_cnt[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[13]~59_combout\ = (tick_cnt(13) & (!\tick_cnt[12]~58\)) # (!tick_cnt(13) & ((\tick_cnt[12]~58\) # (GND)))
-- \tick_cnt[13]~60\ = CARRY((!\tick_cnt[12]~58\) # (!tick_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(13),
	datad => VCC,
	cin => \tick_cnt[12]~58\,
	combout => \tick_cnt[13]~59_combout\,
	cout => \tick_cnt[13]~60\);

-- Location: FF_X40_Y2_N27
\tick_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[13]~59_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(13));

-- Location: LCCOMB_X40_Y2_N28
\tick_cnt[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[14]~61_combout\ = (tick_cnt(14) & (\tick_cnt[13]~60\ $ (GND))) # (!tick_cnt(14) & (!\tick_cnt[13]~60\ & VCC))
-- \tick_cnt[14]~62\ = CARRY((tick_cnt(14) & !\tick_cnt[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(14),
	datad => VCC,
	cin => \tick_cnt[13]~60\,
	combout => \tick_cnt[14]~61_combout\,
	cout => \tick_cnt[14]~62\);

-- Location: FF_X40_Y2_N29
\tick_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[14]~61_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(14));

-- Location: LCCOMB_X40_Y2_N30
\tick_cnt[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[15]~63_combout\ = (tick_cnt(15) & (!\tick_cnt[14]~62\)) # (!tick_cnt(15) & ((\tick_cnt[14]~62\) # (GND)))
-- \tick_cnt[15]~64\ = CARRY((!\tick_cnt[14]~62\) # (!tick_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(15),
	datad => VCC,
	cin => \tick_cnt[14]~62\,
	combout => \tick_cnt[15]~63_combout\,
	cout => \tick_cnt[15]~64\);

-- Location: FF_X40_Y2_N31
\tick_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[15]~63_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(15));

-- Location: LCCOMB_X40_Y1_N0
\tick_cnt[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[16]~65_combout\ = (tick_cnt(16) & (\tick_cnt[15]~64\ $ (GND))) # (!tick_cnt(16) & (!\tick_cnt[15]~64\ & VCC))
-- \tick_cnt[16]~66\ = CARRY((tick_cnt(16) & !\tick_cnt[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(16),
	datad => VCC,
	cin => \tick_cnt[15]~64\,
	combout => \tick_cnt[16]~65_combout\,
	cout => \tick_cnt[16]~66\);

-- Location: FF_X40_Y1_N1
\tick_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[16]~65_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(16));

-- Location: LCCOMB_X40_Y1_N2
\tick_cnt[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[17]~67_combout\ = (tick_cnt(17) & (!\tick_cnt[16]~66\)) # (!tick_cnt(17) & ((\tick_cnt[16]~66\) # (GND)))
-- \tick_cnt[17]~68\ = CARRY((!\tick_cnt[16]~66\) # (!tick_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(17),
	datad => VCC,
	cin => \tick_cnt[16]~66\,
	combout => \tick_cnt[17]~67_combout\,
	cout => \tick_cnt[17]~68\);

-- Location: FF_X40_Y1_N3
\tick_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[17]~67_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(17));

-- Location: LCCOMB_X40_Y1_N4
\tick_cnt[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[18]~69_combout\ = (tick_cnt(18) & (\tick_cnt[17]~68\ $ (GND))) # (!tick_cnt(18) & (!\tick_cnt[17]~68\ & VCC))
-- \tick_cnt[18]~70\ = CARRY((tick_cnt(18) & !\tick_cnt[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(18),
	datad => VCC,
	cin => \tick_cnt[17]~68\,
	combout => \tick_cnt[18]~69_combout\,
	cout => \tick_cnt[18]~70\);

-- Location: FF_X40_Y1_N5
\tick_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[18]~69_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(18));

-- Location: LCCOMB_X40_Y1_N6
\tick_cnt[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[19]~71_combout\ = (tick_cnt(19) & (!\tick_cnt[18]~70\)) # (!tick_cnt(19) & ((\tick_cnt[18]~70\) # (GND)))
-- \tick_cnt[19]~72\ = CARRY((!\tick_cnt[18]~70\) # (!tick_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(19),
	datad => VCC,
	cin => \tick_cnt[18]~70\,
	combout => \tick_cnt[19]~71_combout\,
	cout => \tick_cnt[19]~72\);

-- Location: FF_X40_Y1_N7
\tick_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[19]~71_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(19));

-- Location: LCCOMB_X40_Y1_N8
\tick_cnt[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[20]~73_combout\ = (tick_cnt(20) & (\tick_cnt[19]~72\ $ (GND))) # (!tick_cnt(20) & (!\tick_cnt[19]~72\ & VCC))
-- \tick_cnt[20]~74\ = CARRY((tick_cnt(20) & !\tick_cnt[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(20),
	datad => VCC,
	cin => \tick_cnt[19]~72\,
	combout => \tick_cnt[20]~73_combout\,
	cout => \tick_cnt[20]~74\);

-- Location: FF_X40_Y1_N9
\tick_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[20]~73_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(20));

-- Location: LCCOMB_X40_Y1_N10
\tick_cnt[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[21]~75_combout\ = (tick_cnt(21) & (!\tick_cnt[20]~74\)) # (!tick_cnt(21) & ((\tick_cnt[20]~74\) # (GND)))
-- \tick_cnt[21]~76\ = CARRY((!\tick_cnt[20]~74\) # (!tick_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(21),
	datad => VCC,
	cin => \tick_cnt[20]~74\,
	combout => \tick_cnt[21]~75_combout\,
	cout => \tick_cnt[21]~76\);

-- Location: FF_X40_Y1_N11
\tick_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[21]~75_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(21));

-- Location: LCCOMB_X40_Y1_N12
\tick_cnt[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[22]~77_combout\ = (tick_cnt(22) & (\tick_cnt[21]~76\ $ (GND))) # (!tick_cnt(22) & (!\tick_cnt[21]~76\ & VCC))
-- \tick_cnt[22]~78\ = CARRY((tick_cnt(22) & !\tick_cnt[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(22),
	datad => VCC,
	cin => \tick_cnt[21]~76\,
	combout => \tick_cnt[22]~77_combout\,
	cout => \tick_cnt[22]~78\);

-- Location: FF_X40_Y1_N13
\tick_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[22]~77_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(22));

-- Location: LCCOMB_X40_Y1_N14
\tick_cnt[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[23]~79_combout\ = (tick_cnt(23) & (!\tick_cnt[22]~78\)) # (!tick_cnt(23) & ((\tick_cnt[22]~78\) # (GND)))
-- \tick_cnt[23]~80\ = CARRY((!\tick_cnt[22]~78\) # (!tick_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(23),
	datad => VCC,
	cin => \tick_cnt[22]~78\,
	combout => \tick_cnt[23]~79_combout\,
	cout => \tick_cnt[23]~80\);

-- Location: FF_X40_Y1_N15
\tick_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[23]~79_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(23));

-- Location: LCCOMB_X41_Y2_N30
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (tick_cnt(23)) # ((tick_cnt(21)) # ((tick_cnt(20)) # (tick_cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(23),
	datab => tick_cnt(21),
	datac => tick_cnt(20),
	datad => tick_cnt(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X41_Y2_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (tick_cnt(19)) # (((!tick_cnt(16)) # (!tick_cnt(17))) # (!tick_cnt(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(19),
	datab => tick_cnt(18),
	datac => tick_cnt(17),
	datad => tick_cnt(16),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X41_Y2_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((!tick_cnt(1)) # (!tick_cnt(2))) # (!tick_cnt(3))) # (!tick_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(0),
	datab => tick_cnt(3),
	datac => tick_cnt(2),
	datad => tick_cnt(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X41_Y2_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (tick_cnt(7)) # ((tick_cnt(6)) # ((tick_cnt(5)) # (!tick_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(7),
	datab => tick_cnt(6),
	datac => tick_cnt(5),
	datad => tick_cnt(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X41_Y2_N26
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ((tick_cnt(10)) # ((tick_cnt(9)) # (tick_cnt(11)))) # (!tick_cnt(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(8),
	datab => tick_cnt(10),
	datac => tick_cnt(9),
	datad => tick_cnt(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X41_Y2_N12
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (tick_cnt(12)) # ((tick_cnt(14)) # ((!tick_cnt(15)) # (!tick_cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(12),
	datab => tick_cnt(14),
	datac => tick_cnt(13),
	datad => tick_cnt(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X41_Y2_N14
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\) # ((\Equal0~1_combout\) # ((\Equal0~2_combout\) # (\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X40_Y1_N16
\tick_cnt[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[24]~81_combout\ = (tick_cnt(24) & (\tick_cnt[23]~80\ $ (GND))) # (!tick_cnt(24) & (!\tick_cnt[23]~80\ & VCC))
-- \tick_cnt[24]~82\ = CARRY((tick_cnt(24) & !\tick_cnt[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(24),
	datad => VCC,
	cin => \tick_cnt[23]~80\,
	combout => \tick_cnt[24]~81_combout\,
	cout => \tick_cnt[24]~82\);

-- Location: FF_X40_Y1_N17
\tick_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[24]~81_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(24));

-- Location: LCCOMB_X40_Y1_N18
\tick_cnt[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[25]~83_combout\ = (tick_cnt(25) & (!\tick_cnt[24]~82\)) # (!tick_cnt(25) & ((\tick_cnt[24]~82\) # (GND)))
-- \tick_cnt[25]~84\ = CARRY((!\tick_cnt[24]~82\) # (!tick_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(25),
	datad => VCC,
	cin => \tick_cnt[24]~82\,
	combout => \tick_cnt[25]~83_combout\,
	cout => \tick_cnt[25]~84\);

-- Location: FF_X40_Y1_N19
\tick_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[25]~83_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(25));

-- Location: LCCOMB_X40_Y1_N20
\tick_cnt[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[26]~85_combout\ = (tick_cnt(26) & (\tick_cnt[25]~84\ $ (GND))) # (!tick_cnt(26) & (!\tick_cnt[25]~84\ & VCC))
-- \tick_cnt[26]~86\ = CARRY((tick_cnt(26) & !\tick_cnt[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(26),
	datad => VCC,
	cin => \tick_cnt[25]~84\,
	combout => \tick_cnt[26]~85_combout\,
	cout => \tick_cnt[26]~86\);

-- Location: FF_X40_Y1_N21
\tick_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[26]~85_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(26));

-- Location: LCCOMB_X40_Y1_N22
\tick_cnt[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[27]~87_combout\ = (tick_cnt(27) & (!\tick_cnt[26]~86\)) # (!tick_cnt(27) & ((\tick_cnt[26]~86\) # (GND)))
-- \tick_cnt[27]~88\ = CARRY((!\tick_cnt[26]~86\) # (!tick_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(27),
	datad => VCC,
	cin => \tick_cnt[26]~86\,
	combout => \tick_cnt[27]~87_combout\,
	cout => \tick_cnt[27]~88\);

-- Location: FF_X40_Y1_N23
\tick_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[27]~87_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(27));

-- Location: LCCOMB_X40_Y1_N24
\tick_cnt[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[28]~89_combout\ = (tick_cnt(28) & (\tick_cnt[27]~88\ $ (GND))) # (!tick_cnt(28) & (!\tick_cnt[27]~88\ & VCC))
-- \tick_cnt[28]~90\ = CARRY((tick_cnt(28) & !\tick_cnt[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(28),
	datad => VCC,
	cin => \tick_cnt[27]~88\,
	combout => \tick_cnt[28]~89_combout\,
	cout => \tick_cnt[28]~90\);

-- Location: FF_X40_Y1_N25
\tick_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[28]~89_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(28));

-- Location: LCCOMB_X40_Y1_N26
\tick_cnt[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[29]~91_combout\ = (tick_cnt(29) & (!\tick_cnt[28]~90\)) # (!tick_cnt(29) & ((\tick_cnt[28]~90\) # (GND)))
-- \tick_cnt[29]~92\ = CARRY((!\tick_cnt[28]~90\) # (!tick_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(29),
	datad => VCC,
	cin => \tick_cnt[28]~90\,
	combout => \tick_cnt[29]~91_combout\,
	cout => \tick_cnt[29]~92\);

-- Location: FF_X40_Y1_N27
\tick_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[29]~91_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(29));

-- Location: LCCOMB_X41_Y2_N4
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (tick_cnt(24)) # ((tick_cnt(27)) # ((tick_cnt(25)) # (tick_cnt(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(24),
	datab => tick_cnt(27),
	datac => tick_cnt(25),
	datad => tick_cnt(26),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X40_Y1_N28
\tick_cnt[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[30]~93_combout\ = (tick_cnt(30) & (\tick_cnt[29]~92\ $ (GND))) # (!tick_cnt(30) & (!\tick_cnt[29]~92\ & VCC))
-- \tick_cnt[30]~94\ = CARRY((tick_cnt(30) & !\tick_cnt[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_cnt(30),
	datad => VCC,
	cin => \tick_cnt[29]~92\,
	combout => \tick_cnt[30]~93_combout\,
	cout => \tick_cnt[30]~94\);

-- Location: FF_X40_Y1_N29
\tick_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[30]~93_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(30));

-- Location: LCCOMB_X40_Y1_N30
\tick_cnt[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_cnt[31]~95_combout\ = tick_cnt(31) $ (\tick_cnt[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(31),
	cin => \tick_cnt[30]~94\,
	combout => \tick_cnt[31]~95_combout\);

-- Location: FF_X40_Y1_N31
\tick_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_cnt[31]~95_combout\,
	sclr => \tick_cnt[29]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tick_cnt(31));

-- Location: LCCOMB_X41_Y2_N18
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (tick_cnt(31)) # (tick_cnt(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tick_cnt(31),
	datad => tick_cnt(30),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X41_Y2_N0
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (tick_cnt(28)) # ((tick_cnt(29)) # ((\Equal0~7_combout\) # (\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_cnt(28),
	datab => tick_cnt(29),
	datac => \Equal0~7_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X41_Y2_N6
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~6_combout\) # ((\Equal0~5_combout\) # ((\Equal0~4_combout\) # (\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X41_Y2_N22
\tick_end~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tick_end~0_combout\ = (\state.S_COUNT~q\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_COUNT~q\,
	datad => \Equal0~10_combout\,
	combout => \tick_end~0_combout\);

-- Location: FF_X41_Y2_N23
tick_end : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \tick_end~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tick_end~q\);

-- Location: LCCOMB_X41_Y5_N6
\state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~9_combout\ = (\tick_end~q\ & (\state.S_COUNT~q\ & \raz_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_end~q\,
	datac => \state.S_COUNT~q\,
	datad => \raz_n~input_o\,
	combout => \state~9_combout\);

-- Location: FF_X41_Y5_N7
\state.S_LATCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_LATCH~q\);

-- Location: LCCOMB_X41_Y5_N8
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.S_LATCH~q\) # ((\start_stop~input_o\ & (!\continu~input_o\ & \state.S_VALID_HOLD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datab => \continu~input_o\,
	datac => \state.S_VALID_HOLD~q\,
	datad => \state.S_LATCH~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X41_Y5_N9
\state.S_VALID_HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_VALID_HOLD~q\);

-- Location: LCCOMB_X41_Y5_N24
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\data_valid_i~q\ & ((\state.S_ARM~q\) # ((\state.S_COUNT~q\) # (\state.S_LATCH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_ARM~q\,
	datab => \data_valid_i~q\,
	datac => \state.S_COUNT~q\,
	datad => \state.S_LATCH~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X41_Y5_N4
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\state.S_VALID_HOLD~q\ & ((\start_stop~input_o\) # (\continu~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop~input_o\,
	datab => \state.S_VALID_HOLD~q\,
	datac => \continu~input_o\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X41_Y5_N5
data_valid_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_valid_i~q\);

-- Location: LCCOMB_X41_Y5_N20
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\state.S_ARM~q\) # ((\state.S_VALID_HOLD~q\) # (\state.S_LATCH~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_ARM~q\,
	datac => \state.S_VALID_HOLD~q\,
	datad => \state.S_LATCH~q\,
	combout => \WideOr2~combout\);

-- Location: IOIBUF_X53_Y10_N15
\in_freq_anemometre~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_freq_anemometre,
	o => \in_freq_anemometre~input_o\);

-- Location: LCCOMB_X46_Y9_N22
\ff1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff1~0_combout\ = (\raz_n~input_o\ & \in_freq_anemometre~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \raz_n~input_o\,
	datad => \in_freq_anemometre~input_o\,
	combout => \ff1~0_combout\);

-- Location: FF_X46_Y9_N23
ff1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \ff1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff1~q\);

-- Location: LCCOMB_X46_Y9_N8
\ff2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff2~0_combout\ = (\ff1~q\ & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff1~q\,
	datac => \raz_n~input_o\,
	combout => \ff2~0_combout\);

-- Location: FF_X46_Y9_N9
ff2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \ff2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2~q\);

-- Location: LCCOMB_X46_Y9_N18
\ff2_d~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ff2_d~0_combout\ = (\ff2~q\ & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ff2~q\,
	datac => \raz_n~input_o\,
	combout => \ff2_d~0_combout\);

-- Location: FF_X46_Y9_N19
ff2_d : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \ff2_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff2_d~q\);

-- Location: LCCOMB_X46_Y9_N4
\pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse~0_combout\ = (\ff2~q\ & !\ff2_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ff2~q\,
	datad => \ff2_d~q\,
	combout => \pulse~0_combout\);

-- Location: FF_X44_Y9_N25
pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \pulse~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse~q\);

-- Location: LCCOMB_X44_Y9_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\pulse~q\ & (live_cnt(0) $ (VCC))) # (!\pulse~q\ & (live_cnt(0) & VCC))
-- \Add1~1\ = CARRY((\pulse~q\ & live_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse~q\,
	datab => live_cnt(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X43_Y9_N26
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.S_COUNT~q\ & ((\Add1~0_combout\) # ((live_cnt(0) & \WideOr2~combout\)))) # (!\state.S_COUNT~q\ & (live_cnt(0) & ((\WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => live_cnt(0),
	datac => \Add1~0_combout\,
	datad => \WideOr2~combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X44_Y9_N5
\live_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \Selector16~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(0));

-- Location: LCCOMB_X44_Y9_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (live_cnt(1) & (!\Add1~1\)) # (!live_cnt(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!live_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X45_Y9_N8
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\WideOr2~combout\ & ((live_cnt(1)) # ((\state.S_COUNT~q\ & \Add1~2_combout\)))) # (!\WideOr2~combout\ & (\state.S_COUNT~q\ & ((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~combout\,
	datab => \state.S_COUNT~q\,
	datac => live_cnt(1),
	datad => \Add1~2_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X45_Y9_N9
\live_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(1));

-- Location: LCCOMB_X44_Y9_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (live_cnt(2) & (\Add1~3\ $ (GND))) # (!live_cnt(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((live_cnt(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X45_Y9_N30
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\WideOr2~combout\ & ((live_cnt(2)) # ((\state.S_COUNT~q\ & \Add1~4_combout\)))) # (!\WideOr2~combout\ & (\state.S_COUNT~q\ & ((\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~combout\,
	datab => \state.S_COUNT~q\,
	datac => live_cnt(2),
	datad => \Add1~4_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X45_Y9_N31
\live_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(2));

-- Location: LCCOMB_X44_Y9_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (live_cnt(3) & (!\Add1~5\)) # (!live_cnt(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!live_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X43_Y9_N8
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.S_COUNT~q\ & ((\Add1~6_combout\) # ((\WideOr2~combout\ & live_cnt(3))))) # (!\state.S_COUNT~q\ & (\WideOr2~combout\ & (live_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \WideOr2~combout\,
	datac => live_cnt(3),
	datad => \Add1~6_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X43_Y9_N9
\live_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(3));

-- Location: LCCOMB_X44_Y9_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (live_cnt(4) & (\Add1~7\ $ (GND))) # (!live_cnt(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((live_cnt(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X43_Y9_N14
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.S_COUNT~q\ & ((\Add1~8_combout\) # ((live_cnt(4) & \WideOr2~combout\)))) # (!\state.S_COUNT~q\ & (((live_cnt(4) & \WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \Add1~8_combout\,
	datac => live_cnt(4),
	datad => \WideOr2~combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X43_Y9_N15
\live_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(4));

-- Location: LCCOMB_X44_Y9_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (live_cnt(5) & (!\Add1~9\)) # (!live_cnt(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!live_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X43_Y9_N12
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.S_COUNT~q\ & ((\Add1~10_combout\) # ((live_cnt(5) & \WideOr2~combout\)))) # (!\state.S_COUNT~q\ & (((live_cnt(5) & \WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \Add1~10_combout\,
	datac => live_cnt(5),
	datad => \WideOr2~combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X43_Y9_N13
\live_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(5));

-- Location: LCCOMB_X44_Y9_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (live_cnt(6) & (\Add1~11\ $ (GND))) # (!live_cnt(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((live_cnt(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X45_Y9_N12
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\WideOr2~combout\ & ((live_cnt(6)) # ((\state.S_COUNT~q\ & \Add1~12_combout\)))) # (!\WideOr2~combout\ & (\state.S_COUNT~q\ & ((\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~combout\,
	datab => \state.S_COUNT~q\,
	datac => live_cnt(6),
	datad => \Add1~12_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X45_Y9_N13
\live_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(6));

-- Location: LCCOMB_X44_Y9_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (live_cnt(7) & (!\Add1~13\)) # (!live_cnt(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!live_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X45_Y9_N18
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\WideOr2~combout\ & ((live_cnt(7)) # ((\state.S_COUNT~q\ & \Add1~14_combout\)))) # (!\WideOr2~combout\ & (\state.S_COUNT~q\ & ((\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~combout\,
	datab => \state.S_COUNT~q\,
	datac => live_cnt(7),
	datad => \Add1~14_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X45_Y9_N19
\live_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(7));

-- Location: LCCOMB_X44_Y9_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (live_cnt(8) & (\Add1~15\ $ (GND))) # (!live_cnt(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((live_cnt(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X43_Y9_N28
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.S_COUNT~q\ & ((\Add1~16_combout\) # ((\WideOr2~combout\ & live_cnt(8))))) # (!\state.S_COUNT~q\ & (\WideOr2~combout\ & (live_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \WideOr2~combout\,
	datac => live_cnt(8),
	datad => \Add1~16_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X43_Y9_N29
\live_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(8));

-- Location: LCCOMB_X44_Y9_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (live_cnt(9) & (!\Add1~17\)) # (!live_cnt(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!live_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X43_Y9_N6
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.S_COUNT~q\ & ((\Add1~18_combout\) # ((\WideOr2~combout\ & live_cnt(9))))) # (!\state.S_COUNT~q\ & (\WideOr2~combout\ & (live_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \WideOr2~combout\,
	datac => live_cnt(9),
	datad => \Add1~18_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X43_Y9_N7
\live_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(9));

-- Location: LCCOMB_X43_Y9_N30
\latched_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~3_combout\ = (live_cnt(9) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(9),
	datad => \raz_n~input_o\,
	combout => \latched_cnt~3_combout\);

-- Location: LCCOMB_X44_Y5_N12
\latched_cnt[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt[10]~1_combout\ = (\state.S_LATCH~q\) # (!\raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \raz_n~input_o\,
	datad => \state.S_LATCH~q\,
	combout => \latched_cnt[10]~1_combout\);

-- Location: FF_X43_Y9_N31
\latched_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~3_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(9));

-- Location: LCCOMB_X44_Y9_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (live_cnt(10) & (\Add1~19\ $ (GND))) # (!live_cnt(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((live_cnt(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X43_Y9_N16
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add1~20_combout\ & ((\state.S_COUNT~q\) # ((\WideOr2~combout\ & live_cnt(10))))) # (!\Add1~20_combout\ & (\WideOr2~combout\ & (live_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \WideOr2~combout\,
	datac => live_cnt(10),
	datad => \state.S_COUNT~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X43_Y9_N17
\live_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(10));

-- Location: LCCOMB_X43_Y9_N20
\latched_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~4_combout\ = (live_cnt(10) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(10),
	datad => \raz_n~input_o\,
	combout => \latched_cnt~4_combout\);

-- Location: FF_X43_Y9_N21
\latched_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~4_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(10));

-- Location: LCCOMB_X43_Y9_N4
\latched_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~2_combout\ = (live_cnt(8) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(8),
	datad => \raz_n~input_o\,
	combout => \latched_cnt~2_combout\);

-- Location: FF_X43_Y9_N5
\latched_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~2_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(8));

-- Location: LCCOMB_X44_Y9_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (live_cnt(11) & (!\Add1~21\)) # (!live_cnt(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!live_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X43_Y9_N18
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.S_COUNT~q\ & ((\Add1~22_combout\) # ((\WideOr2~combout\ & live_cnt(11))))) # (!\state.S_COUNT~q\ & (\WideOr2~combout\ & (live_cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COUNT~q\,
	datab => \WideOr2~combout\,
	datac => live_cnt(11),
	datad => \Add1~22_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X43_Y9_N19
\live_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(11));

-- Location: LCCOMB_X43_Y9_N2
\latched_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~5_combout\ = (live_cnt(11) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(11),
	datad => \raz_n~input_o\,
	combout => \latched_cnt~5_combout\);

-- Location: FF_X43_Y9_N3
\latched_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~5_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(11));

-- Location: LCCOMB_X43_Y9_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (latched_cnt(9)) # ((latched_cnt(10)) # ((latched_cnt(8)) # (latched_cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => latched_cnt(9),
	datab => latched_cnt(10),
	datac => latched_cnt(8),
	datad => latched_cnt(11),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y9_N10
\latched_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~0_combout\ = (live_cnt(0) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => live_cnt(0),
	datad => \raz_n~input_o\,
	combout => \latched_cnt~0_combout\);

-- Location: FF_X43_Y9_N11
\latched_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~0_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(0));

-- Location: LCCOMB_X44_Y9_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (live_cnt(12) & (\Add1~23\ $ (GND))) # (!live_cnt(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((live_cnt(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X45_Y9_N4
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\WideOr2~combout\ & ((live_cnt(12)) # ((\state.S_COUNT~q\ & \Add1~24_combout\)))) # (!\WideOr2~combout\ & (\state.S_COUNT~q\ & ((\Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~combout\,
	datab => \state.S_COUNT~q\,
	datac => live_cnt(12),
	datad => \Add1~24_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X45_Y9_N5
\live_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(12));

-- Location: LCCOMB_X44_Y9_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (live_cnt(13) & (!\Add1~25\)) # (!live_cnt(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!live_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X45_Y9_N2
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\WideOr2~combout\ & ((live_cnt(13)) # ((\state.S_COUNT~q\ & \Add1~26_combout\)))) # (!\WideOr2~combout\ & (\state.S_COUNT~q\ & ((\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~combout\,
	datab => \state.S_COUNT~q\,
	datac => live_cnt(13),
	datad => \Add1~26_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X45_Y9_N3
\live_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(13));

-- Location: LCCOMB_X45_Y9_N0
\latched_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~7_combout\ = (\raz_n~input_o\ & live_cnt(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \raz_n~input_o\,
	datad => live_cnt(13),
	combout => \latched_cnt~7_combout\);

-- Location: FF_X45_Y9_N1
\latched_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~7_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(13));

-- Location: LCCOMB_X44_Y9_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (live_cnt(14) & (\Add1~27\ $ (GND))) # (!live_cnt(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((live_cnt(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X45_Y9_N28
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\WideOr2~combout\ & ((live_cnt(14)) # ((\state.S_COUNT~q\ & \Add1~28_combout\)))) # (!\WideOr2~combout\ & (\state.S_COUNT~q\ & ((\Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~combout\,
	datab => \state.S_COUNT~q\,
	datac => live_cnt(14),
	datad => \Add1~28_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X45_Y9_N29
\live_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(14));

-- Location: LCCOMB_X44_Y9_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \Add1~29\ $ (live_cnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => live_cnt(15),
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X45_Y9_N26
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\WideOr2~combout\ & ((live_cnt(15)) # ((\state.S_COUNT~q\ & \Add1~30_combout\)))) # (!\WideOr2~combout\ & (\state.S_COUNT~q\ & ((\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~combout\,
	datab => \state.S_COUNT~q\,
	datac => live_cnt(15),
	datad => \Add1~30_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X45_Y9_N27
\live_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	sclr => \ALT_INV_raz_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => live_cnt(15));

-- Location: LCCOMB_X45_Y9_N20
\latched_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~9_combout\ = (live_cnt(15) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(15),
	datac => \raz_n~input_o\,
	combout => \latched_cnt~9_combout\);

-- Location: FF_X45_Y9_N21
\latched_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~9_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(15));

-- Location: LCCOMB_X45_Y9_N6
\latched_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~6_combout\ = (live_cnt(12) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(12),
	datac => \raz_n~input_o\,
	combout => \latched_cnt~6_combout\);

-- Location: FF_X46_Y9_N21
\latched_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	asdata => \latched_cnt~6_combout\,
	sload => VCC,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(12));

-- Location: LCCOMB_X45_Y9_N14
\latched_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~8_combout\ = (\raz_n~input_o\ & live_cnt(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \raz_n~input_o\,
	datad => live_cnt(14),
	combout => \latched_cnt~8_combout\);

-- Location: FF_X45_Y9_N15
\latched_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~8_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(14));

-- Location: LCCOMB_X46_Y9_N20
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (latched_cnt(13)) # ((latched_cnt(15)) # ((latched_cnt(12)) # (latched_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => latched_cnt(13),
	datab => latched_cnt(15),
	datac => latched_cnt(12),
	datad => latched_cnt(14),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X46_Y9_N10
\sat8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat8~0_combout\ = (\LessThan0~0_combout\) # ((latched_cnt(0)) # (\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => latched_cnt(0),
	datad => \LessThan0~1_combout\,
	combout => \sat8~0_combout\);

-- Location: LCCOMB_X45_Y9_N10
\latched_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~10_combout\ = (live_cnt(1) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(1),
	datac => \raz_n~input_o\,
	combout => \latched_cnt~10_combout\);

-- Location: FF_X45_Y9_N11
\latched_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~10_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(1));

-- Location: LCCOMB_X46_Y9_N24
\sat8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat8~1_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\) # (latched_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datad => latched_cnt(1),
	combout => \sat8~1_combout\);

-- Location: LCCOMB_X45_Y9_N16
\latched_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~11_combout\ = (\raz_n~input_o\ & live_cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \raz_n~input_o\,
	datac => live_cnt(2),
	combout => \latched_cnt~11_combout\);

-- Location: FF_X45_Y9_N17
\latched_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~11_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(2));

-- Location: LCCOMB_X46_Y9_N6
\sat8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat8~2_combout\ = (\LessThan0~0_combout\) # ((latched_cnt(2)) # (\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => latched_cnt(2),
	datad => \LessThan0~1_combout\,
	combout => \sat8~2_combout\);

-- Location: LCCOMB_X43_Y9_N22
\latched_cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~12_combout\ = (live_cnt(3) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => live_cnt(3),
	datad => \raz_n~input_o\,
	combout => \latched_cnt~12_combout\);

-- Location: FF_X43_Y9_N23
\latched_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~12_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(3));

-- Location: LCCOMB_X46_Y9_N28
\sat8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat8~3_combout\ = (\LessThan0~0_combout\) # ((latched_cnt(3)) # (\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => latched_cnt(3),
	datad => \LessThan0~1_combout\,
	combout => \sat8~3_combout\);

-- Location: LCCOMB_X46_Y9_N26
\latched_cnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~13_combout\ = (\raz_n~input_o\ & live_cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \raz_n~input_o\,
	datac => live_cnt(4),
	combout => \latched_cnt~13_combout\);

-- Location: FF_X46_Y9_N27
\latched_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~13_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(4));

-- Location: LCCOMB_X46_Y9_N12
\sat8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat8~4_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\) # (latched_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => latched_cnt(4),
	combout => \sat8~4_combout\);

-- Location: LCCOMB_X43_Y9_N24
\latched_cnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~14_combout\ = (live_cnt(5) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(5),
	datad => \raz_n~input_o\,
	combout => \latched_cnt~14_combout\);

-- Location: FF_X43_Y9_N25
\latched_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~14_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(5));

-- Location: LCCOMB_X46_Y9_N14
\sat8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat8~5_combout\ = (\LessThan0~0_combout\) # ((latched_cnt(5)) # (\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => latched_cnt(5),
	datad => \LessThan0~1_combout\,
	combout => \sat8~5_combout\);

-- Location: LCCOMB_X45_Y9_N22
\latched_cnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~15_combout\ = (live_cnt(6) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => live_cnt(6),
	datac => \raz_n~input_o\,
	combout => \latched_cnt~15_combout\);

-- Location: FF_X45_Y9_N23
\latched_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~15_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(6));

-- Location: LCCOMB_X46_Y9_N16
\sat8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat8~6_combout\ = (\LessThan0~0_combout\) # ((latched_cnt(6)) # (\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => latched_cnt(6),
	datad => \LessThan0~1_combout\,
	combout => \sat8~6_combout\);

-- Location: LCCOMB_X45_Y9_N24
\latched_cnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \latched_cnt~16_combout\ = (live_cnt(7) & \raz_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => live_cnt(7),
	datac => \raz_n~input_o\,
	combout => \latched_cnt~16_combout\);

-- Location: FF_X45_Y9_N25
\latched_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50M~inputclkctrl_outclk\,
	d => \latched_cnt~16_combout\,
	ena => \latched_cnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_cnt(7));

-- Location: LCCOMB_X46_Y9_N30
\sat8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat8~7_combout\ = (\LessThan0~0_combout\) # ((latched_cnt(7)) # (\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => latched_cnt(7),
	datad => \LessThan0~1_combout\,
	combout => \sat8~7_combout\);

-- Location: LCCOMB_X41_Y5_N30
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = ((\state.S_CLEAR~q\) # (\state.S_LATCH~q\)) # (!\state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_IDLE~q\,
	datac => \state.S_CLEAR~q\,
	datad => \state.S_LATCH~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X41_Y2_N16
\etat_dbg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat_dbg~0_combout\ = (\state.S_COUNT~q\) # (\state.S_CLEAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_COUNT~q\,
	datad => \state.S_CLEAR~q\,
	combout => \etat_dbg~0_combout\);

-- Location: LCCOMB_X41_Y5_N16
\etat_dbg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \etat_dbg~1_combout\ = (\state.S_VALID_HOLD~q\) # (\state.S_LATCH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_VALID_HOLD~q\,
	datad => \state.S_LATCH~q\,
	combout => \etat_dbg~1_combout\);

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

ww_etat_dbg(2) <= \etat_dbg[2]~output_o\;
END structure;


