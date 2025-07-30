-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "05/24/2024 21:01:46"

-- 
-- Device: Altera EP4CE55F23I7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter2 IS
    PORT (
	CLKK : IN std_logic;
	CNT_EN : OUT std_logic;
	RST_CNT : OUT std_logic;
	Load : OUT std_logic
	);
END counter2;

-- Design Ports Information
-- CNT_EN	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_CNT	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKK	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLKK : std_logic;
SIGNAL ww_CNT_EN : std_logic;
SIGNAL ww_RST_CNT : std_logic;
SIGNAL ww_Load : std_logic;
SIGNAL \CLKK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT_EN~output_o\ : std_logic;
SIGNAL \RST_CNT~output_o\ : std_logic;
SIGNAL \Load~output_o\ : std_logic;
SIGNAL \CLKK~input_o\ : std_logic;
SIGNAL \CLKK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Div2CLK~0_combout\ : std_logic;
SIGNAL \Div2CLK~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \present_state.lock~feeder_combout\ : std_logic;
SIGNAL \present_state.lock~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \present_state.clean~feeder_combout\ : std_logic;
SIGNAL \present_state.clean~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \present_state.Div_count~feeder_combout\ : std_logic;
SIGNAL \present_state.Div_count~q\ : std_logic;
SIGNAL \CNT_EN$latch~combout\ : std_logic;
SIGNAL \Load$latch~combout\ : std_logic;

BEGIN

ww_CLKK <= CLKK;
CNT_EN <= ww_CNT_EN;
RST_CNT <= ww_RST_CNT;
Load <= ww_Load;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLKK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLKK~input_o\);

-- Location: IOOBUF_X0_Y25_N23
\CNT_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNT_EN$latch~combout\,
	devoe => ww_devoe,
	o => \CNT_EN~output_o\);

-- Location: IOOBUF_X77_Y43_N2
\RST_CNT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \RST_CNT~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\Load~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Load$latch~combout\,
	devoe => ww_devoe,
	o => \Load~output_o\);

-- Location: IOIBUF_X0_Y26_N8
\CLKK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKK,
	o => \CLKK~input_o\);

-- Location: CLKCTRL_G2
\CLKK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLKK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLKK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y25_N28
\Div2CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2CLK~0_combout\ = !\Div2CLK~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2CLK~q\,
	combout => \Div2CLK~0_combout\);

-- Location: FF_X1_Y25_N29
Div2CLK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKK~inputclkctrl_outclk\,
	d => \Div2CLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Div2CLK~q\);

-- Location: LCCOMB_X1_Y25_N24
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Div2CLK~q\ & (\present_state.lock~q\)) # (!\Div2CLK~q\ & (((\present_state.lock~q\ & \CLKK~input_o\)) # (!\present_state.Div_count~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.lock~q\,
	datab => \CLKK~input_o\,
	datac => \present_state.Div_count~q\,
	datad => \Div2CLK~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y25_N0
\present_state.lock~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.lock~feeder_combout\ = \Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector1~0_combout\,
	combout => \present_state.lock~feeder_combout\);

-- Location: FF_X1_Y25_N1
\present_state.lock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKK~inputclkctrl_outclk\,
	d => \present_state.lock~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.lock~q\);

-- Location: LCCOMB_X1_Y25_N12
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\CLKK~input_o\ & (((\present_state.clean~q\ & !\Div2CLK~q\)))) # (!\CLKK~input_o\ & ((\present_state.clean~q\) # ((\present_state.lock~q\ & !\Div2CLK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.lock~q\,
	datab => \CLKK~input_o\,
	datac => \present_state.clean~q\,
	datad => \Div2CLK~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y25_N8
\present_state.clean~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.clean~feeder_combout\ = \Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector2~0_combout\,
	combout => \present_state.clean~feeder_combout\);

-- Location: FF_X1_Y25_N9
\present_state.clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKK~inputclkctrl_outclk\,
	d => \present_state.clean~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.clean~q\);

-- Location: LCCOMB_X1_Y25_N20
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((\present_state.Div_count~q\ & ((!\present_state.clean~q\) # (!\CLKK~input_o\)))) # (!\Div2CLK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.Div_count~q\,
	datab => \CLKK~input_o\,
	datac => \present_state.clean~q\,
	datad => \Div2CLK~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y25_N14
\present_state.Div_count~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_state.Div_count~feeder_combout\ = \Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector0~0_combout\,
	combout => \present_state.Div_count~feeder_combout\);

-- Location: FF_X1_Y25_N15
\present_state.Div_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKK~inputclkctrl_outclk\,
	d => \present_state.Div_count~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.Div_count~q\);

-- Location: LCCOMB_X1_Y25_N30
\CNT_EN$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \CNT_EN$latch~combout\ = (\present_state.Div_count~q\ & (\CNT_EN$latch~combout\)) # (!\present_state.Div_count~q\ & ((\Div2CLK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_EN$latch~combout\,
	datac => \present_state.Div_count~q\,
	datad => \Div2CLK~q\,
	combout => \CNT_EN$latch~combout\);

-- Location: LCCOMB_X1_Y25_N26
\Load$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Load$latch~combout\ = (\present_state.lock~q\ & ((!\Div2CLK~q\))) # (!\present_state.lock~q\ & (\Load$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load$latch~combout\,
	datab => \present_state.lock~q\,
	datad => \Div2CLK~q\,
	combout => \Load$latch~combout\);

ww_CNT_EN <= \CNT_EN~output_o\;

ww_RST_CNT <= \RST_CNT~output_o\;

ww_Load <= \Load~output_o\;
END structure;


