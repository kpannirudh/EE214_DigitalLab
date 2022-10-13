-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/13/2022 16:43:46"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clock_divider IS
    PORT (
	clk_out : BUFFER std_logic;
	clk_50 : IN std_logic;
	resetn : IN std_logic
	);
END clock_divider;

-- Design Ports Information
-- clk_out	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clock_divider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~94_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \count[7]~45\ : std_logic;
SIGNAL \count[8]~46_combout\ : std_logic;
SIGNAL \count[8]~47\ : std_logic;
SIGNAL \count[9]~48_combout\ : std_logic;
SIGNAL \count[9]~49\ : std_logic;
SIGNAL \count[10]~50_combout\ : std_logic;
SIGNAL \count[10]~51\ : std_logic;
SIGNAL \count[11]~52_combout\ : std_logic;
SIGNAL \count[11]~53\ : std_logic;
SIGNAL \count[12]~54_combout\ : std_logic;
SIGNAL \count[12]~55\ : std_logic;
SIGNAL \count[13]~56_combout\ : std_logic;
SIGNAL \count[13]~57\ : std_logic;
SIGNAL \count[14]~58_combout\ : std_logic;
SIGNAL \count[14]~59\ : std_logic;
SIGNAL \count[15]~60_combout\ : std_logic;
SIGNAL \count[15]~61\ : std_logic;
SIGNAL \count[16]~62_combout\ : std_logic;
SIGNAL \count[16]~feeder_combout\ : std_logic;
SIGNAL \count[16]~63\ : std_logic;
SIGNAL \count[17]~64_combout\ : std_logic;
SIGNAL \count[17]~65\ : std_logic;
SIGNAL \count[18]~66_combout\ : std_logic;
SIGNAL \count[18]~67\ : std_logic;
SIGNAL \count[19]~68_combout\ : std_logic;
SIGNAL \count[19]~69\ : std_logic;
SIGNAL \count[20]~70_combout\ : std_logic;
SIGNAL \count[20]~71\ : std_logic;
SIGNAL \count[21]~72_combout\ : std_logic;
SIGNAL \count[21]~73\ : std_logic;
SIGNAL \count[22]~74_combout\ : std_logic;
SIGNAL \count[22]~75\ : std_logic;
SIGNAL \count[23]~76_combout\ : std_logic;
SIGNAL \count[23]~77\ : std_logic;
SIGNAL \count[24]~78_combout\ : std_logic;
SIGNAL \count[24]~79\ : std_logic;
SIGNAL \count[25]~80_combout\ : std_logic;
SIGNAL \count[25]~81\ : std_logic;
SIGNAL \count[26]~82_combout\ : std_logic;
SIGNAL \count[26]~83\ : std_logic;
SIGNAL \count[27]~84_combout\ : std_logic;
SIGNAL \count[27]~85\ : std_logic;
SIGNAL \count[28]~86_combout\ : std_logic;
SIGNAL \count[28]~87\ : std_logic;
SIGNAL \count[29]~88_combout\ : std_logic;
SIGNAL \count[29]~89\ : std_logic;
SIGNAL \count[30]~90_combout\ : std_logic;
SIGNAL \count[30]~91\ : std_logic;
SIGNAL \count[31]~92_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \count[0]~31_combout\ : std_logic;
SIGNAL \count[1]~32_combout\ : std_logic;
SIGNAL \count[1]~33\ : std_logic;
SIGNAL \count[2]~34_combout\ : std_logic;
SIGNAL \count[2]~35\ : std_logic;
SIGNAL \count[3]~36_combout\ : std_logic;
SIGNAL \count[3]~37\ : std_logic;
SIGNAL \count[4]~38_combout\ : std_logic;
SIGNAL \count[4]~39\ : std_logic;
SIGNAL \count[5]~40_combout\ : std_logic;
SIGNAL \count[5]~41\ : std_logic;
SIGNAL \count[6]~42_combout\ : std_logic;
SIGNAL \count[6]~43\ : std_logic;
SIGNAL \count[7]~44_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clk_out_temp~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_count[0]~31_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

clk_out <= ww_clk_out;
ww_clk_50 <= clk_50;
ww_resetn <= resetn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\ALT_INV_count[0]~31_combout\ <= NOT \count[0]~31_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y34_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X24_Y0_N2
\clk_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_out_temp~0_combout\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\clk_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G2
\clk_50~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X10_Y4_N16
\count[0]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[0]~94_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~94_combout\);

