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

-- DATE "04/15/2020 19:24:00"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	l1 IS
    PORT (
	pin_name5 : OUT std_logic;
	pin_name1 : IN std_logic;
	pin_name2 : IN std_logic;
	pin_name4 : IN std_logic;
	pin_name3 : IN std_logic
	);
END l1;

ARCHITECTURE structure OF l1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name5 : std_logic;
SIGNAL ww_pin_name1 : std_logic;
SIGNAL ww_pin_name2 : std_logic;
SIGNAL ww_pin_name4 : std_logic;
SIGNAL ww_pin_name3 : std_logic;
SIGNAL pin_name5_aoutput_o : std_logic;
SIGNAL pin_name1_ainput_o : std_logic;
SIGNAL pin_name3_ainput_o : std_logic;
SIGNAL pin_name2_ainput_o : std_logic;
SIGNAL pin_name4_ainput_o : std_logic;
SIGNAL inst3_a0_combout : std_logic;

BEGIN

pin_name5 <= ww_pin_name5;
ww_pin_name1 <= pin_name1;
ww_pin_name2 <= pin_name2;
ww_pin_name4 <= pin_name4;
ww_pin_name3 <= pin_name3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

pin_name5_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst3_a0_combout,
	devoe => ww_devoe,
	o => pin_name5_aoutput_o);

pin_name1_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name1,
	o => pin_name1_ainput_o);

pin_name3_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name3,
	o => pin_name3_ainput_o);

pin_name2_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2,
	o => pin_name2_ainput_o);

pin_name4_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name4,
	o => pin_name4_ainput_o);

inst3_a0 : cycloneive_lcell_comb
-- Equation(s):
-- inst3_a0_combout = (pin_name1_ainput_o & ((pin_name2_ainput_o $ (pin_name4_ainput_o)))) # (!pin_name1_ainput_o & (pin_name2_ainput_o & ((!pin_name4_ainput_o) # (!pin_name3_ainput_o))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pin_name1_ainput_o,
	datab => pin_name3_ainput_o,
	datac => pin_name2_ainput_o,
	datad => pin_name4_ainput_o,
	combout => inst3_a0_combout);

ww_pin_name5 <= pin_name5_aoutput_o;
END structure;


