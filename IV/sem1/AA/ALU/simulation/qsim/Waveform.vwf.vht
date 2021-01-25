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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/05/2020 20:04:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_vhd_vec_tst IS
END ALU_vhd_vec_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL D1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL D2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Do : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL FI : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Fo : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IC : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ALU
	PORT (
	D1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	D2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Do : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	FI : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Fo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IC : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	D1 => D1,
	D2 => D2,
	Do => Do,
	FI => FI,
	Fo => Fo,
	IC => IC
	);
-- D1[7]
t_prcs_D1_7: PROCESS
BEGIN
	D1(7) <= '0';
WAIT;
END PROCESS t_prcs_D1_7;
-- D1[6]
t_prcs_D1_6: PROCESS
BEGIN
	D1(6) <= '0';
WAIT;
END PROCESS t_prcs_D1_6;
-- D1[5]
t_prcs_D1_5: PROCESS
BEGIN
	D1(5) <= '0';
WAIT;
END PROCESS t_prcs_D1_5;
-- D1[4]
t_prcs_D1_4: PROCESS
BEGIN
	D1(4) <= '0';
WAIT;
END PROCESS t_prcs_D1_4;
-- D1[3]
t_prcs_D1_3: PROCESS
BEGIN
	D1(3) <= '0';
	WAIT FOR 20000 ps;
	D1(3) <= '1';
	WAIT FOR 10000 ps;
	D1(3) <= '0';
WAIT;
END PROCESS t_prcs_D1_3;
-- D1[2]
t_prcs_D1_2: PROCESS
BEGIN
	D1(2) <= '0';
	WAIT FOR 20000 ps;
	D1(2) <= '1';
	WAIT FOR 10000 ps;
	D1(2) <= '0';
WAIT;
END PROCESS t_prcs_D1_2;
-- D1[1]
t_prcs_D1_1: PROCESS
BEGIN
	D1(1) <= '0';
WAIT;
END PROCESS t_prcs_D1_1;
-- D1[0]
t_prcs_D1_0: PROCESS
BEGIN
	D1(0) <= '0';
	WAIT FOR 20000 ps;
	D1(0) <= '1';
	WAIT FOR 10000 ps;
	D1(0) <= '0';
WAIT;
END PROCESS t_prcs_D1_0;
-- D2[7]
t_prcs_D2_7: PROCESS
BEGIN
	D2(7) <= '0';
WAIT;
END PROCESS t_prcs_D2_7;
-- D2[6]
t_prcs_D2_6: PROCESS
BEGIN
	D2(6) <= '0';
WAIT;
END PROCESS t_prcs_D2_6;
-- D2[5]
t_prcs_D2_5: PROCESS
BEGIN
	D2(5) <= '0';
WAIT;
END PROCESS t_prcs_D2_5;
-- D2[4]
t_prcs_D2_4: PROCESS
BEGIN
	D2(4) <= '0';
WAIT;
END PROCESS t_prcs_D2_4;
-- D2[3]
t_prcs_D2_3: PROCESS
BEGIN
	D2(3) <= '0';
WAIT;
END PROCESS t_prcs_D2_3;
-- D2[2]
t_prcs_D2_2: PROCESS
BEGIN
	D2(2) <= '0';
WAIT;
END PROCESS t_prcs_D2_2;
-- D2[1]
t_prcs_D2_1: PROCESS
BEGIN
	D2(1) <= '0';
	WAIT FOR 20000 ps;
	D2(1) <= '1';
	WAIT FOR 10000 ps;
	D2(1) <= '0';
WAIT;
END PROCESS t_prcs_D2_1;
-- D2[0]
t_prcs_D2_0: PROCESS
BEGIN
	D2(0) <= '0';
WAIT;
END PROCESS t_prcs_D2_0;
-- FI[7]
t_prcs_FI_7: PROCESS
BEGIN
	FI(7) <= '0';
WAIT;
END PROCESS t_prcs_FI_7;
-- FI[6]
t_prcs_FI_6: PROCESS
BEGIN
	FI(6) <= '0';
WAIT;
END PROCESS t_prcs_FI_6;
-- FI[5]
t_prcs_FI_5: PROCESS
BEGIN
	FI(5) <= '0';
WAIT;
END PROCESS t_prcs_FI_5;
-- FI[4]
t_prcs_FI_4: PROCESS
BEGIN
	FI(4) <= '0';
WAIT;
END PROCESS t_prcs_FI_4;
-- FI[3]
t_prcs_FI_3: PROCESS
BEGIN
	FI(3) <= '0';
WAIT;
END PROCESS t_prcs_FI_3;
-- FI[2]
t_prcs_FI_2: PROCESS
BEGIN
	FI(2) <= '0';
WAIT;
END PROCESS t_prcs_FI_2;
-- FI[1]
t_prcs_FI_1: PROCESS
BEGIN
	FI(1) <= '0';
WAIT;
END PROCESS t_prcs_FI_1;
-- FI[0]
t_prcs_FI_0: PROCESS
BEGIN
	FI(0) <= '0';
WAIT;
END PROCESS t_prcs_FI_0;
-- IC[7]
t_prcs_IC_7: PROCESS
BEGIN
	IC(7) <= '0';
WAIT;
END PROCESS t_prcs_IC_7;
-- IC[6]
t_prcs_IC_6: PROCESS
BEGIN
	IC(6) <= '0';
WAIT;
END PROCESS t_prcs_IC_6;
-- IC[5]
t_prcs_IC_5: PROCESS
BEGIN
	IC(5) <= '0';
WAIT;
END PROCESS t_prcs_IC_5;
-- IC[4]
t_prcs_IC_4: PROCESS
BEGIN
	IC(4) <= '0';
WAIT;
END PROCESS t_prcs_IC_4;
-- IC[3]
t_prcs_IC_3: PROCESS
BEGIN
	IC(3) <= '0';
WAIT;
END PROCESS t_prcs_IC_3;
-- IC[2]
t_prcs_IC_2: PROCESS
BEGIN
	IC(2) <= '0';
WAIT;
END PROCESS t_prcs_IC_2;
-- IC[1]
t_prcs_IC_1: PROCESS
BEGIN
	IC(1) <= '0';
WAIT;
END PROCESS t_prcs_IC_1;
-- IC[0]
t_prcs_IC_0: PROCESS
BEGIN
	IC(0) <= '0';
	WAIT FOR 20000 ps;
	IC(0) <= '1';
	WAIT FOR 10000 ps;
	IC(0) <= '0';
WAIT;
END PROCESS t_prcs_IC_0;
END ALU_arch;