-- Location: IOIBUF_X14_Y0_N1
\resetn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: LCCOMB_X11_Y4_N14
\count[7]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[7]~44_combout\ = (count(7) & (\count[6]~43\ $ (GND))) # (!count(7) & (!\count[6]~43\ & VCC))
-- \count[7]~45\ = CARRY((count(7) & !\count[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~43\,
	combout => \count[7]~44_combout\,
	cout => \count[7]~45\);

-- Location: LCCOMB_X11_Y4_N16
\count[8]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[8]~46_combout\ = (count(8) & (!\count[7]~45\)) # (!count(8) & ((\count[7]~45\) # (GND)))
-- \count[8]~47\ = CARRY((!\count[7]~45\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~45\,
	combout => \count[8]~46_combout\,
	cout => \count[8]~47\);

-- Location: FF_X11_Y4_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[8]~46_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X11_Y4_N18
\count[9]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[9]~48_combout\ = (count(9) & (\count[8]~47\ $ (GND))) # (!count(9) & (!\count[8]~47\ & VCC))
-- \count[9]~49\ = CARRY((count(9) & !\count[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~47\,
	combout => \count[9]~48_combout\,
	cout => \count[9]~49\);

-- Location: FF_X11_Y4_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[9]~48_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X11_Y4_N20
\count[10]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[10]~50_combout\ = (count(10) & (!\count[9]~49\)) # (!count(10) & ((\count[9]~49\) # (GND)))
-- \count[10]~51\ = CARRY((!\count[9]~49\) # (!count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~49\,
	combout => \count[10]~50_combout\,
	cout => \count[10]~51\);

-- Location: FF_X11_Y4_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[10]~50_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X11_Y4_N22
\count[11]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[11]~52_combout\ = (count(11) & (\count[10]~51\ $ (GND))) # (!count(11) & (!\count[10]~51\ & VCC))
-- \count[11]~53\ = CARRY((count(11) & !\count[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~51\,
	combout => \count[11]~52_combout\,
	cout => \count[11]~53\);

-- Location: FF_X11_Y4_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[11]~52_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X11_Y4_N24
\count[12]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[12]~54_combout\ = (count(12) & (!\count[11]~53\)) # (!count(12) & ((\count[11]~53\) # (GND)))
-- \count[12]~55\ = CARRY((!\count[11]~53\) # (!count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~53\,
	combout => \count[12]~54_combout\,
	cout => \count[12]~55\);

-- Location: FF_X11_Y4_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[12]~54_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X11_Y4_N26
\count[13]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[13]~56_combout\ = (count(13) & (\count[12]~55\ $ (GND))) # (!count(13) & (!\count[12]~55\ & VCC))
-- \count[13]~57\ = CARRY((count(13) & !\count[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~55\,
	combout => \count[13]~56_combout\,
	cout => \count[13]~57\);

-- Location: FF_X11_Y4_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[13]~56_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X11_Y4_N28
\count[14]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[14]~58_combout\ = (count(14) & (!\count[13]~57\)) # (!count(14) & ((\count[13]~57\) # (GND)))
-- \count[14]~59\ = CARRY((!\count[13]~57\) # (!count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~57\,
	combout => \count[14]~58_combout\,
	cout => \count[14]~59\);

-- Location: FF_X11_Y4_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[14]~58_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X11_Y4_N30
\count[15]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[15]~60_combout\ = (count(15) & (\count[14]~59\ $ (GND))) # (!count(15) & (!\count[14]~59\ & VCC))
-- \count[15]~61\ = CARRY((count(15) & !\count[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~59\,
	combout => \count[15]~60_combout\,
	cout => \count[15]~61\);

-- Location: FF_X11_Y4_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[15]~60_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X11_Y3_N0
\count[16]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[16]~62_combout\ = (count(16) & (!\count[15]~61\)) # (!count(16) & ((\count[15]~61\) # (GND)))
-- \count[16]~63\ = CARRY((!\count[15]~61\) # (!count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~61\,
	combout => \count[16]~62_combout\,
	cout => \count[16]~63\);

-- Location: LCCOMB_X12_Y4_N28
\count[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[16]~feeder_combout\ = \count[16]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count[16]~62_combout\,
	combout => \count[16]~feeder_combout\);

-- Location: FF_X12_Y4_N29
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[16]~feeder_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X11_Y3_N2
\count[17]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[17]~64_combout\ = (count(17) & (\count[16]~63\ $ (GND))) # (!count(17) & (!\count[16]~63\ & VCC))
-- \count[17]~65\ = CARRY((count(17) & !\count[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~63\,
	combout => \count[17]~64_combout\,
	cout => \count[17]~65\);

-- Location: FF_X11_Y3_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[17]~64_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X11_Y3_N4
\count[18]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[18]~66_combout\ = (count(18) & (!\count[17]~65\)) # (!count(18) & ((\count[17]~65\) # (GND)))
-- \count[18]~67\ = CARRY((!\count[17]~65\) # (!count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~65\,
	combout => \count[18]~66_combout\,
	cout => \count[18]~67\);

-- Location: FF_X11_Y3_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[18]~66_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X11_Y3_N6
\count[19]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[19]~68_combout\ = (count(19) & (\count[18]~67\ $ (GND))) # (!count(19) & (!\count[18]~67\ & VCC))
-- \count[19]~69\ = CARRY((count(19) & !\count[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~67\,
	combout => \count[19]~68_combout\,
	cout => \count[19]~69\);

-- Location: FF_X11_Y3_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[19]~68_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X11_Y3_N8
\count[20]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[20]~70_combout\ = (count(20) & (!\count[19]~69\)) # (!count(20) & ((\count[19]~69\) # (GND)))
-- \count[20]~71\ = CARRY((!\count[19]~69\) # (!count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~69\,
	combout => \count[20]~70_combout\,
	cout => \count[20]~71\);

-- Location: FF_X11_Y3_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[20]~70_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X11_Y3_N10
\count[21]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[21]~72_combout\ = (count(21) & (\count[20]~71\ $ (GND))) # (!count(21) & (!\count[20]~71\ & VCC))
-- \count[21]~73\ = CARRY((count(21) & !\count[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~71\,
	combout => \count[21]~72_combout\,
	cout => \count[21]~73\);

-- Location: FF_X11_Y3_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[21]~72_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X11_Y3_N12
\count[22]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[22]~74_combout\ = (count(22) & (!\count[21]~73\)) # (!count(22) & ((\count[21]~73\) # (GND)))
-- \count[22]~75\ = CARRY((!\count[21]~73\) # (!count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~73\,
	combout => \count[22]~74_combout\,
	cout => \count[22]~75\);

-- Location: FF_X11_Y3_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[22]~74_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X11_Y3_N14
\count[23]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[23]~76_combout\ = (count(23) & (\count[22]~75\ $ (GND))) # (!count(23) & (!\count[22]~75\ & VCC))
-- \count[23]~77\ = CARRY((count(23) & !\count[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~75\,
	combout => \count[23]~76_combout\,
	cout => \count[23]~77\);

-- Location: FF_X11_Y3_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[23]~76_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X11_Y3_N16
\count[24]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[24]~78_combout\ = (count(24) & (!\count[23]~77\)) # (!count(24) & ((\count[23]~77\) # (GND)))
-- \count[24]~79\ = CARRY((!\count[23]~77\) # (!count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~77\,
	combout => \count[24]~78_combout\,
	cout => \count[24]~79\);

-- Location: FF_X11_Y3_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[24]~78_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X11_Y3_N18
\count[25]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[25]~80_combout\ = (count(25) & (\count[24]~79\ $ (GND))) # (!count(25) & (!\count[24]~79\ & VCC))
-- \count[25]~81\ = CARRY((count(25) & !\count[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~79\,
	combout => \count[25]~80_combout\,
	cout => \count[25]~81\);

-- Location: FF_X11_Y3_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[25]~80_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X11_Y3_N20
\count[26]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[26]~82_combout\ = (count(26) & (!\count[25]~81\)) # (!count(26) & ((\count[25]~81\) # (GND)))
-- \count[26]~83\ = CARRY((!\count[25]~81\) # (!count(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~81\,
	combout => \count[26]~82_combout\,
	cout => \count[26]~83\);

-- Location: FF_X11_Y3_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[26]~82_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X11_Y3_N22
\count[27]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[27]~84_combout\ = (count(27) & (\count[26]~83\ $ (GND))) # (!count(27) & (!\count[26]~83\ & VCC))
-- \count[27]~85\ = CARRY((count(27) & !\count[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~83\,
	combout => \count[27]~84_combout\,
	cout => \count[27]~85\);

-- Location: FF_X11_Y3_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[27]~84_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X11_Y3_N24
\count[28]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[28]~86_combout\ = (count(28) & (!\count[27]~85\)) # (!count(28) & ((\count[27]~85\) # (GND)))
-- \count[28]~87\ = CARRY((!\count[27]~85\) # (!count(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \count[27]~85\,
	combout => \count[28]~86_combout\,
	cout => \count[28]~87\);

-- Location: FF_X11_Y3_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[28]~86_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X11_Y3_N26
\count[29]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[29]~88_combout\ = (count(29) & (\count[28]~87\ $ (GND))) # (!count(29) & (!\count[28]~87\ & VCC))
-- \count[29]~89\ = CARRY((count(29) & !\count[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \count[28]~87\,
	combout => \count[29]~88_combout\,
	cout => \count[29]~89\);

-- Location: FF_X11_Y3_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[29]~88_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X11_Y3_N28
\count[30]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[30]~90_combout\ = (count(30) & (!\count[29]~89\)) # (!count(30) & ((\count[29]~89\) # (GND)))
-- \count[30]~91\ = CARRY((!\count[29]~89\) # (!count(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \count[29]~89\,
	combout => \count[30]~90_combout\,
	cout => \count[30]~91\);

-- Location: FF_X11_Y3_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[30]~90_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X11_Y3_N30
\count[31]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[31]~92_combout\ = count(31) $ (!\count[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \count[30]~91\,
	combout => \count[31]~92_combout\);

-- Location: FF_X11_Y3_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[31]~92_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X12_Y4_N12
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(29) & (!count(31) & (!count(28) & !count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(31),
	datac => count(28),
	datad => count(30),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X12_Y4_N8
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (count(22) & (count(21) & (count(20) & count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(21),
	datac => count(20),
	datad => count(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X12_Y4_N26
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count(19) & (!count(16) & (!count(18) & count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(16),
	datac => count(18),
	datad => count(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X12_Y4_N2
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(27) & (count(25) & (!count(24) & !count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datab => count(25),
	datac => count(24),
	datad => count(26),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X12_Y4_N6
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~6_combout\ & (\Equal0~5_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X12_Y4_N30
\count[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[0]~31_combout\ = ((\Equal0~4_combout\ & \Equal0~9_combout\)) # (!\resetn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resetn~input_o\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \count[0]~31_combout\);

-- Location: FF_X11_Y4_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \count[0]~94_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X11_Y4_N2
\count[1]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[1]~32_combout\ = (count(1) & (count(0) $ (GND))) # (!count(1) & (!count(0) & VCC))
-- \count[1]~33\ = CARRY((count(1) & !count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datad => VCC,
	combout => \count[1]~32_combout\,
	cout => \count[1]~33\);

-- Location: FF_X11_Y4_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[1]~32_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X11_Y4_N4
\count[2]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[2]~34_combout\ = (count(2) & (!\count[1]~33\)) # (!count(2) & ((\count[1]~33\) # (GND)))
-- \count[2]~35\ = CARRY((!\count[1]~33\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~33\,
	combout => \count[2]~34_combout\,
	cout => \count[2]~35\);

-- Location: FF_X11_Y4_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[2]~34_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X11_Y4_N6
\count[3]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[3]~36_combout\ = (count(3) & (\count[2]~35\ $ (GND))) # (!count(3) & (!\count[2]~35\ & VCC))
-- \count[3]~37\ = CARRY((count(3) & !\count[2]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~35\,
	combout => \count[3]~36_combout\,
	cout => \count[3]~37\);

-- Location: FF_X11_Y4_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[3]~36_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X11_Y4_N8
\count[4]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[4]~38_combout\ = (count(4) & (!\count[3]~37\)) # (!count(4) & ((\count[3]~37\) # (GND)))
-- \count[4]~39\ = CARRY((!\count[3]~37\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~37\,
	combout => \count[4]~38_combout\,
	cout => \count[4]~39\);

-- Location: FF_X11_Y4_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[4]~38_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X11_Y4_N10
\count[5]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[5]~40_combout\ = (count(5) & (\count[4]~39\ $ (GND))) # (!count(5) & (!\count[4]~39\ & VCC))
-- \count[5]~41\ = CARRY((count(5) & !\count[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~39\,
	combout => \count[5]~40_combout\,
	cout => \count[5]~41\);

-- Location: FF_X11_Y4_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[5]~40_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X11_Y4_N12
\count[6]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[6]~42_combout\ = (count(6) & (!\count[5]~41\)) # (!count(6) & ((\count[5]~41\) # (GND)))
-- \count[6]~43\ = CARRY((!\count[5]~41\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~41\,
	combout => \count[6]~42_combout\,
	cout => \count[6]~43\);

-- Location: FF_X11_Y4_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[6]~42_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: FF_X11_Y4_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \count[7]~44_combout\,
	clrn => \ALT_INV_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X12_Y4_N22
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count(7) & (!count(4) & (!count(6) & !count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(4),
	datac => count(6),
	datad => count(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X12_Y4_N18
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count(12) & (count(14) & (count(13) & count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(14),
	datac => count(13),
	datad => count(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X11_Y4_N0
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(3) & (!count(2) & (count(0) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(0),
	datad => count(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X12_Y4_N20
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(8) & (!count(10) & (!count(11) & !count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(10),
	datac => count(11),
	datad => count(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X12_Y4_N4
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X12_Y4_N24
\clk_out_temp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out_temp~0_combout\ = \clk_out_temp~0_combout\ $ (((\Equal0~4_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \clk_out_temp~0_combout\,
	combout => \clk_out_temp~0_combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_clk_out <= \clk_out~output_o\;
END structure;


