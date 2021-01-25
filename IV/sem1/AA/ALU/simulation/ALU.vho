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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/28/2020 17:04:09"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	D11 : IN std_logic_vector(7 DOWNTO 0);
	D12 : IN std_logic_vector(7 DOWNTO 0);
	FI : IN std_logic_vector(7 DOWNTO 0);
	IC1 : IN std_logic_vector(7 DOWNTO 0);
	Do1 : BUFFER std_logic_vector(7 DOWNTO 0);
	Fo : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- Do1[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Do1[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Do1[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Do1[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Do1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Do1[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Do1[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Do1[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fo[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fo[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fo[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fo[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fo[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fo[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fo[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fo[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC1[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC1[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC1[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC1[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC1[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC1[5]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC1[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC1[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D11[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D12[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FI[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FI[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FI[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FI[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FI[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FI[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FI[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FI[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FI : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IC1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Do1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Fo : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_BX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_BY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \IC1[7]~input_o\ : std_logic;
SIGNAL \IC1[5]~input_o\ : std_logic;
SIGNAL \IC1[6]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \IC1[1]~input_o\ : std_logic;
SIGNAL \IC1[4]~input_o\ : std_logic;
SIGNAL \IC1[2]~input_o\ : std_logic;
SIGNAL \IC1[0]~input_o\ : std_logic;
SIGNAL \IC1[3]~input_o\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \D12[0]~input_o\ : std_logic;
SIGNAL \D11[0]~input_o\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \D11[7]~input_o\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \D12[7]~input_o\ : std_logic;
SIGNAL \D12[6]~input_o\ : std_logic;
SIGNAL \D12[5]~input_o\ : std_logic;
SIGNAL \D12[4]~input_o\ : std_logic;
SIGNAL \D12[3]~input_o\ : std_logic;
SIGNAL \D12[2]~input_o\ : std_logic;
SIGNAL \D12[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ : std_logic;
SIGNAL \D11[6]~input_o\ : std_logic;
SIGNAL \D11[5]~input_o\ : std_logic;
SIGNAL \D11[4]~input_o\ : std_logic;
SIGNAL \D11[3]~input_o\ : std_logic;
SIGNAL \D11[2]~input_o\ : std_logic;
SIGNAL \D11[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~34_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~34_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~30_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~41_cout\ : std_logic;
SIGNAL \Add0~6_sumout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Do1[0]$latch~combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Mux36~5_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5_sumout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10_sumout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Do1[1]$latch~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~9_sumout\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14_sumout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Do1[2]$latch~combout\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~13_sumout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~18_sumout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Do1[3]$latch~combout\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Mux39~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~17_sumout\ : std_logic;
SIGNAL \Mux39~5_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22_sumout\ : std_logic;
SIGNAL \Mux39~6_combout\ : std_logic;
SIGNAL \Mux39~7_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Do1[4]$latch~combout\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~21_sumout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26_sumout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Do1[5]$latch~combout\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~25_sumout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30_sumout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Do1[6]$latch~combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~29_sumout\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~34_sumout\ : std_logic;
SIGNAL \Mux42~9_combout\ : std_logic;
SIGNAL \Mux42~5_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Do1[7]$latch~combout\ : std_logic;
SIGNAL \FI[0]~input_o\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~2_sumout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Fo[0]$latch~combout\ : std_logic;
SIGNAL \FI[1]~input_o\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Fo[1]$latch~combout\ : std_logic;
SIGNAL \FI[2]~input_o\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Fo[2]$latch~combout\ : std_logic;
SIGNAL \FI[3]~input_o\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \Fo[3]$latch~combout\ : std_logic;
SIGNAL \FI[4]~input_o\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \Mux67~1_combout\ : std_logic;
SIGNAL \Fo[4]$latch~combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \FI[5]~input_o\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \Fo[5]$latch~combout\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mux69~1_combout\ : std_logic;
SIGNAL \FI[6]~input_o\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \add_sub~combout\ : std_logic;
SIGNAL \lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\ : std_logic;
SIGNAL \lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\ : std_logic;
SIGNAL \lpm_add_sub_component|auto_generated|cout\ : std_logic;
SIGNAL \lpm_add_sub_component|auto_generated|cout~1_sumout\ : std_logic;
SIGNAL \Mux69~2_combout\ : std_logic;
SIGNAL \Mux69~3_combout\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \Fo[6]$latch~combout\ : std_logic;
SIGNAL \FI[7]~input_o\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \Fo[7]$latch~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(71 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|sel\ : std_logic_vector(71 DOWNTO 0);
SIGNAL logicShift : std_logic_vector(7 DOWNTO 0);
SIGNAL Do : std_logic_vector(7 DOWNTO 0);
SIGNAL intermed : std_logic_vector(8 DOWNTO 0);
SIGNAL mul : std_logic_vector(7 DOWNTO 0);
SIGNAL SBuff : std_logic_vector(15 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \lpm_add_sub_component|auto_generated|ALT_INV_cout~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~30_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~26_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~22_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~18_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~14_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~10_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~23\ : std_logic;
SIGNAL \ALT_INV_Mult0~22\ : std_logic;
SIGNAL \ALT_INV_Mult0~21\ : std_logic;
SIGNAL \ALT_INV_Mult0~20\ : std_logic;
SIGNAL \ALT_INV_Mult0~19\ : std_logic;
SIGNAL \ALT_INV_Mult0~18\ : std_logic;
SIGNAL \ALT_INV_Mult0~17\ : std_logic;
SIGNAL \ALT_INV_Mult0~16\ : std_logic;
SIGNAL \ALT_INV_Mult0~15\ : std_logic;
SIGNAL \ALT_INV_Mult0~14\ : std_logic;
SIGNAL \ALT_INV_Mult0~13\ : std_logic;
SIGNAL \ALT_INV_Mult0~12\ : std_logic;
SIGNAL \ALT_INV_Mult0~11\ : std_logic;
SIGNAL \ALT_INV_Mult0~10\ : std_logic;
SIGNAL \ALT_INV_Mult0~9\ : std_logic;
SIGNAL \ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \ALT_INV_Add0~6_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~2_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_op_1~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux69~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux68~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux67~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux67~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux66~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux63~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux60~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux59~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux57~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~34_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL ALT_INV_mul : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_intermed : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_logicShift : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_Do : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Fo[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Fo[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Fo[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Fo[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Fo[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Fo[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Fo[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Fo[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Do1[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Do1[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Do1[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Do1[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Do1[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Do1[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Do1[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Do1[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Mux70~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[43]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~38_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_selnose\ : std_logic_vector(54 DOWNTO 0);
SIGNAL \ALT_INV_Mux54~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_sel\ : std_logic_vector(45 DOWNTO 18);
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|ALT_INV_quotient[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux71~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux69~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux69~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux69~1_combout\ : std_logic;
SIGNAL \ALT_INV_FI[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_FI[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_FI[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_FI[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_FI[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_FI[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_FI[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FI[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D12[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D11[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_D11[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D12[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_D11[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D12[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D11[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D12[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D11[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D12[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_D11[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D12[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D11[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D12[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IC1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_IC1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_IC1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_D11[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IC1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IC1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_IC1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IC1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_IC1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D12[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_add_sub~combout\ : std_logic;
SIGNAL ALT_INV_SBuff : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_D11 <= D11;
ww_D12 <= D12;
ww_FI <= FI;
ww_IC1 <= IC1;
Do1 <= ww_Do1;
Fo <= ww_Fo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_AX_bus\ <= (\D11[7]~input_o\ & \D11[7]~input_o\ & \D11[6]~input_o\ & \D11[5]~input_o\ & \D11[4]~input_o\ & \D11[3]~input_o\ & \D11[2]~input_o\ & \D11[1]~input_o\ & \D11[0]~input_o\);

\Mult0~8_AY_bus\ <= (\D12[7]~input_o\ & \D12[7]~input_o\ & \D12[6]~input_o\ & \D12[5]~input_o\ & \D12[4]~input_o\ & \D12[3]~input_o\ & \D12[2]~input_o\ & \D12[1]~input_o\ & \D12[0]~input_o\);

\Mult0~8_BX_bus\ <= (\D11[7]~input_o\ & \D11[7]~input_o\ & \D11[7]~input_o\ & \D11[7]~input_o\ & \D11[7]~input_o\ & \D11[7]~input_o\ & \D11[7]~input_o\ & \D11[7]~input_o\ & \D11[7]~input_o\);

\Mult0~8_BY_bus\ <= (\D12[7]~input_o\ & \D12[7]~input_o\ & \D12[7]~input_o\ & \D12[7]~input_o\ & \D12[7]~input_o\ & \D12[7]~input_o\ & \D12[7]~input_o\ & \D12[7]~input_o\ & \D12[7]~input_o\);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
\Div0|auto_generated|divider|ALT_INV_op_1~9_sumout\ <= NOT \Div0|auto_generated|divider|op_1~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~1_sumout\;
\Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~5_sumout\ <= NOT \Div0|auto_generated|divider|op_1~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~1_sumout\;
\Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~1_sumout\ <= NOT \Div0|auto_generated|divider|op_1~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~1_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\lpm_add_sub_component|auto_generated|ALT_INV_cout~1_sumout\ <= NOT \lpm_add_sub_component|auto_generated|cout~1_sumout\;
\ALT_INV_Add0~30_sumout\ <= NOT \Add0~30_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\;
\ALT_INV_Add0~26_sumout\ <= NOT \Add0~26_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~5_sumout\;
\ALT_INV_Add0~22_sumout\ <= NOT \Add0~22_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~5_sumout\;
\ALT_INV_Add0~18_sumout\ <= NOT \Add0~18_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~5_sumout\;
\ALT_INV_Add0~14_sumout\ <= NOT \Add0~14_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~5_sumout\;
\ALT_INV_Add0~10_sumout\ <= NOT \Add0~10_sumout\;
\ALT_INV_Mult0~23\ <= NOT \Mult0~23\;
\ALT_INV_Mult0~22\ <= NOT \Mult0~22\;
\ALT_INV_Mult0~21\ <= NOT \Mult0~21\;
\ALT_INV_Mult0~20\ <= NOT \Mult0~20\;
\ALT_INV_Mult0~19\ <= NOT \Mult0~19\;
\ALT_INV_Mult0~18\ <= NOT \Mult0~18\;
\ALT_INV_Mult0~17\ <= NOT \Mult0~17\;
\ALT_INV_Mult0~16\ <= NOT \Mult0~16\;
\ALT_INV_Mult0~15\ <= NOT \Mult0~15\;
\ALT_INV_Mult0~14\ <= NOT \Mult0~14\;
\ALT_INV_Mult0~13\ <= NOT \Mult0~13\;
\ALT_INV_Mult0~12\ <= NOT \Mult0~12\;
\ALT_INV_Mult0~11\ <= NOT \Mult0~11\;
\ALT_INV_Mult0~10\ <= NOT \Mult0~10\;
\ALT_INV_Mult0~9\ <= NOT \Mult0~9\;
\ALT_INV_Mult0~8_resulta\ <= NOT \Mult0~8_resulta\;
\ALT_INV_Add0~6_sumout\ <= NOT \Add0~6_sumout\;
\ALT_INV_Add0~2_sumout\ <= NOT \Add0~2_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~29_sumout\ <= NOT \Div0|auto_generated|divider|op_1~29_sumout\;
\Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~25_sumout\ <= NOT \Div0|auto_generated|divider|op_1~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\;
\Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~21_sumout\ <= NOT \Div0|auto_generated|divider|op_1~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\;
\Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~17_sumout\ <= NOT \Div0|auto_generated|divider|op_1~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~1_sumout\;
\Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\Div0|auto_generated|divider|ALT_INV_op_1~13_sumout\ <= NOT \Div0|auto_generated|divider|op_1~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~1_sumout\;
\Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux69~0_combout\ <= NOT \Mux69~0_combout\;
\ALT_INV_Mux68~0_combout\ <= NOT \Mux68~0_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Mux67~1_combout\ <= NOT \Mux67~1_combout\;
\ALT_INV_Mux67~0_combout\ <= NOT \Mux67~0_combout\;
\ALT_INV_Mux66~0_combout\ <= NOT \Mux66~0_combout\;
\ALT_INV_Mux65~0_combout\ <= NOT \Mux65~0_combout\;
\ALT_INV_Mux64~0_combout\ <= NOT \Mux64~0_combout\;
\ALT_INV_Mux63~0_combout\ <= NOT \Mux63~0_combout\;
\ALT_INV_Mux61~0_combout\ <= NOT \Mux61~0_combout\;
\ALT_INV_Mux60~0_combout\ <= NOT \Mux60~0_combout\;
\ALT_INV_Mux59~0_combout\ <= NOT \Mux59~0_combout\;
\ALT_INV_Mux58~0_combout\ <= NOT \Mux58~0_combout\;
\ALT_INV_Mux57~0_combout\ <= NOT \Mux57~0_combout\;
\ALT_INV_Mux56~0_combout\ <= NOT \Mux56~0_combout\;
\ALT_INV_Mux55~3_combout\ <= NOT \Mux55~3_combout\;
\ALT_INV_Mux62~0_combout\ <= NOT \Mux62~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux39~0_combout\ <= NOT \Mux39~0_combout\;
\ALT_INV_Mux54~0_combout\ <= NOT \Mux54~0_combout\;
\ALT_INV_Mux55~2_combout\ <= NOT \Mux55~2_combout\;
\ALT_INV_Mux55~1_combout\ <= NOT \Mux55~1_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\ALT_INV_Mux55~0_combout\ <= NOT \Mux55~0_combout\;
\ALT_INV_Mux61~1_combout\ <= NOT \Mux61~1_combout\;
\ALT_INV_Mux25~3_combout\ <= NOT \Mux25~3_combout\;
\ALT_INV_Mux34~2_combout\ <= NOT \Mux34~2_combout\;
\ALT_INV_Mux36~5_combout\ <= NOT \Mux36~5_combout\;
\ALT_INV_Mux37~3_combout\ <= NOT \Mux37~3_combout\;
\ALT_INV_Mux38~3_combout\ <= NOT \Mux38~3_combout\;
\ALT_INV_Mux39~8_combout\ <= NOT \Mux39~8_combout\;
\ALT_INV_Mux40~3_combout\ <= NOT \Mux40~3_combout\;
\ALT_INV_Mux41~3_combout\ <= NOT \Mux41~3_combout\;
\ALT_INV_Mux42~9_combout\ <= NOT \Mux42~9_combout\;
\ALT_INV_Mux42~5_combout\ <= NOT \Mux42~5_combout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~29_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~25_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~21_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~17_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~13_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~9_sumout\;
\Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\;
\Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\ <= NOT \Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\;
\ALT_INV_Add0~34_sumout\ <= NOT \Add0~34_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\;
ALT_INV_mul(5) <= NOT mul(5);
ALT_INV_intermed(8) <= NOT intermed(8);
ALT_INV_logicShift(7) <= NOT logicShift(7);
ALT_INV_Do(7) <= NOT Do(7);
ALT_INV_Do(6) <= NOT Do(6);
ALT_INV_logicShift(6) <= NOT logicShift(6);
ALT_INV_Do(5) <= NOT Do(5);
ALT_INV_logicShift(5) <= NOT logicShift(5);
ALT_INV_Do(4) <= NOT Do(4);
ALT_INV_logicShift(4) <= NOT logicShift(4);
ALT_INV_Do(3) <= NOT Do(3);
ALT_INV_logicShift(3) <= NOT logicShift(3);
ALT_INV_Do(2) <= NOT Do(2);
ALT_INV_logicShift(2) <= NOT logicShift(2);
ALT_INV_Do(1) <= NOT Do(1);
ALT_INV_logicShift(1) <= NOT logicShift(1);
ALT_INV_Do(0) <= NOT Do(0);
ALT_INV_logicShift(0) <= NOT logicShift(0);
\ALT_INV_Fo[7]$latch~combout\ <= NOT \Fo[7]$latch~combout\;
\ALT_INV_Fo[6]$latch~combout\ <= NOT \Fo[6]$latch~combout\;
\ALT_INV_Fo[5]$latch~combout\ <= NOT \Fo[5]$latch~combout\;
\ALT_INV_Fo[4]$latch~combout\ <= NOT \Fo[4]$latch~combout\;
\ALT_INV_Fo[3]$latch~combout\ <= NOT \Fo[3]$latch~combout\;
\ALT_INV_Fo[2]$latch~combout\ <= NOT \Fo[2]$latch~combout\;
\ALT_INV_Fo[1]$latch~combout\ <= NOT \Fo[1]$latch~combout\;
\ALT_INV_Fo[0]$latch~combout\ <= NOT \Fo[0]$latch~combout\;
\ALT_INV_Do1[7]$latch~combout\ <= NOT \Do1[7]$latch~combout\;
\ALT_INV_Do1[6]$latch~combout\ <= NOT \Do1[6]$latch~combout\;
\ALT_INV_Do1[5]$latch~combout\ <= NOT \Do1[5]$latch~combout\;
\ALT_INV_Do1[4]$latch~combout\ <= NOT \Do1[4]$latch~combout\;
\ALT_INV_Do1[3]$latch~combout\ <= NOT \Do1[3]$latch~combout\;
\ALT_INV_Do1[2]$latch~combout\ <= NOT \Do1[2]$latch~combout\;
\ALT_INV_Do1[1]$latch~combout\ <= NOT \Do1[1]$latch~combout\;
\ALT_INV_Do1[0]$latch~combout\ <= NOT \Do1[0]$latch~combout\;
\ALT_INV_Mux70~0_combout\ <= NOT \Mux70~0_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_Mux44~0_combout\ <= NOT \Mux44~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[40]~23_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~22_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[41]~22_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~20_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[42]~20_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[43]~17_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\;
\ALT_INV_Mux53~0_combout\ <= NOT \Mux53~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[45]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~7_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~4_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~3_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~1_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~0_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\;
\ALT_INV_Add0~38_combout\ <= NOT \Add0~38_combout\;
\ALT_INV_Add0~37_combout\ <= NOT \Add0~37_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Mux54~2_combout\ <= NOT \Mux54~2_combout\;
\ALT_INV_Mux42~4_combout\ <= NOT \Mux42~4_combout\;
\ALT_INV_Mux42~3_combout\ <= NOT \Mux42~3_combout\;
\ALT_INV_Mux42~2_combout\ <= NOT \Mux42~2_combout\;
\ALT_INV_Mux42~1_combout\ <= NOT \Mux42~1_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(0) <= NOT \Div0|auto_generated|divider|divider|selnose\(0);
\ALT_INV_Mux54~1_combout\ <= NOT \Mux54~1_combout\;
\ALT_INV_Mux41~2_combout\ <= NOT \Mux41~2_combout\;
\ALT_INV_Mux41~1_combout\ <= NOT \Mux41~1_combout\;
\ALT_INV_Mux41~0_combout\ <= NOT \Mux41~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(9) <= NOT \Div0|auto_generated|divider|divider|selnose\(9);
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Mux40~2_combout\ <= NOT \Mux40~2_combout\;
\ALT_INV_Mux40~1_combout\ <= NOT \Mux40~1_combout\;
\ALT_INV_Mux40~0_combout\ <= NOT \Mux40~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(18) <= NOT \Div0|auto_generated|divider|divider|selnose\(18);
\Div0|auto_generated|divider|divider|ALT_INV_sel\(18) <= NOT \Div0|auto_generated|divider|divider|sel\(18);
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Mux39~7_combout\ <= NOT \Mux39~7_combout\;
\ALT_INV_Mux39~6_combout\ <= NOT \Mux39~6_combout\;
\ALT_INV_Mux39~5_combout\ <= NOT \Mux39~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_sel\(27) <= NOT \Div0|auto_generated|divider|divider|sel\(27);
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux38~2_combout\ <= NOT \Mux38~2_combout\;
\ALT_INV_Mux38~1_combout\ <= NOT \Mux38~1_combout\;
\ALT_INV_Mux38~0_combout\ <= NOT \Mux38~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(36) <= NOT \Div0|auto_generated|divider|divider|selnose\(36);
\Div0|auto_generated|divider|divider|ALT_INV_sel\(36) <= NOT \Div0|auto_generated|divider|divider|sel\(36);
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux37~2_combout\ <= NOT \Mux37~2_combout\;
\ALT_INV_Mux37~1_combout\ <= NOT \Mux37~1_combout\;
\ALT_INV_Mux37~0_combout\ <= NOT \Mux37~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_sel\(45) <= NOT \Div0|auto_generated|divider|divider|sel\(45);
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux36~4_combout\ <= NOT \Mux36~4_combout\;
\ALT_INV_Mux39~4_combout\ <= NOT \Mux39~4_combout\;
\ALT_INV_Mux39~3_combout\ <= NOT \Mux39~3_combout\;
\ALT_INV_Mux36~3_combout\ <= NOT \Mux36~3_combout\;
\ALT_INV_Mux36~2_combout\ <= NOT \Mux36~2_combout\;
\ALT_INV_Mux36~1_combout\ <= NOT \Mux36~1_combout\;
\ALT_INV_Mux36~0_combout\ <= NOT \Mux36~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_selnose\(54) <= NOT \Div0|auto_generated|divider|divider|selnose\(54);
\ALT_INV_Mux39~2_combout\ <= NOT \Mux39~2_combout\;
\ALT_INV_Mux39~1_combout\ <= NOT \Mux39~1_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux34~1_combout\ <= NOT \Mux34~1_combout\;
\Div0|auto_generated|divider|ALT_INV_quotient[0]~0_combout\ <= NOT \Div0|auto_generated|divider|quotient[0]~0_combout\;
\ALT_INV_Mux25~2_combout\ <= NOT \Mux25~2_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux71~0_combout\ <= NOT \Mux71~0_combout\;
\ALT_INV_Mux69~3_combout\ <= NOT \Mux69~3_combout\;
\ALT_INV_Mux69~2_combout\ <= NOT \Mux69~2_combout\;
\ALT_INV_Mux69~1_combout\ <= NOT \Mux69~1_combout\;
\ALT_INV_FI[7]~input_o\ <= NOT \FI[7]~input_o\;
\ALT_INV_FI[6]~input_o\ <= NOT \FI[6]~input_o\;
\ALT_INV_FI[5]~input_o\ <= NOT \FI[5]~input_o\;
\ALT_INV_FI[4]~input_o\ <= NOT \FI[4]~input_o\;
\ALT_INV_FI[3]~input_o\ <= NOT \FI[3]~input_o\;
\ALT_INV_FI[2]~input_o\ <= NOT \FI[2]~input_o\;
\ALT_INV_FI[1]~input_o\ <= NOT \FI[1]~input_o\;
\ALT_INV_FI[0]~input_o\ <= NOT \FI[0]~input_o\;
\ALT_INV_D12[7]~input_o\ <= NOT \D12[7]~input_o\;
\ALT_INV_D11[7]~input_o\ <= NOT \D11[7]~input_o\;
\ALT_INV_D11[6]~input_o\ <= NOT \D11[6]~input_o\;
\ALT_INV_D12[6]~input_o\ <= NOT \D12[6]~input_o\;
\ALT_INV_D11[5]~input_o\ <= NOT \D11[5]~input_o\;
\ALT_INV_D12[5]~input_o\ <= NOT \D12[5]~input_o\;
\ALT_INV_D11[4]~input_o\ <= NOT \D11[4]~input_o\;
\ALT_INV_D12[4]~input_o\ <= NOT \D12[4]~input_o\;
\ALT_INV_D11[3]~input_o\ <= NOT \D11[3]~input_o\;
\ALT_INV_D12[3]~input_o\ <= NOT \D12[3]~input_o\;
\ALT_INV_D11[2]~input_o\ <= NOT \D11[2]~input_o\;
\ALT_INV_D12[2]~input_o\ <= NOT \D12[2]~input_o\;
\ALT_INV_D11[1]~input_o\ <= NOT \D11[1]~input_o\;
\ALT_INV_D12[1]~input_o\ <= NOT \D12[1]~input_o\;
\ALT_INV_IC1[7]~input_o\ <= NOT \IC1[7]~input_o\;
\ALT_INV_IC1[6]~input_o\ <= NOT \IC1[6]~input_o\;
\ALT_INV_IC1[5]~input_o\ <= NOT \IC1[5]~input_o\;
\ALT_INV_D11[0]~input_o\ <= NOT \D11[0]~input_o\;
\ALT_INV_IC1[2]~input_o\ <= NOT \IC1[2]~input_o\;
\ALT_INV_IC1[4]~input_o\ <= NOT \IC1[4]~input_o\;
\ALT_INV_IC1[0]~input_o\ <= NOT \IC1[0]~input_o\;
\ALT_INV_IC1[3]~input_o\ <= NOT \IC1[3]~input_o\;
\ALT_INV_IC1[1]~input_o\ <= NOT \IC1[1]~input_o\;
\ALT_INV_D12[0]~input_o\ <= NOT \D12[0]~input_o\;
\ALT_INV_add_sub~combout\ <= NOT \add_sub~combout\;
ALT_INV_SBuff(12) <= NOT SBuff(12);
ALT_INV_SBuff(11) <= NOT SBuff(11);
ALT_INV_SBuff(10) <= NOT SBuff(10);
ALT_INV_SBuff(9) <= NOT SBuff(9);
ALT_INV_SBuff(8) <= NOT SBuff(8);
ALT_INV_SBuff(15) <= NOT SBuff(15);
ALT_INV_SBuff(14) <= NOT SBuff(14);
ALT_INV_SBuff(13) <= NOT SBuff(13);
ALT_INV_SBuff(7) <= NOT SBuff(7);
ALT_INV_intermed(7) <= NOT intermed(7);
ALT_INV_SBuff(6) <= NOT SBuff(6);
ALT_INV_intermed(6) <= NOT intermed(6);
ALT_INV_SBuff(5) <= NOT SBuff(5);
ALT_INV_intermed(5) <= NOT intermed(5);
ALT_INV_SBuff(4) <= NOT SBuff(4);
ALT_INV_intermed(4) <= NOT intermed(4);
ALT_INV_SBuff(3) <= NOT SBuff(3);
ALT_INV_intermed(3) <= NOT intermed(3);
ALT_INV_SBuff(2) <= NOT SBuff(2);
ALT_INV_intermed(2) <= NOT intermed(2);
ALT_INV_SBuff(1) <= NOT SBuff(1);
ALT_INV_intermed(1) <= NOT intermed(1);
ALT_INV_SBuff(0) <= NOT SBuff(0);
ALT_INV_intermed(0) <= NOT intermed(0);
ALT_INV_mul(4) <= NOT mul(4);
ALT_INV_mul(3) <= NOT mul(3);
ALT_INV_mul(2) <= NOT mul(2);
ALT_INV_mul(1) <= NOT mul(1);
ALT_INV_mul(0) <= NOT mul(0);
ALT_INV_mul(7) <= NOT mul(7);
ALT_INV_mul(6) <= NOT mul(6);

-- Location: IOOBUF_X66_Y0_N59
\Do1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Do1[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Do1(0));

-- Location: IOOBUF_X62_Y0_N53
\Do1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Do1[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Do1(1));

-- Location: IOOBUF_X50_Y81_N42
\Do1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Do1[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Do1(2));

-- Location: IOOBUF_X64_Y0_N2
\Do1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Do1[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Do1(3));

-- Location: IOOBUF_X56_Y0_N36
\Do1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Do1[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Do1(4));

-- Location: IOOBUF_X62_Y0_N19
\Do1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Do1[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Do1(5));

-- Location: IOOBUF_X32_Y0_N53
\Do1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Do1[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Do1(6));

-- Location: IOOBUF_X40_Y0_N36
\Do1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Do1[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Do1(7));

-- Location: IOOBUF_X60_Y0_N53
\Fo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Fo[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Fo(0));

-- Location: IOOBUF_X66_Y0_N93
\Fo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Fo[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Fo(1));

-- Location: IOOBUF_X89_Y9_N5
\Fo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Fo[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Fo(2));

-- Location: IOOBUF_X58_Y0_N59
\Fo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Fo[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Fo(3));

-- Location: IOOBUF_X64_Y0_N19
\Fo[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Fo[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Fo(4));

-- Location: IOOBUF_X68_Y0_N2
\Fo[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Fo[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Fo(5));

-- Location: IOOBUF_X64_Y0_N53
\Fo[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Fo[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Fo(6));

-- Location: IOOBUF_X38_Y0_N19
\Fo[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Fo[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Fo(7));

-- Location: IOIBUF_X36_Y0_N1
\IC1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(7),
	o => \IC1[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\IC1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(5),
	o => \IC1[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\IC1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(6),
	o => \IC1[6]~input_o\);

-- Location: LABCELL_X40_Y1_N15
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !\IC1[5]~input_o\ & ( !\IC1[6]~input_o\ & ( !\IC1[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[7]~input_o\,
	datae => \ALT_INV_IC1[5]~input_o\,
	dataf => \ALT_INV_IC1[6]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X52_Y0_N18
\IC1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(1),
	o => \IC1[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\IC1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(4),
	o => \IC1[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\IC1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(2),
	o => \IC1[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\IC1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(0),
	o => \IC1[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\IC1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(3),
	o => \IC1[3]~input_o\);

-- Location: LABCELL_X51_Y1_N39
\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( !\IC1[3]~input_o\ & ( !\IC1[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[3]~input_o\,
	combout => \Mux39~0_combout\);

-- Location: LABCELL_X51_Y1_N6
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( \Mux39~0_combout\ & ( !\IC1[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_Mux39~0_combout\,
	combout => \Mux34~0_combout\);

-- Location: MLABCELL_X52_Y1_N48
\Mux62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = ( \Mux34~0_combout\ & ( (\Mux1~0_combout\ & ((!\IC1[1]~input_o\) # (!\IC1[4]~input_o\))) ) ) # ( !\Mux34~0_combout\ & ( (\Mux1~0_combout\ & !\IC1[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_IC1[4]~input_o\,
	dataf => \ALT_INV_Mux34~0_combout\,
	combout => \Mux62~0_combout\);

-- Location: MLABCELL_X52_Y1_N24
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( !\IC1[3]~input_o\ & ( (!\IC1[4]~input_o\ & !\IC1[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[4]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_IC1[3]~input_o\,
	combout => \Add0~0_combout\);

-- Location: MLABCELL_X52_Y3_N30
\Mux55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = ( \IC1[1]~input_o\ & ( (!\IC1[0]~input_o\) # (\IC1[3]~input_o\) ) ) # ( !\IC1[1]~input_o\ & ( (!\IC1[3]~input_o\ & \IC1[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IC1[3]~input_o\,
	datad => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: MLABCELL_X52_Y3_N39
\Mux55~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = ( !\Mux55~0_combout\ & ( \Add0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~0_combout\,
	dataf => \ALT_INV_Mux55~0_combout\,
	combout => \Mux55~1_combout\);

-- Location: IOIBUF_X62_Y0_N1
\D12[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(0),
	o => \D12[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\D11[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(0),
	o => \D11[0]~input_o\);

-- Location: LABCELL_X51_Y2_N0
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \IC1[1]~input_o\ & ( \IC1[0]~input_o\ & ( (((!\Mux1~0_combout\) # (\IC1[3]~input_o\)) # (\IC1[4]~input_o\)) # (\IC1[2]~input_o\) ) ) ) # ( !\IC1[1]~input_o\ & ( \IC1[0]~input_o\ & ( (((!\IC1[3]~input_o\) # (!\Mux1~0_combout\)) # 
-- (\IC1[4]~input_o\)) # (\IC1[2]~input_o\) ) ) ) # ( \IC1[1]~input_o\ & ( !\IC1[0]~input_o\ ) ) # ( !\IC1[1]~input_o\ & ( !\IC1[0]~input_o\ & ( ((!\Mux1~0_combout\) # (\IC1[4]~input_o\)) # (\IC1[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111111111111111111111111111101111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[2]~input_o\,
	datab => \ALT_INV_IC1[4]~input_o\,
	datac => \ALT_INV_IC1[3]~input_o\,
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_IC1[1]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: IOIBUF_X50_Y0_N92
\D11[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(7),
	o => \D11[7]~input_o\);

-- Location: MLABCELL_X52_Y2_N30
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \D11[7]~input_o\ ) + ( !\D11[7]~input_o\ $ (!\D11[0]~input_o\) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( \D11[7]~input_o\ ) + ( !\D11[7]~input_o\ $ (!\D11[0]~input_o\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D11[0]~input_o\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X51_Y2_N30
\Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \D12[0]~input_o\ & ( (!\IC1[0]~input_o\ & \Add2~1_sumout\) ) ) # ( !\D12[0]~input_o\ & ( (!\IC1[0]~input_o\ & ((\Add2~1_sumout\))) # (\IC1[0]~input_o\ & (!\D11[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100001111110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_D11[0]~input_o\,
	datad => \ALT_INV_Add2~1_sumout\,
	dataf => \ALT_INV_D12[0]~input_o\,
	combout => \Mux25~2_combout\);

-- Location: IOIBUF_X50_Y0_N75
\D12[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(7),
	o => \D12[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\D12[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(6),
	o => \D12[6]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\D12[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(5),
	o => \D12[5]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\D12[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(4),
	o => \D12[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\D12[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(3),
	o => \D12[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\D12[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(2),
	o => \D12[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\D12[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(1),
	o => \D12[1]~input_o\);

-- Location: LABCELL_X53_Y4_N30
\Div0|auto_generated|divider|my_abs_den|op_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[0]~input_o\) ) + ( \D12[7]~input_o\ ) + ( !VCC ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~30\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[0]~input_o\) ) + ( \D12[7]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datac => \ALT_INV_D12[0]~input_o\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~30\);

-- Location: LABCELL_X53_Y4_N33
\Div0|auto_generated|divider|my_abs_den|op_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ = SUM(( GND ) + ( !\D12[7]~input_o\ $ (!\D12[1]~input_o\) ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~30\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~26\ = CARRY(( GND ) + ( !\D12[7]~input_o\ $ (!\D12[1]~input_o\) ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	dataf => \ALT_INV_D12[1]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~30\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~26\);

-- Location: LABCELL_X53_Y4_N36
\Div0|auto_generated|divider|my_abs_den|op_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[2]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~26\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~22\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[2]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datac => \ALT_INV_D12[2]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~26\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~22\);

-- Location: LABCELL_X53_Y4_N39
\Div0|auto_generated|divider|my_abs_den|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ = SUM(( GND ) + ( !\D12[7]~input_o\ $ (!\D12[3]~input_o\) ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~22\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~18\ = CARRY(( GND ) + ( !\D12[7]~input_o\ $ (!\D12[3]~input_o\) ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	dataf => \ALT_INV_D12[3]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~22\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~18\);

-- Location: LABCELL_X53_Y4_N42
\Div0|auto_generated|divider|my_abs_den|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[4]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~18\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~14\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[4]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datac => \ALT_INV_D12[4]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~18\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~14\);

-- Location: LABCELL_X53_Y4_N45
\Div0|auto_generated|divider|my_abs_den|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[5]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~14\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~10\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[5]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datac => \ALT_INV_D12[5]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~14\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~10\);

-- Location: LABCELL_X53_Y4_N48
\Div0|auto_generated|divider|my_abs_den|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ = SUM(( !\D12[6]~input_o\ $ (!\D12[7]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~10\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~6\ = CARRY(( !\D12[6]~input_o\ $ (!\D12[7]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D12[6]~input_o\,
	datac => \ALT_INV_D12[7]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~10\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~6\);

-- Location: LABCELL_X53_Y4_N51
\Div0|auto_generated|divider|my_abs_den|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ = SUM(( GND ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~6\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\);

-- Location: LABCELL_X56_Y4_N48
\Div0|auto_generated|divider|divider|sel[45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(45) = ( \Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ ) # ( !\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & ( \Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|sel\(45));

-- Location: IOIBUF_X56_Y0_N1
\D11[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(6),
	o => \D11[6]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\D11[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(5),
	o => \D11[5]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\D11[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(4),
	o => \D11[4]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\D11[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(3),
	o => \D11[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\D11[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(2),
	o => \D11[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\D11[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(1),
	o => \D11[1]~input_o\);

-- Location: LABCELL_X55_Y3_N30
\Div0|auto_generated|divider|my_abs_num|op_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[0]~input_o\) ) + ( \D11[7]~input_o\ ) + ( !VCC ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~30\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[0]~input_o\) ) + ( \D11[7]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D11[0]~input_o\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~30\);

-- Location: LABCELL_X55_Y3_N33
\Div0|auto_generated|divider|my_abs_num|op_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[1]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~30\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~26\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[1]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D11[1]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~30\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~26\);

-- Location: LABCELL_X55_Y3_N36
\Div0|auto_generated|divider|my_abs_num|op_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[2]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~26\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~22\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[2]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D11[2]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~26\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~22\);

-- Location: LABCELL_X55_Y3_N39
\Div0|auto_generated|divider|my_abs_num|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[3]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~22\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~18\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[3]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[3]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~22\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~18\);

-- Location: LABCELL_X55_Y3_N42
\Div0|auto_generated|divider|my_abs_num|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ = SUM(( GND ) + ( !\D11[7]~input_o\ $ (!\D11[4]~input_o\) ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~18\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~14\ = CARRY(( GND ) + ( !\D11[7]~input_o\ $ (!\D11[4]~input_o\) ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	dataf => \ALT_INV_D11[4]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~18\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~14\);

-- Location: LABCELL_X55_Y3_N45
\Div0|auto_generated|divider|my_abs_num|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\ = SUM(( GND ) + ( !\D11[7]~input_o\ $ (!\D11[5]~input_o\) ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~14\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~10\ = CARRY(( GND ) + ( !\D11[7]~input_o\ $ (!\D11[5]~input_o\) ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	dataf => \ALT_INV_D11[5]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~14\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~10\);

-- Location: LABCELL_X55_Y3_N48
\Div0|auto_generated|divider|my_abs_num|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[6]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~10\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~6\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[6]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D11[6]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~10\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~6\);

-- Location: LABCELL_X55_Y3_N51
\Div0|auto_generated|divider|my_abs_num|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ = SUM(( GND ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~6\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\);

-- Location: LABCELL_X55_Y4_N24
\Div0|auto_generated|divider|divider|sel[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(18) = ( \Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ ) # ( !\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ & ( (((\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|sel\(18));

-- Location: LABCELL_X55_Y5_N0
\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ $ (!\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ $ (!\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ = SHARE((!\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\) # (\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\);

-- Location: LABCELL_X55_Y5_N3
\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\);

-- Location: LABCELL_X55_Y5_N57
\Div0|auto_generated|divider|divider|selnose[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(0) = (((\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(18))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(0));

-- Location: LABCELL_X55_Y5_N30
\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ $ (!\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ = CARRY(( !\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ $ (!\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ = SHARE((!\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\) # (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\);

-- Location: LABCELL_X55_Y5_N33
\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ $ (((!\Div0|auto_generated|divider|divider|selnose\(0) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\))) # (\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\)))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ $ (((!\Div0|auto_generated|divider|divider|selnose\(0) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\))) # (\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\)))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ = SHARE((!\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ & ((!\Div0|auto_generated|divider|divider|selnose\(0) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\))) # (\Div0|auto_generated|divider|divider|selnose\(0) & (\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001001100010000000000000000001100100100111001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\);

-- Location: LABCELL_X55_Y5_N36
\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\);

-- Location: LABCELL_X55_Y5_N24
\Div0|auto_generated|divider|divider|StageOut[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ = ( !\Div0|auto_generated|divider|divider|sel\(18) & ( (!\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ & (!\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & 
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\);

-- Location: LABCELL_X55_Y5_N12
\Div0|auto_generated|divider|divider|selnose[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(9) = ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ ) # ( !\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ & ( (\Div0|auto_generated|divider|divider|sel\(18)) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datae => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(9));

-- Location: LABCELL_X55_Y5_N6
\Div0|auto_generated|divider|divider|StageOut[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & ( \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ ) ) # ( 
-- !\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & ( \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ & ( (((\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18)) ) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & ( !\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|sel\(18) & (!\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ & !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\);

-- Location: LABCELL_X55_Y3_N0
\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ $ (!\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ $ (!\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ = SHARE((!\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\) # (\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\);

-- Location: LABCELL_X55_Y3_N3
\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ $ (((!\Div0|auto_generated|divider|divider|selnose\(9) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\))) # (\Div0|auto_generated|divider|divider|selnose\(9) & (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\)))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ $ (((!\Div0|auto_generated|divider|divider|selnose\(9) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\))) # (\Div0|auto_generated|divider|divider|selnose\(9) & (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\)))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ = SHARE((!\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ & ((!\Div0|auto_generated|divider|divider|selnose\(9) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\))) # (\Div0|auto_generated|divider|divider|selnose\(9) & (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000100010000000000000000001100001110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\);

-- Location: LABCELL_X55_Y3_N6
\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ $ (((!\Div0|auto_generated|divider|divider|selnose\(9) & 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|divider|StageOut[0]~3_combout\))))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ $ (((!\Div0|auto_generated|divider|divider|selnose\(9) & 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|divider|StageOut[0]~3_combout\))))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\ = SHARE((!\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ & ((!\Div0|auto_generated|divider|divider|selnose\(9) & 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|divider|StageOut[0]~3_combout\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000100110000000000000000001100011010010011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~3_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\);

-- Location: LABCELL_X55_Y3_N9
\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\);

-- Location: LABCELL_X55_Y5_N45
\Div0|auto_generated|divider|divider|selnose[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(18) = ( \Div0|auto_generated|divider|divider|sel\(18) ) # ( !\Div0|auto_generated|divider|divider|sel\(18) & ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	combout => \Div0|auto_generated|divider|divider|selnose\(18));

-- Location: LABCELL_X55_Y5_N27
\Div0|auto_generated|divider|divider|StageOut[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = ( \Div0|auto_generated|divider|divider|sel\(18) & ( \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\ ) ) # ( !\Div0|auto_generated|divider|divider|sel\(18) & ( 
-- (\Div0|auto_generated|divider|divider|StageOut[0]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~3_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LABCELL_X55_Y5_N54
\Div0|auto_generated|divider|divider|StageOut[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ & ( ((!\Div0|auto_generated|divider|divider|sel\(18) & (!\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\))) # (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\) ) ) # ( !\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ & ( 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ & (((\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111110001111000011111000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\);

-- Location: LABCELL_X55_Y3_N12
\Div0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: LABCELL_X55_Y3_N15
\Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X55_Y3_N18
\Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|sel\(18) & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\))))) # 
-- (\Div0|auto_generated|divider|divider|sel\(18) & (((\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\)))) ) + ( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_4~18\ ))
-- \Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|sel\(18) & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\))))) # 
-- (\Div0|auto_generated|divider|divider|sel\(18) & (((\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\)))) ) + ( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~13_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~18\,
	sumout => \Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X55_Y3_N21
\Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(18) & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\))))) # 
-- (\Div0|auto_generated|divider|divider|sel\(18) & (((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))
-- \Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(18) & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\))))) # 
-- (\Div0|auto_generated|divider|divider|sel\(18) & (((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X55_Y3_N24
\Div0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|selnose\(18) & (((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\)))) # (\Div0|auto_generated|divider|divider|selnose\(18) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\))) ) + ( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))
-- \Div0|auto_generated|divider|divider|op_4~6\ = CARRY(( (!\Div0|auto_generated|divider|divider|selnose\(18) & (((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\)))) # (\Div0|auto_generated|divider|divider|selnose\(18) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\))) ) + ( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~5_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(18),
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~4_combout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \Div0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~6\);

-- Location: LABCELL_X55_Y3_N27
\Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~6\,
	sumout => \Div0|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: LABCELL_X56_Y4_N9
\Div0|auto_generated|divider|divider|sel[36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(36) = ( \Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) # ( !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ & ( \Div0|auto_generated|divider|divider|sel\(45) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|sel\(36));

-- Location: LABCELL_X50_Y2_N33
\Div0|auto_generated|divider|divider|sel[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(27) = ( \Div0|auto_generated|divider|divider|sel\(36) ) # ( !\Div0|auto_generated|divider|divider|sel\(36) & ( \Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	combout => \Div0|auto_generated|divider|divider|sel\(27));

-- Location: LABCELL_X50_Y2_N45
\Div0|auto_generated|divider|divider|StageOut[27]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\ = ( !\Div0|auto_generated|divider|divider|sel\(27) & ( (\Div0|auto_generated|divider|divider|op_4~5_sumout\ & !\Div0|auto_generated|divider|divider|op_4~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\);

-- Location: LABCELL_X55_Y5_N51
\Div0|auto_generated|divider|divider|StageOut[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ( ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18)) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ( (!\Div0|auto_generated|divider|divider|sel\(18) & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(18) & (((\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111011111110111111100001000011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\);

-- Location: LABCELL_X55_Y3_N57
\Div0|auto_generated|divider|divider|StageOut[17]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ & ( ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18)) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ & ( (!\Div0|auto_generated|divider|divider|sel\(18) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\);

-- Location: LABCELL_X55_Y3_N54
\Div0|auto_generated|divider|divider|StageOut[16]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ = (!\Div0|auto_generated|divider|divider|sel\(18) & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\))))) # 
-- (\Div0|auto_generated|divider|divider|sel\(18) & (((\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000010000111111100001000011111110000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~13_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\);

-- Location: LABCELL_X56_Y2_N24
\Div0|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X56_Y2_N27
\Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X56_Y2_N30
\Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~17_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\))))) # (\Div0|auto_generated|divider|divider|sel\(27) & (((\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))
-- \Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~17_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\))))) # (\Div0|auto_generated|divider|divider|sel\(27) & (((\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X56_Y2_N33
\Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~13_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(27) & (((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))
-- \Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~13_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(27) & (((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X56_Y2_N36
\Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(27) & (((\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))
-- \Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(27) & (((\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X56_Y2_N39
\Div0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(27) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))
-- \Div0|auto_generated|divider|divider|op_5~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_4~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(27) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \Div0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X56_Y2_N42
\Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~6\,
	sumout => \Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X50_Y2_N6
\Div0|auto_generated|divider|divider|selnose[36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(36) = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ ) # ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|sel\(36) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(36));

-- Location: LABCELL_X56_Y3_N3
\Div0|auto_generated|divider|divider|StageOut[27]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ = ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ ) ) # ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ & ( \Div0|auto_generated|divider|divider|sel\(27) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\);

-- Location: LABCELL_X56_Y2_N51
\Div0|auto_generated|divider|divider|StageOut[26]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\ = ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ ) ) # ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- (!\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|divider|op_4~9_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(27) & ((\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\);

-- Location: LABCELL_X50_Y2_N54
\Div0|auto_generated|divider|divider|StageOut[25]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ = ( \Div0|auto_generated|divider|divider|op_4~13_sumout\ & ( ((!\Div0|auto_generated|divider|divider|sel\(27) & !\Div0|auto_generated|divider|divider|op_4~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\) ) ) # ( !\Div0|auto_generated|divider|divider|op_4~13_sumout\ & ( (\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ & ((\Div0|auto_generated|divider|divider|op_4~1_sumout\) # 
-- (\Div0|auto_generated|divider|divider|sel\(27)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111110011001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\);

-- Location: LABCELL_X56_Y2_N54
\Div0|auto_generated|divider|divider|StageOut[24]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ = ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ ) ) # ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- (!\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|divider|op_4~17_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(27) & ((\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\);

-- Location: LABCELL_X56_Y2_N0
\Div0|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_6~30_cout\);

-- Location: LABCELL_X56_Y2_N3
\Div0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ ) + ( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~30_cout\ ))
-- \Div0|auto_generated|divider|divider|op_6~26\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ ) + ( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X56_Y2_N6
\Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|op_5~21_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(36) & ((\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\))))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~26\ ))
-- \Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|op_5~21_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(36) & ((\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\))))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~26\,
	sumout => \Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X56_Y2_N9
\Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|op_5~17_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(36) & ((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))
-- \Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|op_5~17_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(36) & ((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X56_Y2_N12
\Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & ((\Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))
-- \Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & ((\Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X56_Y2_N15
\Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))
-- \Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X56_Y2_N18
\Div0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|selnose\(36) & (((\Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # (\Div0|auto_generated|divider|divider|selnose\(36) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\))) ) + ( !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))
-- \Div0|auto_generated|divider|divider|op_6~6\ = CARRY(( (!\Div0|auto_generated|divider|divider|selnose\(36) & (((\Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # (\Div0|auto_generated|divider|divider|selnose\(36) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\))) ) + ( !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(36),
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~6_combout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \Div0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X56_Y2_N21
\Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~6\,
	sumout => \Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X56_Y4_N51
\Div0|auto_generated|divider|divider|StageOut[36]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ = ( \Div0|auto_generated|divider|divider|op_5~5_sumout\ & ( (((!\Div0|auto_generated|divider|divider|sel\(36) & !\Div0|auto_generated|divider|divider|op_5~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\) ) ) # ( !\Div0|auto_generated|divider|divider|op_5~5_sumout\ & ( 
-- (!\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\ & (\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ & ((\Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\Div0|auto_generated|divider|divider|sel\(36))))) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\ & (((\Div0|auto_generated|divider|divider|op_5~1_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(36)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001101011111000100110101111111011111010111111101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\);

-- Location: LABCELL_X56_Y2_N48
\Div0|auto_generated|divider|divider|StageOut[35]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ = ( \Div0|auto_generated|divider|divider|sel\(36) & ( \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\ ) ) # ( !\Div0|auto_generated|divider|divider|sel\(36) & ( 
-- (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\);

-- Location: LABCELL_X50_Y2_N39
\Div0|auto_generated|divider|divider|StageOut[34]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ ) ) # ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- (!\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|op_5~13_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(36) & ((\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\);

-- Location: LABCELL_X50_Y2_N21
\Div0|auto_generated|divider|divider|StageOut[33]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ = ( \Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ ) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ ) ) ) # ( \Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( 
-- !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\Div0|auto_generated|divider|divider|sel\(36)) # (\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\) ) ) ) # ( !\Div0|auto_generated|divider|divider|op_5~17_sumout\ & ( 
-- !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ & \Div0|auto_generated|divider|divider|sel\(36)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\);

-- Location: LABCELL_X56_Y2_N57
\Div0|auto_generated|divider|divider|StageOut[32]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ = ( \Div0|auto_generated|divider|divider|sel\(36) & ( \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ ) ) # ( !\Div0|auto_generated|divider|divider|sel\(36) & ( 
-- (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\);

-- Location: LABCELL_X56_Y4_N12
\Div0|auto_generated|divider|divider|op_7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_7~34_cout\);

-- Location: LABCELL_X56_Y4_N15
\Div0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~34_cout\ ))
-- \Div0|auto_generated|divider|divider|op_7~30\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X56_Y4_N18
\Div0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~25_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\))))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~30\ ))
-- \Div0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~25_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\))))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~30\,
	sumout => \Div0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X56_Y4_N21
\Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~21_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~26\ ))
-- \Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~21_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~26\,
	sumout => \Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X56_Y4_N24
\Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~22\ ))
-- \Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X56_Y4_N27
\Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~18\ ))
-- \Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X56_Y4_N30
\Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~14\ ))
-- \Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X56_Y4_N33
\Div0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~5_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~10\ ))
-- \Div0|auto_generated|divider|divider|op_7~6\ = CARRY(( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~5_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~7_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~10\,
	sumout => \Div0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~6\);

-- Location: LABCELL_X56_Y4_N57
\Div0|auto_generated|divider|divider|StageOut[45]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\ = ( \Div0|auto_generated|divider|divider|op_6~5_sumout\ & ( (!\Div0|auto_generated|divider|divider|sel\(45) & !\Div0|auto_generated|divider|divider|op_6~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\);

-- Location: LABCELL_X56_Y4_N36
\Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~6\,
	sumout => \Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: LABCELL_X55_Y4_N27
\Div0|auto_generated|divider|divider|selnose[54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(54) = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ ) # ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(54));

-- Location: LABCELL_X56_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[45]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~8_combout\ = ( \Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ ) ) # ( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- (\Div0|auto_generated|divider|divider|sel\(45) & \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~7_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~8_combout\);

-- Location: LABCELL_X56_Y4_N3
\Div0|auto_generated|divider|divider|StageOut[44]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ & ( ((\Div0|auto_generated|divider|divider|op_6~9_sumout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(45)) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ & ( (!\Div0|auto_generated|divider|divider|sel\(45) & (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \Div0|auto_generated|divider|divider|op_6~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\);

-- Location: LABCELL_X56_Y4_N45
\Div0|auto_generated|divider|divider|StageOut[43]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ & ( ((\Div0|auto_generated|divider|divider|op_6~13_sumout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(45)) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ & ( (!\Div0|auto_generated|divider|divider|sel\(45) & (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \Div0|auto_generated|divider|divider|op_6~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\);

-- Location: LABCELL_X56_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[42]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~20_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ & ( ((\Div0|auto_generated|divider|divider|op_6~17_sumout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(45)) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ & ( (!\Div0|auto_generated|divider|divider|sel\(45) & (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \Div0|auto_generated|divider|divider|op_6~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~20_combout\);

-- Location: LABCELL_X56_Y4_N42
\Div0|auto_generated|divider|divider|StageOut[41]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~22_combout\ = ( \Div0|auto_generated|divider|divider|op_6~21_sumout\ & ( ((!\Div0|auto_generated|divider|divider|sel\(45) & !\Div0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\) ) ) # ( !\Div0|auto_generated|divider|divider|op_6~21_sumout\ & ( (\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ & ((\Div0|auto_generated|divider|divider|op_6~1_sumout\) # 
-- (\Div0|auto_generated|divider|divider|sel\(45)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011110001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~22_combout\);

-- Location: LABCELL_X56_Y4_N54
\Div0|auto_generated|divider|divider|StageOut[40]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~23_combout\ = ( \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ & ( ((\Div0|auto_generated|divider|divider|op_6~25_sumout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(45)) ) ) # ( !\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ & ( (!\Div0|auto_generated|divider|divider|sel\(45) & (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- \Div0|auto_generated|divider|divider|op_6~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~23_combout\);

-- Location: LABCELL_X55_Y4_N30
\Div0|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_8~38_cout\);

-- Location: LABCELL_X55_Y4_N33
\Div0|auto_generated|divider|divider|op_8~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~34_cout\ = CARRY(( \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\ ) + ( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~38_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~34_cout\);

-- Location: LABCELL_X55_Y4_N36
\Div0|auto_generated|divider|divider|op_8~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~30_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & (\Div0|auto_generated|divider|divider|op_7~29_sumout\)) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\))))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\)))) ) + ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_8~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~34_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~30_cout\);

-- Location: LABCELL_X55_Y4_N39
\Div0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~25_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[40]~23_combout\))))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[40]~23_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~30_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~26_cout\);

-- Location: LABCELL_X55_Y4_N42
\Div0|auto_generated|divider|divider|op_8~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~22_cout\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~21_sumout\))) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[41]~22_combout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[41]~22_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[41]~22_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~26_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~22_cout\);

-- Location: LABCELL_X55_Y4_N45
\Div0|auto_generated|divider|divider|op_8~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~18_cout\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~17_sumout\))) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[42]~20_combout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[42]~20_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[42]~20_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~22_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~18_cout\);

-- Location: LABCELL_X55_Y4_N48
\Div0|auto_generated|divider|divider|op_8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~14_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~13_sumout\))) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) ) + 
-- ( !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[43]~17_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~14_cout\);

-- Location: LABCELL_X55_Y4_N51
\Div0|auto_generated|divider|divider|op_8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~10_cout\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~9_sumout\))) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[44]~13_combout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[44]~13_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[44]~13_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~14_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~10_cout\);

-- Location: LABCELL_X55_Y4_N54
\Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|selnose\(54) & (\Div0|auto_generated|divider|divider|op_7~5_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(54) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[45]~8_combout\) # (\Div0|auto_generated|divider|divider|StageOut[45]~0_combout\)))) ) + ( !\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_8~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~8_combout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~6_cout\);

-- Location: LABCELL_X55_Y4_N57
\Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X55_Y4_N0
\Div0|auto_generated|divider|op_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~1_sumout\ = SUM(( \Div0|auto_generated|divider|divider|op_8~1_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|op_1~2\ = CARRY(( \Div0|auto_generated|divider|divider|op_8~1_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|op_1~1_sumout\,
	cout => \Div0|auto_generated|divider|op_1~2\);

-- Location: LABCELL_X50_Y4_N39
\Div0|auto_generated|divider|quotient[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[0]~0_combout\ = ( \Div0|auto_generated|divider|op_1~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\D11[7]~input_o\ $ (!\D12[7]~input_o\) ) ) ) # ( \Div0|auto_generated|divider|op_1~1_sumout\ & 
-- ( !\Div0|auto_generated|divider|divider|op_8~1_sumout\ ) ) # ( !\Div0|auto_generated|divider|op_1~1_sumout\ & ( !\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\D11[7]~input_o\ $ (\D12[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101111111111111111100000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D12[7]~input_o\,
	datae => \Div0|auto_generated|divider|ALT_INV_op_1~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Div0|auto_generated|divider|quotient[0]~0_combout\);

-- Location: DSP_X54_Y2_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 9,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 9,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 9,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	bx => \Mult0~8_BX_bus\,
	by => \Mult0~8_BY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X51_Y1_N24
\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Mux1~0_combout\ & ( !\IC1[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[4]~input_o\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X53_Y1_N18
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( !\IC1[1]~input_o\ & ( (\IC1[3]~input_o\ & (\IC1[2]~input_o\ & \IC1[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	datad => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: MLABCELL_X52_Y1_N57
\Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \Mux1~1_combout\ & ( \Mux1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~2_combout\,
	dataf => \ALT_INV_Mux1~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: LABCELL_X50_Y2_N36
\SBuff[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(0) = ( \Mux1~3_combout\ & ( \Mult0~8_resulta\ ) ) # ( !\Mux1~3_combout\ & ( SBuff(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_SBuff(0),
	datad => \ALT_INV_Mult0~8_resulta\,
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(0));

-- Location: LABCELL_X50_Y2_N0
\Mux25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = ( !\IC1[1]~input_o\ & ( (!\IC1[0]~input_o\ & ((!\D11[0]~input_o\) # ((!\D12[0]~input_o\)))) # (\IC1[0]~input_o\ & ((((SBuff(0)))))) ) ) # ( \IC1[1]~input_o\ & ( ((!\IC1[0]~input_o\ & 
-- (\Div0|auto_generated|divider|quotient[0]~0_combout\)) # (\IC1[0]~input_o\ & (((\D11[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100100011001000000011000011111111111011111110110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[0]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \Div0|auto_generated|divider|ALT_INV_quotient[0]~0_combout\,
	datad => \ALT_INV_D11[1]~input_o\,
	datae => \ALT_INV_IC1[1]~input_o\,
	dataf => ALT_INV_SBuff(0),
	datag => \ALT_INV_D12[0]~input_o\,
	combout => \Mux25~3_combout\);

-- Location: MLABCELL_X52_Y4_N45
\Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \Mux1~0_combout\ & ( \IC1[1]~input_o\ & ( (!\IC1[2]~input_o\ & (!\IC1[3]~input_o\ & (!\IC1[0]~input_o\ & !\IC1[4]~input_o\))) ) ) ) # ( \Mux1~0_combout\ & ( !\IC1[1]~input_o\ & ( (!\IC1[2]~input_o\ & (!\IC1[3]~input_o\ & 
-- (\IC1[0]~input_o\ & !\IC1[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[2]~input_o\,
	datab => \ALT_INV_IC1[3]~input_o\,
	datac => \ALT_INV_IC1[0]~input_o\,
	datad => \ALT_INV_IC1[4]~input_o\,
	datae => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux44~0_combout\);

-- Location: LABCELL_X53_Y2_N15
\Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = ( \IC1[1]~input_o\ & ( (\Add0~0_combout\ & !\IC1[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Add0~38_combout\);

-- Location: LABCELL_X53_Y2_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_cout\ = CARRY(( \Add0~38_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~38_combout\,
	cin => GND,
	cout => \Add0~41_cout\);

-- Location: LABCELL_X53_Y2_N33
\Add0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~6_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[0]~input_o\) ) + ( \D11[0]~input_o\ ) + ( \Add0~41_cout\ ))
-- \Add0~7\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[0]~input_o\) ) + ( \D11[0]~input_o\ ) + ( \Add0~41_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[0]~input_o\,
	datac => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D12[0]~input_o\,
	cin => \Add0~41_cout\,
	sumout => \Add0~6_sumout\,
	cout => \Add0~7\);

-- Location: LABCELL_X50_Y2_N57
\intermed[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(0) = ( \Add0~6_sumout\ & ( (intermed(0)) # (\Mux44~0_combout\) ) ) # ( !\Add0~6_sumout\ & ( (!\Mux44~0_combout\ & intermed(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux44~0_combout\,
	datad => ALT_INV_intermed(0),
	dataf => \ALT_INV_Add0~6_sumout\,
	combout => intermed(0));

-- Location: LABCELL_X50_Y2_N42
\Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \IC1[0]~input_o\ & ( (!\IC1[1]~input_o\ & (!\D11[0]~input_o\ $ ((!\D12[0]~input_o\)))) # (\IC1[1]~input_o\ & (((\D11[1]~input_o\)))) ) ) # ( !\IC1[0]~input_o\ & ( (!\IC1[1]~input_o\ & ((\D12[0]~input_o\) # (\D11[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000001100000011011110110000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[0]~input_o\,
	datab => \ALT_INV_D12[0]~input_o\,
	datac => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D11[1]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux25~1_combout\);

-- Location: LABCELL_X50_Y2_N24
\Mux34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = ( intermed(0) & ( \Mux25~1_combout\ & ( (!\IC1[3]~input_o\) # ((!\IC1[2]~input_o\ & (\Mux25~2_combout\)) # (\IC1[2]~input_o\ & ((\Mux25~3_combout\)))) ) ) ) # ( !intermed(0) & ( \Mux25~1_combout\ & ( (!\IC1[3]~input_o\ & 
-- (((\IC1[2]~input_o\)))) # (\IC1[3]~input_o\ & ((!\IC1[2]~input_o\ & (\Mux25~2_combout\)) # (\IC1[2]~input_o\ & ((\Mux25~3_combout\))))) ) ) ) # ( intermed(0) & ( !\Mux25~1_combout\ & ( (!\IC1[3]~input_o\ & (((!\IC1[2]~input_o\)))) # (\IC1[3]~input_o\ & 
-- ((!\IC1[2]~input_o\ & (\Mux25~2_combout\)) # (\IC1[2]~input_o\ & ((\Mux25~3_combout\))))) ) ) ) # ( !intermed(0) & ( !\Mux25~1_combout\ & ( (\IC1[3]~input_o\ & ((!\IC1[2]~input_o\ & (\Mux25~2_combout\)) # (\IC1[2]~input_o\ & ((\Mux25~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101101110110000010100010001101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_Mux25~2_combout\,
	datac => \ALT_INV_Mux25~3_combout\,
	datad => \ALT_INV_IC1[2]~input_o\,
	datae => ALT_INV_intermed(0),
	dataf => \ALT_INV_Mux25~1_combout\,
	combout => \Mux34~1_combout\);

-- Location: LABCELL_X50_Y2_N12
\Mux34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = ( !\IC1[4]~input_o\ & ( (!\Mux1~0_combout\ & (\D11[0]~input_o\)) # (\Mux1~0_combout\ & (((\Mux34~1_combout\)))) ) ) # ( \IC1[4]~input_o\ & ( (!\Mux1~0_combout\ & (\D11[0]~input_o\)) # (\Mux1~0_combout\ & ((!\IC1[1]~input_o\ & 
-- ((!\Mux34~0_combout\ & (\D11[0]~input_o\)) # (\Mux34~0_combout\ & ((\D11[7]~input_o\))))) # (\IC1[1]~input_o\ & (\D11[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011101000111010101010101010101000111010001110100010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[0]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D11[7]~input_o\,
	datae => \ALT_INV_IC1[4]~input_o\,
	dataf => \ALT_INV_Mux34~0_combout\,
	datag => \ALT_INV_Mux34~1_combout\,
	combout => \Mux34~2_combout\);

-- Location: LABCELL_X50_Y2_N51
\Do[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(0) = ( \Mux35~0_combout\ & ( \Mux34~2_combout\ ) ) # ( !\Mux35~0_combout\ & ( \Mux34~2_combout\ & ( Do(0) ) ) ) # ( !\Mux35~0_combout\ & ( !\Mux34~2_combout\ & ( Do(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Do(0),
	datae => \ALT_INV_Mux35~0_combout\,
	dataf => \ALT_INV_Mux34~2_combout\,
	combout => Do(0));

-- Location: LABCELL_X53_Y3_N18
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \IC1[0]~input_o\ & ( \D11[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D11[1]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X53_Y3_N3
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( !\IC1[1]~input_o\ & ( (\IC1[3]~input_o\ & (!\IC1[2]~input_o\ & \Mux1~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_IC1[2]~input_o\,
	datac => \ALT_INV_Mux1~2_combout\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X53_Y3_N21
\logicShift[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(0) = ( logicShift(0) & ( (!\Mux26~0_combout\) # (\Mux25~0_combout\) ) ) # ( !logicShift(0) & ( (\Mux25~0_combout\ & \Mux26~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux25~0_combout\,
	datad => \ALT_INV_Mux26~0_combout\,
	dataf => ALT_INV_logicShift(0),
	combout => logicShift(0));

-- Location: LABCELL_X53_Y3_N15
\Mux55~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = ( \IC1[1]~input_o\ & ( (!\IC1[3]~input_o\ & (\IC1[0]~input_o\ & (!\IC1[4]~input_o\ & !\IC1[2]~input_o\))) ) ) # ( !\IC1[1]~input_o\ & ( (\IC1[3]~input_o\ & (!\IC1[4]~input_o\ & !\IC1[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_IC1[4]~input_o\,
	datad => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux55~2_combout\);

-- Location: LABCELL_X53_Y3_N54
\Mux54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = ( logicShift(0) & ( \Mux55~2_combout\ & ( (!\Mux55~1_combout\) # ((\D12[0]~input_o\ & \D11[0]~input_o\)) ) ) ) # ( !logicShift(0) & ( \Mux55~2_combout\ & ( (\Mux55~1_combout\ & (\D12[0]~input_o\ & \D11[0]~input_o\)) ) ) ) # ( 
-- logicShift(0) & ( !\Mux55~2_combout\ & ( (!\Mux55~1_combout\ & ((Do(0)))) # (\Mux55~1_combout\ & (\D11[0]~input_o\)) ) ) ) # ( !logicShift(0) & ( !\Mux55~2_combout\ & ( (!\Mux55~1_combout\ & ((Do(0)))) # (\Mux55~1_combout\ & (\D11[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000001000000011010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux55~1_combout\,
	datab => \ALT_INV_D12[0]~input_o\,
	datac => \ALT_INV_D11[0]~input_o\,
	datad => ALT_INV_Do(0),
	datae => ALT_INV_logicShift(0),
	dataf => \ALT_INV_Mux55~2_combout\,
	combout => \Mux54~0_combout\);

-- Location: LABCELL_X53_Y3_N12
\Do1[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[0]$latch~combout\ = ( \Mux54~0_combout\ & ( (\Mux62~0_combout\) # (\Do1[0]$latch~combout\) ) ) # ( !\Mux54~0_combout\ & ( (\Do1[0]$latch~combout\ & !\Mux62~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Do1[0]$latch~combout\,
	datad => \ALT_INV_Mux62~0_combout\,
	dataf => \ALT_INV_Mux54~0_combout\,
	combout => \Do1[0]$latch~combout\);

-- Location: LABCELL_X51_Y2_N48
\Mux39~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = ( !\IC1[4]~input_o\ & ( \IC1[1]~input_o\ & ( (\IC1[2]~input_o\ & (\Mux1~0_combout\ & ((!\IC1[3]~input_o\) # (\IC1[0]~input_o\)))) ) ) ) # ( \IC1[4]~input_o\ & ( !\IC1[1]~input_o\ & ( (!\IC1[2]~input_o\ & (!\IC1[0]~input_o\ & 
-- (!\IC1[3]~input_o\ & \Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000010100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[2]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_IC1[3]~input_o\,
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_IC1[4]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux39~3_combout\);

-- Location: LABCELL_X51_Y1_N36
\Mux39~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = ( \Mux39~0_combout\ & ( (!\IC1[4]~input_o\ & (\Mux1~0_combout\ & ((!\IC1[1]~input_o\) # (!\IC1[2]~input_o\)))) ) ) # ( !\Mux39~0_combout\ & ( (!\IC1[4]~input_o\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000010000000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[4]~input_o\,
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_Mux39~0_combout\,
	combout => \Mux39~4_combout\);

-- Location: MLABCELL_X52_Y4_N51
\Mux39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = ( \IC1[2]~input_o\ & ( !\IC1[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IC1[3]~input_o\,
	dataf => \ALT_INV_IC1[2]~input_o\,
	combout => \Mux39~1_combout\);

-- Location: LABCELL_X51_Y3_N12
\SBuff[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(1) = ( SBuff(1) & ( (!\Mux1~3_combout\) # (\Mult0~9\) ) ) # ( !SBuff(1) & ( (\Mux1~3_combout\ & \Mult0~9\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~3_combout\,
	datad => \ALT_INV_Mult0~9\,
	dataf => ALT_INV_SBuff(1),
	combout => SBuff(1));

-- Location: MLABCELL_X52_Y2_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[1]~input_o\) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[1]~input_o\) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[1]~input_o\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X51_Y3_N48
\Mux36~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~5_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & ((((\Add2~5_sumout\))))) # (\IC1[2]~input_o\ & (!\IC1[1]~input_o\ & ((!\D12[1]~input_o\) # ((!\D11[1]~input_o\))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D12[1]~input_o\ & 
-- (((!\D11[1]~input_o\))))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & (SBuff(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111001100101010100000110000001111100010000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[1]~input_o\,
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => ALT_INV_SBuff(1),
	datad => \ALT_INV_IC1[2]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_D11[1]~input_o\,
	datag => \ALT_INV_Add2~5_sumout\,
	combout => \Mux36~5_combout\);

-- Location: LABCELL_X51_Y3_N15
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \D12[7]~input_o\ & ( (\IC1[2]~input_o\ & (\IC1[1]~input_o\ & !\D11[7]~input_o\)) ) ) # ( !\D12[7]~input_o\ & ( (\IC1[2]~input_o\ & (\IC1[1]~input_o\ & \D11[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[2]~input_o\,
	datac => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D11[7]~input_o\,
	dataf => \ALT_INV_D12[7]~input_o\,
	combout => \Mux36~0_combout\);

-- Location: MLABCELL_X52_Y2_N9
\Mux36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = ( \IC1[1]~input_o\ & ( (\IC1[2]~input_o\ & (!\D12[7]~input_o\ $ (\D11[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D12[7]~input_o\,
	datac => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux36~1_combout\);

-- Location: LABCELL_X55_Y4_N3
\Div0|auto_generated|divider|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~5_sumout\ = SUM(( (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~2\ ))
-- \Div0|auto_generated|divider|op_1~6\ = CARRY(( (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~2\,
	sumout => \Div0|auto_generated|divider|op_1~5_sumout\,
	cout => \Div0|auto_generated|divider|op_1~6\);

-- Location: LABCELL_X51_Y3_N42
\Mux36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = ( \Div0|auto_generated|divider|op_1~5_sumout\ & ( (!\Mux36~5_combout\ & (!\Mux36~0_combout\ & ((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|selnose\(54))))) ) ) # ( !\Div0|auto_generated|divider|op_1~5_sumout\ & ( 
-- (!\Mux36~5_combout\ & ((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|selnose\(54)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~5_combout\,
	datab => \ALT_INV_Mux36~0_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	dataf => \Div0|auto_generated|divider|ALT_INV_op_1~5_sumout\,
	combout => \Mux36~2_combout\);

-- Location: LABCELL_X51_Y1_N48
\Mux39~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = ( \IC1[0]~input_o\ & ( !\IC1[3]~input_o\ ) ) # ( !\IC1[0]~input_o\ & ( (!\IC1[3]~input_o\ & !\IC1[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IC1[3]~input_o\,
	datad => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux39~2_combout\);

-- Location: LABCELL_X53_Y2_N36
\Add0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~10_sumout\ = SUM(( \D11[1]~input_o\ ) + ( !\IC1[1]~input_o\ $ (!\D12[1]~input_o\) ) + ( \Add0~7\ ))
-- \Add0~11\ = CARRY(( \D11[1]~input_o\ ) + ( !\IC1[1]~input_o\ $ (!\D12[1]~input_o\) ) + ( \Add0~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D11[1]~input_o\,
	dataf => \ALT_INV_D12[1]~input_o\,
	cin => \Add0~7\,
	sumout => \Add0~10_sumout\,
	cout => \Add0~11\);

-- Location: LABCELL_X51_Y3_N45
\intermed[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(1) = ( \Mux44~0_combout\ & ( \Add0~10_sumout\ ) ) # ( !\Mux44~0_combout\ & ( intermed(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~10_sumout\,
	datad => ALT_INV_intermed(1),
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => intermed(1));

-- Location: LABCELL_X51_Y3_N54
\Mux36~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = ( \Mux39~2_combout\ & ( intermed(1) & ( (\Mux39~1_combout\ & (!\D12[1]~input_o\ $ (\D11[1]~input_o\))) ) ) ) # ( !\Mux39~2_combout\ & ( intermed(1) & ( (!\Mux39~1_combout\ & (\Mux36~2_combout\)) # (\Mux39~1_combout\ & 
-- (((!\D12[1]~input_o\ & !\D11[1]~input_o\)))) ) ) ) # ( \Mux39~2_combout\ & ( !intermed(1) & ( (!\Mux39~1_combout\) # (!\D12[1]~input_o\ $ (\D11[1]~input_o\)) ) ) ) # ( !\Mux39~2_combout\ & ( !intermed(1) & ( (!\Mux39~1_combout\ & (\Mux36~2_combout\)) # 
-- (\Mux39~1_combout\ & (((!\D12[1]~input_o\ & !\D11[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000100010111110101010111101110010001000100101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux39~1_combout\,
	datab => \ALT_INV_Mux36~2_combout\,
	datac => \ALT_INV_D12[1]~input_o\,
	datad => \ALT_INV_D11[1]~input_o\,
	datae => \ALT_INV_Mux39~2_combout\,
	dataf => ALT_INV_intermed(1),
	combout => \Mux36~3_combout\);

-- Location: LABCELL_X51_Y3_N30
\Mux36~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = ( \Mux39~4_combout\ & ( \Mux36~3_combout\ & ( (\D11[2]~input_o\ & \Mux39~3_combout\) ) ) ) # ( !\Mux39~4_combout\ & ( \Mux36~3_combout\ & ( (!\Mux39~3_combout\ & ((\D11[1]~input_o\))) # (\Mux39~3_combout\ & (\D11[0]~input_o\)) ) ) ) # 
-- ( \Mux39~4_combout\ & ( !\Mux36~3_combout\ & ( (!\Mux39~3_combout\) # (\D11[2]~input_o\) ) ) ) # ( !\Mux39~4_combout\ & ( !\Mux36~3_combout\ & ( (!\Mux39~3_combout\ & ((\D11[1]~input_o\))) # (\Mux39~3_combout\ & (\D11[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101111100111111001100000101111101010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[0]~input_o\,
	datab => \ALT_INV_D11[2]~input_o\,
	datac => \ALT_INV_Mux39~3_combout\,
	datad => \ALT_INV_D11[1]~input_o\,
	datae => \ALT_INV_Mux39~4_combout\,
	dataf => \ALT_INV_Mux36~3_combout\,
	combout => \Mux36~4_combout\);

-- Location: LABCELL_X51_Y3_N3
\Do[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(1) = ( \Mux36~4_combout\ & ( (Do(1)) # (\Mux35~0_combout\) ) ) # ( !\Mux36~4_combout\ & ( (!\Mux35~0_combout\ & Do(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux35~0_combout\,
	datad => ALT_INV_Do(1),
	dataf => \ALT_INV_Mux36~4_combout\,
	combout => Do(1));

-- Location: LABCELL_X53_Y3_N0
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \IC1[0]~input_o\ & ( \D11[2]~input_o\ ) ) # ( !\IC1[0]~input_o\ & ( \D11[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D11[0]~input_o\,
	datad => \ALT_INV_D11[2]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X53_Y3_N51
\logicShift[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(1) = ( logicShift(1) & ( (!\Mux26~0_combout\) # (\Mux27~0_combout\) ) ) # ( !logicShift(1) & ( (\Mux27~0_combout\ & \Mux26~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~0_combout\,
	datad => \ALT_INV_Mux26~0_combout\,
	dataf => ALT_INV_logicShift(1),
	combout => logicShift(1));

-- Location: LABCELL_X53_Y3_N24
\Mux55~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = ( Do(1) & ( logicShift(1) & ( (!\Mux55~1_combout\) # ((\D11[1]~input_o\ & ((!\Mux55~2_combout\) # (\D12[1]~input_o\)))) ) ) ) # ( !Do(1) & ( logicShift(1) & ( (!\Mux55~1_combout\ & (((\Mux55~2_combout\)))) # (\Mux55~1_combout\ & 
-- (\D11[1]~input_o\ & ((!\Mux55~2_combout\) # (\D12[1]~input_o\)))) ) ) ) # ( Do(1) & ( !logicShift(1) & ( (!\Mux55~1_combout\ & (((!\Mux55~2_combout\)))) # (\Mux55~1_combout\ & (\D11[1]~input_o\ & ((!\Mux55~2_combout\) # (\D12[1]~input_o\)))) ) ) ) # ( 
-- !Do(1) & ( !logicShift(1) & ( (\Mux55~1_combout\ & (\D11[1]~input_o\ & ((!\Mux55~2_combout\) # (\D12[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101110000001100110100110000001111011111000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[1]~input_o\,
	datab => \ALT_INV_Mux55~2_combout\,
	datac => \ALT_INV_Mux55~1_combout\,
	datad => \ALT_INV_D11[1]~input_o\,
	datae => ALT_INV_Do(1),
	dataf => ALT_INV_logicShift(1),
	combout => \Mux55~3_combout\);

-- Location: LABCELL_X53_Y3_N48
\Do1[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[1]$latch~combout\ = ( \Mux55~3_combout\ & ( (\Mux62~0_combout\) # (\Do1[1]$latch~combout\) ) ) # ( !\Mux55~3_combout\ & ( (\Do1[1]$latch~combout\ & !\Mux62~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Do1[1]$latch~combout\,
	datad => \ALT_INV_Mux62~0_combout\,
	dataf => \ALT_INV_Mux55~3_combout\,
	combout => \Do1[1]$latch~combout\);

-- Location: LABCELL_X55_Y4_N6
\Div0|auto_generated|divider|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~9_sumout\ = SUM(( GND ) + ( ((\Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\) ) + ( 
-- \Div0|auto_generated|divider|op_1~6\ ))
-- \Div0|auto_generated|divider|op_1~10\ = CARRY(( GND ) + ( ((\Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\) ) + ( 
-- \Div0|auto_generated|divider|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~6\,
	sumout => \Div0|auto_generated|divider|op_1~9_sumout\,
	cout => \Div0|auto_generated|divider|op_1~10\);

-- Location: LABCELL_X51_Y1_N9
\SBuff[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(2) = ( \Mux1~3_combout\ & ( \Mult0~10\ ) ) # ( !\Mux1~3_combout\ & ( SBuff(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~10\,
	datac => ALT_INV_SBuff(2),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(2));

-- Location: MLABCELL_X52_Y2_N36
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[2]~input_o\) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[2]~input_o\) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[2]~input_o\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X51_Y1_N33
\Mux37~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (((\Add2~9_sumout\)))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & ((!\D11[2]~input_o\) # (!\D12[2]~input_o\)))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D11[2]~input_o\ & 
-- (((!\D12[2]~input_o\))))) # (\IC1[2]~input_o\ & (((SBuff(2) & ((!\IC1[1]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011111100101110100010110000001100001100000011001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[2]~input_o\,
	datab => \ALT_INV_IC1[2]~input_o\,
	datac => ALT_INV_SBuff(2),
	datad => \ALT_INV_D12[2]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	datag => \ALT_INV_Add2~9_sumout\,
	combout => \Mux37~3_combout\);

-- Location: LABCELL_X51_Y3_N24
\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \Div0|auto_generated|divider|op_1~9_sumout\ & ( !\Mux37~3_combout\ & ( (!\Mux36~0_combout\ & (((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(45)))) ) ) ) # 
-- ( !\Div0|auto_generated|divider|op_1~9_sumout\ & ( !\Mux37~3_combout\ & ( ((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(45)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => \ALT_INV_Mux36~0_combout\,
	datae => \Div0|auto_generated|divider|ALT_INV_op_1~9_sumout\,
	dataf => \ALT_INV_Mux37~3_combout\,
	combout => \Mux37~0_combout\);

-- Location: LABCELL_X53_Y2_N39
\Add0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~14_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[2]~input_o\) ) + ( \D11[2]~input_o\ ) + ( \Add0~11\ ))
-- \Add0~15\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[2]~input_o\) ) + ( \D11[2]~input_o\ ) + ( \Add0~11\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_D12[2]~input_o\,
	dataf => \ALT_INV_D11[2]~input_o\,
	cin => \Add0~11\,
	sumout => \Add0~14_sumout\,
	cout => \Add0~15\);

-- Location: LABCELL_X53_Y2_N24
\intermed[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(2) = ( intermed(2) & ( (!\Mux44~0_combout\) # (\Add0~14_sumout\) ) ) # ( !intermed(2) & ( (\Add0~14_sumout\ & \Mux44~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~14_sumout\,
	datad => \ALT_INV_Mux44~0_combout\,
	dataf => ALT_INV_intermed(2),
	combout => intermed(2));

-- Location: LABCELL_X51_Y3_N36
\Mux37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = ( \Mux39~2_combout\ & ( intermed(2) & ( (\Mux39~1_combout\ & (!\D12[2]~input_o\ $ (\D11[2]~input_o\))) ) ) ) # ( !\Mux39~2_combout\ & ( intermed(2) & ( (!\Mux39~1_combout\ & (\Mux37~0_combout\)) # (\Mux39~1_combout\ & 
-- (((!\D12[2]~input_o\ & !\D11[2]~input_o\)))) ) ) ) # ( \Mux39~2_combout\ & ( !intermed(2) & ( (!\Mux39~1_combout\) # (!\D12[2]~input_o\ $ (\D11[2]~input_o\)) ) ) ) # ( !\Mux39~2_combout\ & ( !intermed(2) & ( (!\Mux39~1_combout\ & (\Mux37~0_combout\)) # 
-- (\Mux39~1_combout\ & (((!\D12[2]~input_o\ & !\D11[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001010000111111001111001101011100010100000000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux37~0_combout\,
	datab => \ALT_INV_D12[2]~input_o\,
	datac => \ALT_INV_Mux39~1_combout\,
	datad => \ALT_INV_D11[2]~input_o\,
	datae => \ALT_INV_Mux39~2_combout\,
	dataf => ALT_INV_intermed(2),
	combout => \Mux37~1_combout\);

-- Location: MLABCELL_X52_Y3_N0
\Mux37~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = ( \Mux39~3_combout\ & ( \Mux37~1_combout\ & ( (!\Mux39~4_combout\ & ((\D11[1]~input_o\))) # (\Mux39~4_combout\ & (\D11[3]~input_o\)) ) ) ) # ( !\Mux39~3_combout\ & ( \Mux37~1_combout\ & ( (!\Mux39~4_combout\ & \D11[2]~input_o\) ) ) ) # 
-- ( \Mux39~3_combout\ & ( !\Mux37~1_combout\ & ( (!\Mux39~4_combout\ & ((\D11[1]~input_o\))) # (\Mux39~4_combout\ & (\D11[3]~input_o\)) ) ) ) # ( !\Mux39~3_combout\ & ( !\Mux37~1_combout\ & ( (\D11[2]~input_o\) # (\Mux39~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000100011101110100001100000011000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[3]~input_o\,
	datab => \ALT_INV_Mux39~4_combout\,
	datac => \ALT_INV_D11[2]~input_o\,
	datad => \ALT_INV_D11[1]~input_o\,
	datae => \ALT_INV_Mux39~3_combout\,
	dataf => \ALT_INV_Mux37~1_combout\,
	combout => \Mux37~2_combout\);

-- Location: MLABCELL_X52_Y3_N24
\Do[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(2) = ( \Mux37~2_combout\ & ( (\Mux35~0_combout\) # (Do(2)) ) ) # ( !\Mux37~2_combout\ & ( (Do(2) & !\Mux35~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Do(2),
	datad => \ALT_INV_Mux35~0_combout\,
	dataf => \ALT_INV_Mux37~2_combout\,
	combout => Do(2));

-- Location: LABCELL_X53_Y3_N30
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \IC1[0]~input_o\ & ( \D11[3]~input_o\ ) ) # ( !\IC1[0]~input_o\ & ( \D11[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D11[3]~input_o\,
	datad => \ALT_INV_D11[1]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X52_Y3_N54
\logicShift[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(2) = ( \Mux26~0_combout\ & ( \Mux28~0_combout\ ) ) # ( !\Mux26~0_combout\ & ( logicShift(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux28~0_combout\,
	datad => ALT_INV_logicShift(2),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(2));

-- Location: MLABCELL_X52_Y3_N48
\Mux56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = ( logicShift(2) & ( \Mux55~2_combout\ & ( (!\Mux55~1_combout\) # ((\D11[2]~input_o\ & \D12[2]~input_o\)) ) ) ) # ( !logicShift(2) & ( \Mux55~2_combout\ & ( (\Mux55~1_combout\ & (\D11[2]~input_o\ & \D12[2]~input_o\)) ) ) ) # ( 
-- logicShift(2) & ( !\Mux55~2_combout\ & ( (!\Mux55~1_combout\ & (Do(2))) # (\Mux55~1_combout\ & ((\D11[2]~input_o\))) ) ) ) # ( !logicShift(2) & ( !\Mux55~2_combout\ & ( (!\Mux55~1_combout\ & (Do(2))) # (\Mux55~1_combout\ & ((\D11[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000000000111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Do(2),
	datab => \ALT_INV_Mux55~1_combout\,
	datac => \ALT_INV_D11[2]~input_o\,
	datad => \ALT_INV_D12[2]~input_o\,
	datae => ALT_INV_logicShift(2),
	dataf => \ALT_INV_Mux55~2_combout\,
	combout => \Mux56~0_combout\);

-- Location: MLABCELL_X52_Y3_N27
\Do1[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[2]$latch~combout\ = ( \Mux56~0_combout\ & ( (\Do1[2]$latch~combout\) # (\Mux62~0_combout\) ) ) # ( !\Mux56~0_combout\ & ( (!\Mux62~0_combout\ & \Do1[2]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux62~0_combout\,
	datad => \ALT_INV_Do1[2]$latch~combout\,
	dataf => \ALT_INV_Mux56~0_combout\,
	combout => \Do1[2]$latch~combout\);

-- Location: LABCELL_X51_Y4_N9
\SBuff[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(3) = ( SBuff(3) & ( (!\Mux1~3_combout\) # (\Mult0~11\) ) ) # ( !SBuff(3) & ( (\Mult0~11\ & \Mux1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~11\,
	datad => \ALT_INV_Mux1~3_combout\,
	dataf => ALT_INV_SBuff(3),
	combout => SBuff(3));

-- Location: MLABCELL_X52_Y2_N39
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[3]~input_o\) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[3]~input_o\) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[3]~input_o\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X51_Y4_N18
\Mux38~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (((\Add2~13_sumout\)))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & ((!\D11[3]~input_o\) # (!\D12[3]~input_o\)))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D11[3]~input_o\ & 
-- (((!\D12[3]~input_o\))))) # (\IC1[2]~input_o\ & (((SBuff(3) & ((!\IC1[1]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101111101001110100011010000010100001010000010101000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[2]~input_o\,
	datab => \ALT_INV_D11[3]~input_o\,
	datac => ALT_INV_SBuff(3),
	datad => \ALT_INV_D12[3]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	datag => \ALT_INV_Add2~13_sumout\,
	combout => \Mux38~3_combout\);

-- Location: LABCELL_X55_Y4_N9
\Div0|auto_generated|divider|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~13_sumout\ = SUM(( GND ) + ( (((\Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\)) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\) ) + ( \Div0|auto_generated|divider|op_1~10\ ))
-- \Div0|auto_generated|divider|op_1~14\ = CARRY(( GND ) + ( (((\Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\)) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\) ) + ( \Div0|auto_generated|divider|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~10\,
	sumout => \Div0|auto_generated|divider|op_1~13_sumout\,
	cout => \Div0|auto_generated|divider|op_1~14\);

-- Location: LABCELL_X51_Y4_N48
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \Mux36~0_combout\ & ( (!\Mux38~3_combout\ & (!\Div0|auto_generated|divider|op_1~13_sumout\ & ((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|selnose\(36))))) ) ) # ( !\Mux36~0_combout\ & ( (!\Mux38~3_combout\ & 
-- ((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|selnose\(36)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001100100010001100110010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~1_combout\,
	datab => \ALT_INV_Mux38~3_combout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(36),
	dataf => \ALT_INV_Mux36~0_combout\,
	combout => \Mux38~0_combout\);

-- Location: LABCELL_X53_Y2_N42
\Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~18_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[3]~input_o\) ) + ( \D11[3]~input_o\ ) + ( \Add0~15\ ))
-- \Add0~19\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[3]~input_o\) ) + ( \D11[3]~input_o\ ) + ( \Add0~15\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_D11[3]~input_o\,
	datad => \ALT_INV_D12[3]~input_o\,
	cin => \Add0~15\,
	sumout => \Add0~18_sumout\,
	cout => \Add0~19\);

-- Location: LABCELL_X51_Y4_N6
\intermed[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(3) = ( \Add0~18_sumout\ & ( (\Mux44~0_combout\) # (intermed(3)) ) ) # ( !\Add0~18_sumout\ & ( (intermed(3) & !\Mux44~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_intermed(3),
	datac => \ALT_INV_Mux44~0_combout\,
	dataf => \ALT_INV_Add0~18_sumout\,
	combout => intermed(3));

-- Location: LABCELL_X51_Y4_N24
\Mux38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = ( \D11[3]~input_o\ & ( intermed(3) & ( (!\Mux39~2_combout\ & (\Mux38~0_combout\ & (!\Mux39~1_combout\))) # (\Mux39~2_combout\ & (((\Mux39~1_combout\ & \D12[3]~input_o\)))) ) ) ) # ( !\D11[3]~input_o\ & ( intermed(3) & ( 
-- (!\Mux39~1_combout\ & (\Mux38~0_combout\ & (!\Mux39~2_combout\))) # (\Mux39~1_combout\ & (((!\D12[3]~input_o\)))) ) ) ) # ( \D11[3]~input_o\ & ( !intermed(3) & ( (!\Mux39~2_combout\ & (\Mux38~0_combout\ & (!\Mux39~1_combout\))) # (\Mux39~2_combout\ & 
-- (((!\Mux39~1_combout\) # (\D12[3]~input_o\)))) ) ) ) # ( !\D11[3]~input_o\ & ( !intermed(3) & ( (!\Mux39~1_combout\ & (((\Mux39~2_combout\)) # (\Mux38~0_combout\))) # (\Mux39~1_combout\ & (((!\D12[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110000011100000111001101001111010000000100000001000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux38~0_combout\,
	datab => \ALT_INV_Mux39~2_combout\,
	datac => \ALT_INV_Mux39~1_combout\,
	datad => \ALT_INV_D12[3]~input_o\,
	datae => \ALT_INV_D11[3]~input_o\,
	dataf => ALT_INV_intermed(3),
	combout => \Mux38~1_combout\);

-- Location: LABCELL_X51_Y4_N30
\Mux38~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = ( \Mux39~4_combout\ & ( \Mux38~1_combout\ & ( (\D11[4]~input_o\ & \Mux39~3_combout\) ) ) ) # ( !\Mux39~4_combout\ & ( \Mux38~1_combout\ & ( (!\Mux39~3_combout\ & ((\D11[3]~input_o\))) # (\Mux39~3_combout\ & (\D11[2]~input_o\)) ) ) ) # 
-- ( \Mux39~4_combout\ & ( !\Mux38~1_combout\ & ( (!\Mux39~3_combout\) # (\D11[4]~input_o\) ) ) ) # ( !\Mux39~4_combout\ & ( !\Mux38~1_combout\ & ( (!\Mux39~3_combout\ & ((\D11[3]~input_o\))) # (\Mux39~3_combout\ & (\D11[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111110111011101110100000011110011110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[4]~input_o\,
	datab => \ALT_INV_Mux39~3_combout\,
	datac => \ALT_INV_D11[2]~input_o\,
	datad => \ALT_INV_D11[3]~input_o\,
	datae => \ALT_INV_Mux39~4_combout\,
	dataf => \ALT_INV_Mux38~1_combout\,
	combout => \Mux38~2_combout\);

-- Location: LABCELL_X51_Y4_N51
\Do[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(3) = ( \Mux38~2_combout\ & ( (\Mux35~0_combout\) # (Do(3)) ) ) # ( !\Mux38~2_combout\ & ( (Do(3) & !\Mux35~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Do(3),
	datad => \ALT_INV_Mux35~0_combout\,
	dataf => \ALT_INV_Mux38~2_combout\,
	combout => Do(3));

-- Location: MLABCELL_X52_Y1_N54
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \IC1[0]~input_o\ & ( \D11[4]~input_o\ ) ) # ( !\IC1[0]~input_o\ & ( \D11[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[2]~input_o\,
	datac => \ALT_INV_D11[4]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: MLABCELL_X52_Y3_N6
\logicShift[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(3) = ( logicShift(3) & ( (!\Mux26~0_combout\) # (\Mux29~0_combout\) ) ) # ( !logicShift(3) & ( (\Mux26~0_combout\ & \Mux29~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux26~0_combout\,
	datad => \ALT_INV_Mux29~0_combout\,
	dataf => ALT_INV_logicShift(3),
	combout => logicShift(3));

-- Location: MLABCELL_X52_Y3_N18
\Mux57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = ( logicShift(3) & ( \Mux55~2_combout\ & ( (!\Mux55~1_combout\) # ((\D12[3]~input_o\ & \D11[3]~input_o\)) ) ) ) # ( !logicShift(3) & ( \Mux55~2_combout\ & ( (\D12[3]~input_o\ & (\Mux55~1_combout\ & \D11[3]~input_o\)) ) ) ) # ( 
-- logicShift(3) & ( !\Mux55~2_combout\ & ( (!\Mux55~1_combout\ & ((Do(3)))) # (\Mux55~1_combout\ & (\D11[3]~input_o\)) ) ) ) # ( !logicShift(3) & ( !\Mux55~2_combout\ & ( (!\Mux55~1_combout\ & ((Do(3)))) # (\Mux55~1_combout\ & (\D11[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000001000000011100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[3]~input_o\,
	datab => \ALT_INV_Mux55~1_combout\,
	datac => \ALT_INV_D11[3]~input_o\,
	datad => ALT_INV_Do(3),
	datae => ALT_INV_logicShift(3),
	dataf => \ALT_INV_Mux55~2_combout\,
	combout => \Mux57~0_combout\);

-- Location: MLABCELL_X52_Y3_N57
\Do1[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[3]$latch~combout\ = ( \Mux57~0_combout\ & ( (\Do1[3]$latch~combout\) # (\Mux62~0_combout\) ) ) # ( !\Mux57~0_combout\ & ( (!\Mux62~0_combout\ & \Do1[3]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux62~0_combout\,
	datad => \ALT_INV_Do1[3]$latch~combout\,
	dataf => \ALT_INV_Mux57~0_combout\,
	combout => \Do1[3]$latch~combout\);

-- Location: MLABCELL_X52_Y2_N21
\SBuff[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(4) = ( \Mux1~3_combout\ & ( \Mult0~12\ ) ) # ( !\Mux1~3_combout\ & ( SBuff(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~12\,
	datad => ALT_INV_SBuff(4),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(4));

-- Location: MLABCELL_X52_Y2_N42
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[4]~input_o\) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[4]~input_o\) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[4]~input_o\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X52_Y2_N12
\Mux39~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~8_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (((\Add2~17_sumout\)))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & ((!\D11[4]~input_o\) # (!\D12[4]~input_o\)))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D11[4]~input_o\ & 
-- (((!\D12[4]~input_o\))))) # (\IC1[2]~input_o\ & (((SBuff(4) & ((!\IC1[1]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101111101001110100011010000010100001010000010101000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[2]~input_o\,
	datab => \ALT_INV_D11[4]~input_o\,
	datac => ALT_INV_SBuff(4),
	datad => \ALT_INV_D12[4]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	datag => \ALT_INV_Add2~17_sumout\,
	combout => \Mux39~8_combout\);

-- Location: LABCELL_X55_Y4_N12
\Div0|auto_generated|divider|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~17_sumout\ = SUM(( ((\Div0|auto_generated|divider|divider|sel\(36)) # (\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~14\ ))
-- \Div0|auto_generated|divider|op_1~18\ = CARRY(( ((\Div0|auto_generated|divider|divider|sel\(36)) # (\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	cin => \Div0|auto_generated|divider|op_1~14\,
	sumout => \Div0|auto_generated|divider|op_1~17_sumout\,
	cout => \Div0|auto_generated|divider|op_1~18\);

-- Location: MLABCELL_X52_Y2_N24
\Mux39~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~5_combout\ = ( \Div0|auto_generated|divider|divider|sel\(27) & ( \Mux36~1_combout\ & ( (!\Mux39~8_combout\ & ((!\Mux36~0_combout\) # (!\Div0|auto_generated|divider|op_1~17_sumout\))) ) ) ) # ( !\Div0|auto_generated|divider|divider|sel\(27) & ( 
-- \Mux36~1_combout\ & ( (!\Mux39~8_combout\ & (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((!\Mux36~0_combout\) # (!\Div0|auto_generated|divider|op_1~17_sumout\)))) ) ) ) # ( \Div0|auto_generated|divider|divider|sel\(27) & ( !\Mux36~1_combout\ & 
-- ( (!\Mux39~8_combout\ & ((!\Mux36~0_combout\) # (!\Div0|auto_generated|divider|op_1~17_sumout\))) ) ) ) # ( !\Div0|auto_generated|divider|divider|sel\(27) & ( !\Mux36~1_combout\ & ( (!\Mux39~8_combout\ & ((!\Mux36~0_combout\) # 
-- (!\Div0|auto_generated|divider|op_1~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011001000100000001100000010001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~0_combout\,
	datab => \ALT_INV_Mux39~8_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \Div0|auto_generated|divider|ALT_INV_op_1~17_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	dataf => \ALT_INV_Mux36~1_combout\,
	combout => \Mux39~5_combout\);

-- Location: LABCELL_X53_Y2_N45
\Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~22_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[4]~input_o\) ) + ( \D11[4]~input_o\ ) + ( \Add0~19\ ))
-- \Add0~23\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[4]~input_o\) ) + ( \D11[4]~input_o\ ) + ( \Add0~19\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_D11[4]~input_o\,
	datad => \ALT_INV_D12[4]~input_o\,
	cin => \Add0~19\,
	sumout => \Add0~22_sumout\,
	cout => \Add0~23\);

-- Location: MLABCELL_X52_Y2_N6
\intermed[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(4) = ( intermed(4) & ( (!\Mux44~0_combout\) # (\Add0~22_sumout\) ) ) # ( !intermed(4) & ( (\Add0~22_sumout\ & \Mux44~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~22_sumout\,
	datad => \ALT_INV_Mux44~0_combout\,
	dataf => ALT_INV_intermed(4),
	combout => intermed(4));

-- Location: MLABCELL_X52_Y2_N0
\Mux39~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~6_combout\ = ( \Mux39~1_combout\ & ( intermed(4) & ( (!\D12[4]~input_o\ & ((!\D11[4]~input_o\))) # (\D12[4]~input_o\ & (\Mux39~2_combout\ & \D11[4]~input_o\)) ) ) ) # ( !\Mux39~1_combout\ & ( intermed(4) & ( (!\Mux39~2_combout\ & \Mux39~5_combout\) 
-- ) ) ) # ( \Mux39~1_combout\ & ( !intermed(4) & ( (!\D12[4]~input_o\ & ((!\D11[4]~input_o\))) # (\D12[4]~input_o\ & (\Mux39~2_combout\ & \D11[4]~input_o\)) ) ) ) # ( !\Mux39~1_combout\ & ( !intermed(4) & ( (\Mux39~5_combout\) # (\Mux39~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111111100000000010100100010001000101111000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux39~2_combout\,
	datab => \ALT_INV_Mux39~5_combout\,
	datac => \ALT_INV_D12[4]~input_o\,
	datad => \ALT_INV_D11[4]~input_o\,
	datae => \ALT_INV_Mux39~1_combout\,
	dataf => ALT_INV_intermed(4),
	combout => \Mux39~6_combout\);

-- Location: MLABCELL_X52_Y2_N54
\Mux39~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~7_combout\ = ( \Mux39~3_combout\ & ( \Mux39~6_combout\ & ( (!\Mux39~4_combout\ & ((\D11[3]~input_o\))) # (\Mux39~4_combout\ & (\D11[5]~input_o\)) ) ) ) # ( !\Mux39~3_combout\ & ( \Mux39~6_combout\ & ( (!\Mux39~4_combout\ & \D11[4]~input_o\) ) ) ) # 
-- ( \Mux39~3_combout\ & ( !\Mux39~6_combout\ & ( (!\Mux39~4_combout\ & ((\D11[3]~input_o\))) # (\Mux39~4_combout\ & (\D11[5]~input_o\)) ) ) ) # ( !\Mux39~3_combout\ & ( !\Mux39~6_combout\ & ( (\D11[4]~input_o\) # (\Mux39~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000111010001110100000000110011000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[5]~input_o\,
	datab => \ALT_INV_Mux39~4_combout\,
	datac => \ALT_INV_D11[3]~input_o\,
	datad => \ALT_INV_D11[4]~input_o\,
	datae => \ALT_INV_Mux39~3_combout\,
	dataf => \ALT_INV_Mux39~6_combout\,
	combout => \Mux39~7_combout\);

-- Location: MLABCELL_X52_Y2_N18
\Do[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(4) = ( \Mux39~7_combout\ & ( (Do(4)) # (\Mux35~0_combout\) ) ) # ( !\Mux39~7_combout\ & ( (!\Mux35~0_combout\ & Do(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux35~0_combout\,
	datac => ALT_INV_Do(4),
	dataf => \ALT_INV_Mux39~7_combout\,
	combout => Do(4));

-- Location: LABCELL_X53_Y3_N36
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \IC1[0]~input_o\ & ( \D11[5]~input_o\ ) ) # ( !\IC1[0]~input_o\ & ( \D11[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[5]~input_o\,
	datac => \ALT_INV_D11[3]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LABCELL_X53_Y3_N39
\logicShift[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(4) = ( logicShift(4) & ( (!\Mux26~0_combout\) # (\Mux30~0_combout\) ) ) # ( !logicShift(4) & ( (\Mux26~0_combout\ & \Mux30~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux26~0_combout\,
	datac => \ALT_INV_Mux30~0_combout\,
	dataf => ALT_INV_logicShift(4),
	combout => logicShift(4));

-- Location: MLABCELL_X52_Y3_N12
\Mux58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = ( logicShift(4) & ( \Mux55~2_combout\ & ( (!\Mux55~1_combout\) # ((\D11[4]~input_o\ & \D12[4]~input_o\)) ) ) ) # ( !logicShift(4) & ( \Mux55~2_combout\ & ( (\Mux55~1_combout\ & (\D11[4]~input_o\ & \D12[4]~input_o\)) ) ) ) # ( 
-- logicShift(4) & ( !\Mux55~2_combout\ & ( (!\Mux55~1_combout\ & (Do(4))) # (\Mux55~1_combout\ & ((\D11[4]~input_o\))) ) ) ) # ( !logicShift(4) & ( !\Mux55~2_combout\ & ( (!\Mux55~1_combout\ & (Do(4))) # (\Mux55~1_combout\ & ((\D11[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000000001011010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux55~1_combout\,
	datab => ALT_INV_Do(4),
	datac => \ALT_INV_D11[4]~input_o\,
	datad => \ALT_INV_D12[4]~input_o\,
	datae => ALT_INV_logicShift(4),
	dataf => \ALT_INV_Mux55~2_combout\,
	combout => \Mux58~0_combout\);

-- Location: MLABCELL_X52_Y3_N9
\Do1[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[4]$latch~combout\ = ( \Mux58~0_combout\ & ( (\Mux62~0_combout\) # (\Do1[4]$latch~combout\) ) ) # ( !\Mux58~0_combout\ & ( (\Do1[4]$latch~combout\ & !\Mux62~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Do1[4]$latch~combout\,
	datad => \ALT_INV_Mux62~0_combout\,
	dataf => \ALT_INV_Mux58~0_combout\,
	combout => \Do1[4]$latch~combout\);

-- Location: LABCELL_X51_Y4_N15
\SBuff[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(5) = ( SBuff(5) & ( (!\Mux1~3_combout\) # (\Mult0~13\) ) ) # ( !SBuff(5) & ( (\Mult0~13\ & \Mux1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~13\,
	datad => \ALT_INV_Mux1~3_combout\,
	dataf => ALT_INV_SBuff(5),
	combout => SBuff(5));

-- Location: MLABCELL_X52_Y2_N45
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[5]~input_o\) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[5]~input_o\) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D11[5]~input_o\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X51_Y4_N36
\Mux40~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & ((((\Add2~21_sumout\))))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & ((!\D11[5]~input_o\) # (!\D12[5]~input_o\)))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D11[5]~input_o\ & 
-- (!\D12[5]~input_o\))) # (\IC1[2]~input_o\ & ((((SBuff(5) & !\IC1[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111101110100010000000111100001111000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[5]~input_o\,
	datab => \ALT_INV_D12[5]~input_o\,
	datac => ALT_INV_SBuff(5),
	datad => \ALT_INV_IC1[2]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	datag => \ALT_INV_Add2~21_sumout\,
	combout => \Mux40~3_combout\);

-- Location: LABCELL_X55_Y4_N15
\Div0|auto_generated|divider|op_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~21_sumout\ = SUM(( ((\Div0|auto_generated|divider|divider|sel\(27)) # (\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~18\ ))
-- \Div0|auto_generated|divider|op_1~22\ = CARRY(( ((\Div0|auto_generated|divider|divider|sel\(27)) # (\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	cin => \Div0|auto_generated|divider|op_1~18\,
	sumout => \Div0|auto_generated|divider|op_1~21_sumout\,
	cout => \Div0|auto_generated|divider|op_1~22\);

-- Location: LABCELL_X51_Y4_N12
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \Mux36~0_combout\ & ( (!\Mux40~3_combout\ & (!\Div0|auto_generated|divider|op_1~21_sumout\ & ((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|selnose\(18))))) ) ) # ( !\Mux36~0_combout\ & ( (!\Mux40~3_combout\ & 
-- ((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|selnose\(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000011010000110100001101000011010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(18),
	datab => \ALT_INV_Mux36~1_combout\,
	datac => \ALT_INV_Mux40~3_combout\,
	datad => \Div0|auto_generated|divider|ALT_INV_op_1~21_sumout\,
	dataf => \ALT_INV_Mux36~0_combout\,
	combout => \Mux40~0_combout\);

-- Location: LABCELL_X53_Y2_N48
\Add0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~26_sumout\ = SUM(( \D11[5]~input_o\ ) + ( !\IC1[1]~input_o\ $ (!\D12[5]~input_o\) ) + ( \Add0~23\ ))
-- \Add0~27\ = CARRY(( \D11[5]~input_o\ ) + ( !\IC1[1]~input_o\ $ (!\D12[5]~input_o\) ) + ( \Add0~23\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D11[5]~input_o\,
	dataf => \ALT_INV_D12[5]~input_o\,
	cin => \Add0~23\,
	sumout => \Add0~26_sumout\,
	cout => \Add0~27\);

-- Location: LABCELL_X51_Y4_N57
\intermed[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(5) = ( \Add0~26_sumout\ & ( (intermed(5)) # (\Mux44~0_combout\) ) ) # ( !\Add0~26_sumout\ & ( (!\Mux44~0_combout\ & intermed(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux44~0_combout\,
	datad => ALT_INV_intermed(5),
	dataf => \ALT_INV_Add0~26_sumout\,
	combout => intermed(5));

-- Location: LABCELL_X51_Y4_N0
\Mux40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = ( \D11[5]~input_o\ & ( intermed(5) & ( (!\Mux39~2_combout\ & (\Mux40~0_combout\ & (!\Mux39~1_combout\))) # (\Mux39~2_combout\ & (((\Mux39~1_combout\ & \D12[5]~input_o\)))) ) ) ) # ( !\D11[5]~input_o\ & ( intermed(5) & ( 
-- (!\Mux39~1_combout\ & (!\Mux39~2_combout\ & (\Mux40~0_combout\))) # (\Mux39~1_combout\ & (((!\D12[5]~input_o\)))) ) ) ) # ( \D11[5]~input_o\ & ( !intermed(5) & ( (!\Mux39~2_combout\ & (\Mux40~0_combout\ & (!\Mux39~1_combout\))) # (\Mux39~2_combout\ & 
-- (((!\Mux39~1_combout\) # (\D12[5]~input_o\)))) ) ) ) # ( !\D11[5]~input_o\ & ( !intermed(5) & ( (!\Mux39~1_combout\ & (((\Mux40~0_combout\)) # (\Mux39~2_combout\))) # (\Mux39~1_combout\ & (((!\D12[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110000011100000111010100101111001000000010000000100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux39~2_combout\,
	datab => \ALT_INV_Mux40~0_combout\,
	datac => \ALT_INV_Mux39~1_combout\,
	datad => \ALT_INV_D12[5]~input_o\,
	datae => \ALT_INV_D11[5]~input_o\,
	dataf => ALT_INV_intermed(5),
	combout => \Mux40~1_combout\);

-- Location: LABCELL_X51_Y4_N42
\Mux40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = ( \Mux39~4_combout\ & ( \Mux40~1_combout\ & ( (\Mux39~3_combout\ & \D11[6]~input_o\) ) ) ) # ( !\Mux39~4_combout\ & ( \Mux40~1_combout\ & ( (!\Mux39~3_combout\ & (\D11[5]~input_o\)) # (\Mux39~3_combout\ & ((\D11[4]~input_o\))) ) ) ) # 
-- ( \Mux39~4_combout\ & ( !\Mux40~1_combout\ & ( (!\Mux39~3_combout\) # (\D11[6]~input_o\) ) ) ) # ( !\Mux39~4_combout\ & ( !\Mux40~1_combout\ & ( (!\Mux39~3_combout\ & (\D11[5]~input_o\)) # (\Mux39~3_combout\ & ((\D11[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111110011001111111101000111010001110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[5]~input_o\,
	datab => \ALT_INV_Mux39~3_combout\,
	datac => \ALT_INV_D11[4]~input_o\,
	datad => \ALT_INV_D11[6]~input_o\,
	datae => \ALT_INV_Mux39~4_combout\,
	dataf => \ALT_INV_Mux40~1_combout\,
	combout => \Mux40~2_combout\);

-- Location: LABCELL_X51_Y4_N54
\Do[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(5) = ( \Mux40~2_combout\ & ( (\Mux35~0_combout\) # (Do(5)) ) ) # ( !\Mux40~2_combout\ & ( (Do(5) & !\Mux35~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Do(5),
	datad => \ALT_INV_Mux35~0_combout\,
	dataf => \ALT_INV_Mux40~2_combout\,
	combout => Do(5));

-- Location: LABCELL_X53_Y2_N18
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \IC1[0]~input_o\ & ( \D11[6]~input_o\ ) ) # ( !\IC1[0]~input_o\ & ( \D11[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D11[4]~input_o\,
	datad => \ALT_INV_D11[6]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LABCELL_X53_Y3_N9
\logicShift[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(5) = ( logicShift(5) & ( (!\Mux26~0_combout\) # (\Mux31~0_combout\) ) ) # ( !logicShift(5) & ( (\Mux31~0_combout\ & \Mux26~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux31~0_combout\,
	datad => \ALT_INV_Mux26~0_combout\,
	dataf => ALT_INV_logicShift(5),
	combout => logicShift(5));

-- Location: LABCELL_X53_Y3_N42
\Mux59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = ( \Mux55~2_combout\ & ( logicShift(5) & ( (!\Mux55~1_combout\) # ((\D12[5]~input_o\ & \D11[5]~input_o\)) ) ) ) # ( !\Mux55~2_combout\ & ( logicShift(5) & ( (!\Mux55~1_combout\ & (Do(5))) # (\Mux55~1_combout\ & ((\D11[5]~input_o\))) ) ) 
-- ) # ( \Mux55~2_combout\ & ( !logicShift(5) & ( (\Mux55~1_combout\ & (\D12[5]~input_o\ & \D11[5]~input_o\)) ) ) ) # ( !\Mux55~2_combout\ & ( !logicShift(5) & ( (!\Mux55~1_combout\ & (Do(5))) # (\Mux55~1_combout\ & ((\D11[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000000000000010100100010011101111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux55~1_combout\,
	datab => ALT_INV_Do(5),
	datac => \ALT_INV_D12[5]~input_o\,
	datad => \ALT_INV_D11[5]~input_o\,
	datae => \ALT_INV_Mux55~2_combout\,
	dataf => ALT_INV_logicShift(5),
	combout => \Mux59~0_combout\);

-- Location: LABCELL_X53_Y3_N6
\Do1[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[5]$latch~combout\ = ( \Mux59~0_combout\ & ( (\Mux62~0_combout\) # (\Do1[5]$latch~combout\) ) ) # ( !\Mux59~0_combout\ & ( (\Do1[5]$latch~combout\ & !\Mux62~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Do1[5]$latch~combout\,
	datad => \ALT_INV_Mux62~0_combout\,
	dataf => \ALT_INV_Mux59~0_combout\,
	combout => \Do1[5]$latch~combout\);

-- Location: MLABCELL_X52_Y4_N33
\SBuff[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(6) = ( \Mux1~3_combout\ & ( \Mult0~14\ ) ) # ( !\Mux1~3_combout\ & ( SBuff(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~14\,
	datad => ALT_INV_SBuff(6),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(6));

-- Location: MLABCELL_X52_Y2_N48
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[6]~input_o\) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[6]~input_o\) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D11[6]~input_o\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X52_Y4_N24
\Mux41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & ((((\Add2~25_sumout\))))) # (\IC1[2]~input_o\ & (!\IC1[1]~input_o\ & ((!\D11[6]~input_o\) # ((!\D12[6]~input_o\))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D11[6]~input_o\ & 
-- (((!\D12[6]~input_o\))))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & (SBuff(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111101010100000000011001100100010000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[6]~input_o\,
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => ALT_INV_SBuff(6),
	datad => \ALT_INV_D12[6]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[2]~input_o\,
	datag => \ALT_INV_Add2~25_sumout\,
	combout => \Mux41~3_combout\);

-- Location: LABCELL_X55_Y4_N18
\Div0|auto_generated|divider|op_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~25_sumout\ = SUM(( GND ) + ( ((\Div0|auto_generated|divider|divider|sel\(18)) # (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\) ) + ( 
-- \Div0|auto_generated|divider|op_1~22\ ))
-- \Div0|auto_generated|divider|op_1~26\ = CARRY(( GND ) + ( ((\Div0|auto_generated|divider|divider|sel\(18)) # (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\) ) + ( 
-- \Div0|auto_generated|divider|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	cin => \Div0|auto_generated|divider|op_1~22\,
	sumout => \Div0|auto_generated|divider|op_1~25_sumout\,
	cout => \Div0|auto_generated|divider|op_1~26\);

-- Location: MLABCELL_X52_Y4_N54
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \Div0|auto_generated|divider|divider|selnose\(9) & ( \Mux36~1_combout\ & ( (!\Mux41~3_combout\ & ((!\Mux36~0_combout\) # (!\Div0|auto_generated|divider|op_1~25_sumout\))) ) ) ) # ( \Div0|auto_generated|divider|divider|selnose\(9) & ( 
-- !\Mux36~1_combout\ & ( (!\Mux41~3_combout\ & ((!\Mux36~0_combout\) # (!\Div0|auto_generated|divider|op_1~25_sumout\))) ) ) ) # ( !\Div0|auto_generated|divider|divider|selnose\(9) & ( !\Mux36~1_combout\ & ( (!\Mux41~3_combout\ & ((!\Mux36~0_combout\) # 
-- (!\Div0|auto_generated|divider|op_1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100000000000000000001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~0_combout\,
	datab => \ALT_INV_Mux41~3_combout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~25_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	dataf => \ALT_INV_Mux36~1_combout\,
	combout => \Mux41~0_combout\);

-- Location: LABCELL_X53_Y2_N51
\Add0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~30_sumout\ = SUM(( \D11[6]~input_o\ ) + ( !\IC1[1]~input_o\ $ (!\D12[6]~input_o\) ) + ( \Add0~27\ ))
-- \Add0~31\ = CARRY(( \D11[6]~input_o\ ) + ( !\IC1[1]~input_o\ $ (!\D12[6]~input_o\) ) + ( \Add0~27\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_D12[6]~input_o\,
	datad => \ALT_INV_D11[6]~input_o\,
	cin => \Add0~27\,
	sumout => \Add0~30_sumout\,
	cout => \Add0~31\);

-- Location: MLABCELL_X52_Y4_N6
\intermed[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(6) = ( \Mux44~0_combout\ & ( \Add0~30_sumout\ ) ) # ( !\Mux44~0_combout\ & ( \Add0~30_sumout\ & ( intermed(6) ) ) ) # ( !\Mux44~0_combout\ & ( !\Add0~30_sumout\ & ( intermed(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_intermed(6),
	datae => \ALT_INV_Mux44~0_combout\,
	dataf => \ALT_INV_Add0~30_sumout\,
	combout => intermed(6));

-- Location: MLABCELL_X52_Y4_N18
\Mux41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = ( \Mux39~1_combout\ & ( intermed(6) & ( (!\D11[6]~input_o\ & ((!\D12[6]~input_o\))) # (\D11[6]~input_o\ & (\Mux39~2_combout\ & \D12[6]~input_o\)) ) ) ) # ( !\Mux39~1_combout\ & ( intermed(6) & ( (!\Mux39~2_combout\ & \Mux41~0_combout\) 
-- ) ) ) # ( \Mux39~1_combout\ & ( !intermed(6) & ( (!\D11[6]~input_o\ & ((!\D12[6]~input_o\))) # (\D11[6]~input_o\ & (\Mux39~2_combout\ & \D12[6]~input_o\)) ) ) ) # ( !\Mux39~1_combout\ & ( !intermed(6) & ( (\Mux41~0_combout\) # (\Mux39~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111111100000000010100100010001000101111000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux39~2_combout\,
	datab => \ALT_INV_Mux41~0_combout\,
	datac => \ALT_INV_D11[6]~input_o\,
	datad => \ALT_INV_D12[6]~input_o\,
	datae => \ALT_INV_Mux39~1_combout\,
	dataf => ALT_INV_intermed(6),
	combout => \Mux41~1_combout\);

-- Location: MLABCELL_X52_Y4_N0
\Mux41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = ( \Mux39~4_combout\ & ( \Mux41~1_combout\ & ( (\Mux39~3_combout\ & \D11[7]~input_o\) ) ) ) # ( !\Mux39~4_combout\ & ( \Mux41~1_combout\ & ( (!\Mux39~3_combout\ & (\D11[6]~input_o\)) # (\Mux39~3_combout\ & ((\D11[5]~input_o\))) ) ) ) # 
-- ( \Mux39~4_combout\ & ( !\Mux41~1_combout\ & ( (!\Mux39~3_combout\) # (\D11[7]~input_o\) ) ) ) # ( !\Mux39~4_combout\ & ( !\Mux41~1_combout\ & ( (!\Mux39~3_combout\ & (\D11[6]~input_o\)) # (\Mux39~3_combout\ & ((\D11[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111110011111100111101000100011101110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[6]~input_o\,
	datab => \ALT_INV_Mux39~3_combout\,
	datac => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[5]~input_o\,
	datae => \ALT_INV_Mux39~4_combout\,
	dataf => \ALT_INV_Mux41~1_combout\,
	combout => \Mux41~2_combout\);

-- Location: MLABCELL_X52_Y4_N39
\Do[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(6) = ( \Mux41~2_combout\ & ( (\Mux35~0_combout\) # (Do(6)) ) ) # ( !\Mux41~2_combout\ & ( (Do(6) & !\Mux35~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Do(6),
	datac => \ALT_INV_Mux35~0_combout\,
	dataf => \ALT_INV_Mux41~2_combout\,
	combout => Do(6));

-- Location: LABCELL_X53_Y3_N33
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \IC1[0]~input_o\ & ( \D11[7]~input_o\ ) ) # ( !\IC1[0]~input_o\ & ( \D11[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D11[5]~input_o\,
	datad => \ALT_INV_D11[7]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: MLABCELL_X52_Y3_N36
\logicShift[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(6) = ( \Mux26~0_combout\ & ( \Mux32~0_combout\ ) ) # ( !\Mux26~0_combout\ & ( logicShift(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux32~0_combout\,
	datad => ALT_INV_logicShift(6),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(6));

-- Location: MLABCELL_X52_Y3_N42
\Mux60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = ( logicShift(6) & ( \Mux55~2_combout\ & ( (!\Mux55~1_combout\) # ((\D12[6]~input_o\ & \D11[6]~input_o\)) ) ) ) # ( !logicShift(6) & ( \Mux55~2_combout\ & ( (\Mux55~1_combout\ & (\D12[6]~input_o\ & \D11[6]~input_o\)) ) ) ) # ( 
-- logicShift(6) & ( !\Mux55~2_combout\ & ( (!\Mux55~1_combout\ & (Do(6))) # (\Mux55~1_combout\ & ((\D11[6]~input_o\))) ) ) ) # ( !logicShift(6) & ( !\Mux55~2_combout\ & ( (!\Mux55~1_combout\ & (Do(6))) # (\Mux55~1_combout\ & ((\D11[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000000000000111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Do(6),
	datab => \ALT_INV_Mux55~1_combout\,
	datac => \ALT_INV_D12[6]~input_o\,
	datad => \ALT_INV_D11[6]~input_o\,
	datae => ALT_INV_logicShift(6),
	dataf => \ALT_INV_Mux55~2_combout\,
	combout => \Mux60~0_combout\);

-- Location: MLABCELL_X52_Y3_N33
\Do1[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[6]$latch~combout\ = ( \Mux60~0_combout\ & ( (\Mux62~0_combout\) # (\Do1[6]$latch~combout\) ) ) # ( !\Mux60~0_combout\ & ( (\Do1[6]$latch~combout\ & !\Mux62~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Do1[6]$latch~combout\,
	datad => \ALT_INV_Mux62~0_combout\,
	dataf => \ALT_INV_Mux60~0_combout\,
	combout => \Do1[6]$latch~combout\);

-- Location: LABCELL_X51_Y2_N33
\Mux54~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = ( \D11[6]~input_o\ & ( (!\IC1[0]~input_o\) # (\D11[7]~input_o\) ) ) # ( !\D11[6]~input_o\ & ( (\IC1[0]~input_o\ & \D11[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_D11[7]~input_o\,
	dataf => \ALT_INV_D11[6]~input_o\,
	combout => \Mux54~1_combout\);

-- Location: LABCELL_X51_Y2_N39
\Mux42~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = ( \Mux54~1_combout\ & ( ((!\IC1[1]~input_o\ & !\IC1[2]~input_o\)) # (\D11[7]~input_o\) ) ) # ( !\Mux54~1_combout\ & ( (\D11[7]~input_o\ & ((\IC1[2]~input_o\) # (\IC1[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_Mux54~1_combout\,
	combout => \Mux42~4_combout\);

-- Location: LABCELL_X55_Y4_N21
\Div0|auto_generated|divider|op_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~29_sumout\ = SUM(( GND ) + ( (((\Div0|auto_generated|divider|divider|sel\(18)) # (\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\)) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\) ) + ( \Div0|auto_generated|divider|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	cin => \Div0|auto_generated|divider|op_1~26\,
	sumout => \Div0|auto_generated|divider|op_1~29_sumout\);

-- Location: LABCELL_X51_Y2_N15
\SBuff[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(7) = ( \Mux1~3_combout\ & ( \Mult0~15\ ) ) # ( !\Mux1~3_combout\ & ( SBuff(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~15\,
	datac => ALT_INV_SBuff(7),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(7));

-- Location: LABCELL_X51_Y2_N45
\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( SBuff(7) & ( (!\IC1[0]~input_o\ & (\D11[7]~input_o\ & \D12[7]~input_o\)) ) ) # ( !SBuff(7) & ( ((\D11[7]~input_o\ & \D12[7]~input_o\)) # (\IC1[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D12[7]~input_o\,
	dataf => ALT_INV_SBuff(7),
	combout => \Mux42~0_combout\);

-- Location: MLABCELL_X52_Y2_N51
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( GND ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\);

-- Location: LABCELL_X51_Y2_N12
\Mux42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = ( \IC1[0]~input_o\ & ( (!\D12[7]~input_o\ & !\D11[7]~input_o\) ) ) # ( !\IC1[0]~input_o\ & ( \Add2~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~29_sumout\,
	datac => \ALT_INV_D12[7]~input_o\,
	datad => \ALT_INV_D11[7]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux42~1_combout\);

-- Location: LABCELL_X51_Y2_N54
\Mux42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = ( \IC1[2]~input_o\ & ( \IC1[0]~input_o\ & ( (!\IC1[1]~input_o\ & (!\Mux42~0_combout\)) # (\IC1[1]~input_o\ & ((\D11[0]~input_o\))) ) ) ) # ( !\IC1[2]~input_o\ & ( \IC1[0]~input_o\ & ( (\IC1[1]~input_o\ & \Mux42~1_combout\) ) ) ) # ( 
-- \IC1[2]~input_o\ & ( !\IC1[0]~input_o\ & ( (!\IC1[1]~input_o\ & !\Mux42~0_combout\) ) ) ) # ( !\IC1[2]~input_o\ & ( !\IC1[0]~input_o\ & ( (\IC1[1]~input_o\ & \Mux42~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101100010001000100000000000010101011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_Mux42~0_combout\,
	datac => \ALT_INV_D11[0]~input_o\,
	datad => \ALT_INV_Mux42~1_combout\,
	datae => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux42~2_combout\);

-- Location: LABCELL_X51_Y2_N24
\Mux42~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = ( \IC1[0]~input_o\ & ( \Mux42~2_combout\ ) ) # ( !\IC1[0]~input_o\ & ( \Mux42~2_combout\ ) ) # ( !\IC1[0]~input_o\ & ( !\Mux42~2_combout\ & ( (!\Mux36~0_combout\ & (\Mux36~1_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|selnose\(0))))) # (\Mux36~0_combout\ & (((\Mux36~1_combout\ & !\Div0|auto_generated|divider|divider|selnose\(0))) # (\Div0|auto_generated|divider|op_1~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000101000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux36~0_combout\,
	datab => \ALT_INV_Mux36~1_combout\,
	datac => \Div0|auto_generated|divider|ALT_INV_op_1~29_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_Mux42~2_combout\,
	combout => \Mux42~3_combout\);

-- Location: LABCELL_X53_Y2_N54
\Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~34_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\IC1[1]~input_o\) ) + ( \D11[7]~input_o\ ) + ( \Add0~31\ ))
-- \Add0~35\ = CARRY(( !\D12[7]~input_o\ $ (!\IC1[1]~input_o\) ) + ( \D11[7]~input_o\ ) + ( \Add0~31\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datab => \ALT_INV_D12[7]~input_o\,
	datad => \ALT_INV_IC1[1]~input_o\,
	cin => \Add0~31\,
	sumout => \Add0~34_sumout\,
	cout => \Add0~35\);

-- Location: LABCELL_X51_Y2_N36
\intermed[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(7) = ( \Add0~34_sumout\ & ( (\Mux44~0_combout\) # (intermed(7)) ) ) # ( !\Add0~34_sumout\ & ( (intermed(7) & !\Mux44~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_intermed(7),
	datad => \ALT_INV_Mux44~0_combout\,
	dataf => \ALT_INV_Add0~34_sumout\,
	combout => intermed(7));

-- Location: LABCELL_X51_Y2_N6
\Mux42~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~9_combout\ = ( !\IC1[1]~input_o\ & ( (!\IC1[2]~input_o\ & (\IC1[0]~input_o\ & (((intermed(7)))))) # (\IC1[2]~input_o\ & ((!\D12[7]~input_o\ & (((\D11[7]~input_o\)))) # (\D12[7]~input_o\ & ((!\IC1[0]~input_o\) # ((!\D11[7]~input_o\)))))) ) ) # ( 
-- \IC1[1]~input_o\ & ( (!\IC1[2]~input_o\ & (!\IC1[0]~input_o\ & (((intermed(7)))))) # (\IC1[2]~input_o\ & ((!\IC1[0]~input_o\ & (\D11[6]~input_o\)) # (\IC1[0]~input_o\ & (((\D11[7]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010101010100000001000001010100100111011101101000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[2]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_D11[6]~input_o\,
	datad => \ALT_INV_D11[7]~input_o\,
	datae => \ALT_INV_IC1[1]~input_o\,
	dataf => ALT_INV_intermed(7),
	datag => \ALT_INV_D12[7]~input_o\,
	combout => \Mux42~9_combout\);

-- Location: LABCELL_X51_Y2_N18
\Mux42~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~5_combout\ = ( !\IC1[4]~input_o\ & ( (!\Mux1~0_combout\ & (((\D11[7]~input_o\)))) # (\Mux1~0_combout\ & ((!\IC1[3]~input_o\ & (((\Mux42~9_combout\)))) # (\IC1[3]~input_o\ & (((\Mux42~3_combout\)))))) ) ) # ( \IC1[4]~input_o\ & ( (!\IC1[3]~input_o\ 
-- & ((!\Mux1~0_combout\ & (\D11[7]~input_o\)) # (\Mux1~0_combout\ & (((\Mux42~4_combout\)))))) # (\IC1[3]~input_o\ & (\D11[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001010001100110001101100110011010111110011001100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_Mux42~4_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_IC1[4]~input_o\,
	dataf => \ALT_INV_Mux42~3_combout\,
	datag => \ALT_INV_Mux42~9_combout\,
	combout => \Mux42~5_combout\);

-- Location: LABCELL_X51_Y2_N42
\Do[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(7) = ( \Mux42~5_combout\ & ( (\Mux35~0_combout\) # (Do(7)) ) ) # ( !\Mux42~5_combout\ & ( (Do(7) & !\Mux35~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Do(7),
	datad => \ALT_INV_Mux35~0_combout\,
	dataf => \ALT_INV_Mux42~5_combout\,
	combout => Do(7));

-- Location: MLABCELL_X52_Y4_N36
\Mux54~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = ( !\IC1[0]~input_o\ & ( \D11[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_D11[6]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux54~2_combout\);

-- Location: LABCELL_X51_Y1_N45
\logicShift[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(7) = ( \Mux26~0_combout\ & ( \Mux54~2_combout\ ) ) # ( !\Mux26~0_combout\ & ( logicShift(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux54~2_combout\,
	datad => ALT_INV_logicShift(7),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(7));

-- Location: LABCELL_X51_Y1_N18
\Mux61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = ( logicShift(7) & ( ((\D11[7]~input_o\ & ((!\IC1[1]~input_o\) # (\D12[7]~input_o\)))) # (\IC1[3]~input_o\) ) ) # ( !logicShift(7) & ( (!\IC1[3]~input_o\ & (\D11[7]~input_o\ & ((!\IC1[1]~input_o\) # (\D12[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010000010000000101001011101010111110101110101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D12[7]~input_o\,
	dataf => ALT_INV_logicShift(7),
	combout => \Mux61~0_combout\);

-- Location: LABCELL_X51_Y1_N12
\Mux61~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = ( !\IC1[4]~input_o\ & ( (\Mux1~0_combout\ & ((!\Mux55~0_combout\ & ((!\IC1[2]~input_o\ & ((\Mux61~0_combout\))) # (\IC1[2]~input_o\ & (Do(7))))) # (\Mux55~0_combout\ & (Do(7))))) ) ) # ( \IC1[4]~input_o\ & ( (Do(7) & (\Mux1~0_combout\ 
-- & (\Mux39~0_combout\ & (!\IC1[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100010001000000010000000000110001000100010000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Do(7),
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_Mux39~0_combout\,
	datad => \ALT_INV_IC1[2]~input_o\,
	datae => \ALT_INV_IC1[4]~input_o\,
	dataf => \ALT_INV_Mux61~0_combout\,
	datag => \ALT_INV_Mux55~0_combout\,
	combout => \Mux61~1_combout\);

-- Location: LABCELL_X51_Y1_N27
\Do1[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[7]$latch~combout\ = ( \Mux61~1_combout\ & ( (\Do1[7]$latch~combout\) # (\Mux62~0_combout\) ) ) # ( !\Mux61~1_combout\ & ( (!\Mux62~0_combout\ & \Do1[7]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux62~0_combout\,
	datad => \ALT_INV_Do1[7]$latch~combout\,
	dataf => \ALT_INV_Mux61~1_combout\,
	combout => \Do1[7]$latch~combout\);

-- Location: IOIBUF_X64_Y0_N35
\FI[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(0),
	o => \FI[0]~input_o\);

-- Location: LABCELL_X53_Y2_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = ( \Add0~0_combout\ & ( (\Mux1~0_combout\ & \IC1[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_IC1[1]~input_o\,
	dataf => \ALT_INV_Add0~0_combout\,
	combout => \Add0~37_combout\);

-- Location: LABCELL_X53_Y2_N57
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_sumout\ = SUM(( (!\D12[7]~input_o\ & \Add0~38_combout\) ) + ( (\D11[7]~input_o\ & (!\IC1[0]~input_o\ & \Add0~37_combout\)) ) + ( \Add0~35\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010111100000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datab => \ALT_INV_D12[7]~input_o\,
	datac => \ALT_INV_IC1[0]~input_o\,
	datad => \ALT_INV_Add0~38_combout\,
	dataf => \ALT_INV_Add0~37_combout\,
	cin => \Add0~35\,
	sumout => \Add0~2_sumout\);

-- Location: LABCELL_X53_Y2_N0
\intermed[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(8) = ( \Mux44~0_combout\ & ( \Add0~2_sumout\ ) ) # ( !\Mux44~0_combout\ & ( \Add0~2_sumout\ & ( intermed(8) ) ) ) # ( !\Mux44~0_combout\ & ( !\Add0~2_sumout\ & ( intermed(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_intermed(8),
	datae => \ALT_INV_Mux44~0_combout\,
	dataf => \ALT_INV_Add0~2_sumout\,
	combout => intermed(8));

-- Location: LABCELL_X53_Y2_N21
\Mux63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = ( intermed(8) & ( (\Add0~0_combout\ & ((!\IC1[0]~input_o\ & ((\FI[0]~input_o\) # (\IC1[1]~input_o\))) # (\IC1[0]~input_o\ & (!\IC1[1]~input_o\)))) ) ) # ( !intermed(8) & ( (!\IC1[0]~input_o\ & (!\IC1[1]~input_o\ & (\Add0~0_combout\ & 
-- \FI[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000110000011100000011000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_FI[0]~input_o\,
	dataf => ALT_INV_intermed(8),
	combout => \Mux63~0_combout\);

-- Location: LABCELL_X53_Y2_N12
\Fo[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[0]$latch~combout\ = ( \Mux63~0_combout\ & ( (\Mux62~0_combout\) # (\Fo[0]$latch~combout\) ) ) # ( !\Mux63~0_combout\ & ( (\Fo[0]$latch~combout\ & !\Mux62~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Fo[0]$latch~combout\,
	datad => \ALT_INV_Mux62~0_combout\,
	dataf => \ALT_INV_Mux63~0_combout\,
	combout => \Fo[0]$latch~combout\);

-- Location: IOIBUF_X62_Y0_N35
\FI[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(1),
	o => \FI[1]~input_o\);

-- Location: MLABCELL_X52_Y1_N51
\Mux64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[1]~input_o\ & (\FI[1]~input_o\ & \Add0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_FI[1]~input_o\,
	datad => \ALT_INV_Add0~0_combout\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux64~0_combout\);

-- Location: MLABCELL_X52_Y1_N36
\Fo[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[1]$latch~combout\ = ( \Mux64~0_combout\ & ( (\Fo[1]$latch~combout\) # (\Mux62~0_combout\) ) ) # ( !\Mux64~0_combout\ & ( (!\Mux62~0_combout\ & \Fo[1]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux62~0_combout\,
	datad => \ALT_INV_Fo[1]$latch~combout\,
	dataf => \ALT_INV_Mux64~0_combout\,
	combout => \Fo[1]$latch~combout\);

-- Location: IOIBUF_X40_Y0_N1
\FI[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(2),
	o => \FI[2]~input_o\);

-- Location: MLABCELL_X52_Y1_N39
\Mux65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = ( !\IC1[1]~input_o\ & ( (\Add0~0_combout\ & (!\IC1[0]~input_o\ & \FI[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~0_combout\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datad => \ALT_INV_FI[2]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux65~0_combout\);

-- Location: MLABCELL_X52_Y1_N30
\Fo[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[2]$latch~combout\ = ( \Mux65~0_combout\ & ( (\Mux62~0_combout\) # (\Fo[2]$latch~combout\) ) ) # ( !\Mux65~0_combout\ & ( (\Fo[2]$latch~combout\ & !\Mux62~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Fo[2]$latch~combout\,
	datac => \ALT_INV_Mux62~0_combout\,
	dataf => \ALT_INV_Mux65~0_combout\,
	combout => \Fo[2]$latch~combout\);

-- Location: IOIBUF_X34_Y0_N41
\FI[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(3),
	o => \FI[3]~input_o\);

-- Location: MLABCELL_X52_Y1_N33
\Mux66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = ( !\IC1[1]~input_o\ & ( (!\IC1[0]~input_o\ & (\FI[3]~input_o\ & \Add0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_FI[3]~input_o\,
	datad => \ALT_INV_Add0~0_combout\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux66~0_combout\);

-- Location: MLABCELL_X52_Y1_N27
\Fo[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[3]$latch~combout\ = ( \Mux66~0_combout\ & ( (\Fo[3]$latch~combout\) # (\Mux62~0_combout\) ) ) # ( !\Mux66~0_combout\ & ( (!\Mux62~0_combout\ & \Fo[3]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux62~0_combout\,
	datad => \ALT_INV_Fo[3]$latch~combout\,
	dataf => \ALT_INV_Mux66~0_combout\,
	combout => \Fo[3]$latch~combout\);

-- Location: IOIBUF_X60_Y0_N35
\FI[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(4),
	o => \FI[4]~input_o\);

-- Location: LABCELL_X51_Y1_N0
\Mux67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = ( Do(7) & ( (!\D11[7]~input_o\ & !\D12[7]~input_o\) ) ) # ( !Do(7) & ( (\D11[7]~input_o\ & \D12[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D12[7]~input_o\,
	dataf => ALT_INV_Do(7),
	combout => \Mux67~0_combout\);

-- Location: LABCELL_X51_Y1_N51
\Mux67~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = ( \Mux67~0_combout\ & ( (\Add0~0_combout\ & ((!\IC1[0]~input_o\ & ((\FI[4]~input_o\) # (\IC1[1]~input_o\))) # (\IC1[0]~input_o\ & (!\IC1[1]~input_o\)))) ) ) # ( !\Mux67~0_combout\ & ( (!\IC1[0]~input_o\ & (!\IC1[1]~input_o\ & 
-- (\Add0~0_combout\ & \FI[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000110000011100000011000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_FI[4]~input_o\,
	dataf => \ALT_INV_Mux67~0_combout\,
	combout => \Mux67~1_combout\);

-- Location: LABCELL_X51_Y1_N42
\Fo[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[4]$latch~combout\ = ( \Mux67~1_combout\ & ( (\Mux62~0_combout\) # (\Fo[4]$latch~combout\) ) ) # ( !\Mux67~1_combout\ & ( (\Fo[4]$latch~combout\ & !\Mux62~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Fo[4]$latch~combout\,
	datad => \ALT_INV_Mux62~0_combout\,
	dataf => \ALT_INV_Mux67~1_combout\,
	combout => \Fo[4]$latch~combout\);

-- Location: LABCELL_X51_Y3_N18
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !Do(1) & ( (!Do(0) & (!Do(3) & !Do(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Do(0),
	datac => ALT_INV_Do(3),
	datad => ALT_INV_Do(2),
	dataf => ALT_INV_Do(1),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X51_Y3_N0
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !Do(6) & ( (\Equal1~0_combout\ & (!Do(5) & (!Do(7) & !Do(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => ALT_INV_Do(5),
	datac => ALT_INV_Do(7),
	datad => ALT_INV_Do(4),
	dataf => ALT_INV_Do(6),
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X38_Y0_N52
\FI[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(5),
	o => \FI[5]~input_o\);

-- Location: LABCELL_X51_Y3_N6
\Mux68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = ( !\IC1[2]~input_o\ & ( \IC1[4]~input_o\ & ( (\Equal1~1_combout\ & (\Mux39~0_combout\ & !\IC1[1]~input_o\)) ) ) ) # ( \IC1[2]~input_o\ & ( !\IC1[4]~input_o\ & ( \Equal1~1_combout\ ) ) ) # ( !\IC1[2]~input_o\ & ( !\IC1[4]~input_o\ & ( 
-- (!\Mux39~0_combout\ & (\Equal1~1_combout\)) # (\Mux39~0_combout\ & ((!\IC1[1]~input_o\ & ((\FI[5]~input_o\))) # (\IC1[1]~input_o\ & (\Equal1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010101010101010101010100000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_FI[5]~input_o\,
	datac => \ALT_INV_Mux39~0_combout\,
	datad => \ALT_INV_IC1[1]~input_o\,
	datae => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_IC1[4]~input_o\,
	combout => \Mux68~0_combout\);

-- Location: LABCELL_X51_Y3_N21
\Fo[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[5]$latch~combout\ = ( \Mux68~0_combout\ & ( (\Fo[5]$latch~combout\) # (\Mux62~0_combout\) ) ) # ( !\Mux68~0_combout\ & ( (!\Mux62~0_combout\ & \Fo[5]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux62~0_combout\,
	datad => \ALT_INV_Fo[5]$latch~combout\,
	dataf => \ALT_INV_Mux68~0_combout\,
	combout => \Fo[5]$latch~combout\);

-- Location: LABCELL_X53_Y1_N39
\SBuff[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(15) = ( SBuff(15) & ( (!\Mux1~3_combout\) # (\Mult0~23\) ) ) # ( !SBuff(15) & ( (\Mux1~3_combout\ & \Mult0~23\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~3_combout\,
	datad => \ALT_INV_Mult0~23\,
	dataf => ALT_INV_SBuff(15),
	combout => SBuff(15));

-- Location: LABCELL_X53_Y1_N3
\mul[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(7) = ( SBuff(15) & ( (\Mux1~3_combout\) # (mul(7)) ) ) # ( !SBuff(15) & ( (mul(7) & !\Mux1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_mul(7),
	datad => \ALT_INV_Mux1~3_combout\,
	dataf => ALT_INV_SBuff(15),
	combout => mul(7));

-- Location: LABCELL_X53_Y1_N21
\SBuff[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(14) = (!\Mux1~3_combout\ & ((SBuff(14)))) # (\Mux1~3_combout\ & (\Mult0~22\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux1~3_combout\,
	datac => \ALT_INV_Mult0~22\,
	datad => ALT_INV_SBuff(14),
	combout => SBuff(14));

-- Location: LABCELL_X53_Y1_N30
\mul[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(6) = ( SBuff(14) & ( (\Mux1~3_combout\) # (mul(6)) ) ) # ( !SBuff(14) & ( (mul(6) & !\Mux1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mul(6),
	datad => \ALT_INV_Mux1~3_combout\,
	dataf => ALT_INV_SBuff(14),
	combout => mul(6));

-- Location: LABCELL_X53_Y1_N6
\SBuff[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(10) = ( SBuff(10) & ( (!\Mux1~3_combout\) # (\Mult0~18\) ) ) # ( !SBuff(10) & ( (\Mux1~3_combout\ & \Mult0~18\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux1~3_combout\,
	datac => \ALT_INV_Mult0~18\,
	dataf => ALT_INV_SBuff(10),
	combout => SBuff(10));

-- Location: LABCELL_X53_Y1_N9
\mul[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(2) = ( SBuff(10) & ( (\Mux1~3_combout\) # (mul(2)) ) ) # ( !SBuff(10) & ( (mul(2) & !\Mux1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_mul(2),
	datad => \ALT_INV_Mux1~3_combout\,
	dataf => ALT_INV_SBuff(10),
	combout => mul(2));

-- Location: LABCELL_X53_Y1_N54
\SBuff[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(9) = (!\Mux1~3_combout\ & (SBuff(9))) # (\Mux1~3_combout\ & ((\Mult0~17\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux1~3_combout\,
	datac => ALT_INV_SBuff(9),
	datad => \ALT_INV_Mult0~17\,
	combout => SBuff(9));

-- Location: LABCELL_X53_Y1_N57
\mul[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(1) = ( SBuff(9) & ( (mul(1)) # (\Mux1~3_combout\) ) ) # ( !SBuff(9) & ( (!\Mux1~3_combout\ & mul(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~3_combout\,
	datad => ALT_INV_mul(1),
	dataf => ALT_INV_SBuff(9),
	combout => mul(1));

-- Location: LABCELL_X53_Y1_N24
\SBuff[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(8) = ( SBuff(8) & ( (!\Mux1~3_combout\) # (\Mult0~16\) ) ) # ( !SBuff(8) & ( (\Mux1~3_combout\ & \Mult0~16\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux1~3_combout\,
	datac => \ALT_INV_Mult0~16\,
	dataf => ALT_INV_SBuff(8),
	combout => SBuff(8));

-- Location: LABCELL_X53_Y1_N27
\mul[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(0) = ( SBuff(8) & ( (\Mux1~3_combout\) # (mul(0)) ) ) # ( !SBuff(8) & ( (mul(0) & !\Mux1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_mul(0),
	datad => \ALT_INV_Mux1~3_combout\,
	dataf => ALT_INV_SBuff(8),
	combout => mul(0));

-- Location: LABCELL_X53_Y1_N42
\SBuff[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(11) = ( SBuff(11) & ( (!\Mux1~3_combout\) # (\Mult0~19\) ) ) # ( !SBuff(11) & ( (\Mux1~3_combout\ & \Mult0~19\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux1~3_combout\,
	datad => \ALT_INV_Mult0~19\,
	dataf => ALT_INV_SBuff(11),
	combout => SBuff(11));

-- Location: LABCELL_X53_Y1_N45
\mul[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(3) = ( SBuff(11) & ( (mul(3)) # (\Mux1~3_combout\) ) ) # ( !SBuff(11) & ( (!\Mux1~3_combout\ & mul(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~3_combout\,
	datad => ALT_INV_mul(3),
	dataf => ALT_INV_SBuff(11),
	combout => mul(3));

-- Location: LABCELL_X53_Y1_N48
\SBuff[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(12) = ( SBuff(12) & ( (!\Mux1~3_combout\) # (\Mult0~20\) ) ) # ( !SBuff(12) & ( (\Mux1~3_combout\ & \Mult0~20\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux1~3_combout\,
	datac => \ALT_INV_Mult0~20\,
	dataf => ALT_INV_SBuff(12),
	combout => SBuff(12));

-- Location: LABCELL_X53_Y1_N51
\mul[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(4) = ( SBuff(12) & ( (\Mux1~3_combout\) # (mul(4)) ) ) # ( !SBuff(12) & ( (mul(4) & !\Mux1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_mul(4),
	datad => \ALT_INV_Mux1~3_combout\,
	dataf => ALT_INV_SBuff(12),
	combout => mul(4));

-- Location: LABCELL_X53_Y1_N36
\Mux69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = ( !mul(4) & ( (!mul(2) & (!mul(1) & (!mul(0) & !mul(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_mul(2),
	datab => ALT_INV_mul(1),
	datac => ALT_INV_mul(0),
	datad => ALT_INV_mul(3),
	dataf => ALT_INV_mul(4),
	combout => \Mux69~0_combout\);

-- Location: LABCELL_X53_Y2_N9
\SBuff[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(13) = ( SBuff(13) & ( (!\Mux1~3_combout\) # (\Mult0~21\) ) ) # ( !SBuff(13) & ( (\Mux1~3_combout\ & \Mult0~21\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~3_combout\,
	datad => \ALT_INV_Mult0~21\,
	dataf => ALT_INV_SBuff(13),
	combout => SBuff(13));

-- Location: LABCELL_X53_Y2_N6
\mul[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(5) = ( SBuff(13) & ( (\Mux1~3_combout\) # (mul(5)) ) ) # ( !SBuff(13) & ( (mul(5) & !\Mux1~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_mul(5),
	datac => \ALT_INV_Mux1~3_combout\,
	dataf => ALT_INV_SBuff(13),
	combout => mul(5));

-- Location: LABCELL_X53_Y1_N0
\Mux69~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~1_combout\ = ( mul(5) & ( \Mux1~1_combout\ ) ) # ( !mul(5) & ( (\Mux1~1_combout\ & (((!\Mux69~0_combout\) # (mul(6))) # (mul(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010011001100110001001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_mul(7),
	datab => \ALT_INV_Mux1~1_combout\,
	datac => ALT_INV_mul(6),
	datad => \ALT_INV_Mux69~0_combout\,
	dataf => ALT_INV_mul(5),
	combout => \Mux69~1_combout\);

-- Location: IOIBUF_X58_Y0_N41
\FI[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(6),
	o => \FI[6]~input_o\);

-- Location: LABCELL_X51_Y1_N21
\Mux53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = ( !\IC1[1]~input_o\ & ( (\IC1[0]~input_o\ & \Add0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IC1[0]~input_o\,
	datad => \ALT_INV_Add0~0_combout\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux53~0_combout\);

-- Location: MLABCELL_X52_Y1_N42
add_sub : cyclonev_lcell_comb
-- Equation(s):
-- \add_sub~combout\ = ( \Mux53~0_combout\ & ( (\Mux44~0_combout\) # (\add_sub~combout\) ) ) # ( !\Mux53~0_combout\ & ( (\add_sub~combout\ & !\Mux44~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_Mux44~0_combout\,
	dataf => \ALT_INV_Mux53~0_combout\,
	combout => \add_sub~combout\);

-- Location: MLABCELL_X52_Y1_N0
\lpm_add_sub_component|auto_generated|add_sub_cella[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\ = CARRY(( VCC ) + ( \FI[6]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FI[6]~input_o\,
	cin => GND,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\);

-- Location: MLABCELL_X52_Y1_N3
\lpm_add_sub_component|auto_generated|add_sub_cella[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\ = CARRY(( \D11[0]~input_o\ ) + ( !\add_sub~combout\ $ (\D12[0]~input_o\) ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_D11[0]~input_o\,
	datac => \ALT_INV_add_sub~combout\,
	dataf => \ALT_INV_D12[0]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\);

-- Location: MLABCELL_X52_Y1_N6
\lpm_add_sub_component|auto_generated|add_sub_cella[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\ = CARRY(( !\add_sub~combout\ $ (\D12[1]~input_o\) ) + ( \D11[1]~input_o\ ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add_sub~combout\,
	datac => \ALT_INV_D12[1]~input_o\,
	dataf => \ALT_INV_D11[1]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\);

-- Location: MLABCELL_X52_Y1_N9
\lpm_add_sub_component|auto_generated|add_sub_cella[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\ = CARRY(( !\add_sub~combout\ $ (\D12[2]~input_o\) ) + ( \D11[2]~input_o\ ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[2]~input_o\,
	datac => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_D12[2]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\);

-- Location: MLABCELL_X52_Y1_N12
\lpm_add_sub_component|auto_generated|add_sub_cella[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\ = CARRY(( !\add_sub~combout\ $ (\D12[3]~input_o\) ) + ( \D11[3]~input_o\ ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_D12[3]~input_o\,
	dataf => \ALT_INV_D11[3]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\);

-- Location: MLABCELL_X52_Y1_N15
\lpm_add_sub_component|auto_generated|add_sub_cella[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\ = CARRY(( \D11[4]~input_o\ ) + ( !\D12[4]~input_o\ $ (\add_sub~combout\) ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[4]~input_o\,
	datac => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_D11[4]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\);

-- Location: MLABCELL_X52_Y1_N18
\lpm_add_sub_component|auto_generated|add_sub_cella[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|cout\ = CARRY(( \D11[5]~input_o\ ) + ( !\D12[5]~input_o\ $ (\add_sub~combout\) ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[5]~input_o\,
	datab => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_D11[5]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\,
	cout => \lpm_add_sub_component|auto_generated|cout\);

-- Location: MLABCELL_X52_Y1_N21
\lpm_add_sub_component|auto_generated|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|cout~1_sumout\ = SUM(( GND ) + ( GND ) + ( \lpm_add_sub_component|auto_generated|cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \lpm_add_sub_component|auto_generated|cout\,
	sumout => \lpm_add_sub_component|auto_generated|cout~1_sumout\);

-- Location: LABCELL_X53_Y1_N33
\Mux69~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~2_combout\ = (!\IC1[1]~input_o\ & ((!\IC1[0]~input_o\ & (\FI[6]~input_o\)) # (\IC1[0]~input_o\ & ((\lpm_add_sub_component|auto_generated|cout~1_sumout\))))) # (\IC1[1]~input_o\ & (((!\IC1[0]~input_o\ & 
-- \lpm_add_sub_component|auto_generated|cout~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001111100010000000111110001000000011111000100000001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FI[6]~input_o\,
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_IC1[0]~input_o\,
	datad => \lpm_add_sub_component|auto_generated|ALT_INV_cout~1_sumout\,
	combout => \Mux69~2_combout\);

-- Location: LABCELL_X53_Y1_N12
\Mux69~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~3_combout\ = ( \Mux69~2_combout\ & ( (!\IC1[4]~input_o\ & (((!\IC1[3]~input_o\ & !\IC1[2]~input_o\)) # (\Mux69~1_combout\))) ) ) # ( !\Mux69~2_combout\ & ( (\Mux69~1_combout\ & !\IC1[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011010101000000001101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux69~1_combout\,
	datab => \ALT_INV_IC1[3]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	datad => \ALT_INV_IC1[4]~input_o\,
	dataf => \ALT_INV_Mux69~2_combout\,
	combout => \Mux69~3_combout\);

-- Location: MLABCELL_X52_Y1_N45
\Mux70~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = ( \IC1[1]~input_o\ & ( ((!\Mux1~0_combout\) # ((\IC1[2]~input_o\ & \IC1[3]~input_o\))) # (\IC1[4]~input_o\) ) ) # ( !\IC1[1]~input_o\ & ( (!\Mux1~0_combout\) # (\IC1[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111001101111111111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[2]~input_o\,
	datab => \ALT_INV_IC1[4]~input_o\,
	datac => \ALT_INV_IC1[3]~input_o\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	combout => \Mux70~0_combout\);

-- Location: LABCELL_X53_Y1_N15
\Fo[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[6]$latch~combout\ = ( \Mux70~0_combout\ & ( \Fo[6]$latch~combout\ ) ) # ( !\Mux70~0_combout\ & ( \Mux69~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux69~3_combout\,
	datad => \ALT_INV_Fo[6]$latch~combout\,
	dataf => \ALT_INV_Mux70~0_combout\,
	combout => \Fo[6]$latch~combout\);

-- Location: IOIBUF_X40_Y0_N18
\FI[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(7),
	o => \FI[7]~input_o\);

-- Location: LABCELL_X51_Y1_N54
\Mux71~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = ( Do(7) & ( \Mux34~0_combout\ & ( (\Mux1~0_combout\ & (((\IC1[4]~input_o\) # (\FI[7]~input_o\)) # (\IC1[1]~input_o\))) ) ) ) # ( !Do(7) & ( \Mux34~0_combout\ & ( (\Mux1~0_combout\ & (!\IC1[1]~input_o\ & (\FI[7]~input_o\ & 
-- !\IC1[4]~input_o\))) ) ) ) # ( Do(7) & ( !\Mux34~0_combout\ & ( (\Mux1~0_combout\ & !\IC1[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000100000000000001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_FI[7]~input_o\,
	datad => \ALT_INV_IC1[4]~input_o\,
	datae => ALT_INV_Do(7),
	dataf => \ALT_INV_Mux34~0_combout\,
	combout => \Mux71~0_combout\);

-- Location: LABCELL_X51_Y1_N3
\Fo[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[7]$latch~combout\ = ( \Mux71~0_combout\ & ( (\Fo[7]$latch~combout\) # (\Mux62~0_combout\) ) ) # ( !\Mux71~0_combout\ & ( (!\Mux62~0_combout\ & \Fo[7]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux62~0_combout\,
	datad => \ALT_INV_Fo[7]$latch~combout\,
	dataf => \ALT_INV_Mux71~0_combout\,
	combout => \Fo[7]$latch~combout\);

-- Location: MLABCELL_X87_Y60_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


