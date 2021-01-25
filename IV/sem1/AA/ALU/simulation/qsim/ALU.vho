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

-- DATE "10/06/2020 22:19:24"

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
	Do1 : OUT std_logic_vector(7 DOWNTO 0);
	Fo : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

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
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \Do1[0]~output_o\ : std_logic;
SIGNAL \Do1[1]~output_o\ : std_logic;
SIGNAL \Do1[2]~output_o\ : std_logic;
SIGNAL \Do1[3]~output_o\ : std_logic;
SIGNAL \Do1[4]~output_o\ : std_logic;
SIGNAL \Do1[5]~output_o\ : std_logic;
SIGNAL \Do1[6]~output_o\ : std_logic;
SIGNAL \Do1[7]~output_o\ : std_logic;
SIGNAL \Fo[0]~output_o\ : std_logic;
SIGNAL \Fo[1]~output_o\ : std_logic;
SIGNAL \Fo[2]~output_o\ : std_logic;
SIGNAL \Fo[3]~output_o\ : std_logic;
SIGNAL \Fo[4]~output_o\ : std_logic;
SIGNAL \Fo[5]~output_o\ : std_logic;
SIGNAL \Fo[6]~output_o\ : std_logic;
SIGNAL \Fo[7]~output_o\ : std_logic;
SIGNAL \D12[0]~input_o\ : std_logic;
SIGNAL \IC1[1]~input_o\ : std_logic;
SIGNAL \IC1[3]~input_o\ : std_logic;
SIGNAL \IC1[0]~input_o\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \IC1[4]~input_o\ : std_logic;
SIGNAL \IC1[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \D11[1]~input_o\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \IC1[5]~input_o\ : std_logic;
SIGNAL \IC1[6]~input_o\ : std_logic;
SIGNAL \IC1[7]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \D11[7]~input_o\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \D11[0]~input_o\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~41_cout\ : std_logic;
SIGNAL \Add0~10_sumout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
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
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ : std_logic;
SIGNAL \D11[6]~input_o\ : std_logic;
SIGNAL \D11[5]~input_o\ : std_logic;
SIGNAL \D11[4]~input_o\ : std_logic;
SIGNAL \D11[3]~input_o\ : std_logic;
SIGNAL \D11[2]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
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
SIGNAL \Div0|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
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
SIGNAL \Div0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
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
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Do1[0]$latch~combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~6_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5_sumout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Mux36~5_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Do1[1]$latch~combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~14_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~9_sumout\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Do1[2]$latch~combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~18_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~13_sumout\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Do1[3]$latch~combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~17_sumout\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Mux39~8_combout\ : std_logic;
SIGNAL \Mux39~5_combout\ : std_logic;
SIGNAL \Mux39~6_combout\ : std_logic;
SIGNAL \Mux39~7_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Do1[4]$latch~combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~21_sumout\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Do1[5]$latch~combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~25_sumout\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Do1[6]$latch~combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~29_sumout\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~34_sumout\ : std_logic;
SIGNAL \Mux42~9_combout\ : std_logic;
SIGNAL \Mux42~5_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Do1[7]$latch~combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~2_sumout\ : std_logic;
SIGNAL \FI[0]~input_o\ : std_logic;
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
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \ALT_INV_Add0~10_sumout\ : std_logic;
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
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_sel\ : std_logic_vector(45 DOWNTO 18);
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux39~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_selnose\ : std_logic_vector(54 DOWNTO 0);
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
SIGNAL \ALT_INV_add_sub~combout\ : std_logic;
SIGNAL ALT_INV_SBuff : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_intermed : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_mul : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \ALT_INV_Mux54~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux40~0_combout\ : std_logic;
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

\Mult0~8_AX_bus\ <= (\D11[7]~input_o\ & \D11[6]~input_o\ & \D11[5]~input_o\ & \D11[4]~input_o\ & \D11[3]~input_o\ & \D11[2]~input_o\ & \D11[1]~input_o\ & \D11[0]~input_o\);

\Mult0~8_AY_bus\ <= (\D12[7]~input_o\ & \D12[6]~input_o\ & \D12[5]~input_o\ & \D12[4]~input_o\ & \D12[3]~input_o\ & \D12[2]~input_o\ & \D12[1]~input_o\ & \D12[0]~input_o\);

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
\ALT_INV_Mult0~8_resulta\ <= NOT \Mult0~8_resulta\;
\ALT_INV_Add0~10_sumout\ <= NOT \Add0~10_sumout\;
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
ALT_INV_SBuff(0) <= NOT SBuff(0);
ALT_INV_intermed(0) <= NOT intermed(0);
ALT_INV_mul(4) <= NOT mul(4);
ALT_INV_mul(3) <= NOT mul(3);
ALT_INV_mul(2) <= NOT mul(2);
ALT_INV_mul(1) <= NOT mul(1);
ALT_INV_mul(0) <= NOT mul(0);
ALT_INV_mul(7) <= NOT mul(7);
ALT_INV_mul(6) <= NOT mul(6);
ALT_INV_mul(5) <= NOT mul(5);
ALT_INV_intermed(1) <= NOT intermed(1);
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
	o => \Do1[0]~output_o\);

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
	o => \Do1[1]~output_o\);

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
	o => \Do1[2]~output_o\);

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
	o => \Do1[3]~output_o\);

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
	o => \Do1[4]~output_o\);

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
	o => \Do1[5]~output_o\);

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
	o => \Do1[6]~output_o\);

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
	o => \Do1[7]~output_o\);

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
	o => \Fo[0]~output_o\);

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
	o => \Fo[1]~output_o\);

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
	o => \Fo[2]~output_o\);

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
	o => \Fo[3]~output_o\);

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
	o => \Fo[4]~output_o\);

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
	o => \Fo[5]~output_o\);

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
	o => \Fo[6]~output_o\);

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
	o => \Fo[7]~output_o\);

\D12[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(0),
	o => \D12[0]~input_o\);

\IC1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(1),
	o => \IC1[1]~input_o\);

\IC1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(3),
	o => \IC1[3]~input_o\);

\IC1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(0),
	o => \IC1[0]~input_o\);

\Mux55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = !\IC1[1]~input_o\ $ (((!\IC1[0]~input_o\) # (\IC1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001010110010101100101011001010110010101100101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[3]~input_o\,
	datac => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux55~0_combout\);

\IC1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(4),
	o => \IC1[4]~input_o\);

\IC1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(2),
	o => \IC1[2]~input_o\);

\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (!\IC1[3]~input_o\ & (!\IC1[4]~input_o\ & !\IC1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_IC1[4]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	combout => \Add0~0_combout\);

\Mux55~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (!\Mux55~0_combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux55~0_combout\,
	datab => \ALT_INV_Add0~0_combout\,
	combout => \Mux55~1_combout\);

\Mux55~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = ( !\IC1[2]~input_o\ & ( (!\IC1[4]~input_o\ & ((!\IC1[1]~input_o\ & (\IC1[3]~input_o\)) # (\IC1[1]~input_o\ & (!\IC1[3]~input_o\ & \IC1[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000000000000000000000000000100110000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[3]~input_o\,
	datac => \ALT_INV_IC1[0]~input_o\,
	datad => \ALT_INV_IC1[4]~input_o\,
	datae => \ALT_INV_IC1[2]~input_o\,
	combout => \Mux55~2_combout\);

\D11[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(1),
	o => \D11[1]~input_o\);

\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\IC1[0]~input_o\ & \D11[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[1]~input_o\,
	combout => \Mux25~0_combout\);

\IC1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(5),
	o => \IC1[5]~input_o\);

\IC1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(6),
	o => \IC1[6]~input_o\);

\IC1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC1(7),
	o => \IC1[7]~input_o\);

\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\IC1[5]~input_o\ & (!\IC1[6]~input_o\ & !\IC1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[5]~input_o\,
	datab => \ALT_INV_IC1[6]~input_o\,
	datac => \ALT_INV_IC1[7]~input_o\,
	combout => \Mux1~0_combout\);

\Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\IC1[4]~input_o\ & \Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[4]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	combout => \Mux1~2_combout\);

\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\IC1[1]~input_o\ & (\IC1[3]~input_o\ & (!\IC1[2]~input_o\ & \Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[3]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	datad => \ALT_INV_Mux1~2_combout\,
	combout => \Mux26~0_combout\);

\logicShift[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(0) = ( logicShift(0) & ( \Mux26~0_combout\ & ( \Mux25~0_combout\ ) ) ) # ( !logicShift(0) & ( \Mux26~0_combout\ & ( \Mux25~0_combout\ ) ) ) # ( logicShift(0) & ( !\Mux26~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux25~0_combout\,
	datae => ALT_INV_logicShift(0),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(0));

\D11[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(7),
	o => \D11[7]~input_o\);

\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (!\IC1[3]~input_o\ & !\IC1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	combout => \Mux39~0_combout\);

\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (!\IC1[2]~input_o\ & \Mux39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[2]~input_o\,
	datab => \ALT_INV_Mux39~0_combout\,
	combout => \Mux34~0_combout\);

\D11[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(0),
	o => \D11[0]~input_o\);

\Add0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\IC1[1]~input_o\ & (!\IC1[0]~input_o\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	combout => \Add0~38_combout\);

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

\Add0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~10_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[0]~input_o\) ) + ( \D11[0]~input_o\ ) + ( \Add0~41_cout\ ))
-- \Add0~11\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[0]~input_o\) ) + ( \D11[0]~input_o\ ) + ( \Add0~41_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D12[0]~input_o\,
	dataf => \ALT_INV_D11[0]~input_o\,
	cin => \Add0~41_cout\,
	sumout => \Add0~10_sumout\,
	cout => \Add0~11\);

\Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \Mux1~0_combout\ & ( !\IC1[4]~input_o\ & ( (!\IC1[3]~input_o\ & (!\IC1[2]~input_o\ & (!\IC1[1]~input_o\ $ (!\IC1[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_IC1[2]~input_o\,
	datac => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_IC1[0]~input_o\,
	datae => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_IC1[4]~input_o\,
	combout => \Mux44~0_combout\);

\intermed[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(0) = ( intermed(0) & ( \Mux44~0_combout\ & ( \Add0~10_sumout\ ) ) ) # ( !intermed(0) & ( \Mux44~0_combout\ & ( \Add0~10_sumout\ ) ) ) # ( intermed(0) & ( !\Mux44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~10_sumout\,
	datae => ALT_INV_intermed(0),
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => intermed(0));

\Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \D11[1]~input_o\ & ( (!\IC1[1]~input_o\ & ((!\D12[0]~input_o\ & ((\D11[0]~input_o\))) # (\D12[0]~input_o\ & ((!\IC1[0]~input_o\) # (!\D11[0]~input_o\))))) # (\IC1[1]~input_o\ & (((\IC1[0]~input_o\)))) ) ) # ( !\D11[1]~input_o\ & ( 
-- (!\IC1[1]~input_o\ & ((!\D12[0]~input_o\ & ((\D11[0]~input_o\))) # (\D12[0]~input_o\ & ((!\IC1[0]~input_o\) # (!\D11[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001000010001111100101101000100110010000100011111001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[0]~input_o\,
	datab => \ALT_INV_IC1[1]~input_o\,
	datac => \ALT_INV_IC1[0]~input_o\,
	datad => \ALT_INV_D11[0]~input_o\,
	datae => \ALT_INV_D11[1]~input_o\,
	combout => \Mux25~1_combout\);

\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \D11[7]~input_o\ ) + ( !\D11[7]~input_o\ $ (!\D11[0]~input_o\) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( \D11[7]~input_o\ ) + ( !\D11[7]~input_o\ $ (!\D11[0]~input_o\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	dataf => \ALT_INV_D11[0]~input_o\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

\Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (!\IC1[0]~input_o\ & (((\Add2~1_sumout\)))) # (\IC1[0]~input_o\ & (!\D12[0]~input_o\ & (!\D11[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101100001000001110110000100000111011000010000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[0]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_D11[0]~input_o\,
	datad => \ALT_INV_Add2~1_sumout\,
	combout => \Mux25~2_combout\);

\D12[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(7),
	o => \D12[7]~input_o\);

\D12[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(6),
	o => \D12[6]~input_o\);

\D12[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(5),
	o => \D12[5]~input_o\);

\D12[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(4),
	o => \D12[4]~input_o\);

\D12[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(3),
	o => \D12[3]~input_o\);

\D12[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(2),
	o => \D12[2]~input_o\);

\D12[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D12(1),
	o => \D12[1]~input_o\);

\Div0|auto_generated|divider|my_abs_den|op_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[0]~input_o\) ) + ( \D12[7]~input_o\ ) + ( !VCC ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~30\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[0]~input_o\) ) + ( \D12[7]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datad => \ALT_INV_D12[0]~input_o\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~30\);

\Div0|auto_generated|divider|my_abs_den|op_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[1]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~30\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~26\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[1]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datad => \ALT_INV_D12[1]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~30\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~26\);

\Div0|auto_generated|divider|my_abs_den|op_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[2]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~26\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~22\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[2]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datad => \ALT_INV_D12[2]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~26\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~22\);

\Div0|auto_generated|divider|my_abs_den|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[3]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~22\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~18\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[3]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datad => \ALT_INV_D12[3]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~22\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~18\);

\Div0|auto_generated|divider|my_abs_den|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[4]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~18\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~14\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[4]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datad => \ALT_INV_D12[4]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~18\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~14\);

\Div0|auto_generated|divider|my_abs_den|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[5]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~14\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~10\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[5]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datad => \ALT_INV_D12[5]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~14\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~10\);

\Div0|auto_generated|divider|my_abs_den|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ = SUM(( !\D12[7]~input_o\ $ (!\D12[6]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~10\ ))
-- \Div0|auto_generated|divider|my_abs_den|op_1~6\ = CARRY(( !\D12[7]~input_o\ $ (!\D12[6]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_den|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[7]~input_o\,
	datad => \ALT_INV_D12[6]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_den|op_1~10\,
	sumout => \Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_den|op_1~6\);

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

\Div0|auto_generated|divider|divider|sel[45]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(45) = (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|sel\(45));

\Div0|auto_generated|divider|divider|sel[36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(36) = (\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\) # (\Div0|auto_generated|divider|divider|sel\(45))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|sel\(36));

\Div0|auto_generated|divider|divider|sel[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(18) = ( \Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) # ( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ & ( (((\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	datae => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|sel\(18));

\D11[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(6),
	o => \D11[6]~input_o\);

\D11[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(5),
	o => \D11[5]~input_o\);

\D11[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(4),
	o => \D11[4]~input_o\);

\D11[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(3),
	o => \D11[3]~input_o\);

\D11[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D11(2),
	o => \D11[2]~input_o\);

\Div0|auto_generated|divider|my_abs_num|op_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[0]~input_o\) ) + ( \D11[7]~input_o\ ) + ( !VCC ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~30\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[0]~input_o\) ) + ( \D11[7]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[0]~input_o\,
	cin => GND,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~30\);

\Div0|auto_generated|divider|my_abs_num|op_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[1]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~30\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~26\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[1]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[1]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~30\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~26\);

\Div0|auto_generated|divider|my_abs_num|op_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[2]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~26\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~22\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[2]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[2]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~26\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~22\);

\Div0|auto_generated|divider|my_abs_num|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[3]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~22\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~18\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[3]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[3]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~22\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~18\);

\Div0|auto_generated|divider|my_abs_num|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[4]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~18\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~14\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[4]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[4]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~18\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~14\);

\Div0|auto_generated|divider|my_abs_num|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[5]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~14\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~10\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[5]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[5]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~14\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~10\);

