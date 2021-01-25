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
-- Generated on "10/06/2020 22:19:23"
                                                             
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
SIGNAL D11 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL D12 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Do1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL FI : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Fo : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IC1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ALU
	PORT (
	D11 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	D12 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Do1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	FI : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Fo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IC1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	D11 => D11,
	D12 => D12,
	Do1 => Do1,
	FI => FI,
	Fo => Fo,
	IC1 => IC1
	);
-- D11[7]
t_prcs_D11_7: PROCESS
BEGIN
	D11(7) <= '1';
WAIT;
END PROCESS t_prcs_D11_7;
-- D11[6]
t_prcs_D11_6: PROCESS
BEGIN
	D11(6) <= '0';
WAIT;
END PROCESS t_prcs_D11_6;
-- D11[5]
t_prcs_D11_5: PROCESS
BEGIN
	D11(5) <= '0';
WAIT;
END PROCESS t_prcs_D11_5;
-- D11[4]
t_prcs_D11_4: PROCESS
BEGIN
	D11(4) <= '0';
WAIT;
END PROCESS t_prcs_D11_4;
-- D11[3]
t_prcs_D11_3: PROCESS
BEGIN
	D11(3) <= '0';
WAIT;
END PROCESS t_prcs_D11_3;
-- D11[2]
t_prcs_D11_2: PROCESS
BEGIN
	D11(2) <= '0';
WAIT;
END PROCESS t_prcs_D11_2;
-- D11[1]
t_prcs_D11_1: PROCESS
BEGIN
	D11(1) <= '1';
WAIT;
END PROCESS t_prcs_D11_1;
-- D11[0]
t_prcs_D11_0: PROCESS
BEGIN
	D11(0) <= '0';
WAIT;
END PROCESS t_prcs_D11_0;
-- D12[7]
t_prcs_D12_7: PROCESS
BEGIN
	D12(7) <= '0';
WAIT;
END PROCESS t_prcs_D12_7;
-- D12[6]
t_prcs_D12_6: PROCESS
BEGIN
	D12(6) <= '1';
WAIT;
END PROCESS t_prcs_D12_6;
-- D12[5]
t_prcs_D12_5: PROCESS
BEGIN
	D12(5) <= '1';
WAIT;
END PROCESS t_prcs_D12_5;
-- D12[4]
t_prcs_D12_4: PROCESS
BEGIN
	D12(4) <= '1';
WAIT;
END PROCESS t_prcs_D12_4;
-- D12[3]
t_prcs_D12_3: PROCESS
BEGIN
	D12(3) <= '1';
WAIT;
END PROCESS t_prcs_D12_3;
-- D12[2]
t_prcs_D12_2: PROCESS
BEGIN
	D12(2) <= '1';
WAIT;
END PROCESS t_prcs_D12_2;
-- D12[1]
t_prcs_D12_1: PROCESS
BEGIN
	D12(1) <= '1';
WAIT;
END PROCESS t_prcs_D12_1;
-- D12[0]
t_prcs_D12_0: PROCESS
BEGIN
	D12(0) <= '1';
WAIT;
END PROCESS t_prcs_D12_0;
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
-- IC1[7]
t_prcs_IC1_7: PROCESS
BEGIN
	IC1(7) <= '0';
WAIT;
END PROCESS t_prcs_IC1_7;
-- IC1[6]
t_prcs_IC1_6: PROCESS
BEGIN
	IC1(6) <= '0';
WAIT;
END PROCESS t_prcs_IC1_6;
-- IC1[5]
t_prcs_IC1_5: PROCESS
BEGIN
	IC1(5) <= '0';
WAIT;
END PROCESS t_prcs_IC1_5;
-- IC1[4]
t_prcs_IC1_4: PROCESS
BEGIN
	IC1(4) <= '0';
WAIT;
END PROCESS t_prcs_IC1_4;
-- IC1[3]
t_prcs_IC1_3: PROCESS
BEGIN
	IC1(3) <= '0';
WAIT;
END PROCESS t_prcs_IC1_3;
-- IC1[2]
t_prcs_IC1_2: PROCESS
BEGIN
	IC1(2) <= '0';
WAIT;
END PROCESS t_prcs_IC1_2;
-- IC1[1]
t_prcs_IC1_1: PROCESS
BEGIN
	IC1(1) <= '1';
WAIT;
END PROCESS t_prcs_IC1_1;
-- IC1[0]
t_prcs_IC1_0: PROCESS
BEGIN
	IC1(0) <= '0';
WAIT;
END PROCESS t_prcs_IC1_0;
END ALU_arch;
