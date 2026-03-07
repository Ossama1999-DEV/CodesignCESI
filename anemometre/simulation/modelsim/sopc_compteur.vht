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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/07/2026 18:31:41"
                                                            
-- Vhdl Test Bench template for design  :  sopc_compteur
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sopc_compteur_vhd_tst IS
END sopc_compteur_vhd_tst;
ARCHITECTURE sopc_compteur_arch OF sopc_compteur_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ANEMO_IN : STD_LOGIC;
SIGNAL boutons : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL Leds : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PWM_OUT : STD_LOGIC;
COMPONENT sopc_compteur
	PORT (
	ANEMO_IN : IN STD_LOGIC;
	boutons : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	clock : IN STD_LOGIC;
	Leds : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PWM_OUT : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sopc_compteur
	PORT MAP (
-- list connections between master ports and signals
	ANEMO_IN => ANEMO_IN,
	boutons => boutons,
	clock => clock,
	Leds => Leds,
	PWM_OUT => PWM_OUT
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END sopc_compteur_arch;