\Div0|auto_generated|divider|my_abs_num|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[6]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~10\ ))
-- \Div0|auto_generated|divider|my_abs_num|op_1~6\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[6]~input_o\) ) + ( GND ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[6]~input_o\,
	cin => \Div0|auto_generated|divider|my_abs_num|op_1~10\,
	sumout => \Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\,
	cout => \Div0|auto_generated|divider|my_abs_num|op_1~6\);

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

\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ $ (!\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ $ (!\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\ = SHARE((!\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\) # (\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~7\);

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

\Div0|auto_generated|divider|divider|selnose[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(0) = (((\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(18))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(0));

\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ $ (!\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ $ (!\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ = SHARE((!\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\) # (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\);

\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ $ (((!\Div0|auto_generated|divider|divider|selnose\(0) & 
-- (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(0) & ((\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\))))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ $ (((!\Div0|auto_generated|divider|divider|selnose\(0) & 
-- (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(0) & ((\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\))))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\ = SHARE((!\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ & ((!\Div0|auto_generated|divider|divider|selnose\(0) & 
-- (\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(0) & ((\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000111000000000000000000001011010010000111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~7\);

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

\Div0|auto_generated|divider|divider|selnose[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(9) = ((\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(9));

\Div0|auto_generated|divider|divider|StageOut[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\ = ( \Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ & ( \Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ & ( \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ ) ) ) # ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ & ( \Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ & ( \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ ) ) ) # ( \Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ & ( 
-- !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ & ( \Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\ ) ) ) # ( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ & ( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ & ( 
-- (!\Div0|auto_generated|divider|divider|sel\(18) & ((!\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_0_result_int[0]~5_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\ & (\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\)))) # (\Div0|auto_generated|divider|divider|sel\(18) & (\Div0|auto_generated|divider|my_abs_num|op_1~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[0]~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	datae => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[0]~3_combout\);

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

\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ $ (((!\Div0|auto_generated|divider|divider|selnose\(9) & 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\))))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ $ (((!\Div0|auto_generated|divider|divider|selnose\(9) & 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\))))) ) + ( 
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\ = SHARE((!\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ & ((!\Div0|auto_generated|divider|divider|selnose\(9) & 
-- (\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\)) # (\Div0|auto_generated|divider|divider|selnose\(9) & ((\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000111000000000000000000001011010010000111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~14\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~15\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\);

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
	lut_mask => "0000000000000000010000000111000000000000000000001011010010000111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~3_combout\,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~7\);

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

\Div0|auto_generated|divider|divider|selnose[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(18) = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\) # (\Div0|auto_generated|divider|divider|sel\(18))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(18));

\Div0|auto_generated|divider|divider|StageOut[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\ = (!\Div0|auto_generated|divider|divider|sel\(18) & (!\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ & (\Div0|auto_generated|divider|divider|add_sub_1_result_int[1]~5_sumout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[1]~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~2_combout\);

\Div0|auto_generated|divider|divider|StageOut[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\Div0|auto_generated|divider|divider|StageOut[0]~3_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[0]~3_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

\Div0|auto_generated|divider|divider|StageOut[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ & ( ((!\Div0|auto_generated|divider|divider|sel\(18) & (!\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\))) # (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\) ) ) # ( !\Div0|auto_generated|divider|divider|add_sub_1_result_int[0]~9_sumout\ & ( 
-- (\Div0|auto_generated|divider|my_abs_num|op_1~5_sumout\ & (((\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111100011110000111100000111000011111000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[0]~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~9_combout\);

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

\Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~18\);

\Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(18) & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18) & ((\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\))))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\)))) ) + ( \Div0|auto_generated|divider|divider|op_4~18\ ))
-- \Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(18) & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18) & ((\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\))))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\)))) ) + ( \Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~13_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~18\,
	sumout => \Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~14\);

\Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(18) & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18) & ((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\))))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))
-- \Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(18) & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18) & ((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\))))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~10\);

\Div0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|selnose\(18) & (((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\)))) 
-- # (\Div0|auto_generated|divider|divider|selnose\(18) & (((\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))
-- \Div0|auto_generated|divider|divider|op_4~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|selnose\(18) & (((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|selnose\(18) & (((\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~5_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~4_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \Div0|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~6\);

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

\Div0|auto_generated|divider|divider|sel[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(27) = (\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\) # (\Div0|auto_generated|divider|divider|sel\(36))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|sel\(27));

\Div0|auto_generated|divider|divider|StageOut[18]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ( ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\) # 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(18)) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & ( (!\Div0|auto_generated|divider|divider|sel\(18) & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_sumout\))) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(18) & (((\Div0|auto_generated|divider|divider|StageOut[9]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111011101111111111100000111100011110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[2]~5_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[9]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~5_combout\);

\Div0|auto_generated|divider|divider|StageOut[17]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\ = (!\Div0|auto_generated|divider|divider|sel\(18) & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~9_sumout\)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\))))) # 
-- (\Div0|auto_generated|divider|divider|sel\(18) & (((\Div0|auto_generated|divider|divider|StageOut[8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000010000111111100001000011111110000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[1]~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[8]~9_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~10_combout\);

\Div0|auto_generated|divider|divider|StageOut[16]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ = (!\Div0|auto_generated|divider|divider|sel\(18) & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~13_sumout\))) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\ & (\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|sel\(18) & (\Div0|auto_generated|divider|my_abs_num|op_1~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001110110011000100111011001100010011101100110001001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	datab => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~9_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[0]~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~14_combout\);

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

\Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~22\);

\Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\))))) # (\Div0|auto_generated|divider|divider|sel\(27) & 
-- (((\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))
-- \Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\))))) # (\Div0|auto_generated|divider|divider|sel\(27) & 
-- (((\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~18\);

\Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(27) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))
-- \Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_4~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(27) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~14\);

\Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))
-- \Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~10\);

\Div0|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\Div0|auto_generated|divider|divider|op_4~5_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))
-- \Div0|auto_generated|divider|divider|op_5~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\Div0|auto_generated|divider|divider|op_4~5_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \Div0|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~6\);

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

\Div0|auto_generated|divider|divider|selnose[36]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(36) = (\Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\Div0|auto_generated|divider|divider|sel\(36))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(36));

\Div0|auto_generated|divider|divider|StageOut[27]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\ = (!\Div0|auto_generated|divider|divider|sel\(27) & (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|op_4~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~1_combout\);

\Div0|auto_generated|divider|divider|StageOut[27]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[18]~5_combout\ & ((\Div0|auto_generated|divider|divider|op_4~1_sumout\) # (\Div0|auto_generated|divider|divider|sel\(27))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[18]~5_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\);

\Div0|auto_generated|divider|divider|StageOut[26]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\ = (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(27) & (((\Div0|auto_generated|divider|divider|StageOut[17]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~11_combout\);

\Div0|auto_generated|divider|divider|StageOut[25]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\ = (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~13_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(27) & (((\Div0|auto_generated|divider|divider|StageOut[16]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000010000111111100001000011111110000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~15_combout\);

\Div0|auto_generated|divider|divider|StageOut[24]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\ = (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~17_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\)))) # (\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|my_abs_num|op_1~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001110110011000100111011001100010011101100110001001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~13_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~18_combout\);

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

\Div0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~30_cout\ ))
-- \Div0|auto_generated|divider|divider|op_6~26\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~30_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~26\);

\Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(36) & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~21_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\))))) # (\Div0|auto_generated|divider|divider|sel\(36) & 
-- (((\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~26\ ))
-- \Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(36) & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~21_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\))))) # (\Div0|auto_generated|divider|divider|sel\(36) & 
-- (((\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~26\,
	sumout => \Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~22\);

\Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(36) & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(36) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))
-- \Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(36) & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(36) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~18\);

\Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))
-- \Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|op_5~13_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~14\);

\Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))
-- \Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~10\);

\Div0|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|selnose\(36) & (((\Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|selnose\(36) & (((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))
-- \Div0|auto_generated|divider|divider|op_6~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|selnose\(36) & (((\Div0|auto_generated|divider|divider|op_5~5_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|selnose\(36) & (((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(36),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~1_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~6_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \Div0|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~6\);

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

\Div0|auto_generated|divider|divider|StageOut[36]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ & ( ((\Div0|auto_generated|divider|divider|op_5~5_sumout\) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|sel\(36)) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ & ( (!\Div0|auto_generated|divider|divider|sel\(36) & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_5~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(36) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[27]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111011101111111111100000111100011110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[27]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~7_combout\);

\Div0|auto_generated|divider|divider|StageOut[35]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\ = (!\Div0|auto_generated|divider|divider|sel\(36) & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(36) & (((\Div0|auto_generated|divider|divider|StageOut[26]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[26]~11_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~12_combout\);

\Div0|auto_generated|divider|divider|StageOut[34]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\ = (!\Div0|auto_generated|divider|divider|sel\(36) & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~13_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(36) & (((\Div0|auto_generated|divider|divider|StageOut[25]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[25]~15_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~16_combout\);

\Div0|auto_generated|divider|divider|StageOut[33]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\ = (!\Div0|auto_generated|divider|divider|sel\(36) & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~17_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(36) & (((\Div0|auto_generated|divider|divider|StageOut[24]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000010000111111100001000011111110000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[24]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~19_combout\);

\Div0|auto_generated|divider|divider|StageOut[32]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\ = (!\Div0|auto_generated|divider|divider|sel\(36) & ((!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~21_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\)))) # (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|my_abs_num|op_1~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001110110011000100111011001100010011101100110001001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	datab => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~21_combout\);

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

\Div0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~34_cout\ ))
-- \Div0|auto_generated|divider|divider|op_7~30\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_7~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~34_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~30\);

\Div0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~25_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\))))) # (\Div0|auto_generated|divider|divider|sel\(45) & 
-- (((\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~30\ ))
-- \Div0|auto_generated|divider|divider|op_7~26\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~25_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\))))) # (\Div0|auto_generated|divider|divider|sel\(45) & 
-- (((\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~30\,
	sumout => \Div0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~26\);

\Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~21_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(45) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~26\ ))
-- \Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~21_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(45) & 
-- (((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~26\,
	sumout => \Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~22\);

\Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|op_6~17_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(45) & (\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~22\ ))
-- \Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|op_6~17_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(45) & (\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~18\);

\Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(45) & (\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~18\ ))
-- \Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(45) & (\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~14\);

\Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|op_6~9_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(45) & (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~14\ ))
-- \Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|op_6~9_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(45) & (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~10\);

\Div0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( !\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|op_6~5_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(45) & (\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~10\ ))
-- \Div0|auto_generated|divider|divider|op_7~6\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|op_6~5_sumout\))) # (\Div0|auto_generated|divider|divider|sel\(45) & (\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~7_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~10\,
	sumout => \Div0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~6\);

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

\Div0|auto_generated|divider|divider|selnose[54]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(54) = (\Div0|auto_generated|divider|divider|op_7~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(54));

\Div0|auto_generated|divider|divider|StageOut[45]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\ = (!\Div0|auto_generated|divider|divider|sel\(45) & (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Div0|auto_generated|divider|divider|op_6~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~0_combout\);

\Div0|auto_generated|divider|divider|StageOut[45]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~8_combout\ = (\Div0|auto_generated|divider|divider|StageOut[36]~7_combout\ & ((\Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\Div0|auto_generated|divider|divider|sel\(45))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[36]~7_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~8_combout\);

\Div0|auto_generated|divider|divider|StageOut[44]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\ = (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[35]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[35]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~13_combout\);

\Div0|auto_generated|divider|divider|StageOut[43]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ = (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[34]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[34]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\);

\Div0|auto_generated|divider|divider|StageOut[42]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~20_combout\ = (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[33]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[33]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~20_combout\);

\Div0|auto_generated|divider|divider|StageOut[41]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~22_combout\ = (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~21_sumout\)) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\))))) # (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[32]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001111111000010000111111100001000011111110000100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[32]~21_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~22_combout\);

\Div0|auto_generated|divider|divider|StageOut[40]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~23_combout\ = (!\Div0|auto_generated|divider|divider|sel\(45) & ((!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~25_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\)))) # (\Div0|auto_generated|divider|divider|sel\(45) & (\Div0|auto_generated|divider|my_abs_num|op_1~21_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001110110011000100111011001100010011101100110001001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~23_combout\);

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

\Div0|auto_generated|divider|divider|op_8~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~34_cout\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|my_abs_num|op_1~29_sumout\ ) + ( \Div0|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~29_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~29_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~38_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~34_cout\);

\Div0|auto_generated|divider|divider|op_8~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~30_cout\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\ ) + ( (!\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & ((!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~29_sumout\)) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\))))) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & 
-- (((\Div0|auto_generated|divider|my_abs_num|op_1~25_sumout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	dataf => \Div0|auto_generated|divider|my_abs_num|ALT_INV_op_1~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~34_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~30_cout\);

\Div0|auto_generated|divider|divider|op_8~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~26_cout\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\ ) + ( (!\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & ((!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~25_sumout\)) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[40]~23_combout\))))) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[40]~23_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[40]~23_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~30_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~26_cout\);

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

\Div0|auto_generated|divider|divider|op_8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~14_cout\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((!\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~13_sumout\))) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ & (\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[43]~17_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~14_cout\);

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

\Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( !\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\ ) + ( (!\Div0|auto_generated|divider|divider|selnose\(54) & (((\Div0|auto_generated|divider|divider|op_7~5_sumout\)))) # 
-- (\Div0|auto_generated|divider|divider|selnose\(54) & (((\Div0|auto_generated|divider|divider|StageOut[45]~8_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[45]~0_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_8~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	datad => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[45]~8_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_8~6_cout\);

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

\Div0|auto_generated|divider|quotient[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[0]~0_combout\ = (!\D11[7]~input_o\ & ((!\D12[7]~input_o\ & (!\Div0|auto_generated|divider|divider|op_8~1_sumout\)) # (\D12[7]~input_o\ & ((\Div0|auto_generated|divider|op_1~1_sumout\))))) # (\D11[7]~input_o\ & 
-- ((!\D12[7]~input_o\ & ((\Div0|auto_generated|divider|op_1~1_sumout\))) # (\D12[7]~input_o\ & (!\Div0|auto_generated|divider|divider|op_8~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000011110110100100001111011010010000111101101001000011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datab => \ALT_INV_D12[7]~input_o\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \Div0|auto_generated|divider|ALT_INV_op_1~1_sumout\,
	combout => \Div0|auto_generated|divider|quotient[0]~0_combout\);

\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
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
	resulta => \Mult0~8_RESULTA_bus\);

\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\IC1[1]~input_o\ & (\IC1[3]~input_o\ & (\IC1[0]~input_o\ & \IC1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[3]~input_o\,
	datac => \ALT_INV_IC1[0]~input_o\,
	datad => \ALT_INV_IC1[2]~input_o\,
	combout => \Mux1~1_combout\);

\Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~1_combout\ & \Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~1_combout\,
	datab => \ALT_INV_Mux1~2_combout\,
	combout => \Mux1~3_combout\);

\SBuff[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(0) = ( SBuff(0) & ( \Mux1~3_combout\ & ( \Mult0~8_resulta\ ) ) ) # ( !SBuff(0) & ( \Mux1~3_combout\ & ( \Mult0~8_resulta\ ) ) ) # ( SBuff(0) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~8_resulta\,
	datae => ALT_INV_SBuff(0),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(0));

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

\Mux34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = ( \IC1[2]~input_o\ & ( \IC1[3]~input_o\ & ( \Mux25~3_combout\ ) ) ) # ( !\IC1[2]~input_o\ & ( \IC1[3]~input_o\ & ( \Mux25~2_combout\ ) ) ) # ( \IC1[2]~input_o\ & ( !\IC1[3]~input_o\ & ( \Mux25~1_combout\ ) ) ) # ( !\IC1[2]~input_o\ & ( 
-- !\IC1[3]~input_o\ & ( intermed(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_intermed(0),
	datab => \ALT_INV_Mux25~1_combout\,
	datac => \ALT_INV_Mux25~2_combout\,
	datad => \ALT_INV_Mux25~3_combout\,
	datae => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_IC1[3]~input_o\,
	combout => \Mux34~1_combout\);

\Mux34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = ( !\IC1[4]~input_o\ & ( ((!\Mux1~0_combout\ & (((\D11[0]~input_o\)))) # (\Mux1~0_combout\ & (\Mux34~1_combout\))) ) ) # ( \IC1[4]~input_o\ & ( (!\Mux1~0_combout\ & ((((\D11[0]~input_o\))))) # (\Mux1~0_combout\ & ((!\IC1[1]~input_o\ & 
-- ((!\Mux34~0_combout\ & ((\D11[0]~input_o\))) # (\Mux34~0_combout\ & (\D11[7]~input_o\)))) # (\IC1[1]~input_o\ & (((\D11[0]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000000001000011001111110011111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_Mux34~0_combout\,
	datae => \ALT_INV_IC1[4]~input_o\,
	dataf => \ALT_INV_D11[0]~input_o\,
	datag => \ALT_INV_Mux34~1_combout\,
	combout => \Mux34~2_combout\);

\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \Mux1~0_combout\ & ( \IC1[4]~input_o\ ) ) # ( !\Mux1~0_combout\ & ( \IC1[4]~input_o\ ) ) # ( \Mux1~0_combout\ & ( !\IC1[4]~input_o\ & ( (!\IC1[1]~input_o\ $ (((!\IC1[0]~input_o\) # (\IC1[3]~input_o\)))) # (\IC1[2]~input_o\) ) ) ) # ( 
-- !\Mux1~0_combout\ & ( !\IC1[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001111111011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_IC1[2]~input_o\,
	datac => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_IC1[0]~input_o\,
	datae => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_IC1[4]~input_o\,
	combout => \Mux35~0_combout\);

\Do[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(0) = ( Do(0) & ( \Mux35~0_combout\ & ( \Mux34~2_combout\ ) ) ) # ( !Do(0) & ( \Mux35~0_combout\ & ( \Mux34~2_combout\ ) ) ) # ( Do(0) & ( !\Mux35~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux34~2_combout\,
	datae => ALT_INV_Do(0),
	dataf => \ALT_INV_Mux35~0_combout\,
	combout => Do(0));

\Mux54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = ( Do(0) & ( \D11[0]~input_o\ & ( (!\Mux55~2_combout\) # ((!\Mux55~1_combout\ & ((logicShift(0)))) # (\Mux55~1_combout\ & (\D12[0]~input_o\))) ) ) ) # ( !Do(0) & ( \D11[0]~input_o\ & ( (!\Mux55~1_combout\ & (((\Mux55~2_combout\ & 
-- logicShift(0))))) # (\Mux55~1_combout\ & (((!\Mux55~2_combout\)) # (\D12[0]~input_o\))) ) ) ) # ( Do(0) & ( !\D11[0]~input_o\ & ( (!\Mux55~1_combout\ & ((!\Mux55~2_combout\) # (logicShift(0)))) ) ) ) # ( !Do(0) & ( !\D11[0]~input_o\ & ( 
-- (!\Mux55~1_combout\ & (\Mux55~2_combout\ & logicShift(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110000001100110000110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[0]~input_o\,
	datab => \ALT_INV_Mux55~1_combout\,
	datac => \ALT_INV_Mux55~2_combout\,
	datad => ALT_INV_logicShift(0),
	datae => ALT_INV_Do(0),
	dataf => \ALT_INV_D11[0]~input_o\,
	combout => \Mux54~0_combout\);

\Mux62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\Mux1~0_combout\ & ((!\IC1[4]~input_o\) # ((!\IC1[1]~input_o\ & \Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001110000000001100111000000000110011100000000011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[4]~input_o\,
	datac => \ALT_INV_Mux34~0_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	combout => \Mux62~0_combout\);

\Do1[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[0]$latch~combout\ = ( \Do1[0]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux54~0_combout\ ) ) ) # ( !\Do1[0]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux54~0_combout\ ) ) ) # ( \Do1[0]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux54~0_combout\,
	datae => \ALT_INV_Do1[0]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Do1[0]$latch~combout\);

\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\IC1[0]~input_o\ & (\D11[0]~input_o\)) # (\IC1[0]~input_o\ & ((\D11[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[0]~input_o\,
	datac => \ALT_INV_D11[2]~input_o\,
	combout => \Mux27~0_combout\);

\logicShift[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(1) = ( logicShift(1) & ( \Mux26~0_combout\ & ( \Mux27~0_combout\ ) ) ) # ( !logicShift(1) & ( \Mux26~0_combout\ & ( \Mux27~0_combout\ ) ) ) # ( logicShift(1) & ( !\Mux26~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux27~0_combout\,
	datae => ALT_INV_logicShift(1),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(1));

\Mux39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (!\IC1[3]~input_o\ & \IC1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_IC1[2]~input_o\,
	combout => \Mux39~1_combout\);

\Mux39~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (!\IC1[3]~input_o\ & ((!\IC1[2]~input_o\) # (\IC1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	combout => \Mux39~2_combout\);

\Add0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~6_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[1]~input_o\) ) + ( \D11[1]~input_o\ ) + ( \Add0~11\ ))
-- \Add0~7\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[1]~input_o\) ) + ( \D11[1]~input_o\ ) + ( \Add0~11\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D12[1]~input_o\,
	dataf => \ALT_INV_D11[1]~input_o\,
	cin => \Add0~11\,
	sumout => \Add0~6_sumout\,
	cout => \Add0~7\);

\intermed[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(1) = ( intermed(1) & ( \Mux44~0_combout\ & ( \Add0~6_sumout\ ) ) ) # ( !intermed(1) & ( \Mux44~0_combout\ & ( \Add0~6_sumout\ ) ) ) # ( intermed(1) & ( !\Mux44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~6_sumout\,
	datae => ALT_INV_intermed(1),
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => intermed(1));

\Div0|auto_generated|divider|op_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~5_sumout\ = SUM(( (\Div0|auto_generated|divider|divider|op_7~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~2\ ))
-- \Div0|auto_generated|divider|op_1~6\ = CARRY(( (\Div0|auto_generated|divider|divider|op_7~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~2\,
	sumout => \Div0|auto_generated|divider|op_1~5_sumout\,
	cout => \Div0|auto_generated|divider|op_1~6\);

\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\IC1[1]~input_o\ & (\IC1[2]~input_o\ & (!\D11[7]~input_o\ $ (!\D12[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000000000001000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[2]~input_o\,
	datac => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D12[7]~input_o\,
	combout => \Mux36~0_combout\);

\Mux36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\IC1[1]~input_o\ & (\IC1[2]~input_o\ & (!\D11[7]~input_o\ $ (\D12[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001000100000000000100010000000000010001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[2]~input_o\,
	datac => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D12[7]~input_o\,
	combout => \Mux36~1_combout\);

\SBuff[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(1) = ( SBuff(1) & ( \Mux1~3_combout\ & ( \Mult0~9\ ) ) ) # ( !SBuff(1) & ( \Mux1~3_combout\ & ( \Mult0~9\ ) ) ) # ( SBuff(1) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~9\,
	datae => ALT_INV_SBuff(1),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(1));

\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[1]~input_o\) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[1]~input_o\) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[1]~input_o\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

\Mux36~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~5_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & ((((\Add2~5_sumout\))))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & ((!\D11[1]~input_o\) # (!\D12[1]~input_o\)))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D11[1]~input_o\ & 
-- (!\D12[1]~input_o\))) # (\IC1[2]~input_o\ & ((((SBuff(1) & !\IC1[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111101110100010000000111100001111000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[1]~input_o\,
	datab => \ALT_INV_D12[1]~input_o\,
	datac => ALT_INV_SBuff(1),
	datad => \ALT_INV_IC1[2]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	datag => \ALT_INV_Add2~5_sumout\,
	combout => \Mux36~5_combout\);

\Mux36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = ( !\Mux36~5_combout\ & ( (!\Div0|auto_generated|divider|divider|selnose\(54) & (!\Mux36~1_combout\ & ((!\Div0|auto_generated|divider|op_1~5_sumout\) # (!\Mux36~0_combout\)))) # (\Div0|auto_generated|divider|divider|selnose\(54) & 
-- ((!\Div0|auto_generated|divider|op_1~5_sumout\) # ((!\Mux36~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110001010100000000000000000011111100010101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(54),
	datab => \Div0|auto_generated|divider|ALT_INV_op_1~5_sumout\,
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_Mux36~1_combout\,
	datae => \ALT_INV_Mux36~5_combout\,
	combout => \Mux36~2_combout\);

\Mux36~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = ( intermed(1) & ( \Mux36~2_combout\ & ( (!\Mux39~1_combout\ & (((!\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[1]~input_o\ & (!\D11[1]~input_o\)) # (\D12[1]~input_o\ & (\D11[1]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( 
-- !intermed(1) & ( \Mux36~2_combout\ & ( (!\Mux39~1_combout\) # ((!\D12[1]~input_o\ & (!\D11[1]~input_o\)) # (\D12[1]~input_o\ & (\D11[1]~input_o\ & \Mux39~2_combout\))) ) ) ) # ( intermed(1) & ( !\Mux36~2_combout\ & ( (\Mux39~1_combout\ & 
-- ((!\D12[1]~input_o\ & (!\D11[1]~input_o\)) # (\D12[1]~input_o\ & (\D11[1]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( !intermed(1) & ( !\Mux36~2_combout\ & ( (!\Mux39~1_combout\ & (((\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[1]~input_o\ & 
-- (!\D11[1]~input_o\)) # (\D12[1]~input_o\ & (\D11[1]~input_o\ & \Mux39~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111001000010000000100111111000111110011111100000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[1]~input_o\,
	datab => \ALT_INV_D11[1]~input_o\,
	datac => \ALT_INV_Mux39~1_combout\,
	datad => \ALT_INV_Mux39~2_combout\,
	datae => ALT_INV_intermed(1),
	dataf => \ALT_INV_Mux36~2_combout\,
	combout => \Mux36~3_combout\);

\Mux39~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = ( \IC1[2]~input_o\ & ( \Mux1~0_combout\ & ( (\IC1[1]~input_o\ & (!\IC1[4]~input_o\ & ((!\IC1[3]~input_o\) # (\IC1[0]~input_o\)))) ) ) ) # ( !\IC1[2]~input_o\ & ( \Mux1~0_combout\ & ( (!\IC1[1]~input_o\ & (!\IC1[3]~input_o\ & 
-- (!\IC1[0]~input_o\ & \IC1[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000100010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[3]~input_o\,
	datac => \ALT_INV_IC1[0]~input_o\,
	datad => \ALT_INV_IC1[4]~input_o\,
	datae => \ALT_INV_IC1[2]~input_o\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \Mux39~3_combout\);

\Mux39~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = ( \Mux1~0_combout\ & ( (!\IC1[4]~input_o\ & ((!\IC1[1]~input_o\) # ((!\IC1[2]~input_o\) # (!\Mux39~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100100000000000000000001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[4]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	datad => \ALT_INV_Mux39~0_combout\,
	datae => \ALT_INV_Mux1~0_combout\,
	combout => \Mux39~4_combout\);

\Mux36~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = ( \Mux39~3_combout\ & ( \Mux39~4_combout\ & ( \D11[2]~input_o\ ) ) ) # ( !\Mux39~3_combout\ & ( \Mux39~4_combout\ & ( !\Mux36~3_combout\ ) ) ) # ( \Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[0]~input_o\ ) ) ) # ( 
-- !\Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[1]~input_o\,
	datab => \ALT_INV_D11[0]~input_o\,
	datac => \ALT_INV_Mux36~3_combout\,
	datad => \ALT_INV_D11[2]~input_o\,
	datae => \ALT_INV_Mux39~3_combout\,
	dataf => \ALT_INV_Mux39~4_combout\,
	combout => \Mux36~4_combout\);

\Do[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(1) = ( Do(1) & ( \Mux35~0_combout\ & ( \Mux36~4_combout\ ) ) ) # ( !Do(1) & ( \Mux35~0_combout\ & ( \Mux36~4_combout\ ) ) ) # ( Do(1) & ( !\Mux35~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux36~4_combout\,
	datae => ALT_INV_Do(1),
	dataf => \ALT_INV_Mux35~0_combout\,
	combout => Do(1));

\Mux55~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = ( Do(1) & ( \D11[1]~input_o\ & ( (!\Mux55~2_combout\) # ((!\Mux55~1_combout\ & ((logicShift(1)))) # (\Mux55~1_combout\ & (\D12[1]~input_o\))) ) ) ) # ( !Do(1) & ( \D11[1]~input_o\ & ( (!\Mux55~1_combout\ & (((\Mux55~2_combout\ & 
-- logicShift(1))))) # (\Mux55~1_combout\ & (((!\Mux55~2_combout\)) # (\D12[1]~input_o\))) ) ) ) # ( Do(1) & ( !\D11[1]~input_o\ & ( (!\Mux55~1_combout\ & ((!\Mux55~2_combout\) # (logicShift(1)))) ) ) ) # ( !Do(1) & ( !\D11[1]~input_o\ & ( 
-- (!\Mux55~1_combout\ & (\Mux55~2_combout\ & logicShift(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110000001100110000110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[1]~input_o\,
	datab => \ALT_INV_Mux55~1_combout\,
	datac => \ALT_INV_Mux55~2_combout\,
	datad => ALT_INV_logicShift(1),
	datae => ALT_INV_Do(1),
	dataf => \ALT_INV_D11[1]~input_o\,
	combout => \Mux55~3_combout\);

\Do1[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[1]$latch~combout\ = ( \Do1[1]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux55~3_combout\ ) ) ) # ( !\Do1[1]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux55~3_combout\ ) ) ) # ( \Do1[1]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux55~3_combout\,
	datae => \ALT_INV_Do1[1]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Do1[1]$latch~combout\);

\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (!\IC1[0]~input_o\ & (\D11[1]~input_o\)) # (\IC1[0]~input_o\ & ((\D11[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[1]~input_o\,
	datac => \ALT_INV_D11[3]~input_o\,
	combout => \Mux28~0_combout\);

\logicShift[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(2) = ( logicShift(2) & ( \Mux26~0_combout\ & ( \Mux28~0_combout\ ) ) ) # ( !logicShift(2) & ( \Mux26~0_combout\ & ( \Mux28~0_combout\ ) ) ) # ( logicShift(2) & ( !\Mux26~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux28~0_combout\,
	datae => ALT_INV_logicShift(2),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(2));

\Add0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~14_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[2]~input_o\) ) + ( \D11[2]~input_o\ ) + ( \Add0~7\ ))
-- \Add0~15\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[2]~input_o\) ) + ( \D11[2]~input_o\ ) + ( \Add0~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D12[2]~input_o\,
	dataf => \ALT_INV_D11[2]~input_o\,
	cin => \Add0~7\,
	sumout => \Add0~14_sumout\,
	cout => \Add0~15\);

\intermed[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(2) = ( intermed(2) & ( \Mux44~0_combout\ & ( \Add0~14_sumout\ ) ) ) # ( !intermed(2) & ( \Mux44~0_combout\ & ( \Add0~14_sumout\ ) ) ) # ( intermed(2) & ( !\Mux44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~14_sumout\,
	datae => ALT_INV_intermed(2),
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => intermed(2));

\Div0|auto_generated|divider|op_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~9_sumout\ = SUM(( ((\Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~6\ ))
-- \Div0|auto_generated|divider|op_1~10\ = CARRY(( ((\Div0|auto_generated|divider|divider|op_6~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~6\,
	sumout => \Div0|auto_generated|divider|op_1~9_sumout\,
	cout => \Div0|auto_generated|divider|op_1~10\);

\SBuff[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(2) = ( SBuff(2) & ( \Mux1~3_combout\ & ( \Mult0~10\ ) ) ) # ( !SBuff(2) & ( \Mux1~3_combout\ & ( \Mult0~10\ ) ) ) # ( SBuff(2) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~10\,
	datae => ALT_INV_SBuff(2),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(2));

\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[2]~input_o\) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[2]~input_o\) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[2]~input_o\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

\Mux37~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & ((((\Add2~9_sumout\))))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & ((!\D11[2]~input_o\) # (!\D12[2]~input_o\)))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D11[2]~input_o\ & 
-- (!\D12[2]~input_o\))) # (\IC1[2]~input_o\ & ((((SBuff(2) & !\IC1[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111101110100010000000111100001111000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[2]~input_o\,
	datab => \ALT_INV_D12[2]~input_o\,
	datac => ALT_INV_SBuff(2),
	datad => \ALT_INV_IC1[2]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	datag => \ALT_INV_Add2~9_sumout\,
	combout => \Mux37~3_combout\);

\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \Div0|auto_generated|divider|op_1~9_sumout\ & ( !\Mux37~3_combout\ & ( (!\Mux36~0_combout\ & (((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(45)))) ) ) ) # 
-- ( !\Div0|auto_generated|divider|op_1~9_sumout\ & ( !\Mux37~3_combout\ & ( ((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(45)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111100000111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(45),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_Mux36~1_combout\,
	datae => \Div0|auto_generated|divider|ALT_INV_op_1~9_sumout\,
	dataf => \ALT_INV_Mux37~3_combout\,
	combout => \Mux37~0_combout\);

\Mux37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = ( intermed(2) & ( \Mux37~0_combout\ & ( (!\Mux39~1_combout\ & (((!\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[2]~input_o\ & (!\D11[2]~input_o\)) # (\D12[2]~input_o\ & (\D11[2]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( 
-- !intermed(2) & ( \Mux37~0_combout\ & ( (!\Mux39~1_combout\) # ((!\D12[2]~input_o\ & (!\D11[2]~input_o\)) # (\D12[2]~input_o\ & (\D11[2]~input_o\ & \Mux39~2_combout\))) ) ) ) # ( intermed(2) & ( !\Mux37~0_combout\ & ( (\Mux39~1_combout\ & 
-- ((!\D12[2]~input_o\ & (!\D11[2]~input_o\)) # (\D12[2]~input_o\ & (\D11[2]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( !intermed(2) & ( !\Mux37~0_combout\ & ( (!\Mux39~1_combout\ & (((\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[2]~input_o\ & 
-- (!\D11[2]~input_o\)) # (\D12[2]~input_o\ & (\D11[2]~input_o\ & \Mux39~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111001000010000000100111111000111110011111100000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[2]~input_o\,
	datab => \ALT_INV_D11[2]~input_o\,
	datac => \ALT_INV_Mux39~1_combout\,
	datad => \ALT_INV_Mux39~2_combout\,
	datae => ALT_INV_intermed(2),
	dataf => \ALT_INV_Mux37~0_combout\,
	combout => \Mux37~1_combout\);

\Mux37~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = ( \Mux39~3_combout\ & ( \Mux39~4_combout\ & ( \D11[3]~input_o\ ) ) ) # ( !\Mux39~3_combout\ & ( \Mux39~4_combout\ & ( !\Mux37~1_combout\ ) ) ) # ( \Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[1]~input_o\ ) ) ) # ( 
-- !\Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[2]~input_o\,
	datab => \ALT_INV_D11[1]~input_o\,
	datac => \ALT_INV_Mux37~1_combout\,
	datad => \ALT_INV_D11[3]~input_o\,
	datae => \ALT_INV_Mux39~3_combout\,
	dataf => \ALT_INV_Mux39~4_combout\,
	combout => \Mux37~2_combout\);

\Do[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(2) = ( Do(2) & ( \Mux35~0_combout\ & ( \Mux37~2_combout\ ) ) ) # ( !Do(2) & ( \Mux35~0_combout\ & ( \Mux37~2_combout\ ) ) ) # ( Do(2) & ( !\Mux35~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux37~2_combout\,
	datae => ALT_INV_Do(2),
	dataf => \ALT_INV_Mux35~0_combout\,
	combout => Do(2));

\Mux56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = ( Do(2) & ( \D11[2]~input_o\ & ( (!\Mux55~2_combout\) # ((!\Mux55~1_combout\ & ((logicShift(2)))) # (\Mux55~1_combout\ & (\D12[2]~input_o\))) ) ) ) # ( !Do(2) & ( \D11[2]~input_o\ & ( (!\Mux55~1_combout\ & (((\Mux55~2_combout\ & 
-- logicShift(2))))) # (\Mux55~1_combout\ & (((!\Mux55~2_combout\)) # (\D12[2]~input_o\))) ) ) ) # ( Do(2) & ( !\D11[2]~input_o\ & ( (!\Mux55~1_combout\ & ((!\Mux55~2_combout\) # (logicShift(2)))) ) ) ) # ( !Do(2) & ( !\D11[2]~input_o\ & ( 
-- (!\Mux55~1_combout\ & (\Mux55~2_combout\ & logicShift(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110000001100110000110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[2]~input_o\,
	datab => \ALT_INV_Mux55~1_combout\,
	datac => \ALT_INV_Mux55~2_combout\,
	datad => ALT_INV_logicShift(2),
	datae => ALT_INV_Do(2),
	dataf => \ALT_INV_D11[2]~input_o\,
	combout => \Mux56~0_combout\);

\Do1[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[2]$latch~combout\ = ( \Do1[2]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux56~0_combout\ ) ) ) # ( !\Do1[2]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux56~0_combout\ ) ) ) # ( \Do1[2]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux56~0_combout\,
	datae => \ALT_INV_Do1[2]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Do1[2]$latch~combout\);

\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\IC1[0]~input_o\ & (\D11[2]~input_o\)) # (\IC1[0]~input_o\ & ((\D11[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[2]~input_o\,
	datac => \ALT_INV_D11[4]~input_o\,
	combout => \Mux29~0_combout\);

\logicShift[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(3) = ( logicShift(3) & ( \Mux26~0_combout\ & ( \Mux29~0_combout\ ) ) ) # ( !logicShift(3) & ( \Mux26~0_combout\ & ( \Mux29~0_combout\ ) ) ) # ( logicShift(3) & ( !\Mux26~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux29~0_combout\,
	datae => ALT_INV_logicShift(3),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(3));

\Add0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~18_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[3]~input_o\) ) + ( \D11[3]~input_o\ ) + ( \Add0~15\ ))
-- \Add0~19\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[3]~input_o\) ) + ( \D11[3]~input_o\ ) + ( \Add0~15\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D12[3]~input_o\,
	dataf => \ALT_INV_D11[3]~input_o\,
	cin => \Add0~15\,
	sumout => \Add0~18_sumout\,
	cout => \Add0~19\);

\intermed[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(3) = ( intermed(3) & ( \Mux44~0_combout\ & ( \Add0~18_sumout\ ) ) ) # ( !intermed(3) & ( \Mux44~0_combout\ & ( \Add0~18_sumout\ ) ) ) # ( intermed(3) & ( !\Mux44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~18_sumout\,
	datae => ALT_INV_intermed(3),
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => intermed(3));

\Div0|auto_generated|divider|op_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~13_sumout\ = SUM(( (((\Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\)) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~10\ ))
-- \Div0|auto_generated|divider|op_1~14\ = CARRY(( (((\Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\Div0|auto_generated|divider|my_abs_den|op_1~9_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~5_sumout\)) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~1_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~1_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~5_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	cin => \Div0|auto_generated|divider|op_1~10\,
	sumout => \Div0|auto_generated|divider|op_1~13_sumout\,
	cout => \Div0|auto_generated|divider|op_1~14\);

\SBuff[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(3) = ( SBuff(3) & ( \Mux1~3_combout\ & ( \Mult0~11\ ) ) ) # ( !SBuff(3) & ( \Mux1~3_combout\ & ( \Mult0~11\ ) ) ) # ( SBuff(3) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~11\,
	datae => ALT_INV_SBuff(3),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(3));

\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[3]~input_o\) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[3]~input_o\) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[3]~input_o\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

\Mux38~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & ((((\Add2~13_sumout\))))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & ((!\D11[3]~input_o\) # (!\D12[3]~input_o\)))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D11[3]~input_o\ & 
-- (!\D12[3]~input_o\))) # (\IC1[2]~input_o\ & ((((SBuff(3) & !\IC1[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111101110100010000000111100001111000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[3]~input_o\,
	datab => \ALT_INV_D12[3]~input_o\,
	datac => ALT_INV_SBuff(3),
	datad => \ALT_INV_IC1[2]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	datag => \ALT_INV_Add2~13_sumout\,
	combout => \Mux38~3_combout\);

\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( !\Mux38~3_combout\ & ( (!\Div0|auto_generated|divider|divider|selnose\(36) & (!\Mux36~1_combout\ & ((!\Mux36~0_combout\) # (!\Div0|auto_generated|divider|op_1~13_sumout\)))) # (\Div0|auto_generated|divider|divider|selnose\(36) & 
-- ((!\Mux36~0_combout\) # ((!\Div0|auto_generated|divider|op_1~13_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111000100000000000000000011110101110001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(36),
	datab => \ALT_INV_Mux36~0_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => \Div0|auto_generated|divider|ALT_INV_op_1~13_sumout\,
	datae => \ALT_INV_Mux38~3_combout\,
	combout => \Mux38~0_combout\);

\Mux38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = ( intermed(3) & ( \Mux38~0_combout\ & ( (!\Mux39~1_combout\ & (((!\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[3]~input_o\ & (!\D11[3]~input_o\)) # (\D12[3]~input_o\ & (\D11[3]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( 
-- !intermed(3) & ( \Mux38~0_combout\ & ( (!\Mux39~1_combout\) # ((!\D12[3]~input_o\ & (!\D11[3]~input_o\)) # (\D12[3]~input_o\ & (\D11[3]~input_o\ & \Mux39~2_combout\))) ) ) ) # ( intermed(3) & ( !\Mux38~0_combout\ & ( (\Mux39~1_combout\ & 
-- ((!\D12[3]~input_o\ & (!\D11[3]~input_o\)) # (\D12[3]~input_o\ & (\D11[3]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( !intermed(3) & ( !\Mux38~0_combout\ & ( (!\Mux39~1_combout\ & (((\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[3]~input_o\ & 
-- (!\D11[3]~input_o\)) # (\D12[3]~input_o\ & (\D11[3]~input_o\ & \Mux39~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111001000010000000100111111000111110011111100000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[3]~input_o\,
	datab => \ALT_INV_D11[3]~input_o\,
	datac => \ALT_INV_Mux39~1_combout\,
	datad => \ALT_INV_Mux39~2_combout\,
	datae => ALT_INV_intermed(3),
	dataf => \ALT_INV_Mux38~0_combout\,
	combout => \Mux38~1_combout\);

\Mux38~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = ( \Mux39~3_combout\ & ( \Mux39~4_combout\ & ( \D11[4]~input_o\ ) ) ) # ( !\Mux39~3_combout\ & ( \Mux39~4_combout\ & ( !\Mux38~1_combout\ ) ) ) # ( \Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[2]~input_o\ ) ) ) # ( 
-- !\Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[3]~input_o\,
	datab => \ALT_INV_D11[2]~input_o\,
	datac => \ALT_INV_Mux38~1_combout\,
	datad => \ALT_INV_D11[4]~input_o\,
	datae => \ALT_INV_Mux39~3_combout\,
	dataf => \ALT_INV_Mux39~4_combout\,
	combout => \Mux38~2_combout\);

\Do[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(3) = ( Do(3) & ( \Mux35~0_combout\ & ( \Mux38~2_combout\ ) ) ) # ( !Do(3) & ( \Mux35~0_combout\ & ( \Mux38~2_combout\ ) ) ) # ( Do(3) & ( !\Mux35~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux38~2_combout\,
	datae => ALT_INV_Do(3),
	dataf => \ALT_INV_Mux35~0_combout\,
	combout => Do(3));

\Mux57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = ( Do(3) & ( \D11[3]~input_o\ & ( (!\Mux55~2_combout\) # ((!\Mux55~1_combout\ & ((logicShift(3)))) # (\Mux55~1_combout\ & (\D12[3]~input_o\))) ) ) ) # ( !Do(3) & ( \D11[3]~input_o\ & ( (!\Mux55~1_combout\ & (((\Mux55~2_combout\ & 
-- logicShift(3))))) # (\Mux55~1_combout\ & (((!\Mux55~2_combout\)) # (\D12[3]~input_o\))) ) ) ) # ( Do(3) & ( !\D11[3]~input_o\ & ( (!\Mux55~1_combout\ & ((!\Mux55~2_combout\) # (logicShift(3)))) ) ) ) # ( !Do(3) & ( !\D11[3]~input_o\ & ( 
-- (!\Mux55~1_combout\ & (\Mux55~2_combout\ & logicShift(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110000001100110000110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[3]~input_o\,
	datab => \ALT_INV_Mux55~1_combout\,
	datac => \ALT_INV_Mux55~2_combout\,
	datad => ALT_INV_logicShift(3),
	datae => ALT_INV_Do(3),
	dataf => \ALT_INV_D11[3]~input_o\,
	combout => \Mux57~0_combout\);

\Do1[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[3]$latch~combout\ = ( \Do1[3]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux57~0_combout\ ) ) ) # ( !\Do1[3]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux57~0_combout\ ) ) ) # ( \Do1[3]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux57~0_combout\,
	datae => \ALT_INV_Do1[3]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Do1[3]$latch~combout\);

\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\IC1[0]~input_o\ & (\D11[3]~input_o\)) # (\IC1[0]~input_o\ & ((\D11[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[3]~input_o\,
	datac => \ALT_INV_D11[5]~input_o\,
	combout => \Mux30~0_combout\);

\logicShift[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(4) = ( logicShift(4) & ( \Mux26~0_combout\ & ( \Mux30~0_combout\ ) ) ) # ( !logicShift(4) & ( \Mux26~0_combout\ & ( \Mux30~0_combout\ ) ) ) # ( logicShift(4) & ( !\Mux26~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux30~0_combout\,
	datae => ALT_INV_logicShift(4),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(4));

\Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~22_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[4]~input_o\) ) + ( \D11[4]~input_o\ ) + ( \Add0~19\ ))
-- \Add0~23\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[4]~input_o\) ) + ( \D11[4]~input_o\ ) + ( \Add0~19\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D12[4]~input_o\,
	dataf => \ALT_INV_D11[4]~input_o\,
	cin => \Add0~19\,
	sumout => \Add0~22_sumout\,
	cout => \Add0~23\);

\intermed[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(4) = ( intermed(4) & ( \Mux44~0_combout\ & ( \Add0~22_sumout\ ) ) ) # ( !intermed(4) & ( \Mux44~0_combout\ & ( \Add0~22_sumout\ ) ) ) # ( intermed(4) & ( !\Mux44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~22_sumout\,
	datae => ALT_INV_intermed(4),
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => intermed(4));

\Div0|auto_generated|divider|op_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~17_sumout\ = SUM(( ((\Div0|auto_generated|divider|divider|sel\(36)) # (\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~14\ ))
-- \Div0|auto_generated|divider|op_1~18\ = CARRY(( ((\Div0|auto_generated|divider|divider|sel\(36)) # (\Div0|auto_generated|divider|my_abs_den|op_1~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_sel\(36),
	cin => \Div0|auto_generated|divider|op_1~14\,
	sumout => \Div0|auto_generated|divider|op_1~17_sumout\,
	cout => \Div0|auto_generated|divider|op_1~18\);

\SBuff[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(4) = ( SBuff(4) & ( \Mux1~3_combout\ & ( \Mult0~12\ ) ) ) # ( !SBuff(4) & ( \Mux1~3_combout\ & ( \Mult0~12\ ) ) ) # ( SBuff(4) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~12\,
	datae => ALT_INV_SBuff(4),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(4));

\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[4]~input_o\) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[4]~input_o\) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[4]~input_o\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

\Mux39~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~8_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & ((((\Add2~17_sumout\))))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & ((!\D11[4]~input_o\) # (!\D12[4]~input_o\)))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D11[4]~input_o\ & 
-- (!\D12[4]~input_o\))) # (\IC1[2]~input_o\ & ((((SBuff(4) & !\IC1[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111101110100010000000111100001111000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[4]~input_o\,
	datab => \ALT_INV_D12[4]~input_o\,
	datac => ALT_INV_SBuff(4),
	datad => \ALT_INV_IC1[2]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	datag => \ALT_INV_Add2~17_sumout\,
	combout => \Mux39~8_combout\);

\Mux39~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~5_combout\ = ( \Div0|auto_generated|divider|op_1~17_sumout\ & ( !\Mux39~8_combout\ & ( (!\Mux36~0_combout\ & (((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(27)))) ) ) ) # 
-- ( !\Div0|auto_generated|divider|op_1~17_sumout\ & ( !\Mux39~8_combout\ & ( ((!\Mux36~1_combout\) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\)) # (\Div0|auto_generated|divider|divider|sel\(27)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111100000111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_Mux36~1_combout\,
	datae => \Div0|auto_generated|divider|ALT_INV_op_1~17_sumout\,
	dataf => \ALT_INV_Mux39~8_combout\,
	combout => \Mux39~5_combout\);

\Mux39~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~6_combout\ = ( intermed(4) & ( \Mux39~5_combout\ & ( (!\Mux39~1_combout\ & (((!\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[4]~input_o\ & (!\D11[4]~input_o\)) # (\D12[4]~input_o\ & (\D11[4]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( 
-- !intermed(4) & ( \Mux39~5_combout\ & ( (!\Mux39~1_combout\) # ((!\D12[4]~input_o\ & (!\D11[4]~input_o\)) # (\D12[4]~input_o\ & (\D11[4]~input_o\ & \Mux39~2_combout\))) ) ) ) # ( intermed(4) & ( !\Mux39~5_combout\ & ( (\Mux39~1_combout\ & 
-- ((!\D12[4]~input_o\ & (!\D11[4]~input_o\)) # (\D12[4]~input_o\ & (\D11[4]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( !intermed(4) & ( !\Mux39~5_combout\ & ( (!\Mux39~1_combout\ & (((\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[4]~input_o\ & 
-- (!\D11[4]~input_o\)) # (\D12[4]~input_o\ & (\D11[4]~input_o\ & \Mux39~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111001000010000000100111111000111110011111100000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[4]~input_o\,
	datab => \ALT_INV_D11[4]~input_o\,
	datac => \ALT_INV_Mux39~1_combout\,
	datad => \ALT_INV_Mux39~2_combout\,
	datae => ALT_INV_intermed(4),
	dataf => \ALT_INV_Mux39~5_combout\,
	combout => \Mux39~6_combout\);

\Mux39~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~7_combout\ = ( \Mux39~3_combout\ & ( \Mux39~4_combout\ & ( \D11[5]~input_o\ ) ) ) # ( !\Mux39~3_combout\ & ( \Mux39~4_combout\ & ( !\Mux39~6_combout\ ) ) ) # ( \Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[3]~input_o\ ) ) ) # ( 
-- !\Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[4]~input_o\,
	datab => \ALT_INV_D11[3]~input_o\,
	datac => \ALT_INV_Mux39~6_combout\,
	datad => \ALT_INV_D11[5]~input_o\,
	datae => \ALT_INV_Mux39~3_combout\,
	dataf => \ALT_INV_Mux39~4_combout\,
	combout => \Mux39~7_combout\);

\Do[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(4) = ( Do(4) & ( \Mux35~0_combout\ & ( \Mux39~7_combout\ ) ) ) # ( !Do(4) & ( \Mux35~0_combout\ & ( \Mux39~7_combout\ ) ) ) # ( Do(4) & ( !\Mux35~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux39~7_combout\,
	datae => ALT_INV_Do(4),
	dataf => \ALT_INV_Mux35~0_combout\,
	combout => Do(4));

\Mux58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = ( Do(4) & ( \D11[4]~input_o\ & ( (!\Mux55~2_combout\) # ((!\Mux55~1_combout\ & ((logicShift(4)))) # (\Mux55~1_combout\ & (\D12[4]~input_o\))) ) ) ) # ( !Do(4) & ( \D11[4]~input_o\ & ( (!\Mux55~1_combout\ & (((\Mux55~2_combout\ & 
-- logicShift(4))))) # (\Mux55~1_combout\ & (((!\Mux55~2_combout\)) # (\D12[4]~input_o\))) ) ) ) # ( Do(4) & ( !\D11[4]~input_o\ & ( (!\Mux55~1_combout\ & ((!\Mux55~2_combout\) # (logicShift(4)))) ) ) ) # ( !Do(4) & ( !\D11[4]~input_o\ & ( 
-- (!\Mux55~1_combout\ & (\Mux55~2_combout\ & logicShift(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110000001100110000110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[4]~input_o\,
	datab => \ALT_INV_Mux55~1_combout\,
	datac => \ALT_INV_Mux55~2_combout\,
	datad => ALT_INV_logicShift(4),
	datae => ALT_INV_Do(4),
	dataf => \ALT_INV_D11[4]~input_o\,
	combout => \Mux58~0_combout\);

\Do1[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[4]$latch~combout\ = ( \Do1[4]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux58~0_combout\ ) ) ) # ( !\Do1[4]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux58~0_combout\ ) ) ) # ( \Do1[4]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux58~0_combout\,
	datae => \ALT_INV_Do1[4]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Do1[4]$latch~combout\);

\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\IC1[0]~input_o\ & (\D11[4]~input_o\)) # (\IC1[0]~input_o\ & ((\D11[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[4]~input_o\,
	datac => \ALT_INV_D11[6]~input_o\,
	combout => \Mux31~0_combout\);

\logicShift[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(5) = ( logicShift(5) & ( \Mux26~0_combout\ & ( \Mux31~0_combout\ ) ) ) # ( !logicShift(5) & ( \Mux26~0_combout\ & ( \Mux31~0_combout\ ) ) ) # ( logicShift(5) & ( !\Mux26~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux31~0_combout\,
	datae => ALT_INV_logicShift(5),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(5));

\Add0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~26_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[5]~input_o\) ) + ( \D11[5]~input_o\ ) + ( \Add0~23\ ))
-- \Add0~27\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[5]~input_o\) ) + ( \D11[5]~input_o\ ) + ( \Add0~23\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D12[5]~input_o\,
	dataf => \ALT_INV_D11[5]~input_o\,
	cin => \Add0~23\,
	sumout => \Add0~26_sumout\,
	cout => \Add0~27\);

\intermed[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(5) = ( intermed(5) & ( \Mux44~0_combout\ & ( \Add0~26_sumout\ ) ) ) # ( !intermed(5) & ( \Mux44~0_combout\ & ( \Add0~26_sumout\ ) ) ) # ( intermed(5) & ( !\Mux44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~26_sumout\,
	datae => ALT_INV_intermed(5),
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => intermed(5));

\Div0|auto_generated|divider|op_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~21_sumout\ = SUM(( ((\Div0|auto_generated|divider|divider|sel\(27)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~18\ ))
-- \Div0|auto_generated|divider|op_1~22\ = CARRY(( ((\Div0|auto_generated|divider|divider|sel\(27)) # (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~17_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_2_result_int[3]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_sel\(27),
	cin => \Div0|auto_generated|divider|op_1~18\,
	sumout => \Div0|auto_generated|divider|op_1~21_sumout\,
	cout => \Div0|auto_generated|divider|op_1~22\);

\SBuff[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(5) = ( SBuff(5) & ( \Mux1~3_combout\ & ( \Mult0~13\ ) ) ) # ( !SBuff(5) & ( \Mux1~3_combout\ & ( \Mult0~13\ ) ) ) # ( SBuff(5) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~13\,
	datae => ALT_INV_SBuff(5),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(5));

\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[5]~input_o\) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[5]~input_o\) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[5]~input_o\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

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

\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( !\Mux40~3_combout\ & ( (!\Div0|auto_generated|divider|divider|selnose\(18) & (!\Mux36~1_combout\ & ((!\Mux36~0_combout\) # (!\Div0|auto_generated|divider|op_1~21_sumout\)))) # (\Div0|auto_generated|divider|divider|selnose\(18) & 
-- ((!\Mux36~0_combout\) # ((!\Div0|auto_generated|divider|op_1~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111000100000000000000000011110101110001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(18),
	datab => \ALT_INV_Mux36~0_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => \Div0|auto_generated|divider|ALT_INV_op_1~21_sumout\,
	datae => \ALT_INV_Mux40~3_combout\,
	combout => \Mux40~0_combout\);

\Mux40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = ( intermed(5) & ( \Mux40~0_combout\ & ( (!\Mux39~1_combout\ & (((!\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[5]~input_o\ & (!\D11[5]~input_o\)) # (\D12[5]~input_o\ & (\D11[5]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( 
-- !intermed(5) & ( \Mux40~0_combout\ & ( (!\Mux39~1_combout\) # ((!\D12[5]~input_o\ & (!\D11[5]~input_o\)) # (\D12[5]~input_o\ & (\D11[5]~input_o\ & \Mux39~2_combout\))) ) ) ) # ( intermed(5) & ( !\Mux40~0_combout\ & ( (\Mux39~1_combout\ & 
-- ((!\D12[5]~input_o\ & (!\D11[5]~input_o\)) # (\D12[5]~input_o\ & (\D11[5]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( !intermed(5) & ( !\Mux40~0_combout\ & ( (!\Mux39~1_combout\ & (((\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[5]~input_o\ & 
-- (!\D11[5]~input_o\)) # (\D12[5]~input_o\ & (\D11[5]~input_o\ & \Mux39~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111001000010000000100111111000111110011111100000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[5]~input_o\,
	datab => \ALT_INV_D11[5]~input_o\,
	datac => \ALT_INV_Mux39~1_combout\,
	datad => \ALT_INV_Mux39~2_combout\,
	datae => ALT_INV_intermed(5),
	dataf => \ALT_INV_Mux40~0_combout\,
	combout => \Mux40~1_combout\);

\Mux40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = ( \Mux39~3_combout\ & ( \Mux39~4_combout\ & ( \D11[6]~input_o\ ) ) ) # ( !\Mux39~3_combout\ & ( \Mux39~4_combout\ & ( !\Mux40~1_combout\ ) ) ) # ( \Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[4]~input_o\ ) ) ) # ( 
-- !\Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[5]~input_o\,
	datab => \ALT_INV_D11[4]~input_o\,
	datac => \ALT_INV_Mux40~1_combout\,
	datad => \ALT_INV_D11[6]~input_o\,
	datae => \ALT_INV_Mux39~3_combout\,
	dataf => \ALT_INV_Mux39~4_combout\,
	combout => \Mux40~2_combout\);

\Do[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(5) = ( Do(5) & ( \Mux35~0_combout\ & ( \Mux40~2_combout\ ) ) ) # ( !Do(5) & ( \Mux35~0_combout\ & ( \Mux40~2_combout\ ) ) ) # ( Do(5) & ( !\Mux35~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux40~2_combout\,
	datae => ALT_INV_Do(5),
	dataf => \ALT_INV_Mux35~0_combout\,
	combout => Do(5));

\Mux59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = ( Do(5) & ( \D11[5]~input_o\ & ( (!\Mux55~2_combout\) # ((!\Mux55~1_combout\ & ((logicShift(5)))) # (\Mux55~1_combout\ & (\D12[5]~input_o\))) ) ) ) # ( !Do(5) & ( \D11[5]~input_o\ & ( (!\Mux55~1_combout\ & (((\Mux55~2_combout\ & 
-- logicShift(5))))) # (\Mux55~1_combout\ & (((!\Mux55~2_combout\)) # (\D12[5]~input_o\))) ) ) ) # ( Do(5) & ( !\D11[5]~input_o\ & ( (!\Mux55~1_combout\ & ((!\Mux55~2_combout\) # (logicShift(5)))) ) ) ) # ( !Do(5) & ( !\D11[5]~input_o\ & ( 
-- (!\Mux55~1_combout\ & (\Mux55~2_combout\ & logicShift(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110000001100110000110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[5]~input_o\,
	datab => \ALT_INV_Mux55~1_combout\,
	datac => \ALT_INV_Mux55~2_combout\,
	datad => ALT_INV_logicShift(5),
	datae => ALT_INV_Do(5),
	dataf => \ALT_INV_D11[5]~input_o\,
	combout => \Mux59~0_combout\);

\Do1[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[5]$latch~combout\ = ( \Do1[5]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux59~0_combout\ ) ) ) # ( !\Do1[5]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux59~0_combout\ ) ) ) # ( \Do1[5]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux59~0_combout\,
	datae => \ALT_INV_Do1[5]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Do1[5]$latch~combout\);

\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\IC1[0]~input_o\ & (\D11[5]~input_o\)) # (\IC1[0]~input_o\ & ((\D11[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[5]~input_o\,
	datac => \ALT_INV_D11[7]~input_o\,
	combout => \Mux32~0_combout\);

\logicShift[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(6) = ( logicShift(6) & ( \Mux26~0_combout\ & ( \Mux32~0_combout\ ) ) ) # ( !logicShift(6) & ( \Mux26~0_combout\ & ( \Mux32~0_combout\ ) ) ) # ( logicShift(6) & ( !\Mux26~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux32~0_combout\,
	datae => ALT_INV_logicShift(6),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(6));

\Add0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~30_sumout\ = SUM(( !\IC1[1]~input_o\ $ (!\D12[6]~input_o\) ) + ( \D11[6]~input_o\ ) + ( \Add0~27\ ))
-- \Add0~31\ = CARRY(( !\IC1[1]~input_o\ $ (!\D12[6]~input_o\) ) + ( \D11[6]~input_o\ ) + ( \Add0~27\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datad => \ALT_INV_D12[6]~input_o\,
	dataf => \ALT_INV_D11[6]~input_o\,
	cin => \Add0~27\,
	sumout => \Add0~30_sumout\,
	cout => \Add0~31\);

\intermed[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(6) = ( intermed(6) & ( \Mux44~0_combout\ & ( \Add0~30_sumout\ ) ) ) # ( !intermed(6) & ( \Mux44~0_combout\ & ( \Add0~30_sumout\ ) ) ) # ( intermed(6) & ( !\Mux44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~30_sumout\,
	datae => ALT_INV_intermed(6),
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => intermed(6));

\Div0|auto_generated|divider|op_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~25_sumout\ = SUM(( ((\Div0|auto_generated|divider|divider|sel\(18)) # (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~22\ ))
-- \Div0|auto_generated|divider|op_1~26\ = CARRY(( ((\Div0|auto_generated|divider|divider|sel\(18)) # (\Div0|auto_generated|divider|divider|add_sub_1_result_int[2]~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\) ) + ( GND ) + ( 
-- \Div0|auto_generated|divider|op_1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_1_result_int[2]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	cin => \Div0|auto_generated|divider|op_1~22\,
	sumout => \Div0|auto_generated|divider|op_1~25_sumout\,
	cout => \Div0|auto_generated|divider|op_1~26\);

\SBuff[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(6) = ( SBuff(6) & ( \Mux1~3_combout\ & ( \Mult0~14\ ) ) ) # ( !SBuff(6) & ( \Mux1~3_combout\ & ( \Mult0~14\ ) ) ) # ( SBuff(6) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~14\,
	datae => ALT_INV_SBuff(6),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(6));

\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !\D11[7]~input_o\ $ (!\D11[6]~input_o\) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !\D11[7]~input_o\ $ (!\D11[6]~input_o\) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_D11[6]~input_o\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

\Mux41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = ( !\IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & ((((\Add2~25_sumout\))))) # (\IC1[2]~input_o\ & (((!\IC1[1]~input_o\ & ((!\D11[6]~input_o\) # (!\D12[6]~input_o\)))))) ) ) # ( \IC1[0]~input_o\ & ( (!\IC1[2]~input_o\ & (!\D11[6]~input_o\ & 
-- (!\D12[6]~input_o\))) # (\IC1[2]~input_o\ & ((((SBuff(6) & !\IC1[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111111101110100010000000111100001111000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[6]~input_o\,
	datab => \ALT_INV_D12[6]~input_o\,
	datac => ALT_INV_SBuff(6),
	datad => \ALT_INV_IC1[2]~input_o\,
	datae => \ALT_INV_IC1[0]~input_o\,
	dataf => \ALT_INV_IC1[1]~input_o\,
	datag => \ALT_INV_Add2~25_sumout\,
	combout => \Mux41~3_combout\);

\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( !\Mux41~3_combout\ & ( (!\Div0|auto_generated|divider|divider|selnose\(9) & (!\Mux36~1_combout\ & ((!\Mux36~0_combout\) # (!\Div0|auto_generated|divider|op_1~25_sumout\)))) # (\Div0|auto_generated|divider|divider|selnose\(9) & 
-- ((!\Mux36~0_combout\) # ((!\Div0|auto_generated|divider|op_1~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111000100000000000000000011110101110001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(9),
	datab => \ALT_INV_Mux36~0_combout\,
	datac => \ALT_INV_Mux36~1_combout\,
	datad => \Div0|auto_generated|divider|ALT_INV_op_1~25_sumout\,
	datae => \ALT_INV_Mux41~3_combout\,
	combout => \Mux41~0_combout\);

\Mux41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = ( intermed(6) & ( \Mux41~0_combout\ & ( (!\Mux39~1_combout\ & (((!\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[6]~input_o\ & (!\D11[6]~input_o\)) # (\D12[6]~input_o\ & (\D11[6]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( 
-- !intermed(6) & ( \Mux41~0_combout\ & ( (!\Mux39~1_combout\) # ((!\D12[6]~input_o\ & (!\D11[6]~input_o\)) # (\D12[6]~input_o\ & (\D11[6]~input_o\ & \Mux39~2_combout\))) ) ) ) # ( intermed(6) & ( !\Mux41~0_combout\ & ( (\Mux39~1_combout\ & 
-- ((!\D12[6]~input_o\ & (!\D11[6]~input_o\)) # (\D12[6]~input_o\ & (\D11[6]~input_o\ & \Mux39~2_combout\)))) ) ) ) # ( !intermed(6) & ( !\Mux41~0_combout\ & ( (!\Mux39~1_combout\ & (((\Mux39~2_combout\)))) # (\Mux39~1_combout\ & ((!\D12[6]~input_o\ & 
-- (!\D11[6]~input_o\)) # (\D12[6]~input_o\ & (\D11[6]~input_o\ & \Mux39~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111001000010000000100111111000111110011111100000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[6]~input_o\,
	datab => \ALT_INV_D11[6]~input_o\,
	datac => \ALT_INV_Mux39~1_combout\,
	datad => \ALT_INV_Mux39~2_combout\,
	datae => ALT_INV_intermed(6),
	dataf => \ALT_INV_Mux41~0_combout\,
	combout => \Mux41~1_combout\);

\Mux41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = ( \Mux39~3_combout\ & ( \Mux39~4_combout\ & ( \D11[7]~input_o\ ) ) ) # ( !\Mux39~3_combout\ & ( \Mux39~4_combout\ & ( !\Mux41~1_combout\ ) ) ) # ( \Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[5]~input_o\ ) ) ) # ( 
-- !\Mux39~3_combout\ & ( !\Mux39~4_combout\ & ( \D11[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[6]~input_o\,
	datab => \ALT_INV_D11[5]~input_o\,
	datac => \ALT_INV_Mux41~1_combout\,
	datad => \ALT_INV_D11[7]~input_o\,
	datae => \ALT_INV_Mux39~3_combout\,
	dataf => \ALT_INV_Mux39~4_combout\,
	combout => \Mux41~2_combout\);

\Do[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(6) = ( Do(6) & ( \Mux35~0_combout\ & ( \Mux41~2_combout\ ) ) ) # ( !Do(6) & ( \Mux35~0_combout\ & ( \Mux41~2_combout\ ) ) ) # ( Do(6) & ( !\Mux35~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux41~2_combout\,
	datae => ALT_INV_Do(6),
	dataf => \ALT_INV_Mux35~0_combout\,
	combout => Do(6));

\Mux60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = ( Do(6) & ( \D11[6]~input_o\ & ( (!\Mux55~2_combout\) # ((!\Mux55~1_combout\ & ((logicShift(6)))) # (\Mux55~1_combout\ & (\D12[6]~input_o\))) ) ) ) # ( !Do(6) & ( \D11[6]~input_o\ & ( (!\Mux55~1_combout\ & (((\Mux55~2_combout\ & 
-- logicShift(6))))) # (\Mux55~1_combout\ & (((!\Mux55~2_combout\)) # (\D12[6]~input_o\))) ) ) ) # ( Do(6) & ( !\D11[6]~input_o\ & ( (!\Mux55~1_combout\ & ((!\Mux55~2_combout\) # (logicShift(6)))) ) ) ) # ( !Do(6) & ( !\D11[6]~input_o\ & ( 
-- (!\Mux55~1_combout\ & (\Mux55~2_combout\ & logicShift(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110000001100110000110001001111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D12[6]~input_o\,
	datab => \ALT_INV_Mux55~1_combout\,
	datac => \ALT_INV_Mux55~2_combout\,
	datad => ALT_INV_logicShift(6),
	datae => ALT_INV_Do(6),
	dataf => \ALT_INV_D11[6]~input_o\,
	combout => \Mux60~0_combout\);

\Do1[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[6]$latch~combout\ = ( \Do1[6]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux60~0_combout\ ) ) ) # ( !\Do1[6]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux60~0_combout\ ) ) ) # ( \Do1[6]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux60~0_combout\,
	datae => \ALT_INV_Do1[6]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Do1[6]$latch~combout\);

\Mux54~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (!\IC1[0]~input_o\ & \D11[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[6]~input_o\,
	combout => \Mux54~2_combout\);

\logicShift[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- logicShift(7) = ( logicShift(7) & ( \Mux26~0_combout\ & ( \Mux54~2_combout\ ) ) ) # ( !logicShift(7) & ( \Mux26~0_combout\ & ( \Mux54~2_combout\ ) ) ) # ( logicShift(7) & ( !\Mux26~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux54~2_combout\,
	datae => ALT_INV_logicShift(7),
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => logicShift(7));

\Mux61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = ( \D12[7]~input_o\ & ( (!\IC1[3]~input_o\ & ((\D11[7]~input_o\))) # (\IC1[3]~input_o\ & (logicShift(7))) ) ) # ( !\D12[7]~input_o\ & ( (!\IC1[3]~input_o\ & (!\IC1[1]~input_o\ & ((\D11[7]~input_o\)))) # (\IC1[3]~input_o\ & 
-- (((logicShift(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111100111100000011100010110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[3]~input_o\,
	datac => ALT_INV_logicShift(7),
	datad => \ALT_INV_D11[7]~input_o\,
	datae => \ALT_INV_D12[7]~input_o\,
	combout => \Mux61~0_combout\);

\Div0|auto_generated|divider|op_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~29_sumout\ = SUM(( (((\Div0|auto_generated|divider|divider|sel\(18)) # (\Div0|auto_generated|divider|divider|add_sub_0_result_int[1]~1_sumout\)) # (\Div0|auto_generated|divider|my_abs_den|op_1~25_sumout\)) # 
-- (\Div0|auto_generated|divider|my_abs_den|op_1~21_sumout\) ) + ( GND ) + ( \Div0|auto_generated|divider|op_1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~21_sumout\,
	datab => \Div0|auto_generated|divider|my_abs_den|ALT_INV_op_1~25_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_0_result_int[1]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_sel\(18),
	cin => \Div0|auto_generated|divider|op_1~26\,
	sumout => \Div0|auto_generated|divider|op_1~29_sumout\);

\SBuff[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(7) = ( SBuff(7) & ( \Mux1~3_combout\ & ( \Mult0~15\ ) ) ) # ( !SBuff(7) & ( \Mux1~3_combout\ & ( \Mult0~15\ ) ) ) # ( SBuff(7) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~15\,
	datae => ALT_INV_SBuff(7),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(7));

\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (!\IC1[0]~input_o\ & (\D11[7]~input_o\ & (\D12[7]~input_o\))) # (\IC1[0]~input_o\ & (((!SBuff(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000010010101110000001001010111000000100101011100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D12[7]~input_o\,
	datad => ALT_INV_SBuff(7),
	combout => \Mux42~0_combout\);

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

\Mux42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (!\IC1[0]~input_o\ & (((\Add2~29_sumout\)))) # (\IC1[0]~input_o\ & (!\D11[7]~input_o\ & (!\D12[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011101010010000001110101001000000111010100100000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[7]~input_o\,
	datac => \ALT_INV_D12[7]~input_o\,
	datad => \ALT_INV_Add2~29_sumout\,
	combout => \Mux42~1_combout\);

\Mux42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = ( \Mux42~0_combout\ & ( \Mux42~1_combout\ & ( (\IC1[1]~input_o\ & ((!\IC1[2]~input_o\) # ((\IC1[0]~input_o\ & \D11[0]~input_o\)))) ) ) ) # ( !\Mux42~0_combout\ & ( \Mux42~1_combout\ & ( (!\IC1[1]~input_o\ & (((\IC1[2]~input_o\)))) # 
-- (\IC1[1]~input_o\ & ((!\IC1[2]~input_o\) # ((\IC1[0]~input_o\ & \D11[0]~input_o\)))) ) ) ) # ( \Mux42~0_combout\ & ( !\Mux42~1_combout\ & ( (\IC1[1]~input_o\ & (\IC1[0]~input_o\ & (\IC1[2]~input_o\ & \D11[0]~input_o\))) ) ) ) # ( !\Mux42~0_combout\ & ( 
-- !\Mux42~1_combout\ & ( (\IC1[2]~input_o\ & ((!\IC1[1]~input_o\) # ((\IC1[0]~input_o\ & \D11[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001011000000000000000101011010010110110101000001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	datad => \ALT_INV_D11[0]~input_o\,
	datae => \ALT_INV_Mux42~0_combout\,
	dataf => \ALT_INV_Mux42~1_combout\,
	combout => \Mux42~2_combout\);

\Mux42~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = ( \Div0|auto_generated|divider|op_1~29_sumout\ & ( \Mux42~2_combout\ ) ) # ( !\Div0|auto_generated|divider|op_1~29_sumout\ & ( \Mux42~2_combout\ ) ) # ( \Div0|auto_generated|divider|op_1~29_sumout\ & ( !\Mux42~2_combout\ & ( 
-- (!\IC1[0]~input_o\ & (((!\Div0|auto_generated|divider|divider|selnose\(0) & \Mux36~1_combout\)) # (\Mux36~0_combout\))) ) ) ) # ( !\Div0|auto_generated|divider|op_1~29_sumout\ & ( !\Mux42~2_combout\ & ( (!\IC1[0]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|selnose\(0) & \Mux36~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000010101000101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_selnose\(0),
	datac => \ALT_INV_Mux36~0_combout\,
	datad => \ALT_INV_Mux36~1_combout\,
	datae => \Div0|auto_generated|divider|ALT_INV_op_1~29_sumout\,
	dataf => \ALT_INV_Mux42~2_combout\,
	combout => \Mux42~3_combout\);

\Mux54~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (!\IC1[0]~input_o\ & (\D11[6]~input_o\)) # (\IC1[0]~input_o\ & ((\D11[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[0]~input_o\,
	datab => \ALT_INV_D11[6]~input_o\,
	datac => \ALT_INV_D11[7]~input_o\,
	combout => \Mux54~1_combout\);

\Mux42~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (!\IC1[1]~input_o\ & ((!\IC1[2]~input_o\ & ((\Mux54~1_combout\))) # (\IC1[2]~input_o\ & (\D11[7]~input_o\)))) # (\IC1[1]~input_o\ & (((\D11[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[2]~input_o\,
	datac => \ALT_INV_D11[7]~input_o\,
	datad => \ALT_INV_Mux54~1_combout\,
	combout => \Mux42~4_combout\);

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

\intermed[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(7) = ( intermed(7) & ( \Mux44~0_combout\ & ( \Add0~34_sumout\ ) ) ) # ( !intermed(7) & ( \Mux44~0_combout\ & ( \Add0~34_sumout\ ) ) ) # ( intermed(7) & ( !\Mux44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~34_sumout\,
	datae => ALT_INV_intermed(7),
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => intermed(7));

\Mux42~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~9_combout\ = ( !\IC1[1]~input_o\ & ( (!\IC1[2]~input_o\ & ((((intermed(7) & \IC1[0]~input_o\))))) # (\IC1[2]~input_o\ & ((!\D11[7]~input_o\ & (\D12[7]~input_o\)) # (\D11[7]~input_o\ & ((!\D12[7]~input_o\) # ((!\IC1[0]~input_o\)))))) ) ) # ( 
-- \IC1[1]~input_o\ & ( (!\IC1[2]~input_o\ & ((((intermed(7) & !\IC1[0]~input_o\))))) # (\IC1[2]~input_o\ & (((!\IC1[0]~input_o\ & ((\D11[6]~input_o\))) # (\IC1[0]~input_o\ & (\D11[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001001100010011000000111100111100010010110111100001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datab => \ALT_INV_IC1[2]~input_o\,
	datac => \ALT_INV_D11[6]~input_o\,
	datad => ALT_INV_intermed(7),
	datae => \ALT_INV_IC1[1]~input_o\,
	dataf => \ALT_INV_IC1[0]~input_o\,
	datag => \ALT_INV_D12[7]~input_o\,
	combout => \Mux42~9_combout\);

\Mux42~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~5_combout\ = ( !\IC1[4]~input_o\ & ( (!\Mux1~0_combout\ & ((((\D11[7]~input_o\))))) # (\Mux1~0_combout\ & ((!\IC1[3]~input_o\ & (((\Mux42~9_combout\)))) # (\IC1[3]~input_o\ & (\Mux42~3_combout\)))) ) ) # ( \IC1[4]~input_o\ & ( (!\IC1[3]~input_o\ & 
-- (((!\Mux1~0_combout\ & ((\D11[7]~input_o\))) # (\Mux1~0_combout\ & (\Mux42~4_combout\))))) # (\IC1[3]~input_o\ & ((((\D11[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100011011000110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_Mux42~3_combout\,
	datac => \ALT_INV_Mux42~4_combout\,
	datad => \ALT_INV_D11[7]~input_o\,
	datae => \ALT_INV_IC1[4]~input_o\,
	dataf => \ALT_INV_Mux1~0_combout\,
	datag => \ALT_INV_Mux42~9_combout\,
	combout => \Mux42~5_combout\);

\Do[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- Do(7) = ( Do(7) & ( \Mux35~0_combout\ & ( \Mux42~5_combout\ ) ) ) # ( !Do(7) & ( \Mux35~0_combout\ & ( \Mux42~5_combout\ ) ) ) # ( Do(7) & ( !\Mux35~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux42~5_combout\,
	datae => ALT_INV_Do(7),
	dataf => \ALT_INV_Mux35~0_combout\,
	combout => Do(7));

\Mux61~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = ( !\IC1[4]~input_o\ & ( (\Mux1~0_combout\ & ((!\Mux55~0_combout\ & ((!\IC1[2]~input_o\ & (\Mux61~0_combout\)) # (\IC1[2]~input_o\ & ((Do(7)))))) # (\Mux55~0_combout\ & (((Do(7))))))) ) ) # ( \IC1[4]~input_o\ & ( ((Do(7) & 
-- (\Mux39~0_combout\ & (!\IC1[2]~input_o\ & \Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000001010011001100110000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux61~0_combout\,
	datab => ALT_INV_Do(7),
	datac => \ALT_INV_Mux39~0_combout\,
	datad => \ALT_INV_IC1[2]~input_o\,
	datae => \ALT_INV_IC1[4]~input_o\,
	dataf => \ALT_INV_Mux1~0_combout\,
	datag => \ALT_INV_Mux55~0_combout\,
	combout => \Mux61~1_combout\);

\Do1[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Do1[7]$latch~combout\ = ( \Do1[7]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux61~1_combout\ ) ) ) # ( !\Do1[7]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux61~1_combout\ ) ) ) # ( \Do1[7]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux61~1_combout\,
	datae => \ALT_INV_Do1[7]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Do1[7]$latch~combout\);

\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\IC1[1]~input_o\ & (\Add0~0_combout\ & \Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_Add0~0_combout\,
	datac => \ALT_INV_Mux1~0_combout\,
	combout => \Add0~37_combout\);

\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_sumout\ = SUM(( (\D11[7]~input_o\ & (!\IC1[0]~input_o\ & \Add0~37_combout\)) ) + ( (!\D12[7]~input_o\ & \Add0~38_combout\) ) + ( \Add0~35\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D11[7]~input_o\,
	datab => \ALT_INV_D12[7]~input_o\,
	datac => \ALT_INV_IC1[0]~input_o\,
	datad => \ALT_INV_Add0~37_combout\,
	dataf => \ALT_INV_Add0~38_combout\,
	cin => \Add0~35\,
	sumout => \Add0~2_sumout\);

\intermed[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- intermed(8) = ( intermed(8) & ( \Mux44~0_combout\ & ( \Add0~2_sumout\ ) ) ) # ( !intermed(8) & ( \Mux44~0_combout\ & ( \Add0~2_sumout\ ) ) ) # ( intermed(8) & ( !\Mux44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~2_sumout\,
	datae => ALT_INV_intermed(8),
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => intermed(8));

\FI[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(0),
	o => \FI[0]~input_o\);

\Mux63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = ( \FI[0]~input_o\ & ( (\Add0~0_combout\ & ((!\IC1[1]~input_o\ & ((!\IC1[0]~input_o\) # (intermed(8)))) # (\IC1[1]~input_o\ & (!\IC1[0]~input_o\ & intermed(8))))) ) ) # ( !\FI[0]~input_o\ & ( (\Add0~0_combout\ & (intermed(8) & 
-- (!\IC1[1]~input_o\ $ (!\IC1[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000010000000111000000000000001100000100000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => ALT_INV_intermed(8),
	datae => \ALT_INV_FI[0]~input_o\,
	combout => \Mux63~0_combout\);

\Fo[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[0]$latch~combout\ = ( \Fo[0]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux63~0_combout\ ) ) ) # ( !\Fo[0]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux63~0_combout\ ) ) ) # ( \Fo[0]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux63~0_combout\,
	datae => \ALT_INV_Fo[0]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Fo[0]$latch~combout\);

\FI[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(1),
	o => \FI[1]~input_o\);

\Mux64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (!\IC1[1]~input_o\ & (!\IC1[0]~input_o\ & (\Add0~0_combout\ & \FI[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_FI[1]~input_o\,
	combout => \Mux64~0_combout\);

\Fo[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[1]$latch~combout\ = ( \Fo[1]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux64~0_combout\ ) ) ) # ( !\Fo[1]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux64~0_combout\ ) ) ) # ( \Fo[1]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux64~0_combout\,
	datae => \ALT_INV_Fo[1]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Fo[1]$latch~combout\);

\FI[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(2),
	o => \FI[2]~input_o\);

\Mux65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (!\IC1[1]~input_o\ & (!\IC1[0]~input_o\ & (\Add0~0_combout\ & \FI[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_FI[2]~input_o\,
	combout => \Mux65~0_combout\);

\Fo[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[2]$latch~combout\ = ( \Fo[2]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux65~0_combout\ ) ) ) # ( !\Fo[2]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux65~0_combout\ ) ) ) # ( \Fo[2]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux65~0_combout\,
	datae => \ALT_INV_Fo[2]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Fo[2]$latch~combout\);

\FI[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(3),
	o => \FI[3]~input_o\);

\Mux66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (!\IC1[1]~input_o\ & (!\IC1[0]~input_o\ & (\Add0~0_combout\ & \FI[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_FI[3]~input_o\,
	combout => \Mux66~0_combout\);

\Fo[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[3]$latch~combout\ = ( \Fo[3]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux66~0_combout\ ) ) ) # ( !\Fo[3]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux66~0_combout\ ) ) ) # ( \Fo[3]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux66~0_combout\,
	datae => \ALT_INV_Fo[3]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Fo[3]$latch~combout\);

\FI[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(4),
	o => \FI[4]~input_o\);

\Mux67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = ( \D12[7]~input_o\ & ( intermed(1) & ( (!\IC1[1]~input_o\ & (\IC1[0]~input_o\ & (!Do(7) & \D11[7]~input_o\))) ) ) ) # ( !\D12[7]~input_o\ & ( intermed(1) & ( (!\D11[7]~input_o\ & ((!\IC1[1]~input_o\ & (\IC1[0]~input_o\ & Do(7))) # 
-- (\IC1[1]~input_o\ & (!\IC1[0]~input_o\)))) ) ) ) # ( \D12[7]~input_o\ & ( !intermed(1) & ( (\D11[7]~input_o\ & ((!\IC1[1]~input_o\ & (\IC1[0]~input_o\ & !Do(7))) # (\IC1[1]~input_o\ & (!\IC1[0]~input_o\)))) ) ) ) # ( !\D12[7]~input_o\ & ( !intermed(1) & ( 
-- (!\IC1[1]~input_o\ & (\IC1[0]~input_o\ & (Do(7) & !\D11[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000110010001000110000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => ALT_INV_Do(7),
	datad => \ALT_INV_D11[7]~input_o\,
	datae => \ALT_INV_D12[7]~input_o\,
	dataf => ALT_INV_intermed(1),
	combout => \Mux67~0_combout\);

\Mux67~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux67~1_combout\ = ( \Mux67~0_combout\ & ( \Add0~0_combout\ ) ) # ( !\Mux67~0_combout\ & ( (!\IC1[1]~input_o\ & (!\IC1[0]~input_o\ & (\Add0~0_combout\ & \FI[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000011110000111100000000000010000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_FI[4]~input_o\,
	datae => \ALT_INV_Mux67~0_combout\,
	combout => \Mux67~1_combout\);

\Fo[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[4]$latch~combout\ = ( \Fo[4]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux67~1_combout\ ) ) ) # ( !\Fo[4]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux67~1_combout\ ) ) ) # ( \Fo[4]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux67~1_combout\,
	datae => \ALT_INV_Fo[4]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Fo[4]$latch~combout\);

\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!Do(0) & (!Do(1) & (!Do(2) & !Do(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Do(0),
	datab => ALT_INV_Do(1),
	datac => ALT_INV_Do(2),
	datad => ALT_INV_Do(3),
	combout => \Equal1~0_combout\);

\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \Equal1~0_combout\ & ( (!Do(4) & (!Do(5) & (!Do(6) & !Do(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Do(4),
	datab => ALT_INV_Do(5),
	datac => ALT_INV_Do(6),
	datad => ALT_INV_Do(7),
	datae => \ALT_INV_Equal1~0_combout\,
	combout => \Equal1~1_combout\);

\FI[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(5),
	o => \FI[5]~input_o\);

\Mux68~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = ( \Equal1~1_combout\ & ( \FI[5]~input_o\ & ( (!\IC1[4]~input_o\) # ((!\IC1[1]~input_o\ & (!\IC1[2]~input_o\ & \Mux39~0_combout\))) ) ) ) # ( !\Equal1~1_combout\ & ( \FI[5]~input_o\ & ( (!\IC1[1]~input_o\ & (!\IC1[4]~input_o\ & 
-- (!\IC1[2]~input_o\ & \Mux39~0_combout\))) ) ) ) # ( \Equal1~1_combout\ & ( !\FI[5]~input_o\ & ( !\IC1[4]~input_o\ $ (((!\IC1[1]~input_o\ & (!\IC1[2]~input_o\ & \Mux39~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000110110000000000100000001100110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[4]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	datad => \ALT_INV_Mux39~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_FI[5]~input_o\,
	combout => \Mux68~0_combout\);

\Fo[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[5]$latch~combout\ = ( \Fo[5]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux68~0_combout\ ) ) ) # ( !\Fo[5]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux68~0_combout\ ) ) ) # ( \Fo[5]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux68~0_combout\,
	datae => \ALT_INV_Fo[5]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Fo[5]$latch~combout\);

\SBuff[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(13) = ( SBuff(13) & ( \Mux1~3_combout\ & ( \Mult0~21\ ) ) ) # ( !SBuff(13) & ( \Mux1~3_combout\ & ( \Mult0~21\ ) ) ) # ( SBuff(13) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~21\,
	datae => ALT_INV_SBuff(13),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(13));

\mul[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(5) = ( mul(5) & ( \Mux1~3_combout\ & ( SBuff(13) ) ) ) # ( !mul(5) & ( \Mux1~3_combout\ & ( SBuff(13) ) ) ) # ( mul(5) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SBuff(13),
	datae => ALT_INV_mul(5),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => mul(5));

\SBuff[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(14) = ( SBuff(14) & ( \Mux1~3_combout\ & ( \Mult0~22\ ) ) ) # ( !SBuff(14) & ( \Mux1~3_combout\ & ( \Mult0~22\ ) ) ) # ( SBuff(14) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~22\,
	datae => ALT_INV_SBuff(14),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(14));

\mul[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(6) = ( mul(6) & ( \Mux1~3_combout\ & ( SBuff(14) ) ) ) # ( !mul(6) & ( \Mux1~3_combout\ & ( SBuff(14) ) ) ) # ( mul(6) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SBuff(14),
	datae => ALT_INV_mul(6),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => mul(6));

\SBuff[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(15) = ( SBuff(15) & ( \Mux1~3_combout\ & ( \Mult0~23\ ) ) ) # ( !SBuff(15) & ( \Mux1~3_combout\ & ( \Mult0~23\ ) ) ) # ( SBuff(15) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~23\,
	datae => ALT_INV_SBuff(15),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(15));

\mul[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(7) = ( mul(7) & ( \Mux1~3_combout\ & ( SBuff(15) ) ) ) # ( !mul(7) & ( \Mux1~3_combout\ & ( SBuff(15) ) ) ) # ( mul(7) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SBuff(15),
	datae => ALT_INV_mul(7),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => mul(7));

\SBuff[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(8) = ( SBuff(8) & ( \Mux1~3_combout\ & ( \Mult0~16\ ) ) ) # ( !SBuff(8) & ( \Mux1~3_combout\ & ( \Mult0~16\ ) ) ) # ( SBuff(8) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~16\,
	datae => ALT_INV_SBuff(8),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(8));

\mul[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(0) = ( mul(0) & ( \Mux1~3_combout\ & ( SBuff(8) ) ) ) # ( !mul(0) & ( \Mux1~3_combout\ & ( SBuff(8) ) ) ) # ( mul(0) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SBuff(8),
	datae => ALT_INV_mul(0),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => mul(0));

\SBuff[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(9) = ( SBuff(9) & ( \Mux1~3_combout\ & ( \Mult0~17\ ) ) ) # ( !SBuff(9) & ( \Mux1~3_combout\ & ( \Mult0~17\ ) ) ) # ( SBuff(9) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~17\,
	datae => ALT_INV_SBuff(9),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(9));

\mul[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(1) = ( mul(1) & ( \Mux1~3_combout\ & ( SBuff(9) ) ) ) # ( !mul(1) & ( \Mux1~3_combout\ & ( SBuff(9) ) ) ) # ( mul(1) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SBuff(9),
	datae => ALT_INV_mul(1),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => mul(1));

\SBuff[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(10) = ( SBuff(10) & ( \Mux1~3_combout\ & ( \Mult0~18\ ) ) ) # ( !SBuff(10) & ( \Mux1~3_combout\ & ( \Mult0~18\ ) ) ) # ( SBuff(10) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~18\,
	datae => ALT_INV_SBuff(10),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(10));

\mul[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(2) = ( mul(2) & ( \Mux1~3_combout\ & ( SBuff(10) ) ) ) # ( !mul(2) & ( \Mux1~3_combout\ & ( SBuff(10) ) ) ) # ( mul(2) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SBuff(10),
	datae => ALT_INV_mul(2),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => mul(2));

\SBuff[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(11) = ( SBuff(11) & ( \Mux1~3_combout\ & ( \Mult0~19\ ) ) ) # ( !SBuff(11) & ( \Mux1~3_combout\ & ( \Mult0~19\ ) ) ) # ( SBuff(11) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~19\,
	datae => ALT_INV_SBuff(11),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(11));

\mul[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(3) = ( mul(3) & ( \Mux1~3_combout\ & ( SBuff(11) ) ) ) # ( !mul(3) & ( \Mux1~3_combout\ & ( SBuff(11) ) ) ) # ( mul(3) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SBuff(11),
	datae => ALT_INV_mul(3),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => mul(3));

\SBuff[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- SBuff(12) = ( SBuff(12) & ( \Mux1~3_combout\ & ( \Mult0~20\ ) ) ) # ( !SBuff(12) & ( \Mux1~3_combout\ & ( \Mult0~20\ ) ) ) # ( SBuff(12) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mult0~20\,
	datae => ALT_INV_SBuff(12),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => SBuff(12));

\mul[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- mul(4) = ( mul(4) & ( \Mux1~3_combout\ & ( SBuff(12) ) ) ) # ( !mul(4) & ( \Mux1~3_combout\ & ( SBuff(12) ) ) ) # ( mul(4) & ( !\Mux1~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SBuff(12),
	datae => ALT_INV_mul(4),
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => mul(4));

\Mux69~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = ( !mul(4) & ( (!mul(0) & (!mul(1) & (!mul(2) & !mul(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_mul(0),
	datab => ALT_INV_mul(1),
	datac => ALT_INV_mul(2),
	datad => ALT_INV_mul(3),
	datae => ALT_INV_mul(4),
	combout => \Mux69~0_combout\);

\Mux69~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~1_combout\ = ( \Mux1~1_combout\ & ( (((!\Mux69~0_combout\) # (mul(7))) # (mul(6))) # (mul(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110111111100000000000000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_mul(5),
	datab => ALT_INV_mul(6),
	datac => ALT_INV_mul(7),
	datad => \ALT_INV_Mux69~0_combout\,
	datae => \ALT_INV_Mux1~1_combout\,
	combout => \Mux69~1_combout\);

\FI[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(6),
	o => \FI[6]~input_o\);

\Mux53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (!\IC1[1]~input_o\ & (\IC1[0]~input_o\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	combout => \Mux53~0_combout\);

add_sub : cyclonev_lcell_comb
-- Equation(s):
-- \add_sub~combout\ = ( \add_sub~combout\ & ( \Mux44~0_combout\ & ( \Mux53~0_combout\ ) ) ) # ( !\add_sub~combout\ & ( \Mux44~0_combout\ & ( \Mux53~0_combout\ ) ) ) # ( \add_sub~combout\ & ( !\Mux44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux53~0_combout\,
	datae => \ALT_INV_add_sub~combout\,
	dataf => \ALT_INV_Mux44~0_combout\,
	combout => \add_sub~combout\);

\lpm_add_sub_component|auto_generated|add_sub_cella[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\ = CARRY(( VCC ) + ( \FI[6]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_FI[6]~input_o\,
	cin => GND,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\);

\lpm_add_sub_component|auto_generated|add_sub_cella[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\ = CARRY(( \D11[0]~input_o\ ) + ( !\add_sub~combout\ $ (\D12[0]~input_o\) ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_D11[0]~input_o\,
	dataf => \ALT_INV_D12[0]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\);

\lpm_add_sub_component|auto_generated|add_sub_cella[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\ = CARRY(( \D11[1]~input_o\ ) + ( !\add_sub~combout\ $ (\D12[1]~input_o\) ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_D11[1]~input_o\,
	dataf => \ALT_INV_D12[1]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\);

\lpm_add_sub_component|auto_generated|add_sub_cella[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\ = CARRY(( \D11[2]~input_o\ ) + ( !\add_sub~combout\ $ (\D12[2]~input_o\) ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_D11[2]~input_o\,
	dataf => \ALT_INV_D12[2]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\);

\lpm_add_sub_component|auto_generated|add_sub_cella[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\ = CARRY(( \D11[3]~input_o\ ) + ( !\add_sub~combout\ $ (\D12[3]~input_o\) ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_D11[3]~input_o\,
	dataf => \ALT_INV_D12[3]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\);

\lpm_add_sub_component|auto_generated|add_sub_cella[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\ = CARRY(( \D11[4]~input_o\ ) + ( !\add_sub~combout\ $ (\D12[4]~input_o\) ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_D11[4]~input_o\,
	dataf => \ALT_INV_D12[4]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\,
	cout => \lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\);

\lpm_add_sub_component|auto_generated|add_sub_cella[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \lpm_add_sub_component|auto_generated|cout\ = CARRY(( \D11[5]~input_o\ ) + ( !\add_sub~combout\ $ (\D12[5]~input_o\) ) + ( \lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add_sub~combout\,
	datad => \ALT_INV_D11[5]~input_o\,
	dataf => \ALT_INV_D12[5]~input_o\,
	cin => \lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\,
	cout => \lpm_add_sub_component|auto_generated|cout\);

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

\Mux69~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~2_combout\ = (!\IC1[1]~input_o\ & ((!\IC1[0]~input_o\ & (\FI[6]~input_o\)) # (\IC1[0]~input_o\ & ((\lpm_add_sub_component|auto_generated|cout~1_sumout\))))) # (\IC1[1]~input_o\ & (!\IC1[0]~input_o\ & 
-- ((\lpm_add_sub_component|auto_generated|cout~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001101110000010000110111000001000011011100000100001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[0]~input_o\,
	datac => \ALT_INV_FI[6]~input_o\,
	datad => \lpm_add_sub_component|auto_generated|ALT_INV_cout~1_sumout\,
	combout => \Mux69~2_combout\);

\Mux69~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux69~3_combout\ = ( \Mux69~2_combout\ & ( (!\IC1[4]~input_o\ & (((!\IC1[3]~input_o\ & !\IC1[2]~input_o\)) # (\Mux69~1_combout\))) ) ) # ( !\Mux69~2_combout\ & ( (!\IC1[4]~input_o\ & \Mux69~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100100000001100110000000000110011001000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[3]~input_o\,
	datab => \ALT_INV_IC1[4]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	datad => \ALT_INV_Mux69~1_combout\,
	datae => \ALT_INV_Mux69~2_combout\,
	combout => \Mux69~3_combout\);

\Mux70~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = ( \Mux1~0_combout\ & ( ((\IC1[3]~input_o\ & (\IC1[2]~input_o\ & \IC1[1]~input_o\))) # (\IC1[4]~input_o\) ) ) # ( !\Mux1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101011111111111111111110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[4]~input_o\,
	datab => \ALT_INV_IC1[3]~input_o\,
	datac => \ALT_INV_IC1[2]~input_o\,
	datad => \ALT_INV_IC1[1]~input_o\,
	datae => \ALT_INV_Mux1~0_combout\,
	combout => \Mux70~0_combout\);

\Fo[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[6]$latch~combout\ = ( \Fo[6]$latch~combout\ & ( \Mux70~0_combout\ ) ) # ( \Fo[6]$latch~combout\ & ( !\Mux70~0_combout\ & ( \Mux69~3_combout\ ) ) ) # ( !\Fo[6]$latch~combout\ & ( !\Mux70~0_combout\ & ( \Mux69~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux69~3_combout\,
	datae => \ALT_INV_Fo[6]$latch~combout\,
	dataf => \ALT_INV_Mux70~0_combout\,
	combout => \Fo[6]$latch~combout\);

\FI[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FI(7),
	o => \FI[7]~input_o\);

\Mux71~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = ( Do(7) & ( \FI[7]~input_o\ & ( (\Mux1~0_combout\ & ((!\IC1[4]~input_o\) # (\Mux34~0_combout\))) ) ) ) # ( !Do(7) & ( \FI[7]~input_o\ & ( (!\IC1[1]~input_o\ & (!\IC1[4]~input_o\ & (\Mux34~0_combout\ & \Mux1~0_combout\))) ) ) ) # ( 
-- Do(7) & ( !\FI[7]~input_o\ & ( (\Mux1~0_combout\ & ((!\IC1[4]~input_o\ & ((!\Mux34~0_combout\) # (\IC1[1]~input_o\))) # (\IC1[4]~input_o\ & ((\Mux34~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100011100000000000010000000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IC1[1]~input_o\,
	datab => \ALT_INV_IC1[4]~input_o\,
	datac => \ALT_INV_Mux34~0_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	datae => ALT_INV_Do(7),
	dataf => \ALT_INV_FI[7]~input_o\,
	combout => \Mux71~0_combout\);

\Fo[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fo[7]$latch~combout\ = ( \Fo[7]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux71~0_combout\ ) ) ) # ( !\Fo[7]$latch~combout\ & ( \Mux62~0_combout\ & ( \Mux71~0_combout\ ) ) ) # ( \Fo[7]$latch~combout\ & ( !\Mux62~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux71~0_combout\,
	datae => \ALT_INV_Fo[7]$latch~combout\,
	dataf => \ALT_INV_Mux62~0_combout\,
	combout => \Fo[7]$latch~combout\);

ww_Do1(0) <= \Do1[0]~output_o\;

ww_Do1(1) <= \Do1[1]~output_o\;

ww_Do1(2) <= \Do1[2]~output_o\;

ww_Do1(3) <= \Do1[3]~output_o\;

ww_Do1(4) <= \Do1[4]~output_o\;

ww_Do1(5) <= \Do1[5]~output_o\;

ww_Do1(6) <= \Do1[6]~output_o\;

ww_Do1(7) <= \Do1[7]~output_o\;

ww_Fo(0) <= \Fo[0]~output_o\;

ww_Fo(1) <= \Fo[1]~output_o\;

ww_Fo(2) <= \Fo[2]~output_o\;

ww_Fo(3) <= \Fo[3]~output_o\;

ww_Fo(4) <= \Fo[4]~output_o\;

ww_Fo(5) <= \Fo[5]~output_o\;

ww_Fo(6) <= \Fo[6]~output_o\;

ww_Fo(7) <= \Fo[7]~output_o\;
END structure;


