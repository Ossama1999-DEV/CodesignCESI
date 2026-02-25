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
-- Generated on "02/23/2026 11:29:27"
                                                            
-- Vhdl Test Bench template for design  :  anemometre
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY anemometre_vhd_tst IS
END anemometre_vhd_tst;
ARCHITECTURE anemometre_arch OF anemometre_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL chipselect : STD_LOGIC;
SIGNAL clk_50M : STD_LOGIC;
SIGNAL continu_in : STD_LOGIC;
SIGNAL data_anemometre : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_valid : STD_LOGIC;
SIGNAL in_freq_anemometre : STD_LOGIC;
SIGNAL raz_n_in : STD_LOGIC;
SIGNAL readdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset_n : STD_LOGIC;
SIGNAL start_stop_in : STD_LOGIC;
SIGNAL write_n : STD_LOGIC;
SIGNAL writedata : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT anemometre
	PORT (
	address : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	chipselect : IN STD_LOGIC;
	clk_50M : IN STD_LOGIC;
	continu_in : IN STD_LOGIC;
	data_anemometre : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_valid : OUT STD_LOGIC;
	in_freq_anemometre : IN STD_LOGIC;
	raz_n_in : IN STD_LOGIC;
	readdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset_n : IN STD_LOGIC;
	start_stop_in : IN STD_LOGIC;
	write_n : IN STD_LOGIC;
	writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : anemometre
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	chipselect => chipselect,
	clk_50M => clk_50M,
	continu_in => continu_in,
	data_anemometre => data_anemometre,
	data_valid => data_valid,
	in_freq_anemometre => in_freq_anemometre,
	raz_n_in => raz_n_in,
	readdata => readdata,
	reset_n => reset_n,
	start_stop_in => start_stop_in,
	write_n => write_n,
	writedata => writedata
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
END anemometre_arch;
