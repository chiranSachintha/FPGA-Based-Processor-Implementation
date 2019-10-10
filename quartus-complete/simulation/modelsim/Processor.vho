-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 10.0 Build 218 06/27/2010 SJ Web Edition"

-- DATE "07/19/2018 18:10:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testmp IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	end1 : OUT std_logic;
	s : OUT std_logic_vector(7 DOWNTO 0);
	rx : IN std_logic;
	tx : OUT std_logic
	);
END testmp;

-- Design Ports Information
-- start	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end1	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rx	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF testmp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_end1 : std_logic;
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pro|alu|Mux16~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tr|transmeterClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \re|activeClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pro|cu|Mux2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a57~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a49~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a60~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a52~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a59~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a51~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a42~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a58~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a50~portbdataout\ : std_logic;
SIGNAL \Pram|memory_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \re|localclockOS|flag~q\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[7]~23_combout\ : std_logic;
SIGNAL \pro|alu|Add2~4_combout\ : std_logic;
SIGNAL \pro|alu|Add2~8_combout\ : std_logic;
SIGNAL \pro|alu|Add2~12_combout\ : std_logic;
SIGNAL \pro|alu|Add2~14_combout\ : std_logic;
SIGNAL \pro|alu|Add2~16_combout\ : std_logic;
SIGNAL \pro|alu|Add2~20_combout\ : std_logic;
SIGNAL \pro|alu|Add2~27\ : std_logic;
SIGNAL \pro|alu|Add1~4_combout\ : std_logic;
SIGNAL \pro|alu|Add1~8_combout\ : std_logic;
SIGNAL \pro|alu|Add1~12_combout\ : std_logic;
SIGNAL \pro|alu|Add1~14_combout\ : std_logic;
SIGNAL \pro|alu|Add1~20_combout\ : std_logic;
SIGNAL \pro|alu|Add1~24_combout\ : std_logic;
SIGNAL \pro|alu|Add0~4_combout\ : std_logic;
SIGNAL \pro|alu|Add0~12_combout\ : std_logic;
SIGNAL \pro|alu|Add0~16_combout\ : std_logic;
SIGNAL \pro|alu|Add0~18_combout\ : std_logic;
SIGNAL \pro|alu|Add0~22_combout\ : std_logic;
SIGNAL \pro|alu|Add0~28_combout\ : std_logic;
SIGNAL \pro|alu|Add2~28_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[1]~12\ : std_logic;
SIGNAL \re|localclockOS|accumulator[1]~11_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[2]~14\ : std_logic;
SIGNAL \re|localclockOS|accumulator[2]~13_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[3]~16\ : std_logic;
SIGNAL \re|localclockOS|accumulator[3]~15_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[4]~18\ : std_logic;
SIGNAL \re|localclockOS|accumulator[4]~17_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[5]~20\ : std_logic;
SIGNAL \re|localclockOS|accumulator[5]~19_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[6]~22\ : std_logic;
SIGNAL \re|localclockOS|accumulator[6]~21_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[7]~24\ : std_logic;
SIGNAL \re|localclockOS|accumulator[7]~23_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[8]~25_combout\ : std_logic;
SIGNAL \tr|Mux0~3_combout\ : std_logic;
SIGNAL \tr|Mux0~4_combout\ : std_logic;
SIGNAL \tr|Mux0~5_combout\ : std_logic;
SIGNAL \tr|Mux0~6_combout\ : std_logic;
SIGNAL \pro|cu|musec~1_combout\ : std_logic;
SIGNAL \Selector18~5_combout\ : std_logic;
SIGNAL \pro|cu|musec~4_combout\ : std_logic;
SIGNAL \pro|cu|next_state~5_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~4_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~7_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~28_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~34_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~36_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~37_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~38_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~39_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~40_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~41_combout\ : std_logic;
SIGNAL \pro|cu|Mux1~0_combout\ : std_logic;
SIGNAL \Selector18~13_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \countn~7_combout\ : std_logic;
SIGNAL \countn~11_combout\ : std_logic;
SIGNAL \pro|cu|write~q\ : std_logic;
SIGNAL \din[2]~6_combout\ : std_logic;
SIGNAL \tr|localclockOS|Equal0~1_combout\ : std_logic;
SIGNAL \pro|alu|Equal0~0_combout\ : std_logic;
SIGNAL \re|activeClock~combout\ : std_logic;
SIGNAL \pro|cu|musec~5_combout\ : std_logic;
SIGNAL \pro|cu|musec~6_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \count~10_combout\ : std_logic;
SIGNAL \re|Decoder1~7_combout\ : std_logic;
SIGNAL \re|character[2]~6_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator~8_combout\ : std_logic;
SIGNAL \pro|cu|musec~10_combout\ : std_logic;
SIGNAL \pro|cu|musec~12_combout\ : std_logic;
SIGNAL \pro|cu|musec~15_combout\ : std_logic;
SIGNAL \re|localclockOS|Equal0~0_combout\ : std_logic;
SIGNAL \re|localclockOS|Equal0~1_combout\ : std_logic;
SIGNAL \re|localclockOS|flag~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux3~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux5~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux5~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux5~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux5~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux5~4_combout\ : std_logic;
SIGNAL \pro|mux|Mux6~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux6~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux6~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux6~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux6~4_combout\ : std_logic;
SIGNAL \pro|mux|Mux9~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux9~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux9~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux9~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux9~4_combout\ : std_logic;
SIGNAL \pro|mux|Mux9~combout\ : std_logic;
SIGNAL \pro|mux|Mux11~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux11~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux11~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux11~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux11~4_combout\ : std_logic;
SIGNAL \pro|mux|Mux12~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux12~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux13~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux13~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux13~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux13~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux13~4_combout\ : std_logic;
SIGNAL \pro|mux|Mux13~combout\ : std_logic;
SIGNAL \pro|mux|Mux1~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux1~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux1~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux1~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux1~4_combout\ : std_logic;
SIGNAL \pro|alu|Mux15~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux14~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux2~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux2~1_combout\ : std_logic;
SIGNAL \pro|alu|Mux2~2_combout\ : std_logic;
SIGNAL \pro|alu|Mux4~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux4~1_combout\ : std_logic;
SIGNAL \pro|alu|Mux6~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux6~1_combout\ : std_logic;
SIGNAL \pro|alu|Mux6~2_combout\ : std_logic;
SIGNAL \pro|alu|Mux7~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux7~1_combout\ : std_logic;
SIGNAL \pro|alu|Mux9~2_combout\ : std_logic;
SIGNAL \pro|alu|Mux10~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux10~1_combout\ : std_logic;
SIGNAL \pro|alu|Mux11~3_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator~8_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator~9_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator~10_combout\ : std_logic;
SIGNAL \pro|cu|musec~25_combout\ : std_logic;
SIGNAL \pro|alu|Mux9~5_combout\ : std_logic;
SIGNAL \pro|alu|Mux11~6_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[0]~27_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \re|activeClock~clkctrl_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \staten.nope~0_combout\ : std_logic;
SIGNAL \staten.nope~q\ : std_logic;
SIGNAL \countn~3_combout\ : std_logic;
SIGNAL \countn~15_combout\ : std_logic;
SIGNAL \countn~14_combout\ : std_logic;
SIGNAL \countn~13_combout\ : std_logic;
SIGNAL \countn~12_combout\ : std_logic;
SIGNAL \countn~9_combout\ : std_logic;
SIGNAL \countn~8_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \re|state~1_combout\ : std_logic;
SIGNAL \re|filter~0_combout\ : std_logic;
SIGNAL \re|filter[1]~1_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \re|filter~2_combout\ : std_logic;
SIGNAL \re|flagStart~0_combout\ : std_logic;
SIGNAL \re|WideOr0~0_combout\ : std_logic;
SIGNAL \re|flagStart~1_combout\ : std_logic;
SIGNAL \re|flagStart~q\ : std_logic;
SIGNAL \re|WideOr1~0_combout\ : std_logic;
SIGNAL \re|WideOr2~0_combout\ : std_logic;
SIGNAL \re|state~0_combout\ : std_logic;
SIGNAL \re|Decoder1~0_combout\ : std_logic;
SIGNAL \re|dataReady~0_combout\ : std_logic;
SIGNAL \re|dataReady~q\ : std_logic;
SIGNAL \tr|WideOr0~0_combout\ : std_logic;
SIGNAL \writeu~0_combout\ : std_logic;
SIGNAL \startt~0_combout\ : std_logic;
SIGNAL \startt~q\ : std_logic;
SIGNAL \tr|state[1]~0_combout\ : std_logic;
SIGNAL \tr|WideOr2~0_combout\ : std_logic;
SIGNAL \tr|WideOr1~0_combout\ : std_logic;
SIGNAL \tr|WideOr4~0_combout\ : std_logic;
SIGNAL \tr|flag~0_combout\ : std_logic;
SIGNAL \tr|flag~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector18~12_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector18~10_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector18~11_combout\ : std_logic;
SIGNAL \Selector18~14_combout\ : std_logic;
SIGNAL \Selector18~15_combout\ : std_logic;
SIGNAL \Selector18~17_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \staten.trans~q\ : std_logic;
SIGNAL \countn[15]~1_combout\ : std_logic;
SIGNAL \countn[15]~2_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \countn~0_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \staten.00~0_combout\ : std_logic;
SIGNAL \staten.00~q\ : std_logic;
SIGNAL \Selector18~4_combout\ : std_logic;
SIGNAL \countn~10_combout\ : std_logic;
SIGNAL \Selector18~6_combout\ : std_logic;
SIGNAL \countn~16_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector18~7_combout\ : std_logic;
SIGNAL \Selector18~8_combout\ : std_logic;
SIGNAL \Selector18~9_combout\ : std_logic;
SIGNAL \Selector18~18_combout\ : std_logic;
SIGNAL \Selector18~16_combout\ : std_logic;
SIGNAL \staten.pros~q\ : std_logic;
SIGNAL \writeu~1_combout\ : std_logic;
SIGNAL \writeu~q\ : std_logic;
SIGNAL \pro|cu|musec~8_combout\ : std_logic;
SIGNAL \pro|cu|musec~9_combout\ : std_logic;
SIGNAL \startp~0_combout\ : std_logic;
SIGNAL \startp~q\ : std_logic;
SIGNAL \pro|cu|read~q\ : std_logic;
SIGNAL \read~0_combout\ : std_logic;
SIGNAL \pro|cu|musec~26_combout\ : std_logic;
SIGNAL \pro|cu|incpc~q\ : std_logic;
SIGNAL \pro|PC|d[0]~8_combout\ : std_logic;
SIGNAL \pro|cu|musec~29_combout\ : std_logic;
SIGNAL \pro|cu|musec~30_combout\ : std_logic;
SIGNAL \pro|cu|musec~7_combout\ : std_logic;
SIGNAL \pro|cu|musec~16_combout\ : std_logic;
SIGNAL \pro|cu|incac~q\ : std_logic;
SIGNAL \pro|AC|d[0]~16_combout\ : std_logic;
SIGNAL \pro|cu|musec~17_combout\ : std_logic;
SIGNAL \pro|cu|musec~18_combout\ : std_logic;
SIGNAL \pro|cu|resetac~q\ : std_logic;
SIGNAL \pro|cu|musec~11_combout\ : std_logic;
SIGNAL \pro|cu|D_select[3]~2_combout\ : std_logic;
SIGNAL \pro|PC|d[0]~9\ : std_logic;
SIGNAL \pro|PC|d[1]~10_combout\ : std_logic;
SIGNAL \pro|cu|musec~19_combout\ : std_logic;
SIGNAL \pro|cu|Equal4~0_combout\ : std_logic;
SIGNAL \pro|cu|always1~0_combout\ : std_logic;
SIGNAL \pro|cu|musec~24_combout\ : std_logic;
SIGNAL \pro|cu|M_select~3_combout\ : std_logic;
SIGNAL \pro|cu|musec~23_combout\ : std_logic;
SIGNAL \pro|cu|M_select[3]~1_combout\ : std_logic;
SIGNAL \pro|cu|musec~22_combout\ : std_logic;
SIGNAL \pro|cu|M_select[0]~0_combout\ : std_logic;
SIGNAL \pro|PC|d[1]~11\ : std_logic;
SIGNAL \pro|PC|d[2]~12_combout\ : std_logic;
SIGNAL \pro|alu|Mux16~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux16~0clkctrl_outclk\ : std_logic;
SIGNAL \pro|cu|musec~27_combout\ : std_logic;
SIGNAL \pro|cu|musec~28_combout\ : std_logic;
SIGNAL \pro|cu|resetpc~q\ : std_logic;
SIGNAL \pro|cu|musec~14_combout\ : std_logic;
SIGNAL \pro|cu|D_select[1]~1_combout\ : std_logic;
SIGNAL \pro|cu|D_select~3_combout\ : std_logic;
SIGNAL \pro|cu|musec~13_combout\ : std_logic;
SIGNAL \pro|cu|D_select[0]~0_combout\ : std_logic;
SIGNAL \pro|cu|Equal4~1_combout\ : std_logic;
SIGNAL \pro|decoder|Equal6~0_combout\ : std_logic;
SIGNAL \pro|PC|d[2]~13\ : std_logic;
SIGNAL \pro|PC|d[3]~14_combout\ : std_logic;
SIGNAL \pro|AC|d[0]~17\ : std_logic;
SIGNAL \pro|AC|d[1]~19\ : std_logic;
SIGNAL \pro|AC|d[2]~21\ : std_logic;
SIGNAL \pro|AC|d[3]~22_combout\ : std_logic;
SIGNAL \pro|AC|d[2]~20_combout\ : std_logic;
SIGNAL \pro|alu|Add1~1\ : std_logic;
SIGNAL \pro|alu|Add1~3\ : std_logic;
SIGNAL \pro|alu|Add1~5\ : std_logic;
SIGNAL \pro|alu|Add1~6_combout\ : std_logic;
SIGNAL \pro|alu|Mux0~0_combout\ : std_logic;
SIGNAL \pro|cu|musec~21_combout\ : std_logic;
SIGNAL \pro|cu|M_select~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux8~6_combout\ : std_logic;
SIGNAL \pro|mux|Mux0~0_combout\ : std_logic;
SIGNAL \pro|PC|d[3]~15\ : std_logic;
SIGNAL \pro|PC|d[4]~16_combout\ : std_logic;
SIGNAL \pro|mux|Mux0~2_combout\ : std_logic;
SIGNAL \pro|decoder|Equal3~0_combout\ : std_logic;
SIGNAL \pro|AC|d[3]~23\ : std_logic;
SIGNAL \pro|AC|d[4]~25\ : std_logic;
SIGNAL \pro|AC|d[5]~27\ : std_logic;
SIGNAL \pro|AC|d[6]~29\ : std_logic;
SIGNAL \pro|AC|d[7]~31\ : std_logic;
SIGNAL \pro|AC|d[8]~33\ : std_logic;
SIGNAL \pro|AC|d[9]~35\ : std_logic;
SIGNAL \pro|AC|d[10]~36_combout\ : std_logic;
SIGNAL \pro|AC|d[9]~34_combout\ : std_logic;
SIGNAL \pro|cu|musec~20_combout\ : std_logic;
SIGNAL \pro|alu|Mux11~2_combout\ : std_logic;
SIGNAL \pro|AC|d[8]~32_combout\ : std_logic;
SIGNAL \pro|decoder|Equal2~0_combout\ : std_logic;
SIGNAL \pro|decoder|Equal0~0_combout\ : std_logic;
SIGNAL \pro|decoder|Equal4~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux7~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux7~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux7~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux7~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux7~4_combout\ : std_logic;
SIGNAL \pro|alu|Mux8~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux8~5_combout\ : std_logic;
SIGNAL \pro|AC|d[7]~30_combout\ : std_logic;
SIGNAL \pro|AC|d[6]~28_combout\ : std_logic;
SIGNAL \pro|AC|d[5]~26_combout\ : std_logic;
SIGNAL \pro|AC|d[4]~24_combout\ : std_logic;
SIGNAL \pro|alu|Add2~1\ : std_logic;
SIGNAL \pro|alu|Add2~3\ : std_logic;
SIGNAL \pro|alu|Add2~5\ : std_logic;
SIGNAL \pro|alu|Add2~7\ : std_logic;
SIGNAL \pro|alu|Add2~9\ : std_logic;
SIGNAL \pro|alu|Add2~10_combout\ : std_logic;
SIGNAL \pro|alu|Add1~7\ : std_logic;
SIGNAL \pro|alu|Add1~9\ : std_logic;
SIGNAL \pro|alu|Add1~10_combout\ : std_logic;
SIGNAL \pro|alu|Mux5~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux5~1_combout\ : std_logic;
SIGNAL \pro|AC|d[1]~18_combout\ : std_logic;
SIGNAL \pro|PC|d[4]~17\ : std_logic;
SIGNAL \pro|PC|d[5]~18_combout\ : std_logic;
SIGNAL \pro|PC|d[5]~19\ : std_logic;
SIGNAL \pro|PC|d[6]~20_combout\ : std_logic;
SIGNAL \pro|PC|d[6]~21\ : std_logic;
SIGNAL \pro|PC|d[7]~22_combout\ : std_logic;
SIGNAL \Pram|memory_rtl_1|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \pro|decoder|Equal8~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux15~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux15~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux15~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux15~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux15~4_combout\ : std_logic;
SIGNAL \pro|decoder|Equal7~0_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \address[13]~1_combout\ : std_logic;
SIGNAL \pro|alu|Add2~19\ : std_logic;
SIGNAL \pro|alu|Add2~21\ : std_logic;
SIGNAL \pro|alu|Add2~22_combout\ : std_logic;
SIGNAL \pro|alu|Add1~17\ : std_logic;
SIGNAL \pro|alu|Add1~19\ : std_logic;
SIGNAL \pro|alu|Add1~21\ : std_logic;
SIGNAL \pro|alu|Add1~22_combout\ : std_logic;
SIGNAL \pro|alu|Mux11~4_combout\ : std_logic;
SIGNAL \pro|alu|Mux11~5_combout\ : std_logic;
SIGNAL \pro|mux|Mux4~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux4~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux4~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux4~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux4~4_combout\ : std_logic;
SIGNAL \pro|alu|Add0~21\ : std_logic;
SIGNAL \pro|alu|Add0~23\ : std_logic;
SIGNAL \pro|alu|Add0~25\ : std_logic;
SIGNAL \pro|alu|Add0~26_combout\ : std_logic;
SIGNAL \pro|alu|Add2~23\ : std_logic;
SIGNAL \pro|alu|Add2~25\ : std_logic;
SIGNAL \pro|alu|Add2~26_combout\ : std_logic;
SIGNAL \pro|alu|Mux13~0_combout\ : std_logic;
SIGNAL \pro|alu|Add1~23\ : std_logic;
SIGNAL \pro|alu|Add1~25\ : std_logic;
SIGNAL \pro|alu|Add1~26_combout\ : std_logic;
SIGNAL \pro|alu|Mux13~1_combout\ : std_logic;
SIGNAL \pro|alu|Mux13~2_combout\ : std_logic;
SIGNAL \pro|R3|d[13]~feeder_combout\ : std_logic;
SIGNAL \pro|mux|Mux2~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux2~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux2~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux2~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux2~4_combout\ : std_logic;
SIGNAL \pro|alu|Add1~27\ : std_logic;
SIGNAL \pro|alu|Add1~28_combout\ : std_logic;
SIGNAL \pro|alu|Mux14~1_combout\ : std_logic;
SIGNAL \pro|alu|Mux14~2_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \address[14]~3_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\ : std_logic;
SIGNAL \re|Decoder1~2_combout\ : std_logic;
SIGNAL \re|character[0]~1_combout\ : std_logic;
SIGNAL \din[0]~1_combout\ : std_logic;
SIGNAL \countn~5_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \address[0]~4_combout\ : std_logic;
SIGNAL \countn~6_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \address[1]~5_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \address[2]~6_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \address[3]~7_combout\ : std_logic;
SIGNAL \address[4]~8_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \address[5]~9_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \address[6]~10_combout\ : std_logic;
SIGNAL \address[7]~11_combout\ : std_logic;
SIGNAL \count~11_combout\ : std_logic;
SIGNAL \address[8]~12_combout\ : std_logic;
SIGNAL \count~12_combout\ : std_logic;
SIGNAL \address[9]~13_combout\ : std_logic;
SIGNAL \count~13_combout\ : std_logic;
SIGNAL \address[10]~14_combout\ : std_logic;
SIGNAL \count~14_combout\ : std_logic;
SIGNAL \address[11]~15_combout\ : std_logic;
SIGNAL \pro|alu|Add0~24_combout\ : std_logic;
SIGNAL \pro|alu|Add2~24_combout\ : std_logic;
SIGNAL \pro|mux|Mux3~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux3~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux3~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux3~4_combout\ : std_logic;
SIGNAL \pro|alu|Mux12~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux12~1_combout\ : std_logic;
SIGNAL \pro|alu|Mux12~2_combout\ : std_logic;
SIGNAL \countn~17_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \count~15_combout\ : std_logic;
SIGNAL \address[12]~16_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a40~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~9_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a48~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a56~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~10_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~6_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~8_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~11_combout\ : std_logic;
SIGNAL \pro|mux|Mux15~combout\ : std_logic;
SIGNAL \pro|alu|Add0~1\ : std_logic;
SIGNAL \pro|alu|Add0~3\ : std_logic;
SIGNAL \pro|alu|Add0~5\ : std_logic;
SIGNAL \pro|alu|Add0~7\ : std_logic;
SIGNAL \pro|alu|Add0~9\ : std_logic;
SIGNAL \pro|alu|Add0~10_combout\ : std_logic;
SIGNAL \pro|alu|Mux5~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux10~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux10~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux10~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux10~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux10~4_combout\ : std_logic;
SIGNAL \re|Decoder1~8_combout\ : std_logic;
SIGNAL \re|character[5]~7_combout\ : std_logic;
SIGNAL \din[5]~7_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a53~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a61~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~46_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~42_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~43_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~44_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a45~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~45_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~47_combout\ : std_logic;
SIGNAL \pro|mux|Mux10~combout\ : std_logic;
SIGNAL \pro|alu|Add0~11\ : std_logic;
SIGNAL \pro|alu|Add0~13\ : std_logic;
SIGNAL \pro|alu|Add0~14_combout\ : std_logic;
SIGNAL \pro|alu|Mux7~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux8~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux8~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux8~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux8~4_combout\ : std_logic;
SIGNAL \pro|mux|Mux8~7_combout\ : std_logic;
SIGNAL \re|Decoder1~4_combout\ : std_logic;
SIGNAL \re|character[7]~3_combout\ : std_logic;
SIGNAL \din[7]~3_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a63~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a55~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~22_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~18_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~19_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~20_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a39~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a47~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~21_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~23_combout\ : std_logic;
SIGNAL \pro|mux|Mux8~combout\ : std_logic;
SIGNAL \pro|alu|Add1~11\ : std_logic;
SIGNAL \pro|alu|Add1~13\ : std_logic;
SIGNAL \pro|alu|Add1~15\ : std_logic;
SIGNAL \pro|alu|Add1~16_combout\ : std_logic;
SIGNAL \pro|alu|Mux8~1_combout\ : std_logic;
SIGNAL \pro|alu|Mux8~2_combout\ : std_logic;
SIGNAL \pro|alu|Add2~11\ : std_logic;
SIGNAL \pro|alu|Add2~13\ : std_logic;
SIGNAL \pro|alu|Add2~15\ : std_logic;
SIGNAL \pro|alu|Add2~17\ : std_logic;
SIGNAL \pro|alu|Add2~18_combout\ : std_logic;
SIGNAL \pro|alu|Add1~18_combout\ : std_logic;
SIGNAL \pro|alu|Mux9~3_combout\ : std_logic;
SIGNAL \pro|alu|Mux9~4_combout\ : std_logic;
SIGNAL \pro|alu|Add0~15\ : std_logic;
SIGNAL \pro|alu|Add0~17\ : std_logic;
SIGNAL \pro|alu|Add0~19\ : std_logic;
SIGNAL \pro|alu|Add0~20_combout\ : std_logic;
SIGNAL \pro|alu|Mux10~2_combout\ : std_logic;
SIGNAL \pro|AC|d[10]~37\ : std_logic;
SIGNAL \pro|AC|d[11]~38_combout\ : std_logic;
SIGNAL \pro|AC|d[11]~39\ : std_logic;
SIGNAL \pro|AC|d[12]~40_combout\ : std_logic;
SIGNAL \pro|AC|d[12]~41\ : std_logic;
SIGNAL \pro|AC|d[13]~42_combout\ : std_logic;
SIGNAL \pro|AC|d[13]~43\ : std_logic;
SIGNAL \pro|AC|d[14]~44_combout\ : std_logic;
SIGNAL \pro|AC|d[14]~45\ : std_logic;
SIGNAL \pro|AC|d[15]~46_combout\ : std_logic;
SIGNAL \pro|mux|Mux0~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux0~4_combout\ : std_logic;
SIGNAL \pro|mux|Mux0~5_combout\ : std_logic;
SIGNAL \pro|mux|Mux0~6_combout\ : std_logic;
SIGNAL \pro|mux|Mux0~7_combout\ : std_logic;
SIGNAL \pro|alu|Add1~29\ : std_logic;
SIGNAL \pro|alu|Add1~30_combout\ : std_logic;
SIGNAL \pro|alu|Mux15~1_combout\ : std_logic;
SIGNAL \pro|alu|Add0~27\ : std_logic;
SIGNAL \pro|alu|Add0~29\ : std_logic;
SIGNAL \pro|alu|Add0~30_combout\ : std_logic;
SIGNAL \pro|alu|Mux15~2_combout\ : std_logic;
SIGNAL \countn~4_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \address[15]~2_combout\ : std_logic;
SIGNAL \re|Decoder1~5_combout\ : std_logic;
SIGNAL \re|character[4]~4_combout\ : std_logic;
SIGNAL \din[4]~4_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a44~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~27_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~25_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~24_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~26_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~29_combout\ : std_logic;
SIGNAL \pro|mux|Mux11~combout\ : std_logic;
SIGNAL \pro|alu|Add0~8_combout\ : std_logic;
SIGNAL \pro|alu|Mux4~2_combout\ : std_logic;
SIGNAL \Pram|memory_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \pro|decoder|Equal1~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux0~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux12~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux12~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux12~4_combout\ : std_logic;
SIGNAL \re|Decoder1~6_combout\ : std_logic;
SIGNAL \re|character[3]~5_combout\ : std_logic;
SIGNAL \din[3]~5_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~30_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~31_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~32_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a43~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~33_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~35_combout\ : std_logic;
SIGNAL \pro|mux|Mux12~combout\ : std_logic;
SIGNAL \pro|alu|Mux3~0_combout\ : std_logic;
SIGNAL \pro|alu|Add2~6_combout\ : std_logic;
SIGNAL \pro|alu|Mux3~1_combout\ : std_logic;
SIGNAL \pro|alu|Add0~6_combout\ : std_logic;
SIGNAL \pro|alu|Mux3~2_combout\ : std_logic;
SIGNAL \Pram|memory_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \pro|mux|Mux8~0_combout\ : std_logic;
SIGNAL \re|Decoder1~1_combout\ : std_logic;
SIGNAL \re|character[1]~0_combout\ : std_logic;
SIGNAL \din[1]~0_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a41~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~3_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~1_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~0_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~2_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~5_combout\ : std_logic;
SIGNAL \Pram|memory_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \pro|mux|Mux14~0_combout\ : std_logic;
SIGNAL \pro|mux|Mux14~1_combout\ : std_logic;
SIGNAL \pro|mux|Mux14~2_combout\ : std_logic;
SIGNAL \pro|mux|Mux14~3_combout\ : std_logic;
SIGNAL \pro|mux|Mux14~4_combout\ : std_logic;
SIGNAL \pro|mux|Mux14~combout\ : std_logic;
SIGNAL \pro|alu|Add1~2_combout\ : std_logic;
SIGNAL \pro|alu|Add2~2_combout\ : std_logic;
SIGNAL \pro|alu|Mux1~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux1~1_combout\ : std_logic;
SIGNAL \pro|alu|Add0~2_combout\ : std_logic;
SIGNAL \pro|alu|Mux1~2_combout\ : std_logic;
SIGNAL \Pram|memory_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \pro|decoder|Equal5~0_combout\ : std_logic;
SIGNAL \pro|alu|Add1~0_combout\ : std_logic;
SIGNAL \pro|alu|Add0~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux0~2_combout\ : std_logic;
SIGNAL \pro|alu|Add2~0_combout\ : std_logic;
SIGNAL \pro|alu|Mux0~1_combout\ : std_logic;
SIGNAL \pro|alu|Mux0~3_combout\ : std_logic;
SIGNAL \Pram|memory_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \pro|cu|Mux0~0_combout\ : std_logic;
SIGNAL \pro|cu|Mux2~0_combout\ : std_logic;
SIGNAL \pro|cu|Mux2~0clkctrl_outclk\ : std_logic;
SIGNAL \pro|cu|next_state~3_combout\ : std_logic;
SIGNAL \pro|cu|musec~0_combout\ : std_logic;
SIGNAL \pro|cu|next_state~1_combout\ : std_logic;
SIGNAL \pro|cu|musec~2_combout\ : std_logic;
SIGNAL \pro|cu|next_state[1]~0_combout\ : std_logic;
SIGNAL \pro|alu|Equal0~2_combout\ : std_logic;
SIGNAL \pro|alu|Equal0~1_combout\ : std_logic;
SIGNAL \pro|alu|Equal0~3_combout\ : std_logic;
SIGNAL \pro|alu|Equal0~4_combout\ : std_logic;
SIGNAL \pro|alu|z~q\ : std_logic;
SIGNAL \Pram|memory_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \pro|cu|Mux3~1_combout\ : std_logic;
SIGNAL \pro|cu|Mux3~0_combout\ : std_logic;
SIGNAL \pro|cu|Mux3~2_combout\ : std_logic;
SIGNAL \pro|cu|musec~3_combout\ : std_logic;
SIGNAL \pro|cu|Mux5~0_combout\ : std_logic;
SIGNAL \pro|cu|next_state~2_combout\ : std_logic;
SIGNAL \pro|cu|Mux4~0_combout\ : std_logic;
SIGNAL \pro|cu|Mux4~1_combout\ : std_logic;
SIGNAL \pro|cu|next_state~4_combout\ : std_logic;
SIGNAL \pro|cu|next_state~6_combout\ : std_logic;
SIGNAL \pro|cu|Equal0~0_combout\ : std_logic;
SIGNAL \pro|cu|Equal0~1_combout\ : std_logic;
SIGNAL \pro|cu|endp~0_combout\ : std_logic;
SIGNAL \pro|cu|endp~1_combout\ : std_logic;
SIGNAL \pro|cu|endp~q\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[0]~27_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator~10_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[1]~12\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[2]~13_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[1]~11_combout\ : std_logic;
SIGNAL \tr|localclockOS|Equal0~0_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator~9_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[2]~14\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[3]~15_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[3]~16\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[4]~17_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[4]~18\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[5]~19_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[5]~20\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[6]~21_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[6]~22\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[7]~24\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[8]~25_combout\ : std_logic;
SIGNAL \tr|localclockOS|flag~0_combout\ : std_logic;
SIGNAL \tr|localclockOS|flag~q\ : std_logic;
SIGNAL \tr|transmeterClock~combout\ : std_logic;
SIGNAL \tr|transmeterClock~clkctrl_outclk\ : std_logic;
SIGNAL \re|Decoder1~3_combout\ : std_logic;
SIGNAL \re|character[6]~2_combout\ : std_logic;
SIGNAL \din[6]~2_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a38~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a46~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~15_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~13_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~12_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~14_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a62~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|ram_block1a54~portbdataout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~16_combout\ : std_logic;
SIGNAL \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~17_combout\ : std_logic;
SIGNAL \tr|data[7]~0_combout\ : std_logic;
SIGNAL \tr|Mux0~1_combout\ : std_logic;
SIGNAL \tr|WideOr3~0_combout\ : std_logic;
SIGNAL \tr|Mux0~0_combout\ : std_logic;
SIGNAL \tr|Mux0~2_combout\ : std_logic;
SIGNAL \tr|dataBit~0_combout\ : std_logic;
SIGNAL \tr|dataBit~feeder_combout\ : std_logic;
SIGNAL \tr|dataBit~q\ : std_logic;
SIGNAL \re|character\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \re|filter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \re|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tr|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pro|cu|D_select\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pro|cu|mins\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pro|cu|operation\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pro|alu|data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pro|R1|d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL count : std_logic_vector(16 DOWNTO 0);
SIGNAL \re|localclockOS|accumulator\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \tr|localclockOS|accumulator\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pro|PC|d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pro|AR|d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pro|R4|d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pro|R2|d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Dram|memory_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tr|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pro|cu|M_select\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pro|cu|next_state\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pro|AC|d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL countn : std_logic_vector(16 DOWNTO 0);
SIGNAL \pro|IR|d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pro|R5|d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pro|R3|d\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \tr|ALT_INV_dataBit~q\ : std_logic;
SIGNAL \tr|ALT_INV_flag~q\ : std_logic;
SIGNAL \ALT_INV_staten.pros~q\ : std_logic;
SIGNAL \re|ALT_INV_flagStart~q\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_start <= start;
end1 <= ww_end1;
s <= ww_s;
ww_rx <= rx;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \din[1]~0_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \din[1]~0_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \din[1]~0_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \din[1]~0_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \din[1]~0_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a41~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \din[1]~0_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a33~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \din[1]~0_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a57~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \din[1]~0_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a49~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \din[0]~1_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \din[0]~1_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \din[0]~1_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \din[0]~1_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \din[0]~1_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a40~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \din[0]~1_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a32~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \din[0]~1_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a56~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\(0) <= \din[0]~1_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a48~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \din[6]~2_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \din[6]~2_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \din[6]~2_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \din[6]~2_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \din[6]~2_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a46~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \din[6]~2_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a38~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\(0) <= \din[6]~2_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a62~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \din[6]~2_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a54~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \din[7]~3_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \din[7]~3_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \din[7]~3_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \din[7]~3_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \din[7]~3_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a47~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \din[7]~3_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a39~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\(0) <= \din[7]~3_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a63~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \din[7]~3_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a55~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \din[4]~4_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \din[4]~4_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \din[4]~4_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \din[4]~4_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \din[4]~4_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a44~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \din[4]~4_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a36~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\(0) <= \din[4]~4_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a60~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \din[4]~4_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a52~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \din[3]~5_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \din[3]~5_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \din[3]~5_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \din[3]~5_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \din[3]~5_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a43~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \din[3]~5_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a35~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \din[3]~5_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a59~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \din[3]~5_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a51~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \din[2]~6_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \din[2]~6_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \din[2]~6_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \din[2]~6_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \din[2]~6_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a42~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \din[2]~6_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a34~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \din[2]~6_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a58~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \din[2]~6_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a50~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \din[5]~7_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \din[5]~7_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \din[5]~7_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \din[5]~7_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \din[5]~7_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a45~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \din[5]~7_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a37~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\(0) <= \din[5]~7_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a61~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\(0);

\Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \din[5]~7_combout\;

\Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\ <= (\address[12]~16_combout\ & \address[11]~15_combout\ & \address[10]~14_combout\ & \address[9]~13_combout\ & \address[8]~12_combout\ & \address[7]~11_combout\ & \address[6]~10_combout\ & 
\address[5]~9_combout\ & \address[4]~8_combout\ & \address[3]~7_combout\ & \address[2]~6_combout\ & \address[1]~5_combout\ & \address[0]~4_combout\);

\Dram|memory_rtl_0|auto_generated|ram_block1a53~portbdataout\ <= \Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\(0);

\Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\pro|PC|d\(7) & \pro|PC|d\(6) & \pro|PC|d\(5) & \pro|PC|d\(4) & \pro|PC|d\(3) & \pro|PC|d\(2) & \pro|PC|d\(1) & \pro|PC|d\(0));

\Pram|memory_rtl_1|auto_generated|ram_block1a0~portadataout\ <= \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Pram|memory_rtl_1|auto_generated|ram_block1a1\ <= \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Pram|memory_rtl_1|auto_generated|ram_block1a2\ <= \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Pram|memory_rtl_1|auto_generated|ram_block1a3\ <= \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Pram|memory_rtl_1|auto_generated|ram_block1a4\ <= \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Pram|memory_rtl_1|auto_generated|ram_block1a5\ <= \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Pram|memory_rtl_1|auto_generated|ram_block1a6\ <= \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Pram|memory_rtl_1|auto_generated|ram_block1a7\ <= \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\pro|alu|Mux16~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pro|alu|Mux16~0_combout\);

\tr|transmeterClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tr|transmeterClock~combout\);

\re|activeClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \re|activeClock~combout\);

\pro|cu|Mux2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pro|cu|Mux2~0_combout\);
\tr|ALT_INV_dataBit~q\ <= NOT \tr|dataBit~q\;
\tr|ALT_INV_flag~q\ <= NOT \tr|flag~q\;
\ALT_INV_staten.pros~q\ <= NOT \staten.pros~q\;
\re|ALT_INV_flagStart~q\ <= NOT \re|flagStart~q\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;

-- Location: FF_X55_Y50_N11
\countn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~7_combout\,
	asdata => \Add0~4_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(2));

-- Location: FF_X55_Y50_N27
\countn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~11_combout\,
	asdata => \Add0~12_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(6));

-- Location: M9K_X78_Y53_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a57\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y55_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a49\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y44_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y51_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y52_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y43_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a60\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y56_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a52\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y56_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a59\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y50_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a51\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y49_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y46_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y48_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y48_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y52_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y49_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y52_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a58\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y47_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a50\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\);

-- Location: FF_X52_Y49_N29
\tr|localclockOS|accumulator[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(7));

-- Location: M9K_X64_Y48_N0
\Pram|memory_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C007900014004D0020000030012C000400128003B00004002B000B00004003FC0003001E40005000F400800000C003B00010003A0006C000400068002B000B000020000C000800168006B00068005B00008006B000A8005B0012C003B000AC001B00004003E0",
	mem_init0 => X"0014004D003F80003000AC0004000A8003B00010003A00020001A001AC002A0006C0007000700002001AC002C000180004003FC00030006C001C000180002001AC002C0001000FF0000C001B00008006B000A8006E00024004B00010004A000AC005C000A8003B00004004D00014003D003F800030012C003B000AC001B00004000800014004D0001000FF0000C002B00010002A000EC0004000E8000800068006B000A8001B0001C001C00008006B00170002A0006C001C000180002001AC0004000A8001B00008006B000A8003300024004B00010004A000AC005C000A8003B00004001700014003D003F800030016C00020000C004B000EC002B0006C0001",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Processor.ram0_Memory_a0c6519c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Memory:Pram|altsyncram:memory_rtl_1|altsyncram_qs71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \read~0_combout\,
	portaaddr => \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Pram|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X1_Y43_N27
\re|localclockOS|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \re|localclockOS|flag~0_combout\,
	sclr => \re|ALT_INV_flagStart~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|flag~q\);

-- Location: LCCOMB_X52_Y49_N28
\tr|localclockOS|accumulator[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[7]~23_combout\ = (\tr|localclockOS|accumulator[6]~22\ & (\tr|localclockOS|accumulator\(7) & (\tr|localclockOS|accumulator~9_combout\ & VCC))) # (!\tr|localclockOS|accumulator[6]~22\ & ((((\tr|localclockOS|accumulator\(7) & 
-- \tr|localclockOS|accumulator~9_combout\)))))
-- \tr|localclockOS|accumulator[7]~24\ = CARRY((\tr|localclockOS|accumulator\(7) & (\tr|localclockOS|accumulator~9_combout\ & !\tr|localclockOS|accumulator[6]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(7),
	datab => \tr|localclockOS|accumulator~9_combout\,
	datad => VCC,
	cin => \tr|localclockOS|accumulator[6]~22\,
	combout => \tr|localclockOS|accumulator[7]~23_combout\,
	cout => \tr|localclockOS|accumulator[7]~24\);

-- Location: FF_X1_Y43_N9
\re|localclockOS|accumulator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(1));

-- Location: FF_X1_Y43_N11
\re|localclockOS|accumulator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(2));

-- Location: FF_X1_Y43_N13
\re|localclockOS|accumulator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(3));

-- Location: FF_X1_Y43_N23
\re|localclockOS|accumulator[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(8));

-- Location: FF_X1_Y43_N17
\re|localclockOS|accumulator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(5));

-- Location: FF_X1_Y43_N15
\re|localclockOS|accumulator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(4));

-- Location: FF_X1_Y43_N19
\re|localclockOS|accumulator[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(6));

-- Location: FF_X1_Y43_N21
\re|localclockOS|accumulator[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(7));

-- Location: LCCOMB_X57_Y47_N4
\pro|alu|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~4_combout\ = (\pro|AC|d\(4) & (\pro|alu|Add2~3\ $ (GND))) # (!\pro|AC|d\(4) & (!\pro|alu|Add2~3\ & VCC))
-- \pro|alu|Add2~5\ = CARRY((\pro|AC|d\(4) & !\pro|alu|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(4),
	datad => VCC,
	cin => \pro|alu|Add2~3\,
	combout => \pro|alu|Add2~4_combout\,
	cout => \pro|alu|Add2~5\);

-- Location: LCCOMB_X57_Y47_N8
\pro|alu|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~8_combout\ = (\pro|AC|d\(6) & (\pro|alu|Add2~7\ $ (GND))) # (!\pro|AC|d\(6) & (!\pro|alu|Add2~7\ & VCC))
-- \pro|alu|Add2~9\ = CARRY((\pro|AC|d\(6) & !\pro|alu|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(6),
	datad => VCC,
	cin => \pro|alu|Add2~7\,
	combout => \pro|alu|Add2~8_combout\,
	cout => \pro|alu|Add2~9\);

-- Location: LCCOMB_X57_Y47_N12
\pro|alu|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~12_combout\ = (\pro|AC|d\(8) & (\pro|alu|Add2~11\ $ (GND))) # (!\pro|AC|d\(8) & (!\pro|alu|Add2~11\ & VCC))
-- \pro|alu|Add2~13\ = CARRY((\pro|AC|d\(8) & !\pro|alu|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(8),
	datad => VCC,
	cin => \pro|alu|Add2~11\,
	combout => \pro|alu|Add2~12_combout\,
	cout => \pro|alu|Add2~13\);

-- Location: LCCOMB_X57_Y47_N14
\pro|alu|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~14_combout\ = (\pro|AC|d\(9) & (!\pro|alu|Add2~13\)) # (!\pro|AC|d\(9) & ((\pro|alu|Add2~13\) # (GND)))
-- \pro|alu|Add2~15\ = CARRY((!\pro|alu|Add2~13\) # (!\pro|AC|d\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(9),
	datad => VCC,
	cin => \pro|alu|Add2~13\,
	combout => \pro|alu|Add2~14_combout\,
	cout => \pro|alu|Add2~15\);

-- Location: LCCOMB_X57_Y47_N16
\pro|alu|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~16_combout\ = (\pro|AC|d\(10) & (\pro|alu|Add2~15\ $ (GND))) # (!\pro|AC|d\(10) & (!\pro|alu|Add2~15\ & VCC))
-- \pro|alu|Add2~17\ = CARRY((\pro|AC|d\(10) & !\pro|alu|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(10),
	datad => VCC,
	cin => \pro|alu|Add2~15\,
	combout => \pro|alu|Add2~16_combout\,
	cout => \pro|alu|Add2~17\);

-- Location: LCCOMB_X57_Y47_N20
\pro|alu|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~20_combout\ = (\pro|AC|d\(12) & (\pro|alu|Add2~19\ $ (GND))) # (!\pro|AC|d\(12) & (!\pro|alu|Add2~19\ & VCC))
-- \pro|alu|Add2~21\ = CARRY((\pro|AC|d\(12) & !\pro|alu|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(12),
	datad => VCC,
	cin => \pro|alu|Add2~19\,
	combout => \pro|alu|Add2~20_combout\,
	cout => \pro|alu|Add2~21\);

-- Location: LCCOMB_X57_Y47_N26
\pro|alu|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~26_combout\ = (\pro|AC|d\(15) & (!\pro|alu|Add2~25\)) # (!\pro|AC|d\(15) & ((\pro|alu|Add2~25\) # (GND)))
-- \pro|alu|Add2~27\ = CARRY((!\pro|alu|Add2~25\) # (!\pro|AC|d\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(15),
	datad => VCC,
	cin => \pro|alu|Add2~25\,
	combout => \pro|alu|Add2~26_combout\,
	cout => \pro|alu|Add2~27\);

-- Location: LCCOMB_X60_Y46_N4
\pro|alu|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~4_combout\ = ((\pro|mux|Mux13~combout\ $ (\pro|AC|d\(2) $ (\pro|alu|Add1~3\)))) # (GND)
-- \pro|alu|Add1~5\ = CARRY((\pro|mux|Mux13~combout\ & (\pro|AC|d\(2) & !\pro|alu|Add1~3\)) # (!\pro|mux|Mux13~combout\ & ((\pro|AC|d\(2)) # (!\pro|alu|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux13~combout\,
	datab => \pro|AC|d\(2),
	datad => VCC,
	cin => \pro|alu|Add1~3\,
	combout => \pro|alu|Add1~4_combout\,
	cout => \pro|alu|Add1~5\);

-- Location: LCCOMB_X60_Y46_N8
\pro|alu|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~8_combout\ = ((\pro|AC|d\(4) $ (\pro|mux|Mux11~combout\ $ (\pro|alu|Add1~7\)))) # (GND)
-- \pro|alu|Add1~9\ = CARRY((\pro|AC|d\(4) & ((!\pro|alu|Add1~7\) # (!\pro|mux|Mux11~combout\))) # (!\pro|AC|d\(4) & (!\pro|mux|Mux11~combout\ & !\pro|alu|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(4),
	datab => \pro|mux|Mux11~combout\,
	datad => VCC,
	cin => \pro|alu|Add1~7\,
	combout => \pro|alu|Add1~8_combout\,
	cout => \pro|alu|Add1~9\);

-- Location: LCCOMB_X60_Y46_N12
\pro|alu|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~12_combout\ = ((\pro|mux|Mux9~combout\ $ (\pro|AC|d\(6) $ (\pro|alu|Add1~11\)))) # (GND)
-- \pro|alu|Add1~13\ = CARRY((\pro|mux|Mux9~combout\ & (\pro|AC|d\(6) & !\pro|alu|Add1~11\)) # (!\pro|mux|Mux9~combout\ & ((\pro|AC|d\(6)) # (!\pro|alu|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux9~combout\,
	datab => \pro|AC|d\(6),
	datad => VCC,
	cin => \pro|alu|Add1~11\,
	combout => \pro|alu|Add1~12_combout\,
	cout => \pro|alu|Add1~13\);

-- Location: LCCOMB_X60_Y46_N14
\pro|alu|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~14_combout\ = (\pro|AC|d\(7) & ((\pro|mux|Mux8~combout\ & (!\pro|alu|Add1~13\)) # (!\pro|mux|Mux8~combout\ & (\pro|alu|Add1~13\ & VCC)))) # (!\pro|AC|d\(7) & ((\pro|mux|Mux8~combout\ & ((\pro|alu|Add1~13\) # (GND))) # 
-- (!\pro|mux|Mux8~combout\ & (!\pro|alu|Add1~13\))))
-- \pro|alu|Add1~15\ = CARRY((\pro|AC|d\(7) & (\pro|mux|Mux8~combout\ & !\pro|alu|Add1~13\)) # (!\pro|AC|d\(7) & ((\pro|mux|Mux8~combout\) # (!\pro|alu|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(7),
	datab => \pro|mux|Mux8~combout\,
	datad => VCC,
	cin => \pro|alu|Add1~13\,
	combout => \pro|alu|Add1~14_combout\,
	cout => \pro|alu|Add1~15\);

-- Location: LCCOMB_X60_Y46_N20
\pro|alu|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~20_combout\ = ((\pro|mux|Mux5~4_combout\ $ (\pro|AC|d\(10) $ (\pro|alu|Add1~19\)))) # (GND)
-- \pro|alu|Add1~21\ = CARRY((\pro|mux|Mux5~4_combout\ & (\pro|AC|d\(10) & !\pro|alu|Add1~19\)) # (!\pro|mux|Mux5~4_combout\ & ((\pro|AC|d\(10)) # (!\pro|alu|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux5~4_combout\,
	datab => \pro|AC|d\(10),
	datad => VCC,
	cin => \pro|alu|Add1~19\,
	combout => \pro|alu|Add1~20_combout\,
	cout => \pro|alu|Add1~21\);

-- Location: LCCOMB_X60_Y46_N24
\pro|alu|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~24_combout\ = ((\pro|mux|Mux3~4_combout\ $ (\pro|AC|d\(12) $ (\pro|alu|Add1~23\)))) # (GND)
-- \pro|alu|Add1~25\ = CARRY((\pro|mux|Mux3~4_combout\ & (\pro|AC|d\(12) & !\pro|alu|Add1~23\)) # (!\pro|mux|Mux3~4_combout\ & ((\pro|AC|d\(12)) # (!\pro|alu|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux3~4_combout\,
	datab => \pro|AC|d\(12),
	datad => VCC,
	cin => \pro|alu|Add1~23\,
	combout => \pro|alu|Add1~24_combout\,
	cout => \pro|alu|Add1~25\);

-- Location: LCCOMB_X58_Y46_N4
\pro|alu|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~4_combout\ = ((\pro|mux|Mux13~combout\ $ (\pro|AC|d\(2) $ (!\pro|alu|Add0~3\)))) # (GND)
-- \pro|alu|Add0~5\ = CARRY((\pro|mux|Mux13~combout\ & ((\pro|AC|d\(2)) # (!\pro|alu|Add0~3\))) # (!\pro|mux|Mux13~combout\ & (\pro|AC|d\(2) & !\pro|alu|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux13~combout\,
	datab => \pro|AC|d\(2),
	datad => VCC,
	cin => \pro|alu|Add0~3\,
	combout => \pro|alu|Add0~4_combout\,
	cout => \pro|alu|Add0~5\);

-- Location: LCCOMB_X58_Y46_N12
\pro|alu|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~12_combout\ = ((\pro|mux|Mux9~combout\ $ (\pro|AC|d\(6) $ (!\pro|alu|Add0~11\)))) # (GND)
-- \pro|alu|Add0~13\ = CARRY((\pro|mux|Mux9~combout\ & ((\pro|AC|d\(6)) # (!\pro|alu|Add0~11\))) # (!\pro|mux|Mux9~combout\ & (\pro|AC|d\(6) & !\pro|alu|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux9~combout\,
	datab => \pro|AC|d\(6),
	datad => VCC,
	cin => \pro|alu|Add0~11\,
	combout => \pro|alu|Add0~12_combout\,
	cout => \pro|alu|Add0~13\);

-- Location: LCCOMB_X58_Y46_N16
\pro|alu|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~16_combout\ = ((\pro|AC|d\(8) $ (\pro|mux|Mux7~4_combout\ $ (!\pro|alu|Add0~15\)))) # (GND)
-- \pro|alu|Add0~17\ = CARRY((\pro|AC|d\(8) & ((\pro|mux|Mux7~4_combout\) # (!\pro|alu|Add0~15\))) # (!\pro|AC|d\(8) & (\pro|mux|Mux7~4_combout\ & !\pro|alu|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(8),
	datab => \pro|mux|Mux7~4_combout\,
	datad => VCC,
	cin => \pro|alu|Add0~15\,
	combout => \pro|alu|Add0~16_combout\,
	cout => \pro|alu|Add0~17\);

-- Location: LCCOMB_X58_Y46_N18
\pro|alu|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~18_combout\ = (\pro|mux|Mux6~4_combout\ & ((\pro|AC|d\(9) & (\pro|alu|Add0~17\ & VCC)) # (!\pro|AC|d\(9) & (!\pro|alu|Add0~17\)))) # (!\pro|mux|Mux6~4_combout\ & ((\pro|AC|d\(9) & (!\pro|alu|Add0~17\)) # (!\pro|AC|d\(9) & 
-- ((\pro|alu|Add0~17\) # (GND)))))
-- \pro|alu|Add0~19\ = CARRY((\pro|mux|Mux6~4_combout\ & (!\pro|AC|d\(9) & !\pro|alu|Add0~17\)) # (!\pro|mux|Mux6~4_combout\ & ((!\pro|alu|Add0~17\) # (!\pro|AC|d\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux6~4_combout\,
	datab => \pro|AC|d\(9),
	datad => VCC,
	cin => \pro|alu|Add0~17\,
	combout => \pro|alu|Add0~18_combout\,
	cout => \pro|alu|Add0~19\);

-- Location: LCCOMB_X58_Y46_N22
\pro|alu|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~22_combout\ = (\pro|AC|d\(11) & ((\pro|mux|Mux4~4_combout\ & (\pro|alu|Add0~21\ & VCC)) # (!\pro|mux|Mux4~4_combout\ & (!\pro|alu|Add0~21\)))) # (!\pro|AC|d\(11) & ((\pro|mux|Mux4~4_combout\ & (!\pro|alu|Add0~21\)) # 
-- (!\pro|mux|Mux4~4_combout\ & ((\pro|alu|Add0~21\) # (GND)))))
-- \pro|alu|Add0~23\ = CARRY((\pro|AC|d\(11) & (!\pro|mux|Mux4~4_combout\ & !\pro|alu|Add0~21\)) # (!\pro|AC|d\(11) & ((!\pro|alu|Add0~21\) # (!\pro|mux|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(11),
	datab => \pro|mux|Mux4~4_combout\,
	datad => VCC,
	cin => \pro|alu|Add0~21\,
	combout => \pro|alu|Add0~22_combout\,
	cout => \pro|alu|Add0~23\);

-- Location: LCCOMB_X58_Y46_N28
\pro|alu|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~28_combout\ = ((\pro|mux|Mux1~4_combout\ $ (\pro|AC|d\(14) $ (!\pro|alu|Add0~27\)))) # (GND)
-- \pro|alu|Add0~29\ = CARRY((\pro|mux|Mux1~4_combout\ & ((\pro|AC|d\(14)) # (!\pro|alu|Add0~27\))) # (!\pro|mux|Mux1~4_combout\ & (\pro|AC|d\(14) & !\pro|alu|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux1~4_combout\,
	datab => \pro|AC|d\(14),
	datad => VCC,
	cin => \pro|alu|Add0~27\,
	combout => \pro|alu|Add0~28_combout\,
	cout => \pro|alu|Add0~29\);

-- Location: LCCOMB_X57_Y47_N28
\pro|alu|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~28_combout\ = !\pro|alu|Add2~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \pro|alu|Add2~27\,
	combout => \pro|alu|Add2~28_combout\);

-- Location: LCCOMB_X1_Y43_N8
\re|localclockOS|accumulator[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[1]~11_combout\ = (\re|localclockOS|accumulator~10_combout\ & (\re|localclockOS|accumulator~8_combout\ $ (VCC))) # (!\re|localclockOS|accumulator~10_combout\ & (\re|localclockOS|accumulator~8_combout\ & VCC))
-- \re|localclockOS|accumulator[1]~12\ = CARRY((\re|localclockOS|accumulator~10_combout\ & \re|localclockOS|accumulator~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator~10_combout\,
	datab => \re|localclockOS|accumulator~8_combout\,
	datad => VCC,
	combout => \re|localclockOS|accumulator[1]~11_combout\,
	cout => \re|localclockOS|accumulator[1]~12\);

-- Location: LCCOMB_X1_Y43_N10
\re|localclockOS|accumulator[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[2]~13_combout\ = (\re|localclockOS|accumulator[1]~12\ & (((!\re|localclockOS|accumulator\(2))) # (!\re|localclockOS|accumulator~9_combout\))) # (!\re|localclockOS|accumulator[1]~12\ & (((\re|localclockOS|accumulator~9_combout\ 
-- & \re|localclockOS|accumulator\(2))) # (GND)))
-- \re|localclockOS|accumulator[2]~14\ = CARRY(((!\re|localclockOS|accumulator[1]~12\) # (!\re|localclockOS|accumulator\(2))) # (!\re|localclockOS|accumulator~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator~9_combout\,
	datab => \re|localclockOS|accumulator\(2),
	datad => VCC,
	cin => \re|localclockOS|accumulator[1]~12\,
	combout => \re|localclockOS|accumulator[2]~13_combout\,
	cout => \re|localclockOS|accumulator[2]~14\);

-- Location: LCCOMB_X1_Y43_N12
\re|localclockOS|accumulator[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[3]~15_combout\ = (\re|localclockOS|accumulator[2]~14\ & (\re|localclockOS|accumulator\(3) & (\re|localclockOS|accumulator~9_combout\ & VCC))) # (!\re|localclockOS|accumulator[2]~14\ & ((((\re|localclockOS|accumulator\(3) & 
-- \re|localclockOS|accumulator~9_combout\)))))
-- \re|localclockOS|accumulator[3]~16\ = CARRY((\re|localclockOS|accumulator\(3) & (\re|localclockOS|accumulator~9_combout\ & !\re|localclockOS|accumulator[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(3),
	datab => \re|localclockOS|accumulator~9_combout\,
	datad => VCC,
	cin => \re|localclockOS|accumulator[2]~14\,
	combout => \re|localclockOS|accumulator[3]~15_combout\,
	cout => \re|localclockOS|accumulator[3]~16\);

-- Location: LCCOMB_X1_Y43_N14
\re|localclockOS|accumulator[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[4]~17_combout\ = (\re|localclockOS|accumulator[3]~16\ & (((!\re|localclockOS|accumulator~9_combout\)) # (!\re|localclockOS|accumulator\(4)))) # (!\re|localclockOS|accumulator[3]~16\ & (((\re|localclockOS|accumulator\(4) & 
-- \re|localclockOS|accumulator~9_combout\)) # (GND)))
-- \re|localclockOS|accumulator[4]~18\ = CARRY(((!\re|localclockOS|accumulator[3]~16\) # (!\re|localclockOS|accumulator~9_combout\)) # (!\re|localclockOS|accumulator\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(4),
	datab => \re|localclockOS|accumulator~9_combout\,
	datad => VCC,
	cin => \re|localclockOS|accumulator[3]~16\,
	combout => \re|localclockOS|accumulator[4]~17_combout\,
	cout => \re|localclockOS|accumulator[4]~18\);

-- Location: LCCOMB_X1_Y43_N16
\re|localclockOS|accumulator[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[5]~19_combout\ = (\re|localclockOS|accumulator[4]~18\ & (\re|localclockOS|accumulator\(5) & (\re|localclockOS|accumulator~9_combout\ & VCC))) # (!\re|localclockOS|accumulator[4]~18\ & ((((\re|localclockOS|accumulator\(5) & 
-- \re|localclockOS|accumulator~9_combout\)))))
-- \re|localclockOS|accumulator[5]~20\ = CARRY((\re|localclockOS|accumulator\(5) & (\re|localclockOS|accumulator~9_combout\ & !\re|localclockOS|accumulator[4]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(5),
	datab => \re|localclockOS|accumulator~9_combout\,
	datad => VCC,
	cin => \re|localclockOS|accumulator[4]~18\,
	combout => \re|localclockOS|accumulator[5]~19_combout\,
	cout => \re|localclockOS|accumulator[5]~20\);

-- Location: LCCOMB_X1_Y43_N18
\re|localclockOS|accumulator[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[6]~21_combout\ = (\re|localclockOS|accumulator[5]~20\ & (((!\re|localclockOS|accumulator~9_combout\)) # (!\re|localclockOS|accumulator\(6)))) # (!\re|localclockOS|accumulator[5]~20\ & (((\re|localclockOS|accumulator\(6) & 
-- \re|localclockOS|accumulator~9_combout\)) # (GND)))
-- \re|localclockOS|accumulator[6]~22\ = CARRY(((!\re|localclockOS|accumulator[5]~20\) # (!\re|localclockOS|accumulator~9_combout\)) # (!\re|localclockOS|accumulator\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(6),
	datab => \re|localclockOS|accumulator~9_combout\,
	datad => VCC,
	cin => \re|localclockOS|accumulator[5]~20\,
	combout => \re|localclockOS|accumulator[6]~21_combout\,
	cout => \re|localclockOS|accumulator[6]~22\);

-- Location: LCCOMB_X1_Y43_N20
\re|localclockOS|accumulator[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[7]~23_combout\ = (\re|localclockOS|accumulator[6]~22\ & (\re|localclockOS|accumulator\(7) & (\re|localclockOS|accumulator~9_combout\ & VCC))) # (!\re|localclockOS|accumulator[6]~22\ & ((((\re|localclockOS|accumulator\(7) & 
-- \re|localclockOS|accumulator~9_combout\)))))
-- \re|localclockOS|accumulator[7]~24\ = CARRY((\re|localclockOS|accumulator\(7) & (\re|localclockOS|accumulator~9_combout\ & !\re|localclockOS|accumulator[6]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(7),
	datab => \re|localclockOS|accumulator~9_combout\,
	datad => VCC,
	cin => \re|localclockOS|accumulator[6]~22\,
	combout => \re|localclockOS|accumulator[7]~23_combout\,
	cout => \re|localclockOS|accumulator[7]~24\);

-- Location: LCCOMB_X1_Y43_N22
\re|localclockOS|accumulator[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[8]~25_combout\ = \re|localclockOS|accumulator[7]~24\ $ (((\re|localclockOS|accumulator\(8) & \re|localclockOS|accumulator~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \re|localclockOS|accumulator\(8),
	datad => \re|localclockOS|accumulator~9_combout\,
	cin => \re|localclockOS|accumulator[7]~24\,
	combout => \re|localclockOS|accumulator[8]~25_combout\);

-- Location: FF_X57_Y48_N19
\tr|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~23_combout\,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(7));

-- Location: LCCOMB_X52_Y48_N24
\tr|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|Mux0~3_combout\ = (\tr|state\(2)) # ((\tr|state\(0) & ((\tr|state\(1)) # (\tr|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(0),
	datab => \tr|state\(1),
	datac => \tr|state\(2),
	datad => \tr|data\(7),
	combout => \tr|Mux0~3_combout\);

-- Location: FF_X56_Y48_N25
\tr|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~29_combout\,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(4));

-- Location: FF_X56_Y48_N19
\tr|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~35_combout\,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(3));

-- Location: FF_X56_Y48_N29
\tr|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~41_combout\,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(2));

-- Location: LCCOMB_X56_Y48_N22
\tr|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|Mux0~4_combout\ = (\tr|state\(1) & (((\tr|state\(0))))) # (!\tr|state\(1) & ((\tr|state\(0) & ((\tr|data\(3)))) # (!\tr|state\(0) & (\tr|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(1),
	datab => \tr|data\(2),
	datac => \tr|state\(0),
	datad => \tr|data\(3),
	combout => \tr|Mux0~4_combout\);

-- Location: FF_X52_Y48_N11
\tr|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~47_combout\,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(5));

-- Location: LCCOMB_X52_Y48_N12
\tr|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|Mux0~5_combout\ = (\tr|state\(1) & ((\tr|Mux0~4_combout\ & (\tr|data\(5))) # (!\tr|Mux0~4_combout\ & ((\tr|data\(4)))))) # (!\tr|state\(1) & (((\tr|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|data\(5),
	datab => \tr|data\(4),
	datac => \tr|state\(1),
	datad => \tr|Mux0~4_combout\,
	combout => \tr|Mux0~5_combout\);

-- Location: LCCOMB_X52_Y48_N6
\tr|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|Mux0~6_combout\ = (\tr|Mux0~5_combout\ & ((\tr|state\(2)) # ((\tr|Mux0~3_combout\ & \tr|state\(3))))) # (!\tr|Mux0~5_combout\ & (((\tr|Mux0~3_combout\ & \tr|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|Mux0~5_combout\,
	datab => \tr|state\(2),
	datac => \tr|Mux0~3_combout\,
	datad => \tr|state\(3),
	combout => \tr|Mux0~6_combout\);

-- Location: LCCOMB_X60_Y49_N8
\pro|cu|musec~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~1_combout\ = (\pro|cu|next_state\(1) & (((!\pro|cu|next_state\(0) & !\pro|cu|next_state\(2))))) # (!\pro|cu|next_state\(1) & (!\pro|cu|next_state\(3) & (\pro|cu|next_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(3),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(0),
	datad => \pro|cu|next_state\(2),
	combout => \pro|cu|musec~1_combout\);

-- Location: LCCOMB_X56_Y50_N8
\Selector18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~5_combout\ = (countn(2) & (countn(3) & (countn(1) & countn(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(2),
	datab => countn(3),
	datac => countn(1),
	datad => countn(4),
	combout => \Selector18~5_combout\);

-- Location: LCCOMB_X62_Y48_N30
\pro|cu|musec~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~4_combout\ = (\pro|cu|next_state\(1) & ((\pro|cu|next_state\(0) & (!\pro|cu|next_state\(3) & \pro|cu|next_state\(2))) # (!\pro|cu|next_state\(0) & (\pro|cu|next_state\(3) & !\pro|cu|next_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(0),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(3),
	datad => \pro|cu|next_state\(2),
	combout => \pro|cu|musec~4_combout\);

-- Location: LCCOMB_X61_Y48_N28
\pro|cu|next_state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|next_state~5_combout\ = (\pro|cu|next_state\(2) & ((\pro|cu|next_state\(4) & (\pro|cu|next_state\(1))) # (!\pro|cu|next_state\(4) & ((\pro|cu|next_state\(0)))))) # (!\pro|cu|next_state\(2) & (\pro|cu|next_state\(0) & (\pro|cu|next_state\(1) $ 
-- (!\pro|cu|next_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(2),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(0),
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|next_state~5_combout\);

-- Location: LCCOMB_X63_Y48_N10
\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~4_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a57~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a49~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a49~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a57~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~4_combout\);

-- Location: LCCOMB_X63_Y48_N22
\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~7_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a24~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a16~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~7_combout\);

-- Location: LCCOMB_X52_Y48_N28
\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~28_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a60~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a52~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a52~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a60~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~28_combout\);

-- Location: LCCOMB_X56_Y48_N10
\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~34_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a59~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a51~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a59~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a51~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~34_combout\);

-- Location: LCCOMB_X63_Y48_N24
\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~36_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~36_combout\);

-- Location: LCCOMB_X56_Y48_N4
\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~37_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a26~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a18~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~37_combout\);

-- Location: LCCOMB_X56_Y48_N30
\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~38_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~37_combout\) # 
-- (\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~37_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~36_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~38_combout\);

-- Location: LCCOMB_X56_Y48_N8
\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~39_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a42~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a34~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a34~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a42~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~39_combout\);

-- Location: LCCOMB_X56_Y48_N2
\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~40_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a58~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a50~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a58~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a50~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~40_combout\);

-- Location: LCCOMB_X56_Y48_N28
\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~41_combout\ = (\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~38_combout\) # ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~39_combout\) # (\Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~39_combout\,
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~38_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~40_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~41_combout\);

-- Location: LCCOMB_X62_Y48_N6
\pro|cu|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Mux1~0_combout\ = (\pro|IR|d\(1)) # ((!\pro|IR|d\(2) & (\pro|IR|d\(0) $ (\pro|IR|d\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(2),
	datab => \pro|IR|d\(0),
	datac => \pro|IR|d\(1),
	datad => \pro|IR|d\(3),
	combout => \pro|cu|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y50_N6
\Selector18~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~13_combout\ = (!\Add0~24_combout\ & (!\Add0~20_combout\ & (!\Add0~22_combout\ & !\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~22_combout\,
	datad => \Add0~26_combout\,
	combout => \Selector18~13_combout\);

-- Location: LCCOMB_X56_Y49_N30
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\staten.nope~q\) # (((!\pro|cu|endp~q\ & \staten.pros~q\)) # (!\countn[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|endp~q\,
	datab => \staten.pros~q\,
	datac => \staten.nope~q\,
	datad => \countn[15]~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X55_Y50_N10
\countn~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~7_combout\ = (countn(2) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(2),
	datad => \pro|cu|endp~q\,
	combout => \countn~7_combout\);

-- Location: LCCOMB_X55_Y50_N26
\countn~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~11_combout\ = (countn(6) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(6),
	datad => \pro|cu|endp~q\,
	combout => \countn~11_combout\);

-- Location: FF_X55_Y49_N9
\pro|AR|d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(13),
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(13));

-- Location: FF_X60_Y49_N7
\pro|cu|write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|musec~6_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|write~q\);

-- Location: FF_X56_Y50_N7
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: FF_X56_Y50_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: FF_X54_Y47_N13
\re|character[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(2));

-- Location: LCCOMB_X59_Y47_N22
\din[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \din[2]~6_combout\ = (\staten.pros~q\ & (\pro|AC|d\(2))) # (!\staten.pros~q\ & ((\re|character\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(2),
	datab => \staten.pros~q\,
	datad => \re|character\(2),
	combout => \din[2]~6_combout\);

-- Location: LCCOMB_X52_Y49_N6
\tr|localclockOS|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|Equal0~1_combout\ = (((\tr|localclockOS|accumulator\(5)) # (!\tr|localclockOS|accumulator\(4))) # (!\tr|localclockOS|accumulator\(6))) # (!\tr|localclockOS|accumulator\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(7),
	datab => \tr|localclockOS|accumulator\(6),
	datac => \tr|localclockOS|accumulator\(4),
	datad => \tr|localclockOS|accumulator\(5),
	combout => \tr|localclockOS|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y49_N24
\pro|alu|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Equal0~0_combout\ = (!\pro|AC|d\(2) & (!\pro|AC|d\(1) & (!\pro|AC|d\(0) & !\pro|AC|d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(2),
	datab => \pro|AC|d\(1),
	datac => \pro|AC|d\(0),
	datad => \pro|AC|d\(3),
	combout => \pro|alu|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y43_N26
\re|activeClock\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|activeClock~combout\ = LCELL((\re|flagStart~q\ & (\re|localclockOS|flag~q\)) # (!\re|flagStart~q\ & ((\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re|flagStart~q\,
	datac => \re|localclockOS|flag~q\,
	datad => \clk~input_o\,
	combout => \re|activeClock~combout\);

-- Location: LCCOMB_X60_Y49_N26
\pro|cu|musec~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~5_combout\ = (\pro|cu|next_state\(0) & (!\pro|cu|next_state\(1) & (\pro|cu|next_state\(2) & !\pro|cu|next_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(0),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(2),
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|musec~5_combout\);

-- Location: LCCOMB_X60_Y49_N6
\pro|cu|musec~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~6_combout\ = (\pro|cu|next_state\(4) & \pro|cu|musec~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|next_state\(4),
	datac => \pro|cu|musec~5_combout\,
	combout => \pro|cu|musec~6_combout\);

-- Location: LCCOMB_X56_Y50_N6
\count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (countn(4) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countn(4),
	datac => \staten.pros~q\,
	datad => \pro|cu|endp~q\,
	combout => \count~7_combout\);

-- Location: LCCOMB_X56_Y50_N14
\count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~10_combout\ = (countn(7) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countn(7),
	datac => \staten.pros~q\,
	datad => \pro|cu|endp~q\,
	combout => \count~10_combout\);

-- Location: LCCOMB_X54_Y47_N18
\re|Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~7_combout\ = (!\re|state\(2) & (\re|state\(1) & (\re|state\(0) & !\re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(3),
	combout => \re|Decoder1~7_combout\);

-- Location: LCCOMB_X54_Y47_N12
\re|character[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[2]~6_combout\ = (\re|flagStart~q\ & ((\re|Decoder1~7_combout\ & ((\rx~input_o\))) # (!\re|Decoder1~7_combout\ & (\re|character\(2))))) # (!\re|flagStart~q\ & (((\re|character\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datab => \re|Decoder1~7_combout\,
	datac => \re|character\(2),
	datad => \rx~input_o\,
	combout => \re|character[2]~6_combout\);

-- Location: LCCOMB_X52_Y49_N10
\tr|localclockOS|accumulator~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator~8_combout\ = (\tr|localclockOS|accumulator\(1) & \tr|flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tr|localclockOS|accumulator\(1),
	datad => \tr|flag~q\,
	combout => \tr|localclockOS|accumulator~8_combout\);

-- Location: LCCOMB_X60_Y49_N30
\pro|cu|musec~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~10_combout\ = (!\pro|cu|next_state\(2) & ((\pro|cu|next_state\(3) & (\pro|cu|next_state\(1) & \pro|cu|next_state\(0))) # (!\pro|cu|next_state\(3) & (\pro|cu|next_state\(1) $ (\pro|cu|next_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(3),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(0),
	datad => \pro|cu|next_state\(2),
	combout => \pro|cu|musec~10_combout\);

-- Location: LCCOMB_X60_Y48_N6
\pro|cu|musec~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~12_combout\ = (\pro|cu|next_state\(0) & (\pro|cu|next_state\(3) & (\pro|cu|next_state\(1) $ (\pro|cu|next_state\(2))))) # (!\pro|cu|next_state\(0) & ((\pro|cu|next_state\(1) & (\pro|cu|next_state\(2))) # (!\pro|cu|next_state\(1) & 
-- ((\pro|cu|next_state\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(0),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(2),
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|musec~12_combout\);

-- Location: FF_X57_Y48_N11
\pro|IR|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Pram|memory_rtl_1|auto_generated|ram_block1a6\,
	sload => VCC,
	ena => \pro|decoder|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|IR|d\(6));

-- Location: LCCOMB_X60_Y48_N10
\pro|cu|musec~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~15_combout\ = (!\pro|cu|next_state\(1) & (!\pro|cu|next_state\(2) & !\pro|cu|next_state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(2),
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|musec~15_combout\);

-- Location: FF_X1_Y43_N5
\re|localclockOS|accumulator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(0));

-- Location: LCCOMB_X1_Y43_N2
\re|localclockOS|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|Equal0~0_combout\ = ((\re|localclockOS|accumulator\(1)) # ((\re|localclockOS|accumulator\(2)) # (!\re|localclockOS|accumulator\(0)))) # (!\re|localclockOS|accumulator\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(3),
	datab => \re|localclockOS|accumulator\(1),
	datac => \re|localclockOS|accumulator\(0),
	datad => \re|localclockOS|accumulator\(2),
	combout => \re|localclockOS|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y43_N24
\re|localclockOS|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|Equal0~1_combout\ = ((\re|localclockOS|accumulator\(5)) # ((!\re|localclockOS|accumulator\(6)) # (!\re|localclockOS|accumulator\(4)))) # (!\re|localclockOS|accumulator\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(7),
	datab => \re|localclockOS|accumulator\(5),
	datac => \re|localclockOS|accumulator\(4),
	datad => \re|localclockOS|accumulator\(6),
	combout => \re|localclockOS|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y43_N6
\re|localclockOS|flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|flag~0_combout\ = \re|localclockOS|flag~q\ $ (((!\re|localclockOS|Equal0~1_combout\ & (!\re|localclockOS|accumulator\(8) & !\re|localclockOS|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|flag~q\,
	datab => \re|localclockOS|Equal0~1_combout\,
	datac => \re|localclockOS|accumulator\(8),
	datad => \re|localclockOS|Equal0~0_combout\,
	combout => \re|localclockOS|flag~0_combout\);

-- Location: FF_X58_Y49_N13
\pro|R5|d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(12),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(12));

-- Location: FF_X57_Y46_N19
\pro|R1|d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(12),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(12));

-- Location: LCCOMB_X58_Y49_N12
\pro|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux3~0_combout\ = (\pro|cu|M_select\(2) & (((\pro|R5|d\(12)) # (\pro|cu|M_select\(1))))) # (!\pro|cu|M_select\(2) & (\pro|R1|d\(12) & ((!\pro|cu|M_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|R1|d\(12),
	datab => \pro|cu|M_select\(2),
	datac => \pro|R5|d\(12),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux3~0_combout\);

-- Location: FF_X56_Y46_N13
\pro|R2|d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(10),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(10));

-- Location: FF_X56_Y46_N23
\pro|R4|d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(10),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(10));

-- Location: FF_X57_Y46_N7
\pro|R3|d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(10),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(10));

-- Location: FF_X58_Y49_N23
\pro|R5|d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(10),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(10));

-- Location: FF_X57_Y46_N17
\pro|R1|d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(10),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(10));

-- Location: LCCOMB_X58_Y49_N22
\pro|mux|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux5~0_combout\ = (\pro|cu|M_select\(2) & (((\pro|R5|d\(10)) # (\pro|cu|M_select\(1))))) # (!\pro|cu|M_select\(2) & (\pro|R1|d\(10) & ((!\pro|cu|M_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|R1|d\(10),
	datab => \pro|cu|M_select\(2),
	datac => \pro|R5|d\(10),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y46_N6
\pro|mux|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux5~1_combout\ = (\pro|mux|Mux5~0_combout\ & ((\pro|AC|d\(10)) # ((!\pro|cu|M_select\(1))))) # (!\pro|mux|Mux5~0_combout\ & (((\pro|R3|d\(10) & \pro|cu|M_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(10),
	datab => \pro|mux|Mux5~0_combout\,
	datac => \pro|R3|d\(10),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux5~1_combout\);

-- Location: LCCOMB_X56_Y46_N22
\pro|mux|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux5~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux5~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(10))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(10),
	datad => \pro|mux|Mux5~1_combout\,
	combout => \pro|mux|Mux5~2_combout\);

-- Location: LCCOMB_X56_Y46_N12
\pro|mux|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux5~3_combout\ = (\pro|mux|Mux5~2_combout\ & ((\pro|AR|d\(10)) # ((!\pro|mux|Mux0~0_combout\)))) # (!\pro|mux|Mux5~2_combout\ & (((\pro|R2|d\(10) & \pro|mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux5~2_combout\,
	datab => \pro|AR|d\(10),
	datac => \pro|R2|d\(10),
	datad => \pro|mux|Mux0~0_combout\,
	combout => \pro|mux|Mux5~3_combout\);

-- Location: LCCOMB_X56_Y46_N24
\pro|mux|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux5~4_combout\ = (!\pro|cu|M_select\(3) & \pro|mux|Mux5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro|cu|M_select\(3),
	datad => \pro|mux|Mux5~3_combout\,
	combout => \pro|mux|Mux5~4_combout\);

-- Location: FF_X56_Y46_N19
\pro|R2|d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(9),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(9));

-- Location: FF_X56_Y46_N29
\pro|R4|d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(9),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(9));

-- Location: FF_X58_Y47_N27
\pro|R5|d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(9),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(9));

-- Location: FF_X58_Y47_N29
\pro|R3|d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(9),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(9));

-- Location: FF_X57_Y49_N17
\pro|R1|d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(9),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(9));

-- Location: LCCOMB_X58_Y47_N28
\pro|mux|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux6~0_combout\ = (\pro|cu|M_select\(2) & (\pro|cu|M_select\(1))) # (!\pro|cu|M_select\(2) & ((\pro|cu|M_select\(1) & (\pro|R3|d\(9))) # (!\pro|cu|M_select\(1) & ((\pro|R1|d\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|cu|M_select\(1),
	datac => \pro|R3|d\(9),
	datad => \pro|R1|d\(9),
	combout => \pro|mux|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y47_N26
\pro|mux|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux6~1_combout\ = (\pro|cu|M_select\(2) & ((\pro|mux|Mux6~0_combout\ & (\pro|AC|d\(9))) # (!\pro|mux|Mux6~0_combout\ & ((\pro|R5|d\(9)))))) # (!\pro|cu|M_select\(2) & (((\pro|mux|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|AC|d\(9),
	datac => \pro|R5|d\(9),
	datad => \pro|mux|Mux6~0_combout\,
	combout => \pro|mux|Mux6~1_combout\);

-- Location: LCCOMB_X56_Y46_N28
\pro|mux|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux6~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux6~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(9))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(9),
	datad => \pro|mux|Mux6~1_combout\,
	combout => \pro|mux|Mux6~2_combout\);

-- Location: LCCOMB_X56_Y46_N18
\pro|mux|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux6~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux6~2_combout\ & (\pro|AR|d\(9))) # (!\pro|mux|Mux6~2_combout\ & ((\pro|R2|d\(9)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(9),
	datab => \pro|mux|Mux0~0_combout\,
	datac => \pro|R2|d\(9),
	datad => \pro|mux|Mux6~2_combout\,
	combout => \pro|mux|Mux6~3_combout\);

-- Location: LCCOMB_X59_Y50_N20
\pro|mux|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux6~4_combout\ = (!\pro|cu|M_select\(3) & \pro|mux|Mux6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(3),
	datad => \pro|mux|Mux6~3_combout\,
	combout => \pro|mux|Mux6~4_combout\);

-- Location: FF_X56_Y47_N21
\pro|R2|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(6),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(6));

-- Location: FF_X59_Y47_N21
\pro|R4|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(6),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(6));

-- Location: FF_X58_Y49_N5
\pro|R3|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(6),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(6));

-- Location: FF_X57_Y49_N9
\pro|R5|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(6),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(6));

-- Location: FF_X57_Y49_N19
\pro|R1|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(6),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(6));

-- Location: LCCOMB_X57_Y49_N8
\pro|mux|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux9~0_combout\ = (\pro|cu|M_select\(2) & (((\pro|R5|d\(6)) # (\pro|cu|M_select\(1))))) # (!\pro|cu|M_select\(2) & (\pro|R1|d\(6) & ((!\pro|cu|M_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|R1|d\(6),
	datac => \pro|R5|d\(6),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux9~0_combout\);

-- Location: LCCOMB_X58_Y49_N4
\pro|mux|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux9~1_combout\ = (\pro|cu|M_select\(1) & ((\pro|mux|Mux9~0_combout\ & (\pro|AC|d\(6))) # (!\pro|mux|Mux9~0_combout\ & ((\pro|R3|d\(6)))))) # (!\pro|cu|M_select\(1) & (((\pro|mux|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(1),
	datab => \pro|AC|d\(6),
	datac => \pro|R3|d\(6),
	datad => \pro|mux|Mux9~0_combout\,
	combout => \pro|mux|Mux9~1_combout\);

-- Location: LCCOMB_X59_Y47_N20
\pro|mux|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux9~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux9~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(6))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(6),
	datad => \pro|mux|Mux9~1_combout\,
	combout => \pro|mux|Mux9~2_combout\);

-- Location: LCCOMB_X56_Y47_N20
\pro|mux|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux9~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux9~2_combout\ & (\pro|AR|d\(6))) # (!\pro|mux|Mux9~2_combout\ & ((\pro|R2|d\(6)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(6),
	datab => \pro|mux|Mux0~0_combout\,
	datac => \pro|R2|d\(6),
	datad => \pro|mux|Mux9~2_combout\,
	combout => \pro|mux|Mux9~3_combout\);

-- Location: LCCOMB_X57_Y48_N6
\pro|mux|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux9~4_combout\ = (\pro|mux|Mux8~6_combout\ & (\pro|mux|Mux8~5_combout\ & (\Pram|memory_rtl_1|auto_generated|ram_block1a6\))) # (!\pro|mux|Mux8~6_combout\ & (((\pro|mux|Mux9~3_combout\)) # (!\pro|mux|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~6_combout\,
	datab => \pro|mux|Mux8~5_combout\,
	datac => \Pram|memory_rtl_1|auto_generated|ram_block1a6\,
	datad => \pro|mux|Mux9~3_combout\,
	combout => \pro|mux|Mux9~4_combout\);

-- Location: LCCOMB_X57_Y48_N10
\pro|mux|Mux9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux9~combout\ = (\pro|mux|Mux8~0_combout\ & (((\pro|mux|Mux9~4_combout\)))) # (!\pro|mux|Mux8~0_combout\ & ((\pro|mux|Mux9~4_combout\ & ((\pro|IR|d\(6)))) # (!\pro|mux|Mux9~4_combout\ & 
-- (\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~0_combout\,
	datab => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~17_combout\,
	datac => \pro|IR|d\(6),
	datad => \pro|mux|Mux9~4_combout\,
	combout => \pro|mux|Mux9~combout\);

-- Location: FF_X56_Y46_N5
\pro|R2|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(4),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(4));

-- Location: FF_X56_Y46_N7
\pro|R4|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(4),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(4));

-- Location: FF_X58_Y49_N15
\pro|R3|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(4),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(4));

-- Location: FF_X59_Y46_N25
\pro|R5|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(4),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(4));

-- Location: FF_X59_Y46_N11
\pro|R1|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(4),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(4));

-- Location: LCCOMB_X59_Y46_N24
\pro|mux|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux11~0_combout\ = (\pro|cu|M_select\(1) & (((\pro|cu|M_select\(2))))) # (!\pro|cu|M_select\(1) & ((\pro|cu|M_select\(2) & ((\pro|R5|d\(4)))) # (!\pro|cu|M_select\(2) & (\pro|R1|d\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|R1|d\(4),
	datab => \pro|cu|M_select\(1),
	datac => \pro|R5|d\(4),
	datad => \pro|cu|M_select\(2),
	combout => \pro|mux|Mux11~0_combout\);

-- Location: LCCOMB_X58_Y49_N14
\pro|mux|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux11~1_combout\ = (\pro|cu|M_select\(1) & ((\pro|mux|Mux11~0_combout\ & (\pro|AC|d\(4))) # (!\pro|mux|Mux11~0_combout\ & ((\pro|R3|d\(4)))))) # (!\pro|cu|M_select\(1) & (((\pro|mux|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(4),
	datab => \pro|cu|M_select\(1),
	datac => \pro|R3|d\(4),
	datad => \pro|mux|Mux11~0_combout\,
	combout => \pro|mux|Mux11~1_combout\);

-- Location: LCCOMB_X56_Y46_N6
\pro|mux|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux11~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux11~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(4))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(4),
	datad => \pro|mux|Mux11~1_combout\,
	combout => \pro|mux|Mux11~2_combout\);

-- Location: LCCOMB_X56_Y46_N4
\pro|mux|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux11~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux11~2_combout\ & (\pro|AR|d\(4))) # (!\pro|mux|Mux11~2_combout\ & ((\pro|R2|d\(4)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(4),
	datab => \pro|mux|Mux0~0_combout\,
	datac => \pro|R2|d\(4),
	datad => \pro|mux|Mux11~2_combout\,
	combout => \pro|mux|Mux11~3_combout\);

-- Location: LCCOMB_X56_Y48_N6
\pro|mux|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux11~4_combout\ = (\pro|mux|Mux8~5_combout\ & ((\pro|mux|Mux8~6_combout\ & (\Pram|memory_rtl_1|auto_generated|ram_block1a4\)) # (!\pro|mux|Mux8~6_combout\ & ((\pro|mux|Mux11~3_combout\))))) # (!\pro|mux|Mux8~5_combout\ & 
-- (!\pro|mux|Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~5_combout\,
	datab => \pro|mux|Mux8~6_combout\,
	datac => \Pram|memory_rtl_1|auto_generated|ram_block1a4\,
	datad => \pro|mux|Mux11~3_combout\,
	combout => \pro|mux|Mux11~4_combout\);

-- Location: FF_X58_Y47_N15
\pro|R5|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(3),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(3));

-- Location: FF_X58_Y47_N1
\pro|R3|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(3),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(3));

-- Location: FF_X59_Y46_N21
\pro|R1|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(3),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(3));

-- Location: LCCOMB_X58_Y47_N0
\pro|mux|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux12~0_combout\ = (\pro|cu|M_select\(2) & (\pro|cu|M_select\(1))) # (!\pro|cu|M_select\(2) & ((\pro|cu|M_select\(1) & (\pro|R3|d\(3))) # (!\pro|cu|M_select\(1) & ((\pro|R1|d\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|cu|M_select\(1),
	datac => \pro|R3|d\(3),
	datad => \pro|R1|d\(3),
	combout => \pro|mux|Mux12~0_combout\);

-- Location: LCCOMB_X58_Y47_N14
\pro|mux|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux12~1_combout\ = (\pro|mux|Mux12~0_combout\ & ((\pro|AC|d\(3)) # ((!\pro|cu|M_select\(2))))) # (!\pro|mux|Mux12~0_combout\ & (((\pro|R5|d\(3) & \pro|cu|M_select\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(3),
	datab => \pro|mux|Mux12~0_combout\,
	datac => \pro|R5|d\(3),
	datad => \pro|cu|M_select\(2),
	combout => \pro|mux|Mux12~1_combout\);

-- Location: FF_X59_Y48_N23
\pro|R2|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(2),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(2));

-- Location: FF_X59_Y48_N25
\pro|R4|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(2),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(2));

-- Location: FF_X58_Y49_N9
\pro|R3|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(2),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(2));

-- Location: FF_X58_Y49_N3
\pro|R5|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(2),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(2));

-- Location: FF_X59_Y49_N23
\pro|R1|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(2),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(2));

-- Location: LCCOMB_X58_Y49_N2
\pro|mux|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux13~0_combout\ = (\pro|cu|M_select\(2) & (((\pro|R5|d\(2)) # (\pro|cu|M_select\(1))))) # (!\pro|cu|M_select\(2) & (\pro|R1|d\(2) & ((!\pro|cu|M_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|R1|d\(2),
	datab => \pro|cu|M_select\(2),
	datac => \pro|R5|d\(2),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux13~0_combout\);

-- Location: LCCOMB_X58_Y49_N8
\pro|mux|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux13~1_combout\ = (\pro|cu|M_select\(1) & ((\pro|mux|Mux13~0_combout\ & (\pro|AC|d\(2))) # (!\pro|mux|Mux13~0_combout\ & ((\pro|R3|d\(2)))))) # (!\pro|cu|M_select\(1) & (((\pro|mux|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(1),
	datab => \pro|AC|d\(2),
	datac => \pro|R3|d\(2),
	datad => \pro|mux|Mux13~0_combout\,
	combout => \pro|mux|Mux13~1_combout\);

-- Location: LCCOMB_X59_Y48_N24
\pro|mux|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux13~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux13~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(2))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(2),
	datad => \pro|mux|Mux13~1_combout\,
	combout => \pro|mux|Mux13~2_combout\);

-- Location: LCCOMB_X59_Y48_N22
\pro|mux|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux13~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux13~2_combout\ & (\pro|AR|d\(2))) # (!\pro|mux|Mux13~2_combout\ & ((\pro|R2|d\(2)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~0_combout\,
	datab => \pro|AR|d\(2),
	datac => \pro|R2|d\(2),
	datad => \pro|mux|Mux13~2_combout\,
	combout => \pro|mux|Mux13~3_combout\);

-- Location: LCCOMB_X59_Y48_N10
\pro|mux|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux13~4_combout\ = (\pro|mux|Mux8~5_combout\ & ((\pro|mux|Mux8~6_combout\ & ((\Pram|memory_rtl_1|auto_generated|ram_block1a2\))) # (!\pro|mux|Mux8~6_combout\ & (\pro|mux|Mux13~3_combout\)))) # (!\pro|mux|Mux8~5_combout\ & 
-- (!\pro|mux|Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~5_combout\,
	datab => \pro|mux|Mux8~6_combout\,
	datac => \pro|mux|Mux13~3_combout\,
	datad => \Pram|memory_rtl_1|auto_generated|ram_block1a2\,
	combout => \pro|mux|Mux13~4_combout\);

-- Location: LCCOMB_X59_Y48_N28
\pro|mux|Mux13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux13~combout\ = (\pro|mux|Mux13~4_combout\ & ((\pro|IR|d\(2)) # ((\pro|mux|Mux8~0_combout\)))) # (!\pro|mux|Mux13~4_combout\ & (((!\pro|mux|Mux8~0_combout\ & \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux13~4_combout\,
	datab => \pro|IR|d\(2),
	datac => \pro|mux|Mux8~0_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[2]~41_combout\,
	combout => \pro|mux|Mux13~combout\);

-- Location: FF_X59_Y50_N9
\pro|R1|d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(15),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(15));

-- Location: FF_X55_Y49_N21
\pro|R2|d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(14),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(14));

-- Location: FF_X59_Y47_N11
\pro|R4|d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(14),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(14));

-- Location: FF_X58_Y49_N7
\pro|R3|d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(14),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(14));

-- Location: FF_X59_Y46_N29
\pro|R5|d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(14),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(14));

-- Location: FF_X59_Y46_N15
\pro|R1|d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(14),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(14));

-- Location: LCCOMB_X59_Y46_N28
\pro|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux1~0_combout\ = (\pro|cu|M_select\(1) & (((\pro|cu|M_select\(2))))) # (!\pro|cu|M_select\(1) & ((\pro|cu|M_select\(2) & ((\pro|R5|d\(14)))) # (!\pro|cu|M_select\(2) & (\pro|R1|d\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(1),
	datab => \pro|R1|d\(14),
	datac => \pro|R5|d\(14),
	datad => \pro|cu|M_select\(2),
	combout => \pro|mux|Mux1~0_combout\);

-- Location: LCCOMB_X58_Y49_N6
\pro|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux1~1_combout\ = (\pro|cu|M_select\(1) & ((\pro|mux|Mux1~0_combout\ & (\pro|AC|d\(14))) # (!\pro|mux|Mux1~0_combout\ & ((\pro|R3|d\(14)))))) # (!\pro|cu|M_select\(1) & (((\pro|mux|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(14),
	datab => \pro|cu|M_select\(1),
	datac => \pro|R3|d\(14),
	datad => \pro|mux|Mux1~0_combout\,
	combout => \pro|mux|Mux1~1_combout\);

-- Location: LCCOMB_X59_Y47_N10
\pro|mux|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux1~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux1~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(14))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(14),
	datad => \pro|mux|Mux1~1_combout\,
	combout => \pro|mux|Mux1~2_combout\);

-- Location: LCCOMB_X55_Y49_N20
\pro|mux|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux1~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux1~2_combout\ & (\pro|AR|d\(14))) # (!\pro|mux|Mux1~2_combout\ & ((\pro|R2|d\(14)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(14),
	datab => \pro|mux|Mux0~0_combout\,
	datac => \pro|R2|d\(14),
	datad => \pro|mux|Mux1~2_combout\,
	combout => \pro|mux|Mux1~3_combout\);

-- Location: LCCOMB_X55_Y49_N30
\pro|mux|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux1~4_combout\ = (!\pro|cu|M_select\(3) & \pro|mux|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro|cu|M_select\(3),
	datad => \pro|mux|Mux1~3_combout\,
	combout => \pro|mux|Mux1~4_combout\);

-- Location: LCCOMB_X59_Y50_N12
\pro|alu|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux15~0_combout\ = (\pro|cu|operation\(2) & (\pro|AC|d\(14) & !\pro|cu|operation\(1))) # (!\pro|cu|operation\(2) & ((\pro|cu|operation\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(14),
	datab => \pro|cu|operation\(2),
	datac => \pro|cu|operation\(1),
	combout => \pro|alu|Mux15~0_combout\);

-- Location: LCCOMB_X59_Y49_N0
\pro|alu|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux14~0_combout\ = (\pro|alu|Mux11~2_combout\ & ((\pro|alu|Add2~28_combout\) # ((!\pro|alu|Mux0~0_combout\)))) # (!\pro|alu|Mux11~2_combout\ & (((\pro|alu|Mux0~0_combout\ & \pro|mux|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Add2~28_combout\,
	datac => \pro|alu|Mux0~0_combout\,
	datad => \pro|mux|Mux1~4_combout\,
	combout => \pro|alu|Mux14~0_combout\);

-- Location: LCCOMB_X59_Y49_N12
\pro|alu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux2~0_combout\ = (\pro|alu|Mux11~2_combout\ & (((\pro|alu|Add2~4_combout\)) # (!\pro|alu|Mux0~0_combout\))) # (!\pro|alu|Mux11~2_combout\ & (\pro|alu|Mux0~0_combout\ & ((\pro|mux|Mux13~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Mux0~0_combout\,
	datac => \pro|alu|Add2~4_combout\,
	datad => \pro|mux|Mux13~combout\,
	combout => \pro|alu|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y49_N6
\pro|alu|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux2~1_combout\ = (\pro|alu|Mux2~0_combout\ & ((\pro|alu|Add1~4_combout\) # ((\pro|alu|Mux0~0_combout\)))) # (!\pro|alu|Mux2~0_combout\ & (((\pro|AC|d\(1) & !\pro|alu|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Add1~4_combout\,
	datab => \pro|AC|d\(1),
	datac => \pro|alu|Mux2~0_combout\,
	datad => \pro|alu|Mux0~0_combout\,
	combout => \pro|alu|Mux2~1_combout\);

-- Location: LCCOMB_X59_Y49_N16
\pro|alu|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux2~2_combout\ = (\pro|cu|operation\(0) & (((\pro|alu|Mux2~1_combout\)))) # (!\pro|cu|operation\(0) & ((\pro|cu|operation\(1) & (\pro|alu|Add0~4_combout\)) # (!\pro|cu|operation\(1) & ((\pro|alu|Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(0),
	datab => \pro|cu|operation\(1),
	datac => \pro|alu|Add0~4_combout\,
	datad => \pro|alu|Mux2~1_combout\,
	combout => \pro|alu|Mux2~2_combout\);

-- Location: LCCOMB_X59_Y49_N28
\pro|alu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux4~0_combout\ = (\pro|alu|Mux11~2_combout\ & (((\pro|alu|Add2~8_combout\)) # (!\pro|alu|Mux0~0_combout\))) # (!\pro|alu|Mux11~2_combout\ & (\pro|alu|Mux0~0_combout\ & ((\pro|mux|Mux11~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Mux0~0_combout\,
	datac => \pro|alu|Add2~8_combout\,
	datad => \pro|mux|Mux11~combout\,
	combout => \pro|alu|Mux4~0_combout\);

-- Location: LCCOMB_X59_Y46_N12
\pro|alu|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux4~1_combout\ = (\pro|alu|Mux4~0_combout\ & ((\pro|alu|Add1~8_combout\) # ((\pro|alu|Mux0~0_combout\)))) # (!\pro|alu|Mux4~0_combout\ & (((\pro|AC|d\(3) & !\pro|alu|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Add1~8_combout\,
	datab => \pro|AC|d\(3),
	datac => \pro|alu|Mux4~0_combout\,
	datad => \pro|alu|Mux0~0_combout\,
	combout => \pro|alu|Mux4~1_combout\);

-- Location: LCCOMB_X59_Y49_N8
\pro|alu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux6~0_combout\ = (\pro|alu|Mux11~2_combout\ & ((\pro|alu|Add2~12_combout\) # ((!\pro|alu|Mux0~0_combout\)))) # (!\pro|alu|Mux11~2_combout\ & (((\pro|alu|Mux0~0_combout\ & \pro|mux|Mux9~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Add2~12_combout\,
	datac => \pro|alu|Mux0~0_combout\,
	datad => \pro|mux|Mux9~combout\,
	combout => \pro|alu|Mux6~0_combout\);

-- Location: LCCOMB_X57_Y49_N26
\pro|alu|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux6~1_combout\ = (\pro|alu|Mux6~0_combout\ & (((\pro|alu|Add1~12_combout\) # (\pro|alu|Mux0~0_combout\)))) # (!\pro|alu|Mux6~0_combout\ & (\pro|AC|d\(5) & ((!\pro|alu|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux6~0_combout\,
	datab => \pro|AC|d\(5),
	datac => \pro|alu|Add1~12_combout\,
	datad => \pro|alu|Mux0~0_combout\,
	combout => \pro|alu|Mux6~1_combout\);

-- Location: LCCOMB_X57_Y49_N12
\pro|alu|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux6~2_combout\ = (\pro|cu|operation\(1) & ((\pro|cu|operation\(0) & ((\pro|alu|Mux6~1_combout\))) # (!\pro|cu|operation\(0) & (\pro|alu|Add0~12_combout\)))) # (!\pro|cu|operation\(1) & (((\pro|alu|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(1),
	datab => \pro|cu|operation\(0),
	datac => \pro|alu|Add0~12_combout\,
	datad => \pro|alu|Mux6~1_combout\,
	combout => \pro|alu|Mux6~2_combout\);

-- Location: LCCOMB_X59_Y49_N18
\pro|alu|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux7~0_combout\ = (\pro|alu|Mux0~0_combout\ & (((!\pro|alu|Mux11~2_combout\ & \pro|mux|Mux8~combout\)))) # (!\pro|alu|Mux0~0_combout\ & ((\pro|AC|d\(6)) # ((\pro|alu|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(6),
	datab => \pro|alu|Mux0~0_combout\,
	datac => \pro|alu|Mux11~2_combout\,
	datad => \pro|mux|Mux8~combout\,
	combout => \pro|alu|Mux7~0_combout\);

-- Location: LCCOMB_X57_Y49_N6
\pro|alu|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux7~1_combout\ = (\pro|alu|Mux11~2_combout\ & ((\pro|alu|Mux7~0_combout\ & ((\pro|alu|Add1~14_combout\))) # (!\pro|alu|Mux7~0_combout\ & (\pro|alu|Add2~14_combout\)))) # (!\pro|alu|Mux11~2_combout\ & (\pro|alu|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Mux7~0_combout\,
	datac => \pro|alu|Add2~14_combout\,
	datad => \pro|alu|Add1~14_combout\,
	combout => \pro|alu|Mux7~1_combout\);

-- Location: LCCOMB_X59_Y50_N4
\pro|alu|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux9~2_combout\ = (\pro|cu|operation\(0) & (((\pro|cu|operation\(1)) # (\pro|alu|Mux9~5_combout\)))) # (!\pro|cu|operation\(0) & (\pro|AC|d\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(8),
	datab => \pro|cu|operation\(1),
	datac => \pro|cu|operation\(0),
	datad => \pro|alu|Mux9~5_combout\,
	combout => \pro|alu|Mux9~2_combout\);

-- Location: LCCOMB_X59_Y49_N14
\pro|alu|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux10~0_combout\ = (\pro|alu|Mux0~0_combout\ & ((\pro|alu|Mux11~2_combout\ & (\pro|alu|Add2~20_combout\)) # (!\pro|alu|Mux11~2_combout\ & ((\pro|mux|Mux5~4_combout\))))) # (!\pro|alu|Mux0~0_combout\ & (((\pro|alu|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Add2~20_combout\,
	datab => \pro|alu|Mux0~0_combout\,
	datac => \pro|alu|Mux11~2_combout\,
	datad => \pro|mux|Mux5~4_combout\,
	combout => \pro|alu|Mux10~0_combout\);

-- Location: LCCOMB_X57_Y46_N30
\pro|alu|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux10~1_combout\ = (\pro|alu|Mux10~0_combout\ & (((\pro|alu|Mux0~0_combout\) # (\pro|alu|Add1~20_combout\)))) # (!\pro|alu|Mux10~0_combout\ & (\pro|AC|d\(9) & (!\pro|alu|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux10~0_combout\,
	datab => \pro|AC|d\(9),
	datac => \pro|alu|Mux0~0_combout\,
	datad => \pro|alu|Add1~20_combout\,
	combout => \pro|alu|Mux10~1_combout\);

-- Location: LCCOMB_X59_Y50_N18
\pro|alu|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux11~3_combout\ = (\pro|cu|operation\(0) & (((\pro|cu|operation\(1)) # (\pro|alu|Mux11~6_combout\)))) # (!\pro|cu|operation\(0) & (\pro|AC|d\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(10),
	datab => \pro|cu|operation\(1),
	datac => \pro|cu|operation\(0),
	datad => \pro|alu|Mux11~6_combout\,
	combout => \pro|alu|Mux11~3_combout\);

-- Location: LCCOMB_X1_Y43_N0
\re|localclockOS|accumulator~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator~8_combout\ = (\re|localclockOS|accumulator\(1) & \re|flagStart~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re|localclockOS|accumulator\(1),
	datac => \re|flagStart~q\,
	combout => \re|localclockOS|accumulator~8_combout\);

-- Location: LCCOMB_X1_Y43_N28
\re|localclockOS|accumulator~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator~9_combout\ = (\re|flagStart~q\ & ((\re|localclockOS|accumulator\(8)) # ((\re|localclockOS|Equal0~1_combout\) # (\re|localclockOS|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(8),
	datab => \re|localclockOS|Equal0~1_combout\,
	datac => \re|flagStart~q\,
	datad => \re|localclockOS|Equal0~0_combout\,
	combout => \re|localclockOS|accumulator~9_combout\);

-- Location: LCCOMB_X1_Y43_N30
\re|localclockOS|accumulator~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator~10_combout\ = (\re|localclockOS|accumulator\(0) & \re|localclockOS|accumulator~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \re|localclockOS|accumulator\(0),
	datad => \re|localclockOS|accumulator~9_combout\,
	combout => \re|localclockOS|accumulator~10_combout\);

-- Location: LCCOMB_X58_Y48_N6
\pro|cu|musec~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~25_combout\ = (\pro|cu|next_state\(2) & (!\pro|cu|next_state\(3) & ((\pro|cu|next_state\(1)) # (\pro|cu|next_state\(0))))) # (!\pro|cu|next_state\(2) & (\pro|cu|next_state\(3) & ((\pro|cu|next_state\(1)) # (!\pro|cu|next_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(1),
	datab => \pro|cu|next_state\(2),
	datac => \pro|cu|next_state\(3),
	datad => \pro|cu|next_state\(0),
	combout => \pro|cu|musec~25_combout\);

-- Location: LCCOMB_X59_Y50_N28
\pro|alu|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux9~5_combout\ = (!\pro|cu|M_select\(3) & (!\pro|cu|operation\(2) & \pro|mux|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(3),
	datac => \pro|cu|operation\(2),
	datad => \pro|mux|Mux6~3_combout\,
	combout => \pro|alu|Mux9~5_combout\);

-- Location: LCCOMB_X59_Y50_N0
\pro|alu|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux11~6_combout\ = (!\pro|cu|M_select\(3) & (!\pro|cu|operation\(2) & \pro|mux|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(3),
	datac => \pro|cu|operation\(2),
	datad => \pro|mux|Mux4~3_combout\,
	combout => \pro|alu|Mux11~6_combout\);

-- Location: LCCOMB_X1_Y43_N4
\re|localclockOS|accumulator[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[0]~27_combout\ = !\re|localclockOS|accumulator~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \re|localclockOS|accumulator~10_combout\,
	combout => \re|localclockOS|accumulator[0]~27_combout\);

-- Location: CLKCTRL_G1
\re|activeClock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \re|activeClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \re|activeClock~clkctrl_outclk\);

-- Location: IOOBUF_X74_Y73_N23
\end1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pro|cu|endp~q\,
	devoe => ww_devoe,
	o => ww_end1);

-- Location: IOOBUF_X69_Y73_N16
\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X94_Y73_N2
\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X94_Y73_N9
\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X107_Y73_N16
\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X87_Y73_N16
\s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(4));

-- Location: IOOBUF_X87_Y73_N9
\s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(5));

-- Location: IOOBUF_X72_Y73_N9
\s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(6));

-- Location: IOOBUF_X72_Y73_N2
\s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_s(7));

-- Location: IOOBUF_X13_Y73_N23
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tr|ALT_INV_dataBit~q\,
	devoe => ww_devoe,
	o => ww_tx);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X54_Y50_N8
\staten.nope~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \staten.nope~0_combout\ = (\Selector18~15_combout\) # (\staten.nope~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~15_combout\,
	datac => \staten.nope~q\,
	combout => \staten.nope~0_combout\);

-- Location: FF_X54_Y50_N9
\staten.nope\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \staten.nope~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \staten.nope~q\);

-- Location: LCCOMB_X55_Y50_N18
\countn~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~3_combout\ = (countn(14) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(14),
	datad => \pro|cu|endp~q\,
	combout => \countn~3_combout\);

-- Location: LCCOMB_X55_Y50_N2
\countn~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~15_combout\ = (countn(10) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(10),
	datad => \pro|cu|endp~q\,
	combout => \countn~15_combout\);

-- Location: LCCOMB_X55_Y50_N8
\countn~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~14_combout\ = (countn(9) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(9),
	datad => \pro|cu|endp~q\,
	combout => \countn~14_combout\);

-- Location: LCCOMB_X55_Y50_N6
\countn~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~13_combout\ = (countn(8) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(8),
	datad => \pro|cu|endp~q\,
	combout => \countn~13_combout\);

-- Location: LCCOMB_X55_Y50_N4
\countn~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~12_combout\ = (countn(7) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(7),
	datad => \pro|cu|endp~q\,
	combout => \countn~12_combout\);

-- Location: LCCOMB_X55_Y50_N22
\countn~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~9_combout\ = (countn(4) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(4),
	datad => \pro|cu|endp~q\,
	combout => \countn~9_combout\);

-- Location: LCCOMB_X55_Y50_N20
\countn~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~8_combout\ = (countn(3) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(3),
	datad => \pro|cu|endp~q\,
	combout => \countn~8_combout\);

-- Location: LCCOMB_X56_Y50_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = countn(0) $ (VCC)
-- \Add0~1\ = CARRY(countn(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X56_Y50_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (countn(1) & (!\Add0~1\)) # (!countn(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!countn(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X56_Y50_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (countn(2) & (\Add0~3\ $ (GND))) # (!countn(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((countn(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X56_Y50_N22
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (countn(3) & (!\Add0~5\)) # (!countn(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!countn(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X54_Y47_N2
\re|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|state~1_combout\ = (\re|state\(2) & (\re|state\(1) & (\re|state\(0) & !\re|state\(3)))) # (!\re|state\(2) & (!\re|state\(1) & (!\re|state\(0) & \re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(3),
	combout => \re|state~1_combout\);

-- Location: LCCOMB_X54_Y47_N20
\re|filter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|filter~0_combout\ = (\re|filter\(0) & !\re|filter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|filter\(0),
	datac => \re|filter\(1),
	combout => \re|filter~0_combout\);

-- Location: LCCOMB_X54_Y47_N22
\re|filter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|filter[1]~1_combout\ = (!\re|flagStart~q\ & !\re|dataReady~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datad => \re|dataReady~q\,
	combout => \re|filter[1]~1_combout\);

-- Location: FF_X54_Y47_N5
\re|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	asdata => \re|filter~0_combout\,
	sload => VCC,
	ena => \re|filter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|filter\(1));

-- Location: IOIBUF_X27_Y73_N8
\rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X54_Y47_N4
\re|filter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|filter~2_combout\ = (!\rx~input_o\ & ((!\re|filter\(1)) # (!\re|filter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|filter\(0),
	datac => \re|filter\(1),
	datad => \rx~input_o\,
	combout => \re|filter~2_combout\);

-- Location: FF_X54_Y47_N31
\re|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	asdata => \re|filter~2_combout\,
	sload => VCC,
	ena => \re|filter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|filter\(0));

-- Location: LCCOMB_X54_Y47_N30
\re|flagStart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|flagStart~0_combout\ = (!\re|flagStart~q\ & ((\re|dataReady~q\) # ((!\re|filter\(1)) # (!\re|filter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|dataReady~q\,
	datab => \re|flagStart~q\,
	datac => \re|filter\(0),
	datad => \re|filter\(1),
	combout => \re|flagStart~0_combout\);

-- Location: LCCOMB_X54_Y47_N0
\re|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|WideOr0~0_combout\ = (\re|state\(3) & ((\re|state\(2)) # ((\re|state\(1)) # (\re|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(3),
	combout => \re|WideOr0~0_combout\);

-- Location: LCCOMB_X54_Y47_N26
\re|flagStart~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|flagStart~1_combout\ = (!\re|flagStart~0_combout\ & ((!\re|WideOr0~0_combout\) # (!\re|flagStart~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re|flagStart~0_combout\,
	datac => \re|flagStart~q\,
	datad => \re|WideOr0~0_combout\,
	combout => \re|flagStart~1_combout\);

-- Location: FF_X54_Y47_N27
\re|flagStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|flagStart~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|flagStart~q\);

-- Location: FF_X55_Y47_N23
\re|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	asdata => \re|state~1_combout\,
	sload => VCC,
	ena => \re|flagStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|state\(3));

-- Location: LCCOMB_X54_Y47_N16
\re|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|WideOr1~0_combout\ = (!\re|state\(3) & (\re|state\(2) $ (((\re|state\(1) & \re|state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(3),
	combout => \re|WideOr1~0_combout\);

-- Location: FF_X55_Y47_N13
\re|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	asdata => \re|WideOr1~0_combout\,
	sload => VCC,
	ena => \re|flagStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|state\(2));

-- Location: LCCOMB_X55_Y47_N0
\re|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|WideOr2~0_combout\ = (!\re|state\(0) & (((!\re|state\(1) & !\re|state\(2))) # (!\re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(3),
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(2),
	combout => \re|WideOr2~0_combout\);

-- Location: FF_X55_Y47_N1
\re|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|WideOr2~0_combout\,
	ena => \re|flagStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|state\(0));

-- Location: LCCOMB_X54_Y47_N6
\re|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|state~0_combout\ = (!\re|state\(3) & (\re|state\(1) $ (\re|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(3),
	combout => \re|state~0_combout\);

-- Location: FF_X55_Y47_N11
\re|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	asdata => \re|state~0_combout\,
	sload => VCC,
	ena => \re|flagStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|state\(1));

-- Location: LCCOMB_X54_Y47_N8
\re|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~0_combout\ = (!\re|state\(2) & (!\re|state\(1) & (\re|state\(0) & \re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(3),
	combout => \re|Decoder1~0_combout\);

-- Location: LCCOMB_X53_Y47_N8
\re|dataReady~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|dataReady~0_combout\ = (\re|Decoder1~0_combout\) # (\re|dataReady~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re|Decoder1~0_combout\,
	datac => \re|dataReady~q\,
	combout => \re|dataReady~0_combout\);

-- Location: FF_X53_Y47_N9
\re|dataReady\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|dataReady~0_combout\,
	sclr => \re|ALT_INV_flagStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|dataReady~q\);

-- Location: LCCOMB_X52_Y48_N2
\tr|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|WideOr0~0_combout\ = (\tr|state\(2) & (\tr|state\(0) & (\tr|state\(1) & !\tr|state\(3)))) # (!\tr|state\(2) & (\tr|state\(3) & ((!\tr|state\(1)) # (!\tr|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(0),
	datab => \tr|state\(2),
	datac => \tr|state\(1),
	datad => \tr|state\(3),
	combout => \tr|WideOr0~0_combout\);

-- Location: LCCOMB_X54_Y50_N0
\writeu~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeu~0_combout\ = (\staten.pros~q\ & \pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datad => \pro|cu|endp~q\,
	combout => \writeu~0_combout\);

-- Location: LCCOMB_X54_Y50_N10
\startt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \startt~0_combout\ = (\Selector18~15_combout\ & (!\staten.trans~q\ & ((\writeu~0_combout\)))) # (!\Selector18~15_combout\ & ((\startt~q\) # ((!\staten.trans~q\ & \writeu~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~15_combout\,
	datab => \staten.trans~q\,
	datac => \startt~q\,
	datad => \writeu~0_combout\,
	combout => \startt~0_combout\);

-- Location: FF_X54_Y50_N11
startt : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \startt~q\);

-- Location: LCCOMB_X55_Y48_N20
\tr|state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|state[1]~0_combout\ = (\tr|flag~q\) # (\startt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|flag~q\,
	datac => \startt~q\,
	combout => \tr|state[1]~0_combout\);

-- Location: FF_X55_Y48_N25
\tr|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	asdata => \tr|WideOr0~0_combout\,
	sclr => \tr|ALT_INV_flag~q\,
	sload => VCC,
	ena => \tr|state[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|state\(3));

-- Location: LCCOMB_X54_Y48_N8
\tr|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|WideOr2~0_combout\ = (\tr|state\(3) & (!\tr|state\(2) & (\tr|state\(0) $ (\tr|state\(1))))) # (!\tr|state\(3) & (\tr|state\(0) $ ((\tr|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(0),
	datab => \tr|state\(3),
	datac => \tr|state\(1),
	datad => \tr|state\(2),
	combout => \tr|WideOr2~0_combout\);

-- Location: FF_X54_Y48_N9
\tr|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \tr|WideOr2~0_combout\,
	sclr => \tr|ALT_INV_flag~q\,
	ena => \tr|state[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|state\(1));

-- Location: LCCOMB_X52_Y48_N4
\tr|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|WideOr1~0_combout\ = (!\tr|state\(3) & (\tr|state\(2) $ (((\tr|state\(0) & \tr|state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(0),
	datab => \tr|state\(2),
	datac => \tr|state\(1),
	datad => \tr|state\(3),
	combout => \tr|WideOr1~0_combout\);

-- Location: FF_X52_Y48_N25
\tr|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	asdata => \tr|WideOr1~0_combout\,
	sclr => \tr|ALT_INV_flag~q\,
	sload => VCC,
	ena => \tr|state[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|state\(2));

-- Location: LCCOMB_X52_Y48_N0
\tr|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|WideOr4~0_combout\ = (\tr|state\(2) & (((!\tr|state\(3))))) # (!\tr|state\(2) & ((\tr|state\(0) & ((!\tr|state\(3)) # (!\tr|state\(1)))) # (!\tr|state\(0) & ((\tr|state\(1)) # (\tr|state\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(0),
	datab => \tr|state\(2),
	datac => \tr|state\(1),
	datad => \tr|state\(3),
	combout => \tr|WideOr4~0_combout\);

-- Location: LCCOMB_X55_Y48_N26
\tr|flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|flag~0_combout\ = (\tr|flag~q\ & ((\tr|WideOr4~0_combout\))) # (!\tr|flag~q\ & (\startt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startt~q\,
	datac => \tr|flag~q\,
	datad => \tr|WideOr4~0_combout\,
	combout => \tr|flag~0_combout\);

-- Location: FF_X54_Y50_N3
\tr|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	asdata => \tr|flag~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|flag~q\);

-- Location: LCCOMB_X56_Y49_N28
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\staten.00~q\ & (\staten.trans~q\ & ((!\tr|flag~q\)))) # (!\staten.00~q\ & ((\re|dataReady~q\) # ((\staten.trans~q\ & !\tr|flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \staten.00~q\,
	datab => \staten.trans~q\,
	datac => \re|dataReady~q\,
	datad => \tr|flag~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X56_Y49_N18
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector0~1_combout\ & ((countn(16)) # ((\Selector0~0_combout\ & \Add0~32_combout\)))) # (!\Selector0~1_combout\ & (\Selector0~0_combout\ & ((\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \Selector0~0_combout\,
	datac => countn(16),
	datad => \Add0~32_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X56_Y49_N19
\countn[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(16));

-- Location: LCCOMB_X56_Y49_N12
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (countn(14) & (\Add0~27\ $ (GND))) # (!countn(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((countn(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X56_Y49_N14
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (countn(15) & (!\Add0~29\)) # (!countn(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!countn(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X56_Y49_N16
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = countn(16) $ (!\Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(16),
	cin => \Add0~31\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X56_Y50_N28
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (countn(6) & (\Add0~11\ $ (GND))) # (!countn(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((countn(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X54_Y50_N20
\Selector18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~12_combout\ = (!\Add0~16_combout\ & (!\Add0~12_combout\ & (!\Add0~14_combout\ & !\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~18_combout\,
	combout => \Selector18~12_combout\);

-- Location: LCCOMB_X54_Y50_N2
\Selector18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~10_combout\ = (\staten.trans~q\ & (!\Add0~2_combout\ & (!\tr|flag~q\ & !\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \staten.trans~q\,
	datab => \Add0~2_combout\,
	datac => \tr|flag~q\,
	datad => \Add0~0_combout\,
	combout => \Selector18~10_combout\);

-- Location: LCCOMB_X56_Y50_N26
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (countn(5) & (!\Add0~9\)) # (!countn(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!countn(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X54_Y50_N18
\Selector18~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~11_combout\ = (!\Add0~6_combout\ & (!\Add0~10_combout\ & (!\Add0~8_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~4_combout\,
	combout => \Selector18~11_combout\);

-- Location: LCCOMB_X54_Y50_N24
\Selector18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~14_combout\ = (\Selector18~13_combout\ & (\Selector18~12_combout\ & (\Selector18~10_combout\ & \Selector18~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~13_combout\,
	datab => \Selector18~12_combout\,
	datac => \Selector18~10_combout\,
	datad => \Selector18~11_combout\,
	combout => \Selector18~14_combout\);

-- Location: LCCOMB_X54_Y50_N26
\Selector18~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~15_combout\ = (!\Add0~30_combout\ & (\Add0~28_combout\ & (!\Add0~32_combout\ & \Selector18~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~28_combout\,
	datac => \Add0~32_combout\,
	datad => \Selector18~14_combout\,
	combout => \Selector18~15_combout\);

-- Location: LCCOMB_X54_Y50_N28
\Selector18~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~17_combout\ = (\Selector18~9_combout\) # ((\Selector18~15_combout\) # ((\pro|cu|endp~q\ & \staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|endp~q\,
	datab => \Selector18~9_combout\,
	datac => \Selector18~15_combout\,
	datad => \staten.pros~q\,
	combout => \Selector18~17_combout\);

-- Location: LCCOMB_X54_Y50_N4
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\staten.nope~q\ & ((\writeu~0_combout\) # ((!\Selector18~17_combout\ & \staten.trans~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \staten.nope~q\,
	datab => \Selector18~17_combout\,
	datac => \staten.trans~q\,
	datad => \writeu~0_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X54_Y50_N5
\staten.trans\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \staten.trans~q\);

-- Location: LCCOMB_X54_Y50_N22
\countn[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn[15]~1_combout\ = (\staten.00~q\ & (((!\tr|flag~q\) # (!\staten.trans~q\)))) # (!\staten.00~q\ & (\re|dataReady~q\ & ((!\tr|flag~q\) # (!\staten.trans~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \staten.00~q\,
	datab => \re|dataReady~q\,
	datac => \staten.trans~q\,
	datad => \tr|flag~q\,
	combout => \countn[15]~1_combout\);

-- Location: LCCOMB_X53_Y50_N0
\countn[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn[15]~2_combout\ = (!\staten.nope~q\ & \countn[15]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \staten.nope~q\,
	datad => \countn[15]~1_combout\,
	combout => \countn[15]~2_combout\);

-- Location: FF_X55_Y50_N21
\countn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~8_combout\,
	asdata => \Add0~6_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(3));

-- Location: LCCOMB_X56_Y50_N24
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (countn(4) & (\Add0~7\ $ (GND))) # (!countn(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((countn(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X55_Y50_N23
\countn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~9_combout\,
	asdata => \Add0~8_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(4));

-- Location: LCCOMB_X56_Y50_N30
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (countn(7) & (!\Add0~13\)) # (!countn(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!countn(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X55_Y50_N5
\countn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~12_combout\,
	asdata => \Add0~14_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(7));

-- Location: LCCOMB_X56_Y49_N0
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (countn(8) & (\Add0~15\ $ (GND))) # (!countn(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((countn(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X55_Y50_N7
\countn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~13_combout\,
	asdata => \Add0~16_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(8));

-- Location: LCCOMB_X56_Y49_N2
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (countn(9) & (!\Add0~17\)) # (!countn(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!countn(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X55_Y50_N9
\countn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~14_combout\,
	asdata => \Add0~18_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(9));

-- Location: LCCOMB_X56_Y49_N4
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (countn(10) & (\Add0~19\ $ (GND))) # (!countn(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((countn(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X55_Y50_N3
\countn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~15_combout\,
	asdata => \Add0~20_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(10));

-- Location: LCCOMB_X56_Y49_N6
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (countn(11) & (!\Add0~21\)) # (!countn(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!countn(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X56_Y49_N8
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (countn(12) & (\Add0~23\ $ (GND))) # (!countn(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((countn(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X56_Y49_N10
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (countn(13) & (!\Add0~25\)) # (!countn(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!countn(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X55_Y50_N19
\countn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~3_combout\,
	asdata => \Add0~28_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(14));

-- Location: LCCOMB_X55_Y50_N24
\countn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~0_combout\ = (countn(13) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(13),
	datad => \pro|cu|endp~q\,
	combout => \countn~0_combout\);

-- Location: FF_X55_Y50_N25
\countn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~0_combout\,
	asdata => \Add0~26_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(13));

-- Location: LCCOMB_X54_Y50_N12
\staten.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \staten.00~0_combout\ = (\staten.nope~q\) # ((\staten.00~q\) # (\Selector18~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.nope~q\,
	datac => \staten.00~q\,
	datad => \Selector18~17_combout\,
	combout => \staten.00~0_combout\);

-- Location: FF_X54_Y50_N13
\staten.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \staten.00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \staten.00~q\);

-- Location: LCCOMB_X56_Y49_N20
\Selector18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~4_combout\ = (countn(0) & (\re|dataReady~q\ & (!\staten.00~q\ & !countn(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(0),
	datab => \re|dataReady~q\,
	datac => \staten.00~q\,
	datad => countn(16),
	combout => \Selector18~4_combout\);

-- Location: LCCOMB_X55_Y50_N0
\countn~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~10_combout\ = (countn(5) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(5),
	datad => \pro|cu|endp~q\,
	combout => \countn~10_combout\);

-- Location: FF_X55_Y50_N1
\countn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~10_combout\,
	asdata => \Add0~10_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(5));

-- Location: LCCOMB_X56_Y50_N2
\Selector18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~6_combout\ = (countn(6) & (countn(7) & (countn(5) & countn(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(6),
	datab => countn(7),
	datac => countn(5),
	datad => countn(8),
	combout => \Selector18~6_combout\);

-- Location: LCCOMB_X55_Y50_N28
\countn~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~16_combout\ = (countn(11) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(11),
	datad => \pro|cu|endp~q\,
	combout => \countn~16_combout\);

-- Location: FF_X55_Y50_N29
\countn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~16_combout\,
	asdata => \Add0~22_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(11));

-- Location: LCCOMB_X56_Y49_N22
\Selector18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~7_combout\ = (countn(12) & (countn(10) & (countn(11) & countn(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(12),
	datab => countn(10),
	datac => countn(11),
	datad => countn(9),
	combout => \Selector18~7_combout\);

-- Location: LCCOMB_X56_Y49_N24
\Selector18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~8_combout\ = (\Selector18~5_combout\ & (\Selector18~4_combout\ & (\Selector18~6_combout\ & \Selector18~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~5_combout\,
	datab => \Selector18~4_combout\,
	datac => \Selector18~6_combout\,
	datad => \Selector18~7_combout\,
	combout => \Selector18~8_combout\);

-- Location: LCCOMB_X56_Y49_N26
\Selector18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~9_combout\ = (countn(15) & (countn(14) & (countn(13) & \Selector18~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(15),
	datab => countn(14),
	datac => countn(13),
	datad => \Selector18~8_combout\,
	combout => \Selector18~9_combout\);

-- Location: LCCOMB_X54_Y50_N14
\Selector18~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~18_combout\ = (!\Selector18~15_combout\ & ((\staten.pros~q\ & (!\pro|cu|endp~q\)) # (!\staten.pros~q\ & ((\Selector18~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|endp~q\,
	datab => \Selector18~9_combout\,
	datac => \Selector18~15_combout\,
	datad => \staten.pros~q\,
	combout => \Selector18~18_combout\);

-- Location: LCCOMB_X54_Y50_N30
\Selector18~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~16_combout\ = (!\staten.nope~q\ & \Selector18~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.nope~q\,
	datac => \Selector18~18_combout\,
	combout => \Selector18~16_combout\);

-- Location: FF_X54_Y50_N31
\staten.pros\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \staten.pros~q\);

-- Location: LCCOMB_X60_Y49_N14
\writeu~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeu~1_combout\ = (\writeu~q\) # ((\pro|cu|endp~q\ & \staten.pros~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|endp~q\,
	datac => \staten.pros~q\,
	datad => \writeu~q\,
	combout => \writeu~1_combout\);

-- Location: FF_X60_Y49_N25
writeu : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writeu~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeu~q\);

-- Location: LCCOMB_X61_Y48_N16
\pro|cu|musec~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~8_combout\ = (\pro|cu|next_state\(0) & (!\pro|cu|next_state\(3) & ((\pro|cu|next_state\(2)) # (!\pro|cu|next_state\(1))))) # (!\pro|cu|next_state\(0) & (!\pro|cu|next_state\(2) & (\pro|cu|next_state\(1) & \pro|cu|next_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(2),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(0),
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|musec~8_combout\);

-- Location: LCCOMB_X61_Y48_N12
\pro|cu|musec~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~9_combout\ = (\pro|cu|musec~7_combout\ & ((\pro|cu|next_state\(0)) # ((\pro|cu|musec~8_combout\ & !\pro|cu|next_state\(4))))) # (!\pro|cu|musec~7_combout\ & (\pro|cu|musec~8_combout\ & ((!\pro|cu|next_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|musec~7_combout\,
	datab => \pro|cu|musec~8_combout\,
	datac => \pro|cu|next_state\(0),
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|musec~9_combout\);

-- Location: LCCOMB_X54_Y50_N16
\startp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \startp~0_combout\ = (\Selector18~9_combout\) # ((\startp~q\ & ((!\writeu~0_combout\) # (!\staten.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~9_combout\,
	datab => \staten.00~q\,
	datac => \startp~q\,
	datad => \writeu~0_combout\,
	combout => \startp~0_combout\);

-- Location: FF_X54_Y50_N17
startp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \startp~q\);

-- Location: FF_X61_Y48_N13
\pro|cu|read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|musec~9_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|read~q\);

-- Location: LCCOMB_X60_Y49_N18
\read~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \read~0_combout\ = (\staten.pros~q\ & ((\pro|cu|read~q\))) # (!\staten.pros~q\ & (\writeu~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writeu~q\,
	datac => \staten.pros~q\,
	datad => \pro|cu|read~q\,
	combout => \read~0_combout\);

-- Location: LCCOMB_X61_Y49_N24
\pro|cu|musec~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~26_combout\ = (!\pro|cu|next_state\(2) & ((\pro|cu|next_state\(1) & (!\pro|cu|next_state\(0) & !\pro|cu|next_state\(3))) # (!\pro|cu|next_state\(1) & ((\pro|cu|next_state\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(1),
	datab => \pro|cu|next_state\(0),
	datac => \pro|cu|next_state\(3),
	datad => \pro|cu|next_state\(2),
	combout => \pro|cu|musec~26_combout\);

-- Location: FF_X61_Y49_N25
\pro|cu|incpc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|musec~26_combout\,
	sclr => \pro|cu|next_state\(4),
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|incpc~q\);

-- Location: LCCOMB_X60_Y47_N16
\pro|PC|d[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|PC|d[0]~8_combout\ = (\pro|PC|d\(0) & (\pro|cu|incpc~q\ $ (VCC))) # (!\pro|PC|d\(0) & (\pro|cu|incpc~q\ & VCC))
-- \pro|PC|d[0]~9\ = CARRY((\pro|PC|d\(0) & \pro|cu|incpc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|PC|d\(0),
	datab => \pro|cu|incpc~q\,
	datad => VCC,
	combout => \pro|PC|d[0]~8_combout\,
	cout => \pro|PC|d[0]~9\);

-- Location: LCCOMB_X62_Y48_N24
\pro|cu|musec~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~29_combout\ = (\pro|cu|next_state\(0) & ((\pro|cu|next_state\(1)) # ((\pro|cu|next_state\(2)) # (!\pro|cu|next_state\(3))))) # (!\pro|cu|next_state\(0) & ((\pro|cu|next_state\(2) & (\pro|cu|next_state\(1))) # (!\pro|cu|next_state\(2) & 
-- ((\pro|cu|next_state\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(0),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(3),
	datad => \pro|cu|next_state\(2),
	combout => \pro|cu|musec~29_combout\);

-- Location: LCCOMB_X60_Y49_N0
\pro|cu|musec~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~30_combout\ = (\pro|cu|next_state\(4) & (!\pro|cu|next_state\(3) & (\pro|cu|next_state\(2) $ (\pro|cu|musec~29_combout\)))) # (!\pro|cu|next_state\(4) & (\pro|cu|musec~29_combout\ & ((\pro|cu|next_state\(2)) # (\pro|cu|next_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(2),
	datab => \pro|cu|next_state\(4),
	datac => \pro|cu|musec~29_combout\,
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|musec~30_combout\);

-- Location: FF_X60_Y49_N1
\pro|cu|operation[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|musec~30_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|operation\(0));

-- Location: LCCOMB_X61_Y48_N22
\pro|cu|musec~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~7_combout\ = (!\pro|cu|next_state\(3) & (\pro|cu|next_state\(1) & (!\pro|cu|next_state\(2) & \pro|cu|next_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(3),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(2),
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|musec~7_combout\);

-- Location: LCCOMB_X60_Y48_N0
\pro|cu|musec~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~16_combout\ = (\pro|cu|musec~7_combout\ & !\pro|cu|next_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|musec~7_combout\,
	datac => \pro|cu|next_state\(0),
	combout => \pro|cu|musec~16_combout\);

-- Location: FF_X60_Y48_N1
\pro|cu|incac\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|musec~16_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|incac~q\);

-- Location: LCCOMB_X58_Y50_N0
\pro|AC|d[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[0]~16_combout\ = (\pro|AC|d\(0) & (\pro|cu|incac~q\ $ (VCC))) # (!\pro|AC|d\(0) & (\pro|cu|incac~q\ & VCC))
-- \pro|AC|d[0]~17\ = CARRY((\pro|AC|d\(0) & \pro|cu|incac~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(0),
	datab => \pro|cu|incac~q\,
	datad => VCC,
	combout => \pro|AC|d[0]~16_combout\,
	cout => \pro|AC|d[0]~17\);

-- Location: LCCOMB_X60_Y49_N4
\pro|cu|musec~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~17_combout\ = (\pro|cu|next_state\(0)) # ((\pro|cu|next_state\(4) & ((!\pro|cu|next_state\(1)) # (!\pro|cu|next_state\(2)))) # (!\pro|cu|next_state\(4) & ((\pro|cu|next_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(2),
	datab => \pro|cu|next_state\(4),
	datac => \pro|cu|next_state\(1),
	datad => \pro|cu|next_state\(0),
	combout => \pro|cu|musec~17_combout\);

-- Location: LCCOMB_X60_Y49_N20
\pro|cu|musec~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~18_combout\ = (!\pro|cu|musec~17_combout\ & !\pro|cu|next_state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro|cu|musec~17_combout\,
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|musec~18_combout\);

-- Location: FF_X60_Y49_N21
\pro|cu|resetac\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|musec~18_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|resetac~q\);

-- Location: LCCOMB_X60_Y49_N28
\pro|cu|musec~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~11_combout\ = (!\pro|cu|next_state\(0) & (!\pro|cu|next_state\(1) & (\pro|cu|next_state\(2) & !\pro|cu|next_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(0),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(2),
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|musec~11_combout\);

-- Location: LCCOMB_X60_Y48_N16
\pro|cu|D_select[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|D_select[3]~2_combout\ = (\pro|cu|next_state\(4) & ((\pro|cu|musec~11_combout\))) # (!\pro|cu|next_state\(4) & (\pro|cu|musec~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|musec~10_combout\,
	datab => \pro|cu|next_state\(4),
	datad => \pro|cu|musec~11_combout\,
	combout => \pro|cu|D_select[3]~2_combout\);

-- Location: LCCOMB_X60_Y47_N18
\pro|PC|d[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|PC|d[1]~10_combout\ = (\pro|PC|d\(1) & (!\pro|PC|d[0]~9\)) # (!\pro|PC|d\(1) & ((\pro|PC|d[0]~9\) # (GND)))
-- \pro|PC|d[1]~11\ = CARRY((!\pro|PC|d[0]~9\) # (!\pro|PC|d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|PC|d\(1),
	datad => VCC,
	cin => \pro|PC|d[0]~9\,
	combout => \pro|PC|d[1]~10_combout\,
	cout => \pro|PC|d[1]~11\);

-- Location: LCCOMB_X58_Y48_N26
\pro|cu|musec~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~19_combout\ = (!\pro|cu|next_state\(2) & (!\pro|cu|next_state\(3) & (!\pro|cu|next_state\(1) & \pro|cu|next_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(2),
	datab => \pro|cu|next_state\(3),
	datac => \pro|cu|next_state\(1),
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|musec~19_combout\);

-- Location: LCCOMB_X61_Y48_N18
\pro|cu|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Equal4~0_combout\ = (\pro|cu|next_state\(1) & (!\pro|cu|next_state\(4) & (\pro|cu|next_state\(2) & \pro|cu|next_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(1),
	datab => \pro|cu|next_state\(4),
	datac => \pro|cu|next_state\(2),
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|Equal4~0_combout\);

-- Location: LCCOMB_X58_Y48_N18
\pro|cu|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|always1~0_combout\ = (\pro|cu|musec~19_combout\) # ((!\pro|cu|next_state\(0) & \pro|cu|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|next_state\(0),
	datac => \pro|cu|musec~19_combout\,
	datad => \pro|cu|Equal4~0_combout\,
	combout => \pro|cu|always1~0_combout\);

-- Location: LCCOMB_X58_Y48_N30
\pro|cu|musec~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~24_combout\ = (\pro|cu|next_state\(2) & (\pro|cu|next_state\(3) & ((\pro|cu|next_state\(0)) # (!\pro|cu|next_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(1),
	datab => \pro|cu|next_state\(2),
	datac => \pro|cu|next_state\(3),
	datad => \pro|cu|next_state\(0),
	combout => \pro|cu|musec~24_combout\);

-- Location: LCCOMB_X58_Y48_N0
\pro|cu|M_select~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|M_select~3_combout\ = (\pro|cu|always1~0_combout\ & (\pro|IR|d\(6))) # (!\pro|cu|always1~0_combout\ & (((\pro|cu|musec~24_combout\ & !\pro|cu|next_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(6),
	datab => \pro|cu|always1~0_combout\,
	datac => \pro|cu|musec~24_combout\,
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|M_select~3_combout\);

-- Location: FF_X58_Y48_N1
\pro|cu|M_select[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|M_select~3_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|M_select\(2));

-- Location: LCCOMB_X58_Y48_N28
\pro|cu|musec~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~23_combout\ = (!\pro|cu|next_state\(3) & ((\pro|cu|next_state\(1) & (!\pro|cu|next_state\(2) & \pro|cu|next_state\(0))) # (!\pro|cu|next_state\(1) & (\pro|cu|next_state\(2) & !\pro|cu|next_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(1),
	datab => \pro|cu|next_state\(2),
	datac => \pro|cu|next_state\(3),
	datad => \pro|cu|next_state\(0),
	combout => \pro|cu|musec~23_combout\);

-- Location: LCCOMB_X58_Y48_N20
\pro|cu|M_select[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|M_select[3]~1_combout\ = (\pro|cu|next_state\(4) & ((\pro|cu|musec~23_combout\))) # (!\pro|cu|next_state\(4) & (\pro|cu|musec~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|musec~25_combout\,
	datab => \pro|cu|musec~23_combout\,
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|M_select[3]~1_combout\);

-- Location: FF_X58_Y48_N21
\pro|cu|M_select[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|M_select[3]~1_combout\,
	asdata => \pro|IR|d\(7),
	sload => \pro|cu|always1~0_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|M_select\(3));

-- Location: LCCOMB_X58_Y48_N8
\pro|cu|musec~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~22_combout\ = (\pro|cu|next_state\(1) & ((\pro|cu|next_state\(2) & ((\pro|cu|next_state\(0)))) # (!\pro|cu|next_state\(2) & (\pro|cu|next_state\(3))))) # (!\pro|cu|next_state\(1) & (\pro|cu|next_state\(3) & ((\pro|cu|next_state\(2)) # 
-- (!\pro|cu|next_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(1),
	datab => \pro|cu|next_state\(2),
	datac => \pro|cu|next_state\(3),
	datad => \pro|cu|next_state\(0),
	combout => \pro|cu|musec~22_combout\);

-- Location: LCCOMB_X58_Y48_N16
\pro|cu|M_select[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|M_select[0]~0_combout\ = (\pro|cu|next_state\(4) & ((\pro|cu|musec~23_combout\))) # (!\pro|cu|next_state\(4) & (\pro|cu|musec~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(4),
	datab => \pro|cu|musec~22_combout\,
	datad => \pro|cu|musec~23_combout\,
	combout => \pro|cu|M_select[0]~0_combout\);

-- Location: LCCOMB_X60_Y47_N20
\pro|PC|d[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|PC|d[2]~12_combout\ = (\pro|PC|d\(2) & (\pro|PC|d[1]~11\ $ (GND))) # (!\pro|PC|d\(2) & (!\pro|PC|d[1]~11\ & VCC))
-- \pro|PC|d[2]~13\ = CARRY((\pro|PC|d\(2) & !\pro|PC|d[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|PC|d\(2),
	datad => VCC,
	cin => \pro|PC|d[1]~11\,
	combout => \pro|PC|d[2]~12_combout\,
	cout => \pro|PC|d[2]~13\);

-- Location: FF_X58_Y48_N27
\pro|cu|operation[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \pro|cu|musec~19_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|operation\(1));

-- Location: LCCOMB_X59_Y50_N14
\pro|alu|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux16~0_combout\ = (\pro|cu|operation\(2) & (\pro|cu|operation\(1))) # (!\pro|cu|operation\(2) & (!\pro|cu|operation\(1) & !\pro|cu|operation\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(2),
	datac => \pro|cu|operation\(1),
	datad => \pro|cu|operation\(0),
	combout => \pro|alu|Mux16~0_combout\);

-- Location: CLKCTRL_G12
\pro|alu|Mux16~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pro|alu|Mux16~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pro|alu|Mux16~0clkctrl_outclk\);

-- Location: LCCOMB_X59_Y49_N22
\pro|alu|data[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(2) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|data\(2)))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux2~2_combout\,
	datac => \pro|alu|data\(2),
	datad => \pro|alu|Mux16~0clkctrl_outclk\,
	combout => \pro|alu|data\(2));

-- Location: LCCOMB_X60_Y49_N2
\pro|cu|musec~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~27_combout\ = (\pro|cu|next_state\(0)) # ((\pro|cu|next_state\(2) & ((!\pro|cu|next_state\(1)) # (!\pro|cu|next_state\(4)))) # (!\pro|cu|next_state\(2) & ((\pro|cu|next_state\(4)) # (\pro|cu|next_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(2),
	datab => \pro|cu|next_state\(4),
	datac => \pro|cu|next_state\(1),
	datad => \pro|cu|next_state\(0),
	combout => \pro|cu|musec~27_combout\);

-- Location: LCCOMB_X60_Y49_N12
\pro|cu|musec~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~28_combout\ = (!\pro|cu|musec~27_combout\ & !\pro|cu|next_state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|musec~27_combout\,
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|musec~28_combout\);

-- Location: FF_X60_Y49_N13
\pro|cu|resetpc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|musec~28_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|resetpc~q\);

-- Location: LCCOMB_X58_Y48_N14
\pro|cu|musec~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~14_combout\ = (\pro|cu|next_state\(1) & (\pro|cu|next_state\(2) & ((!\pro|cu|next_state\(0))))) # (!\pro|cu|next_state\(1) & (\pro|cu|next_state\(3) & ((\pro|cu|next_state\(2)) # (!\pro|cu|next_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(1),
	datab => \pro|cu|next_state\(2),
	datac => \pro|cu|next_state\(3),
	datad => \pro|cu|next_state\(0),
	combout => \pro|cu|musec~14_combout\);

-- Location: LCCOMB_X60_Y48_N12
\pro|cu|D_select[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|D_select[1]~1_combout\ = (\pro|cu|next_state\(4) & (\pro|cu|musec~15_combout\)) # (!\pro|cu|next_state\(4) & ((\pro|cu|musec~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|musec~15_combout\,
	datab => \pro|cu|next_state\(4),
	datad => \pro|cu|musec~14_combout\,
	combout => \pro|cu|D_select[1]~1_combout\);

-- Location: LCCOMB_X62_Y48_N12
\pro|cu|D_select~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|D_select~3_combout\ = (\pro|cu|Equal4~0_combout\ & ((\pro|cu|next_state\(0) & (\pro|IR|d\(6))) # (!\pro|cu|next_state\(0) & ((\pro|cu|D_select[1]~1_combout\))))) # (!\pro|cu|Equal4~0_combout\ & (((\pro|cu|D_select[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(6),
	datab => \pro|cu|Equal4~0_combout\,
	datac => \pro|cu|D_select[1]~1_combout\,
	datad => \pro|cu|next_state\(0),
	combout => \pro|cu|D_select~3_combout\);

-- Location: FF_X62_Y48_N13
\pro|cu|D_select[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|D_select~3_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|D_select\(2));

-- Location: LCCOMB_X60_Y48_N24
\pro|cu|musec~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~13_combout\ = (\pro|cu|next_state\(1)) # ((\pro|cu|next_state\(3)) # ((\pro|cu|next_state\(0) & \pro|cu|next_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(0),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(2),
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|musec~13_combout\);

-- Location: LCCOMB_X60_Y48_N26
\pro|cu|D_select[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|D_select[0]~0_combout\ = (\pro|cu|next_state\(4) & ((!\pro|cu|musec~13_combout\))) # (!\pro|cu|next_state\(4) & (\pro|cu|musec~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|musec~12_combout\,
	datab => \pro|cu|musec~13_combout\,
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|D_select[0]~0_combout\);

-- Location: LCCOMB_X60_Y48_N20
\pro|cu|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Equal4~1_combout\ = (\pro|cu|next_state\(0) & \pro|cu|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro|cu|next_state\(0),
	datad => \pro|cu|Equal4~0_combout\,
	combout => \pro|cu|Equal4~1_combout\);

-- Location: FF_X60_Y48_N27
\pro|cu|D_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|D_select[0]~0_combout\,
	asdata => \pro|IR|d\(4),
	sload => \pro|cu|Equal4~1_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|D_select\(0));

-- Location: LCCOMB_X60_Y48_N4
\pro|decoder|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|decoder|Equal6~0_combout\ = (!\pro|cu|D_select\(1) & (\pro|cu|D_select\(3) & (!\pro|cu|D_select\(2) & \pro|cu|D_select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|D_select\(1),
	datab => \pro|cu|D_select\(3),
	datac => \pro|cu|D_select\(2),
	datad => \pro|cu|D_select\(0),
	combout => \pro|decoder|Equal6~0_combout\);

-- Location: FF_X60_Y47_N21
\pro|PC|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|PC|d[2]~12_combout\,
	asdata => \pro|alu|data\(2),
	sclr => \pro|cu|resetpc~q\,
	sload => \pro|decoder|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|PC|d\(2));

-- Location: LCCOMB_X60_Y47_N22
\pro|PC|d[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|PC|d[3]~14_combout\ = (\pro|PC|d\(3) & (!\pro|PC|d[2]~13\)) # (!\pro|PC|d\(3) & ((\pro|PC|d[2]~13\) # (GND)))
-- \pro|PC|d[3]~15\ = CARRY((!\pro|PC|d[2]~13\) # (!\pro|PC|d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|PC|d\(3),
	datad => VCC,
	cin => \pro|PC|d[2]~13\,
	combout => \pro|PC|d[3]~14_combout\,
	cout => \pro|PC|d[3]~15\);

-- Location: LCCOMB_X58_Y50_N2
\pro|AC|d[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[1]~18_combout\ = (\pro|AC|d\(1) & (!\pro|AC|d[0]~17\)) # (!\pro|AC|d\(1) & ((\pro|AC|d[0]~17\) # (GND)))
-- \pro|AC|d[1]~19\ = CARRY((!\pro|AC|d[0]~17\) # (!\pro|AC|d\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(1),
	datad => VCC,
	cin => \pro|AC|d[0]~17\,
	combout => \pro|AC|d[1]~18_combout\,
	cout => \pro|AC|d[1]~19\);

-- Location: LCCOMB_X58_Y50_N4
\pro|AC|d[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[2]~20_combout\ = (\pro|AC|d\(2) & (\pro|AC|d[1]~19\ $ (GND))) # (!\pro|AC|d\(2) & (!\pro|AC|d[1]~19\ & VCC))
-- \pro|AC|d[2]~21\ = CARRY((\pro|AC|d\(2) & !\pro|AC|d[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(2),
	datad => VCC,
	cin => \pro|AC|d[1]~19\,
	combout => \pro|AC|d[2]~20_combout\,
	cout => \pro|AC|d[2]~21\);

-- Location: LCCOMB_X58_Y50_N6
\pro|AC|d[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[3]~22_combout\ = (\pro|AC|d\(3) & (!\pro|AC|d[2]~21\)) # (!\pro|AC|d\(3) & ((\pro|AC|d[2]~21\) # (GND)))
-- \pro|AC|d[3]~23\ = CARRY((!\pro|AC|d[2]~21\) # (!\pro|AC|d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(3),
	datad => VCC,
	cin => \pro|AC|d[2]~21\,
	combout => \pro|AC|d[3]~22_combout\,
	cout => \pro|AC|d[3]~23\);

-- Location: FF_X58_Y50_N7
\pro|AC|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[3]~22_combout\,
	asdata => \pro|alu|data\(3),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(3));

-- Location: FF_X58_Y50_N5
\pro|AC|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[2]~20_combout\,
	asdata => \pro|alu|data\(2),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(2));

-- Location: LCCOMB_X60_Y46_N0
\pro|alu|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~0_combout\ = (\pro|mux|Mux15~combout\ & (\pro|AC|d\(0) $ (VCC))) # (!\pro|mux|Mux15~combout\ & ((\pro|AC|d\(0)) # (GND)))
-- \pro|alu|Add1~1\ = CARRY((\pro|AC|d\(0)) # (!\pro|mux|Mux15~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux15~combout\,
	datab => \pro|AC|d\(0),
	datad => VCC,
	combout => \pro|alu|Add1~0_combout\,
	cout => \pro|alu|Add1~1\);

-- Location: LCCOMB_X60_Y46_N2
\pro|alu|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~2_combout\ = (\pro|AC|d\(1) & ((\pro|mux|Mux14~combout\ & (!\pro|alu|Add1~1\)) # (!\pro|mux|Mux14~combout\ & (\pro|alu|Add1~1\ & VCC)))) # (!\pro|AC|d\(1) & ((\pro|mux|Mux14~combout\ & ((\pro|alu|Add1~1\) # (GND))) # 
-- (!\pro|mux|Mux14~combout\ & (!\pro|alu|Add1~1\))))
-- \pro|alu|Add1~3\ = CARRY((\pro|AC|d\(1) & (\pro|mux|Mux14~combout\ & !\pro|alu|Add1~1\)) # (!\pro|AC|d\(1) & ((\pro|mux|Mux14~combout\) # (!\pro|alu|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(1),
	datab => \pro|mux|Mux14~combout\,
	datad => VCC,
	cin => \pro|alu|Add1~1\,
	combout => \pro|alu|Add1~2_combout\,
	cout => \pro|alu|Add1~3\);

-- Location: LCCOMB_X60_Y46_N6
\pro|alu|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~6_combout\ = (\pro|mux|Mux12~combout\ & ((\pro|AC|d\(3) & (!\pro|alu|Add1~5\)) # (!\pro|AC|d\(3) & ((\pro|alu|Add1~5\) # (GND))))) # (!\pro|mux|Mux12~combout\ & ((\pro|AC|d\(3) & (\pro|alu|Add1~5\ & VCC)) # (!\pro|AC|d\(3) & 
-- (!\pro|alu|Add1~5\))))
-- \pro|alu|Add1~7\ = CARRY((\pro|mux|Mux12~combout\ & ((!\pro|alu|Add1~5\) # (!\pro|AC|d\(3)))) # (!\pro|mux|Mux12~combout\ & (!\pro|AC|d\(3) & !\pro|alu|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux12~combout\,
	datab => \pro|AC|d\(3),
	datad => VCC,
	cin => \pro|alu|Add1~5\,
	combout => \pro|alu|Add1~6_combout\,
	cout => \pro|alu|Add1~7\);

-- Location: LCCOMB_X59_Y49_N10
\pro|alu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux0~0_combout\ = (\pro|cu|operation\(0) & !\pro|cu|operation\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro|cu|operation\(0),
	datad => \pro|cu|operation\(1),
	combout => \pro|alu|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y48_N2
\pro|cu|musec~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~21_combout\ = (\pro|cu|next_state\(2) & ((\pro|cu|next_state\(1) & (\pro|cu|next_state\(3) $ (!\pro|cu|next_state\(0)))) # (!\pro|cu|next_state\(1) & ((\pro|cu|next_state\(3)) # (\pro|cu|next_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(1),
	datab => \pro|cu|next_state\(2),
	datac => \pro|cu|next_state\(3),
	datad => \pro|cu|next_state\(0),
	combout => \pro|cu|musec~21_combout\);

-- Location: LCCOMB_X58_Y48_N4
\pro|cu|M_select~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|M_select~2_combout\ = (\pro|cu|always1~0_combout\ & (\pro|IR|d\(5))) # (!\pro|cu|always1~0_combout\ & (((\pro|cu|musec~21_combout\ & !\pro|cu|next_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(5),
	datab => \pro|cu|musec~21_combout\,
	datac => \pro|cu|next_state\(4),
	datad => \pro|cu|always1~0_combout\,
	combout => \pro|cu|M_select~2_combout\);

-- Location: FF_X58_Y48_N5
\pro|cu|M_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|M_select~2_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|M_select\(1));

-- Location: LCCOMB_X59_Y48_N4
\pro|mux|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux8~6_combout\ = (\pro|cu|M_select\(3) & ((\pro|cu|M_select\(2)) # ((\pro|cu|M_select\(1)) # (\pro|cu|M_select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|cu|M_select\(1),
	datac => \pro|cu|M_select\(0),
	datad => \pro|cu|M_select\(3),
	combout => \pro|mux|Mux8~6_combout\);

-- Location: LCCOMB_X59_Y48_N8
\pro|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux0~0_combout\ = (!\pro|cu|M_select\(0) & \pro|cu|M_select\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro|cu|M_select\(0),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y47_N24
\pro|PC|d[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|PC|d[4]~16_combout\ = (\pro|PC|d\(4) & (\pro|PC|d[3]~15\ $ (GND))) # (!\pro|PC|d\(4) & (!\pro|PC|d[3]~15\ & VCC))
-- \pro|PC|d[4]~17\ = CARRY((\pro|PC|d\(4) & !\pro|PC|d[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|PC|d\(4),
	datad => VCC,
	cin => \pro|PC|d[3]~15\,
	combout => \pro|PC|d[4]~16_combout\,
	cout => \pro|PC|d[4]~17\);

-- Location: FF_X55_Y49_N25
\pro|R2|d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(15),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(15));

-- Location: LCCOMB_X58_Y47_N4
\pro|mux|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux0~2_combout\ = (\pro|cu|M_select\(0)) # ((\pro|cu|M_select\(1) & \pro|cu|M_select\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|M_select\(1),
	datac => \pro|cu|M_select\(2),
	datad => \pro|cu|M_select\(0),
	combout => \pro|mux|Mux0~2_combout\);

-- Location: LCCOMB_X60_Y48_N8
\pro|decoder|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|decoder|Equal3~0_combout\ = (!\pro|cu|D_select\(0) & (!\pro|cu|D_select\(3) & (\pro|cu|D_select\(2) & !\pro|cu|D_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|D_select\(0),
	datab => \pro|cu|D_select\(3),
	datac => \pro|cu|D_select\(2),
	datad => \pro|cu|D_select\(1),
	combout => \pro|decoder|Equal3~0_combout\);

-- Location: FF_X59_Y47_N17
\pro|R4|d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(15),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(15));

-- Location: LCCOMB_X58_Y50_N8
\pro|AC|d[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[4]~24_combout\ = (\pro|AC|d\(4) & (\pro|AC|d[3]~23\ $ (GND))) # (!\pro|AC|d\(4) & (!\pro|AC|d[3]~23\ & VCC))
-- \pro|AC|d[4]~25\ = CARRY((\pro|AC|d\(4) & !\pro|AC|d[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(4),
	datad => VCC,
	cin => \pro|AC|d[3]~23\,
	combout => \pro|AC|d[4]~24_combout\,
	cout => \pro|AC|d[4]~25\);

-- Location: LCCOMB_X58_Y50_N10
\pro|AC|d[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[5]~26_combout\ = (\pro|AC|d\(5) & (!\pro|AC|d[4]~25\)) # (!\pro|AC|d\(5) & ((\pro|AC|d[4]~25\) # (GND)))
-- \pro|AC|d[5]~27\ = CARRY((!\pro|AC|d[4]~25\) # (!\pro|AC|d\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(5),
	datad => VCC,
	cin => \pro|AC|d[4]~25\,
	combout => \pro|AC|d[5]~26_combout\,
	cout => \pro|AC|d[5]~27\);

-- Location: LCCOMB_X58_Y50_N12
\pro|AC|d[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[6]~28_combout\ = (\pro|AC|d\(6) & (\pro|AC|d[5]~27\ $ (GND))) # (!\pro|AC|d\(6) & (!\pro|AC|d[5]~27\ & VCC))
-- \pro|AC|d[6]~29\ = CARRY((\pro|AC|d\(6) & !\pro|AC|d[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(6),
	datad => VCC,
	cin => \pro|AC|d[5]~27\,
	combout => \pro|AC|d[6]~28_combout\,
	cout => \pro|AC|d[6]~29\);

-- Location: LCCOMB_X58_Y50_N14
\pro|AC|d[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[7]~30_combout\ = (\pro|AC|d\(7) & (!\pro|AC|d[6]~29\)) # (!\pro|AC|d\(7) & ((\pro|AC|d[6]~29\) # (GND)))
-- \pro|AC|d[7]~31\ = CARRY((!\pro|AC|d[6]~29\) # (!\pro|AC|d\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(7),
	datad => VCC,
	cin => \pro|AC|d[6]~29\,
	combout => \pro|AC|d[7]~30_combout\,
	cout => \pro|AC|d[7]~31\);

-- Location: LCCOMB_X58_Y50_N16
\pro|AC|d[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[8]~32_combout\ = (\pro|AC|d\(8) & (\pro|AC|d[7]~31\ $ (GND))) # (!\pro|AC|d\(8) & (!\pro|AC|d[7]~31\ & VCC))
-- \pro|AC|d[8]~33\ = CARRY((\pro|AC|d\(8) & !\pro|AC|d[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(8),
	datad => VCC,
	cin => \pro|AC|d[7]~31\,
	combout => \pro|AC|d[8]~32_combout\,
	cout => \pro|AC|d[8]~33\);

-- Location: LCCOMB_X58_Y50_N18
\pro|AC|d[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[9]~34_combout\ = (\pro|AC|d\(9) & (!\pro|AC|d[8]~33\)) # (!\pro|AC|d\(9) & ((\pro|AC|d[8]~33\) # (GND)))
-- \pro|AC|d[9]~35\ = CARRY((!\pro|AC|d[8]~33\) # (!\pro|AC|d\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(9),
	datad => VCC,
	cin => \pro|AC|d[8]~33\,
	combout => \pro|AC|d[9]~34_combout\,
	cout => \pro|AC|d[9]~35\);

-- Location: LCCOMB_X58_Y50_N20
\pro|AC|d[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[10]~36_combout\ = (\pro|AC|d\(10) & (\pro|AC|d[9]~35\ $ (GND))) # (!\pro|AC|d\(10) & (!\pro|AC|d[9]~35\ & VCC))
-- \pro|AC|d[10]~37\ = CARRY((\pro|AC|d\(10) & !\pro|AC|d[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(10),
	datad => VCC,
	cin => \pro|AC|d[9]~35\,
	combout => \pro|AC|d[10]~36_combout\,
	cout => \pro|AC|d[10]~37\);

-- Location: LCCOMB_X58_Y48_N10
\pro|cu|musec~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~20_combout\ = (\pro|cu|next_state\(2) & (\pro|cu|next_state\(3) & (!\pro|cu|next_state\(1) & !\pro|cu|next_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(2),
	datab => \pro|cu|next_state\(3),
	datac => \pro|cu|next_state\(1),
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|musec~20_combout\);

-- Location: FF_X58_Y48_N11
\pro|cu|operation[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \pro|cu|musec~20_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|operation\(2));

-- Location: LCCOMB_X59_Y49_N24
\pro|alu|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux11~2_combout\ = (\pro|cu|operation\(0) & ((\pro|cu|operation\(2)) # (\pro|cu|operation\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(0),
	datac => \pro|cu|operation\(2),
	datad => \pro|cu|operation\(1),
	combout => \pro|alu|Mux11~2_combout\);

-- Location: FF_X56_Y46_N31
\pro|R2|d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(8),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(8));

-- Location: FF_X56_Y46_N1
\pro|R4|d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(8),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(8));

-- Location: LCCOMB_X60_Y48_N28
\pro|decoder|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|decoder|Equal2~0_combout\ = (\pro|cu|D_select\(0) & (!\pro|cu|D_select\(3) & (!\pro|cu|D_select\(2) & \pro|cu|D_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|D_select\(0),
	datab => \pro|cu|D_select\(3),
	datac => \pro|cu|D_select\(2),
	datad => \pro|cu|D_select\(1),
	combout => \pro|decoder|Equal2~0_combout\);

-- Location: FF_X58_Y49_N17
\pro|R3|d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(8),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(8));

-- Location: LCCOMB_X60_Y48_N14
\pro|decoder|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|decoder|Equal0~0_combout\ = (\pro|cu|D_select\(0) & (!\pro|cu|D_select\(3) & (!\pro|cu|D_select\(2) & !\pro|cu|D_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|D_select\(0),
	datab => \pro|cu|D_select\(3),
	datac => \pro|cu|D_select\(2),
	datad => \pro|cu|D_select\(1),
	combout => \pro|decoder|Equal0~0_combout\);

-- Location: FF_X57_Y49_N21
\pro|R1|d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(8),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(8));

-- Location: LCCOMB_X60_Y48_N18
\pro|decoder|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|decoder|Equal4~0_combout\ = (\pro|cu|D_select\(0) & (!\pro|cu|D_select\(3) & (\pro|cu|D_select\(2) & !\pro|cu|D_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|D_select\(0),
	datab => \pro|cu|D_select\(3),
	datac => \pro|cu|D_select\(2),
	datad => \pro|cu|D_select\(1),
	combout => \pro|decoder|Equal4~0_combout\);

-- Location: FF_X57_Y49_N11
\pro|R5|d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(8),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(8));

-- Location: LCCOMB_X57_Y49_N10
\pro|mux|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux7~0_combout\ = (\pro|cu|M_select\(2) & (((\pro|R5|d\(8)) # (\pro|cu|M_select\(1))))) # (!\pro|cu|M_select\(2) & (\pro|R1|d\(8) & ((!\pro|cu|M_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|R1|d\(8),
	datac => \pro|R5|d\(8),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux7~0_combout\);

-- Location: LCCOMB_X58_Y49_N16
\pro|mux|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux7~1_combout\ = (\pro|cu|M_select\(1) & ((\pro|mux|Mux7~0_combout\ & (\pro|AC|d\(8))) # (!\pro|mux|Mux7~0_combout\ & ((\pro|R3|d\(8)))))) # (!\pro|cu|M_select\(1) & (((\pro|mux|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(1),
	datab => \pro|AC|d\(8),
	datac => \pro|R3|d\(8),
	datad => \pro|mux|Mux7~0_combout\,
	combout => \pro|mux|Mux7~1_combout\);

-- Location: LCCOMB_X56_Y46_N0
\pro|mux|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux7~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux7~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(8))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(8),
	datad => \pro|mux|Mux7~1_combout\,
	combout => \pro|mux|Mux7~2_combout\);

-- Location: LCCOMB_X56_Y46_N30
\pro|mux|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux7~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux7~2_combout\ & (\pro|AR|d\(8))) # (!\pro|mux|Mux7~2_combout\ & ((\pro|R2|d\(8)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(8),
	datab => \pro|mux|Mux0~0_combout\,
	datac => \pro|R2|d\(8),
	datad => \pro|mux|Mux7~2_combout\,
	combout => \pro|mux|Mux7~3_combout\);

-- Location: LCCOMB_X56_Y46_N2
\pro|mux|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux7~4_combout\ = (!\pro|cu|M_select\(3) & \pro|mux|Mux7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|M_select\(3),
	datac => \pro|mux|Mux7~3_combout\,
	combout => \pro|mux|Mux7~4_combout\);

-- Location: LCCOMB_X59_Y49_N4
\pro|alu|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux8~0_combout\ = (\pro|alu|Mux0~0_combout\ & (((\pro|alu|Mux11~2_combout\) # (\pro|mux|Mux7~4_combout\)))) # (!\pro|alu|Mux0~0_combout\ & (\pro|AC|d\(7) & (!\pro|alu|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(7),
	datab => \pro|alu|Mux0~0_combout\,
	datac => \pro|alu|Mux11~2_combout\,
	datad => \pro|mux|Mux7~4_combout\,
	combout => \pro|alu|Mux8~0_combout\);

-- Location: LCCOMB_X59_Y48_N26
\pro|mux|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux8~5_combout\ = ((!\pro|cu|M_select\(2) & (!\pro|cu|M_select\(1) & \pro|cu|M_select\(0)))) # (!\pro|cu|M_select\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|cu|M_select\(1),
	datac => \pro|cu|M_select\(0),
	datad => \pro|cu|M_select\(3),
	combout => \pro|mux|Mux8~5_combout\);

-- Location: FF_X58_Y50_N15
\pro|AC|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[7]~30_combout\,
	asdata => \pro|alu|data\(7),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(7));

-- Location: LCCOMB_X57_Y49_N18
\pro|alu|data[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(6) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|data\(6)))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux6~2_combout\,
	datac => \pro|alu|data\(6),
	datad => \pro|alu|Mux16~0clkctrl_outclk\,
	combout => \pro|alu|data\(6));

-- Location: FF_X58_Y50_N13
\pro|AC|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[6]~28_combout\,
	asdata => \pro|alu|data\(6),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(6));

-- Location: FF_X58_Y50_N11
\pro|AC|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[5]~26_combout\,
	asdata => \pro|alu|data\(5),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(5));

-- Location: FF_X58_Y50_N9
\pro|AC|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[4]~24_combout\,
	asdata => \pro|alu|data\(4),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(4));

-- Location: LCCOMB_X57_Y47_N0
\pro|alu|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~0_combout\ = (\pro|AC|d\(1) & (\pro|AC|d\(2) $ (VCC))) # (!\pro|AC|d\(1) & (\pro|AC|d\(2) & VCC))
-- \pro|alu|Add2~1\ = CARRY((\pro|AC|d\(1) & \pro|AC|d\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(1),
	datab => \pro|AC|d\(2),
	datad => VCC,
	combout => \pro|alu|Add2~0_combout\,
	cout => \pro|alu|Add2~1\);

-- Location: LCCOMB_X57_Y47_N2
\pro|alu|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~2_combout\ = (\pro|AC|d\(3) & (!\pro|alu|Add2~1\)) # (!\pro|AC|d\(3) & ((\pro|alu|Add2~1\) # (GND)))
-- \pro|alu|Add2~3\ = CARRY((!\pro|alu|Add2~1\) # (!\pro|AC|d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(3),
	datad => VCC,
	cin => \pro|alu|Add2~1\,
	combout => \pro|alu|Add2~2_combout\,
	cout => \pro|alu|Add2~3\);

-- Location: LCCOMB_X57_Y47_N6
\pro|alu|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~6_combout\ = (\pro|AC|d\(5) & (!\pro|alu|Add2~5\)) # (!\pro|AC|d\(5) & ((\pro|alu|Add2~5\) # (GND)))
-- \pro|alu|Add2~7\ = CARRY((!\pro|alu|Add2~5\) # (!\pro|AC|d\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(5),
	datad => VCC,
	cin => \pro|alu|Add2~5\,
	combout => \pro|alu|Add2~6_combout\,
	cout => \pro|alu|Add2~7\);

-- Location: LCCOMB_X57_Y47_N10
\pro|alu|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~10_combout\ = (\pro|AC|d\(7) & (!\pro|alu|Add2~9\)) # (!\pro|AC|d\(7) & ((\pro|alu|Add2~9\) # (GND)))
-- \pro|alu|Add2~11\ = CARRY((!\pro|alu|Add2~9\) # (!\pro|AC|d\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(7),
	datad => VCC,
	cin => \pro|alu|Add2~9\,
	combout => \pro|alu|Add2~10_combout\,
	cout => \pro|alu|Add2~11\);

-- Location: LCCOMB_X60_Y46_N10
\pro|alu|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~10_combout\ = (\pro|mux|Mux10~combout\ & ((\pro|AC|d\(5) & (!\pro|alu|Add1~9\)) # (!\pro|AC|d\(5) & ((\pro|alu|Add1~9\) # (GND))))) # (!\pro|mux|Mux10~combout\ & ((\pro|AC|d\(5) & (\pro|alu|Add1~9\ & VCC)) # (!\pro|AC|d\(5) & 
-- (!\pro|alu|Add1~9\))))
-- \pro|alu|Add1~11\ = CARRY((\pro|mux|Mux10~combout\ & ((!\pro|alu|Add1~9\) # (!\pro|AC|d\(5)))) # (!\pro|mux|Mux10~combout\ & (!\pro|AC|d\(5) & !\pro|alu|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux10~combout\,
	datab => \pro|AC|d\(5),
	datad => VCC,
	cin => \pro|alu|Add1~9\,
	combout => \pro|alu|Add1~10_combout\,
	cout => \pro|alu|Add1~11\);

-- Location: LCCOMB_X59_Y49_N30
\pro|alu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux5~0_combout\ = (\pro|alu|Mux0~0_combout\ & (((!\pro|alu|Mux11~2_combout\ & \pro|mux|Mux10~combout\)))) # (!\pro|alu|Mux0~0_combout\ & ((\pro|AC|d\(4)) # ((\pro|alu|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(4),
	datab => \pro|alu|Mux0~0_combout\,
	datac => \pro|alu|Mux11~2_combout\,
	datad => \pro|mux|Mux10~combout\,
	combout => \pro|alu|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y49_N14
\pro|alu|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux5~1_combout\ = (\pro|alu|Mux11~2_combout\ & ((\pro|alu|Mux5~0_combout\ & ((\pro|alu|Add1~10_combout\))) # (!\pro|alu|Mux5~0_combout\ & (\pro|alu|Add2~10_combout\)))) # (!\pro|alu|Mux11~2_combout\ & (((\pro|alu|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Add2~10_combout\,
	datac => \pro|alu|Add1~10_combout\,
	datad => \pro|alu|Mux5~0_combout\,
	combout => \pro|alu|Mux5~1_combout\);

-- Location: FF_X58_Y50_N3
\pro|AC|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[1]~18_combout\,
	asdata => \pro|alu|data\(1),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(1));

-- Location: LCCOMB_X60_Y47_N26
\pro|PC|d[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|PC|d[5]~18_combout\ = (\pro|PC|d\(5) & (!\pro|PC|d[4]~17\)) # (!\pro|PC|d\(5) & ((\pro|PC|d[4]~17\) # (GND)))
-- \pro|PC|d[5]~19\ = CARRY((!\pro|PC|d[4]~17\) # (!\pro|PC|d\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|PC|d\(5),
	datad => VCC,
	cin => \pro|PC|d[4]~17\,
	combout => \pro|PC|d[5]~18_combout\,
	cout => \pro|PC|d[5]~19\);

-- Location: FF_X60_Y47_N27
\pro|PC|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|PC|d[5]~18_combout\,
	asdata => \pro|alu|data\(5),
	sclr => \pro|cu|resetpc~q\,
	sload => \pro|decoder|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|PC|d\(5));

-- Location: LCCOMB_X60_Y47_N28
\pro|PC|d[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|PC|d[6]~20_combout\ = (\pro|PC|d\(6) & (\pro|PC|d[5]~19\ $ (GND))) # (!\pro|PC|d\(6) & (!\pro|PC|d[5]~19\ & VCC))
-- \pro|PC|d[6]~21\ = CARRY((\pro|PC|d\(6) & !\pro|PC|d[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|PC|d\(6),
	datad => VCC,
	cin => \pro|PC|d[5]~19\,
	combout => \pro|PC|d[6]~20_combout\,
	cout => \pro|PC|d[6]~21\);

-- Location: FF_X60_Y47_N29
\pro|PC|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|PC|d[6]~20_combout\,
	asdata => \pro|alu|data\(6),
	sclr => \pro|cu|resetpc~q\,
	sload => \pro|decoder|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|PC|d\(6));

-- Location: LCCOMB_X60_Y47_N30
\pro|PC|d[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|PC|d[7]~22_combout\ = \pro|PC|d\(7) $ (\pro|PC|d[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|PC|d\(7),
	cin => \pro|PC|d[6]~21\,
	combout => \pro|PC|d[7]~22_combout\);

-- Location: FF_X60_Y47_N31
\pro|PC|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|PC|d[7]~22_combout\,
	asdata => \pro|alu|data\(7),
	sclr => \pro|cu|resetpc~q\,
	sload => \pro|decoder|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|PC|d\(7));

-- Location: LCCOMB_X60_Y48_N22
\pro|decoder|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|decoder|Equal8~0_combout\ = (!\pro|cu|D_select\(0) & (!\pro|cu|D_select\(3) & (\pro|cu|D_select\(2) & \pro|cu|D_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|D_select\(0),
	datab => \pro|cu|D_select\(3),
	datac => \pro|cu|D_select\(2),
	datad => \pro|cu|D_select\(1),
	combout => \pro|decoder|Equal8~0_combout\);

-- Location: FF_X60_Y50_N15
\pro|AR|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(0),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(0));

-- Location: FF_X59_Y48_N3
\pro|R2|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(0),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(0));

-- Location: FF_X59_Y48_N13
\pro|R4|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(0),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(0));

-- Location: FF_X58_Y47_N21
\pro|R3|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(0),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(0));

-- Location: FF_X59_Y50_N17
\pro|R1|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(0),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(0));

-- Location: FF_X58_Y47_N7
\pro|R5|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(0),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(0));

-- Location: LCCOMB_X58_Y47_N6
\pro|mux|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux15~0_combout\ = (\pro|cu|M_select\(2) & (((\pro|R5|d\(0)) # (\pro|cu|M_select\(1))))) # (!\pro|cu|M_select\(2) & (\pro|R1|d\(0) & ((!\pro|cu|M_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|R1|d\(0),
	datac => \pro|R5|d\(0),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux15~0_combout\);

-- Location: LCCOMB_X58_Y47_N20
\pro|mux|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux15~1_combout\ = (\pro|cu|M_select\(1) & ((\pro|mux|Mux15~0_combout\ & (\pro|AC|d\(0))) # (!\pro|mux|Mux15~0_combout\ & ((\pro|R3|d\(0)))))) # (!\pro|cu|M_select\(1) & (((\pro|mux|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(0),
	datab => \pro|cu|M_select\(1),
	datac => \pro|R3|d\(0),
	datad => \pro|mux|Mux15~0_combout\,
	combout => \pro|mux|Mux15~1_combout\);

-- Location: LCCOMB_X59_Y48_N12
\pro|mux|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux15~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux15~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(0))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(0),
	datad => \pro|mux|Mux15~1_combout\,
	combout => \pro|mux|Mux15~2_combout\);

-- Location: LCCOMB_X59_Y48_N2
\pro|mux|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux15~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux15~2_combout\ & (\pro|AR|d\(0))) # (!\pro|mux|Mux15~2_combout\ & ((\pro|R2|d\(0)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~0_combout\,
	datab => \pro|AR|d\(0),
	datac => \pro|R2|d\(0),
	datad => \pro|mux|Mux15~2_combout\,
	combout => \pro|mux|Mux15~3_combout\);

-- Location: LCCOMB_X59_Y48_N6
\pro|mux|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux15~4_combout\ = (\pro|mux|Mux8~5_combout\ & ((\pro|mux|Mux8~6_combout\ & (\Pram|memory_rtl_1|auto_generated|ram_block1a0~portadataout\)) # (!\pro|mux|Mux8~6_combout\ & ((\pro|mux|Mux15~3_combout\))))) # (!\pro|mux|Mux8~5_combout\ & 
-- (!\pro|mux|Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~5_combout\,
	datab => \pro|mux|Mux8~6_combout\,
	datac => \Pram|memory_rtl_1|auto_generated|ram_block1a0~portadataout\,
	datad => \pro|mux|Mux15~3_combout\,
	combout => \pro|mux|Mux15~4_combout\);

-- Location: LCCOMB_X62_Y48_N28
\pro|decoder|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|decoder|Equal7~0_combout\ = (\pro|cu|D_select\(3) & (!\pro|cu|D_select\(2) & (!\pro|cu|D_select\(1) & !\pro|cu|D_select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|D_select\(3),
	datab => \pro|cu|D_select\(2),
	datac => \pro|cu|D_select\(1),
	datad => \pro|cu|D_select\(0),
	combout => \pro|decoder|Equal7~0_combout\);

-- Location: FF_X59_Y50_N25
\pro|IR|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Pram|memory_rtl_1|auto_generated|ram_block1a0~portadataout\,
	sload => VCC,
	ena => \pro|decoder|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|IR|d\(0));

-- Location: LCCOMB_X60_Y50_N24
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (countn(13) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => countn(13),
	datad => \pro|cu|endp~q\,
	combout => \count~0_combout\);

-- Location: FF_X60_Y50_N25
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X55_Y49_N2
\address[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[13]~1_combout\ = (\staten.pros~q\ & (\pro|AR|d\(13))) # (!\staten.pros~q\ & ((count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(13),
	datac => \staten.pros~q\,
	datad => count(13),
	combout => \address[13]~1_combout\);

-- Location: FF_X63_Y48_N5
\Dram|memory_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \address[13]~1_combout\,
	sload => VCC,
	ena => \read~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X57_Y47_N18
\pro|alu|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~18_combout\ = (\pro|AC|d\(11) & (!\pro|alu|Add2~17\)) # (!\pro|AC|d\(11) & ((\pro|alu|Add2~17\) # (GND)))
-- \pro|alu|Add2~19\ = CARRY((!\pro|alu|Add2~17\) # (!\pro|AC|d\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(11),
	datad => VCC,
	cin => \pro|alu|Add2~17\,
	combout => \pro|alu|Add2~18_combout\,
	cout => \pro|alu|Add2~19\);

-- Location: LCCOMB_X57_Y47_N22
\pro|alu|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~22_combout\ = (\pro|AC|d\(13) & (!\pro|alu|Add2~21\)) # (!\pro|AC|d\(13) & ((\pro|alu|Add2~21\) # (GND)))
-- \pro|alu|Add2~23\ = CARRY((!\pro|alu|Add2~21\) # (!\pro|AC|d\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(13),
	datad => VCC,
	cin => \pro|alu|Add2~21\,
	combout => \pro|alu|Add2~22_combout\,
	cout => \pro|alu|Add2~23\);

-- Location: LCCOMB_X60_Y46_N16
\pro|alu|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~16_combout\ = ((\pro|mux|Mux7~4_combout\ $ (\pro|AC|d\(8) $ (\pro|alu|Add1~15\)))) # (GND)
-- \pro|alu|Add1~17\ = CARRY((\pro|mux|Mux7~4_combout\ & (\pro|AC|d\(8) & !\pro|alu|Add1~15\)) # (!\pro|mux|Mux7~4_combout\ & ((\pro|AC|d\(8)) # (!\pro|alu|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux7~4_combout\,
	datab => \pro|AC|d\(8),
	datad => VCC,
	cin => \pro|alu|Add1~15\,
	combout => \pro|alu|Add1~16_combout\,
	cout => \pro|alu|Add1~17\);

-- Location: LCCOMB_X60_Y46_N18
\pro|alu|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~18_combout\ = (\pro|mux|Mux6~4_combout\ & ((\pro|AC|d\(9) & (!\pro|alu|Add1~17\)) # (!\pro|AC|d\(9) & ((\pro|alu|Add1~17\) # (GND))))) # (!\pro|mux|Mux6~4_combout\ & ((\pro|AC|d\(9) & (\pro|alu|Add1~17\ & VCC)) # (!\pro|AC|d\(9) & 
-- (!\pro|alu|Add1~17\))))
-- \pro|alu|Add1~19\ = CARRY((\pro|mux|Mux6~4_combout\ & ((!\pro|alu|Add1~17\) # (!\pro|AC|d\(9)))) # (!\pro|mux|Mux6~4_combout\ & (!\pro|AC|d\(9) & !\pro|alu|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux6~4_combout\,
	datab => \pro|AC|d\(9),
	datad => VCC,
	cin => \pro|alu|Add1~17\,
	combout => \pro|alu|Add1~18_combout\,
	cout => \pro|alu|Add1~19\);

-- Location: LCCOMB_X60_Y46_N22
\pro|alu|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~22_combout\ = (\pro|mux|Mux4~4_combout\ & ((\pro|AC|d\(11) & (!\pro|alu|Add1~21\)) # (!\pro|AC|d\(11) & ((\pro|alu|Add1~21\) # (GND))))) # (!\pro|mux|Mux4~4_combout\ & ((\pro|AC|d\(11) & (\pro|alu|Add1~21\ & VCC)) # (!\pro|AC|d\(11) & 
-- (!\pro|alu|Add1~21\))))
-- \pro|alu|Add1~23\ = CARRY((\pro|mux|Mux4~4_combout\ & ((!\pro|alu|Add1~21\) # (!\pro|AC|d\(11)))) # (!\pro|mux|Mux4~4_combout\ & (!\pro|AC|d\(11) & !\pro|alu|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux4~4_combout\,
	datab => \pro|AC|d\(11),
	datad => VCC,
	cin => \pro|alu|Add1~21\,
	combout => \pro|alu|Add1~22_combout\,
	cout => \pro|alu|Add1~23\);

-- Location: LCCOMB_X61_Y46_N26
\pro|alu|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux11~4_combout\ = (\pro|alu|Mux11~3_combout\ & (((\pro|alu|Add1~22_combout\) # (!\pro|alu|Mux11~2_combout\)))) # (!\pro|alu|Mux11~3_combout\ & (\pro|alu|Add2~22_combout\ & (\pro|alu|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~3_combout\,
	datab => \pro|alu|Add2~22_combout\,
	datac => \pro|alu|Mux11~2_combout\,
	datad => \pro|alu|Add1~22_combout\,
	combout => \pro|alu|Mux11~4_combout\);

-- Location: LCCOMB_X61_Y46_N28
\pro|alu|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux11~5_combout\ = (\pro|cu|operation\(1) & ((\pro|cu|operation\(0) & ((\pro|alu|Mux11~4_combout\))) # (!\pro|cu|operation\(0) & (\pro|alu|Add0~22_combout\)))) # (!\pro|cu|operation\(1) & (((\pro|alu|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Add0~22_combout\,
	datab => \pro|cu|operation\(1),
	datac => \pro|cu|operation\(0),
	datad => \pro|alu|Mux11~4_combout\,
	combout => \pro|alu|Mux11~5_combout\);

-- Location: LCCOMB_X57_Y46_N28
\pro|alu|data[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(11) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|data\(11))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|Mux11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|data\(11),
	datac => \pro|alu|Mux11~5_combout\,
	datad => \pro|alu|Mux16~0clkctrl_outclk\,
	combout => \pro|alu|data\(11));

-- Location: FF_X55_Y46_N21
\pro|AR|d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(11),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(11));

-- Location: FF_X56_Y46_N9
\pro|R2|d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(11),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(11));

-- Location: FF_X58_Y47_N31
\pro|R5|d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(11),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(11));

-- Location: FF_X58_Y47_N17
\pro|R3|d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(11),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(11));

-- Location: FF_X57_Y46_N29
\pro|R1|d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(11),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(11));

-- Location: LCCOMB_X58_Y47_N16
\pro|mux|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux4~0_combout\ = (\pro|cu|M_select\(2) & (\pro|cu|M_select\(1))) # (!\pro|cu|M_select\(2) & ((\pro|cu|M_select\(1) & (\pro|R3|d\(11))) # (!\pro|cu|M_select\(1) & ((\pro|R1|d\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|cu|M_select\(1),
	datac => \pro|R3|d\(11),
	datad => \pro|R1|d\(11),
	combout => \pro|mux|Mux4~0_combout\);

-- Location: LCCOMB_X58_Y47_N30
\pro|mux|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux4~1_combout\ = (\pro|cu|M_select\(2) & ((\pro|mux|Mux4~0_combout\ & (\pro|AC|d\(11))) # (!\pro|mux|Mux4~0_combout\ & ((\pro|R5|d\(11)))))) # (!\pro|cu|M_select\(2) & (((\pro|mux|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|AC|d\(11),
	datac => \pro|R5|d\(11),
	datad => \pro|mux|Mux4~0_combout\,
	combout => \pro|mux|Mux4~1_combout\);

-- Location: FF_X56_Y46_N11
\pro|R4|d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(11),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(11));

-- Location: LCCOMB_X56_Y46_N10
\pro|mux|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux4~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & (\pro|mux|Mux4~1_combout\)) # (!\pro|mux|Mux0~2_combout\ & ((\pro|R4|d\(11)))))) # (!\pro|mux|Mux0~1_combout\ & (((\pro|mux|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux4~1_combout\,
	datac => \pro|R4|d\(11),
	datad => \pro|mux|Mux0~2_combout\,
	combout => \pro|mux|Mux4~2_combout\);

-- Location: LCCOMB_X56_Y46_N8
\pro|mux|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux4~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux4~2_combout\ & (\pro|AR|d\(11))) # (!\pro|mux|Mux4~2_combout\ & ((\pro|R2|d\(11)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~0_combout\,
	datab => \pro|AR|d\(11),
	datac => \pro|R2|d\(11),
	datad => \pro|mux|Mux4~2_combout\,
	combout => \pro|mux|Mux4~3_combout\);

-- Location: LCCOMB_X59_Y50_N2
\pro|mux|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux4~4_combout\ = (!\pro|cu|M_select\(3) & \pro|mux|Mux4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(3),
	datad => \pro|mux|Mux4~3_combout\,
	combout => \pro|mux|Mux4~4_combout\);

-- Location: LCCOMB_X58_Y46_N20
\pro|alu|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~20_combout\ = ((\pro|mux|Mux5~4_combout\ $ (\pro|AC|d\(10) $ (!\pro|alu|Add0~19\)))) # (GND)
-- \pro|alu|Add0~21\ = CARRY((\pro|mux|Mux5~4_combout\ & ((\pro|AC|d\(10)) # (!\pro|alu|Add0~19\))) # (!\pro|mux|Mux5~4_combout\ & (\pro|AC|d\(10) & !\pro|alu|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux5~4_combout\,
	datab => \pro|AC|d\(10),
	datad => VCC,
	cin => \pro|alu|Add0~19\,
	combout => \pro|alu|Add0~20_combout\,
	cout => \pro|alu|Add0~21\);

-- Location: LCCOMB_X58_Y46_N24
\pro|alu|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~24_combout\ = ((\pro|mux|Mux3~4_combout\ $ (\pro|AC|d\(12) $ (!\pro|alu|Add0~23\)))) # (GND)
-- \pro|alu|Add0~25\ = CARRY((\pro|mux|Mux3~4_combout\ & ((\pro|AC|d\(12)) # (!\pro|alu|Add0~23\))) # (!\pro|mux|Mux3~4_combout\ & (\pro|AC|d\(12) & !\pro|alu|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux3~4_combout\,
	datab => \pro|AC|d\(12),
	datad => VCC,
	cin => \pro|alu|Add0~23\,
	combout => \pro|alu|Add0~24_combout\,
	cout => \pro|alu|Add0~25\);

-- Location: LCCOMB_X58_Y46_N26
\pro|alu|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~26_combout\ = (\pro|mux|Mux2~4_combout\ & ((\pro|AC|d\(13) & (\pro|alu|Add0~25\ & VCC)) # (!\pro|AC|d\(13) & (!\pro|alu|Add0~25\)))) # (!\pro|mux|Mux2~4_combout\ & ((\pro|AC|d\(13) & (!\pro|alu|Add0~25\)) # (!\pro|AC|d\(13) & 
-- ((\pro|alu|Add0~25\) # (GND)))))
-- \pro|alu|Add0~27\ = CARRY((\pro|mux|Mux2~4_combout\ & (!\pro|AC|d\(13) & !\pro|alu|Add0~25\)) # (!\pro|mux|Mux2~4_combout\ & ((!\pro|alu|Add0~25\) # (!\pro|AC|d\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux2~4_combout\,
	datab => \pro|AC|d\(13),
	datad => VCC,
	cin => \pro|alu|Add0~25\,
	combout => \pro|alu|Add0~26_combout\,
	cout => \pro|alu|Add0~27\);

-- Location: LCCOMB_X57_Y47_N24
\pro|alu|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add2~24_combout\ = (\pro|AC|d\(14) & (\pro|alu|Add2~23\ $ (GND))) # (!\pro|AC|d\(14) & (!\pro|alu|Add2~23\ & VCC))
-- \pro|alu|Add2~25\ = CARRY((\pro|AC|d\(14) & !\pro|alu|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(14),
	datad => VCC,
	cin => \pro|alu|Add2~23\,
	combout => \pro|alu|Add2~24_combout\,
	cout => \pro|alu|Add2~25\);

-- Location: LCCOMB_X59_Y49_N20
\pro|alu|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux13~0_combout\ = (\pro|alu|Mux11~2_combout\ & (((!\pro|alu|Mux0~0_combout\)))) # (!\pro|alu|Mux11~2_combout\ & ((\pro|alu|Mux0~0_combout\ & ((\pro|mux|Mux2~4_combout\))) # (!\pro|alu|Mux0~0_combout\ & (\pro|AC|d\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|AC|d\(12),
	datac => \pro|alu|Mux0~0_combout\,
	datad => \pro|mux|Mux2~4_combout\,
	combout => \pro|alu|Mux13~0_combout\);

-- Location: LCCOMB_X60_Y46_N26
\pro|alu|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~26_combout\ = (\pro|AC|d\(13) & ((\pro|mux|Mux2~4_combout\ & (!\pro|alu|Add1~25\)) # (!\pro|mux|Mux2~4_combout\ & (\pro|alu|Add1~25\ & VCC)))) # (!\pro|AC|d\(13) & ((\pro|mux|Mux2~4_combout\ & ((\pro|alu|Add1~25\) # (GND))) # 
-- (!\pro|mux|Mux2~4_combout\ & (!\pro|alu|Add1~25\))))
-- \pro|alu|Add1~27\ = CARRY((\pro|AC|d\(13) & (\pro|mux|Mux2~4_combout\ & !\pro|alu|Add1~25\)) # (!\pro|AC|d\(13) & ((\pro|mux|Mux2~4_combout\) # (!\pro|alu|Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(13),
	datab => \pro|mux|Mux2~4_combout\,
	datad => VCC,
	cin => \pro|alu|Add1~25\,
	combout => \pro|alu|Add1~26_combout\,
	cout => \pro|alu|Add1~27\);

-- Location: LCCOMB_X59_Y46_N0
\pro|alu|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux13~1_combout\ = (\pro|alu|Mux11~2_combout\ & ((\pro|alu|Mux13~0_combout\ & ((\pro|alu|Add1~26_combout\))) # (!\pro|alu|Mux13~0_combout\ & (\pro|alu|Add2~26_combout\)))) # (!\pro|alu|Mux11~2_combout\ & (((\pro|alu|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Add2~26_combout\,
	datac => \pro|alu|Mux13~0_combout\,
	datad => \pro|alu|Add1~26_combout\,
	combout => \pro|alu|Mux13~1_combout\);

-- Location: LCCOMB_X59_Y46_N26
\pro|alu|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux13~2_combout\ = (\pro|cu|operation\(1) & ((\pro|cu|operation\(0) & ((\pro|alu|Mux13~1_combout\))) # (!\pro|cu|operation\(0) & (\pro|alu|Add0~26_combout\)))) # (!\pro|cu|operation\(1) & (((\pro|alu|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(1),
	datab => \pro|cu|operation\(0),
	datac => \pro|alu|Add0~26_combout\,
	datad => \pro|alu|Mux13~1_combout\,
	combout => \pro|alu|Mux13~2_combout\);

-- Location: LCCOMB_X55_Y49_N8
\pro|alu|data[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(13) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|data\(13))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|data\(13),
	datac => \pro|alu|Mux16~0clkctrl_outclk\,
	datad => \pro|alu|Mux13~2_combout\,
	combout => \pro|alu|data\(13));

-- Location: FF_X55_Y49_N13
\pro|R2|d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(13),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(13));

-- Location: FF_X56_Y46_N17
\pro|R4|d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(13),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(13));

-- Location: FF_X58_Y47_N9
\pro|R5|d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(13),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(13));

-- Location: LCCOMB_X57_Y46_N20
\pro|R3|d[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|R3|d[13]~feeder_combout\ = \pro|alu|data\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro|alu|data\(13),
	combout => \pro|R3|d[13]~feeder_combout\);

-- Location: FF_X57_Y46_N21
\pro|R3|d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|R3|d[13]~feeder_combout\,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(13));

-- Location: FF_X57_Y46_N23
\pro|R1|d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(13),
	sload => VCC,
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(13));

-- Location: LCCOMB_X57_Y46_N22
\pro|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux2~0_combout\ = (\pro|cu|M_select\(2) & (((\pro|cu|M_select\(1))))) # (!\pro|cu|M_select\(2) & ((\pro|cu|M_select\(1) & (\pro|R3|d\(13))) # (!\pro|cu|M_select\(1) & ((\pro|R1|d\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|R3|d\(13),
	datac => \pro|R1|d\(13),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux2~0_combout\);

-- Location: LCCOMB_X58_Y47_N8
\pro|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux2~1_combout\ = (\pro|cu|M_select\(2) & ((\pro|mux|Mux2~0_combout\ & (\pro|AC|d\(13))) # (!\pro|mux|Mux2~0_combout\ & ((\pro|R5|d\(13)))))) # (!\pro|cu|M_select\(2) & (((\pro|mux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|AC|d\(13),
	datac => \pro|R5|d\(13),
	datad => \pro|mux|Mux2~0_combout\,
	combout => \pro|mux|Mux2~1_combout\);

-- Location: LCCOMB_X56_Y46_N16
\pro|mux|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux2~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux2~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(13))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(13),
	datad => \pro|mux|Mux2~1_combout\,
	combout => \pro|mux|Mux2~2_combout\);

-- Location: LCCOMB_X55_Y49_N12
\pro|mux|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux2~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux2~2_combout\ & (\pro|AR|d\(13))) # (!\pro|mux|Mux2~2_combout\ & ((\pro|R2|d\(13)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(13),
	datab => \pro|mux|Mux0~0_combout\,
	datac => \pro|R2|d\(13),
	datad => \pro|mux|Mux2~2_combout\,
	combout => \pro|mux|Mux2~3_combout\);

-- Location: LCCOMB_X55_Y49_N6
\pro|mux|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux2~4_combout\ = (!\pro|cu|M_select\(3) & \pro|mux|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro|cu|M_select\(3),
	datad => \pro|mux|Mux2~3_combout\,
	combout => \pro|mux|Mux2~4_combout\);

-- Location: LCCOMB_X60_Y46_N28
\pro|alu|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~28_combout\ = ((\pro|mux|Mux1~4_combout\ $ (\pro|AC|d\(14) $ (\pro|alu|Add1~27\)))) # (GND)
-- \pro|alu|Add1~29\ = CARRY((\pro|mux|Mux1~4_combout\ & (\pro|AC|d\(14) & !\pro|alu|Add1~27\)) # (!\pro|mux|Mux1~4_combout\ & ((\pro|AC|d\(14)) # (!\pro|alu|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux1~4_combout\,
	datab => \pro|AC|d\(14),
	datad => VCC,
	cin => \pro|alu|Add1~27\,
	combout => \pro|alu|Add1~28_combout\,
	cout => \pro|alu|Add1~29\);

-- Location: LCCOMB_X59_Y46_N8
\pro|alu|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux14~1_combout\ = (\pro|alu|Mux14~0_combout\ & ((\pro|alu|Mux0~0_combout\) # ((\pro|alu|Add1~28_combout\)))) # (!\pro|alu|Mux14~0_combout\ & (!\pro|alu|Mux0~0_combout\ & (\pro|AC|d\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux14~0_combout\,
	datab => \pro|alu|Mux0~0_combout\,
	datac => \pro|AC|d\(13),
	datad => \pro|alu|Add1~28_combout\,
	combout => \pro|alu|Mux14~1_combout\);

-- Location: LCCOMB_X59_Y46_N18
\pro|alu|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux14~2_combout\ = (\pro|cu|operation\(0) & (((\pro|alu|Mux14~1_combout\)))) # (!\pro|cu|operation\(0) & ((\pro|cu|operation\(1) & (\pro|alu|Add0~28_combout\)) # (!\pro|cu|operation\(1) & ((\pro|alu|Mux14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Add0~28_combout\,
	datab => \pro|alu|Mux14~1_combout\,
	datac => \pro|cu|operation\(0),
	datad => \pro|cu|operation\(1),
	combout => \pro|alu|Mux14~2_combout\);

-- Location: LCCOMB_X59_Y46_N14
\pro|alu|data[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(14) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|data\(14)))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|Mux14~2_combout\,
	datac => \pro|alu|data\(14),
	datad => \pro|alu|Mux16~0clkctrl_outclk\,
	combout => \pro|alu|data\(14));

-- Location: FF_X55_Y49_N23
\pro|AR|d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(14),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(14));

-- Location: LCCOMB_X60_Y50_N28
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (countn(14) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => countn(14),
	datad => \pro|cu|endp~q\,
	combout => \count~2_combout\);

-- Location: FF_X60_Y50_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X55_Y49_N22
\address[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[14]~3_combout\ = (\staten.pros~q\ & (\pro|AR|d\(14))) # (!\staten.pros~q\ & ((count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \staten.pros~q\,
	datac => \pro|AR|d\(14),
	datad => count(14),
	combout => \address[14]~3_combout\);

-- Location: LCCOMB_X60_Y49_N24
\Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\ = (\staten.pros~q\ & (\pro|cu|write~q\ & ((!\pro|cu|read~q\)))) # (!\staten.pros~q\ & (((!\writeu~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|write~q\,
	datab => \staten.pros~q\,
	datac => \writeu~q\,
	datad => \pro|cu|read~q\,
	combout => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\);

-- Location: LCCOMB_X60_Y49_N10
\Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\ = (\address[15]~2_combout\ & (!\address[14]~3_combout\ & (\address[13]~1_combout\ & \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[15]~2_combout\,
	datab => \address[14]~3_combout\,
	datac => \address[13]~1_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\);

-- Location: LCCOMB_X55_Y47_N10
\re|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~2_combout\ = (!\re|state\(2) & (!\re|state\(3) & (!\re|state\(1) & \re|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(3),
	datac => \re|state\(1),
	datad => \re|state\(0),
	combout => \re|Decoder1~2_combout\);

-- Location: LCCOMB_X55_Y47_N18
\re|character[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[0]~1_combout\ = (\re|flagStart~q\ & ((\re|Decoder1~2_combout\ & ((\rx~input_o\))) # (!\re|Decoder1~2_combout\ & (\re|character\(0))))) # (!\re|flagStart~q\ & (((\re|character\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datab => \re|Decoder1~2_combout\,
	datac => \re|character\(0),
	datad => \rx~input_o\,
	combout => \re|character[0]~1_combout\);

-- Location: FF_X55_Y47_N19
\re|character[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(0));

-- Location: LCCOMB_X59_Y47_N28
\din[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \din[0]~1_combout\ = (\staten.pros~q\ & ((\pro|AC|d\(0)))) # (!\staten.pros~q\ & (\re|character\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \re|character\(0),
	datad => \pro|AC|d\(0),
	combout => \din[0]~1_combout\);

-- Location: LCCOMB_X55_Y50_N14
\countn~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~5_combout\ = (countn(0) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(0),
	datad => \pro|cu|endp~q\,
	combout => \countn~5_combout\);

-- Location: FF_X55_Y50_N15
\countn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~5_combout\,
	asdata => \Add0~0_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(0));

-- Location: LCCOMB_X60_Y50_N0
\count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (countn(0) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => countn(0),
	datad => \pro|cu|endp~q\,
	combout => \count~3_combout\);

-- Location: FF_X60_Y50_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X60_Y50_N14
\address[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[0]~4_combout\ = (\staten.pros~q\ & (\pro|AR|d\(0))) # (!\staten.pros~q\ & ((count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AR|d\(0),
	datad => count(0),
	combout => \address[0]~4_combout\);

-- Location: FF_X60_Y50_N11
\pro|AR|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(1),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(1));

-- Location: LCCOMB_X55_Y50_N16
\countn~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~6_combout\ = (countn(1) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(1),
	datad => \pro|cu|endp~q\,
	combout => \countn~6_combout\);

-- Location: FF_X55_Y50_N17
\countn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~6_combout\,
	asdata => \Add0~2_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(1));

-- Location: LCCOMB_X60_Y50_N4
\count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (countn(1) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => countn(1),
	datad => \pro|cu|endp~q\,
	combout => \count~4_combout\);

-- Location: FF_X60_Y50_N5
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X60_Y50_N10
\address[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[1]~5_combout\ = (\staten.pros~q\ & (\pro|AR|d\(1))) # (!\staten.pros~q\ & ((count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AR|d\(1),
	datad => count(1),
	combout => \address[1]~5_combout\);

-- Location: FF_X60_Y50_N31
\pro|AR|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(2),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(2));

-- Location: LCCOMB_X60_Y50_N8
\count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (countn(2) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(2),
	datab => \staten.pros~q\,
	datad => \pro|cu|endp~q\,
	combout => \count~5_combout\);

-- Location: FF_X60_Y50_N9
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X60_Y50_N30
\address[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[2]~6_combout\ = (\staten.pros~q\ & (\pro|AR|d\(2))) # (!\staten.pros~q\ & ((count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AR|d\(2),
	datad => count(2),
	combout => \address[2]~6_combout\);

-- Location: LCCOMB_X56_Y50_N4
\count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (countn(3) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countn(3),
	datac => \staten.pros~q\,
	datad => \pro|cu|endp~q\,
	combout => \count~6_combout\);

-- Location: FF_X56_Y50_N5
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: FF_X60_Y50_N3
\pro|AR|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(3),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(3));

-- Location: LCCOMB_X60_Y50_N2
\address[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[3]~7_combout\ = (\staten.pros~q\ & ((\pro|AR|d\(3)))) # (!\staten.pros~q\ & (count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datac => \pro|AR|d\(3),
	datad => \staten.pros~q\,
	combout => \address[3]~7_combout\);

-- Location: FF_X60_Y50_N21
\pro|AR|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(4),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(4));

-- Location: LCCOMB_X60_Y50_N20
\address[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[4]~8_combout\ = (\staten.pros~q\ & ((\pro|AR|d\(4)))) # (!\staten.pros~q\ & (count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datac => \pro|AR|d\(4),
	datad => \staten.pros~q\,
	combout => \address[4]~8_combout\);

-- Location: LCCOMB_X56_Y50_N0
\count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (countn(5) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(5),
	datac => \staten.pros~q\,
	datad => \pro|cu|endp~q\,
	combout => \count~8_combout\);

-- Location: FF_X56_Y50_N1
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: FF_X59_Y47_N3
\pro|AR|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(5),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(5));

-- Location: LCCOMB_X59_Y47_N2
\address[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[5]~9_combout\ = (\staten.pros~q\ & ((\pro|AR|d\(5)))) # (!\staten.pros~q\ & (count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datac => \pro|AR|d\(5),
	datad => \staten.pros~q\,
	combout => \address[5]~9_combout\);

-- Location: FF_X56_Y50_N11
\pro|AR|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(6),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(6));

-- Location: LCCOMB_X56_Y50_N12
\count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~9_combout\ = (countn(6) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(6),
	datac => \staten.pros~q\,
	datad => \pro|cu|endp~q\,
	combout => \count~9_combout\);

-- Location: FF_X56_Y50_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X56_Y50_N10
\address[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[6]~10_combout\ = (\staten.pros~q\ & (\pro|AR|d\(6))) # (!\staten.pros~q\ & ((count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \staten.pros~q\,
	datac => \pro|AR|d\(6),
	datad => count(6),
	combout => \address[6]~10_combout\);

-- Location: LCCOMB_X60_Y50_N6
\address[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[7]~11_combout\ = (\staten.pros~q\ & ((\pro|AR|d\(7)))) # (!\staten.pros~q\ & (count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datac => \pro|AR|d\(7),
	datad => \staten.pros~q\,
	combout => \address[7]~11_combout\);

-- Location: FF_X60_Y50_N17
\pro|AR|d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(8),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(8));

-- Location: LCCOMB_X60_Y50_N26
\count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~11_combout\ = (countn(8) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => countn(8),
	datad => \pro|cu|endp~q\,
	combout => \count~11_combout\);

-- Location: FF_X60_Y50_N27
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X60_Y50_N16
\address[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[8]~12_combout\ = (\staten.pros~q\ & (\pro|AR|d\(8))) # (!\staten.pros~q\ & ((count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AR|d\(8),
	datad => count(8),
	combout => \address[8]~12_combout\);

-- Location: FF_X60_Y50_N13
\pro|AR|d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(9),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(9));

-- Location: LCCOMB_X60_Y50_N22
\count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~12_combout\ = (countn(9) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(9),
	datab => \staten.pros~q\,
	datad => \pro|cu|endp~q\,
	combout => \count~12_combout\);

-- Location: FF_X60_Y50_N23
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X60_Y50_N12
\address[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[9]~13_combout\ = (\staten.pros~q\ & (\pro|AR|d\(9))) # (!\staten.pros~q\ & ((count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AR|d\(9),
	datad => count(9),
	combout => \address[9]~13_combout\);

-- Location: FF_X55_Y46_N25
\pro|AR|d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(10),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(10));

-- Location: LCCOMB_X55_Y46_N26
\count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~13_combout\ = (countn(10) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => countn(10),
	datad => \pro|cu|endp~q\,
	combout => \count~13_combout\);

-- Location: FF_X55_Y46_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X55_Y46_N24
\address[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[10]~14_combout\ = (\staten.pros~q\ & (\pro|AR|d\(10))) # (!\staten.pros~q\ & ((count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AR|d\(10),
	datad => count(10),
	combout => \address[10]~14_combout\);

-- Location: LCCOMB_X55_Y46_N22
\count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~14_combout\ = (countn(11) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => countn(11),
	datad => \pro|cu|endp~q\,
	combout => \count~14_combout\);

-- Location: FF_X55_Y46_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X55_Y46_N20
\address[11]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[11]~15_combout\ = (\staten.pros~q\ & (\pro|AR|d\(11))) # (!\staten.pros~q\ & ((count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AR|d\(11),
	datad => count(11),
	combout => \address[11]~15_combout\);

-- Location: FF_X56_Y46_N27
\pro|R2|d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(12),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(12));

-- Location: FF_X56_Y46_N21
\pro|R4|d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(12),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(12));

-- Location: FF_X57_Y46_N9
\pro|R3|d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(12),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(12));

-- Location: LCCOMB_X57_Y46_N8
\pro|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux3~1_combout\ = (\pro|mux|Mux3~0_combout\ & ((\pro|AC|d\(12)) # ((!\pro|cu|M_select\(1))))) # (!\pro|mux|Mux3~0_combout\ & (((\pro|R3|d\(12) & \pro|cu|M_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux3~0_combout\,
	datab => \pro|AC|d\(12),
	datac => \pro|R3|d\(12),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux3~1_combout\);

-- Location: LCCOMB_X56_Y46_N20
\pro|mux|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux3~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux3~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(12))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(12),
	datad => \pro|mux|Mux3~1_combout\,
	combout => \pro|mux|Mux3~2_combout\);

-- Location: LCCOMB_X56_Y46_N26
\pro|mux|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux3~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux3~2_combout\ & (\pro|AR|d\(12))) # (!\pro|mux|Mux3~2_combout\ & ((\pro|R2|d\(12)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(12),
	datab => \pro|mux|Mux0~0_combout\,
	datac => \pro|R2|d\(12),
	datad => \pro|mux|Mux3~2_combout\,
	combout => \pro|mux|Mux3~3_combout\);

-- Location: LCCOMB_X56_Y46_N14
\pro|mux|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux3~4_combout\ = (!\pro|cu|M_select\(3) & \pro|mux|Mux3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|M_select\(3),
	datac => \pro|mux|Mux3~3_combout\,
	combout => \pro|mux|Mux3~4_combout\);

-- Location: LCCOMB_X57_Y46_N2
\pro|alu|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux12~0_combout\ = (\pro|alu|Mux11~2_combout\ & (((\pro|alu|Add2~24_combout\)) # (!\pro|alu|Mux0~0_combout\))) # (!\pro|alu|Mux11~2_combout\ & (\pro|alu|Mux0~0_combout\ & ((\pro|mux|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Mux0~0_combout\,
	datac => \pro|alu|Add2~24_combout\,
	datad => \pro|mux|Mux3~4_combout\,
	combout => \pro|alu|Mux12~0_combout\);

-- Location: LCCOMB_X57_Y46_N4
\pro|alu|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux12~1_combout\ = (\pro|alu|Mux12~0_combout\ & ((\pro|alu|Add1~24_combout\) # ((\pro|alu|Mux0~0_combout\)))) # (!\pro|alu|Mux12~0_combout\ & (((!\pro|alu|Mux0~0_combout\ & \pro|AC|d\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Add1~24_combout\,
	datab => \pro|alu|Mux12~0_combout\,
	datac => \pro|alu|Mux0~0_combout\,
	datad => \pro|AC|d\(11),
	combout => \pro|alu|Mux12~1_combout\);

-- Location: LCCOMB_X57_Y46_N14
\pro|alu|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux12~2_combout\ = (\pro|cu|operation\(1) & ((\pro|cu|operation\(0) & ((\pro|alu|Mux12~1_combout\))) # (!\pro|cu|operation\(0) & (\pro|alu|Add0~24_combout\)))) # (!\pro|cu|operation\(1) & (((\pro|alu|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(1),
	datab => \pro|alu|Add0~24_combout\,
	datac => \pro|cu|operation\(0),
	datad => \pro|alu|Mux12~1_combout\,
	combout => \pro|alu|Mux12~2_combout\);

-- Location: LCCOMB_X57_Y46_N18
\pro|alu|data[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(12) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|data\(12))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|data\(12),
	datac => \pro|alu|Mux16~0clkctrl_outclk\,
	datad => \pro|alu|Mux12~2_combout\,
	combout => \pro|alu|data\(12));

-- Location: FF_X55_Y46_N9
\pro|AR|d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(12),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(12));

-- Location: LCCOMB_X55_Y50_N30
\countn~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~17_combout\ = (countn(12) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(12),
	datad => \pro|cu|endp~q\,
	combout => \countn~17_combout\);

-- Location: FF_X55_Y50_N31
\countn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~17_combout\,
	asdata => \Add0~24_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(12));

-- Location: LCCOMB_X55_Y46_N10
\count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~15_combout\ = (countn(12) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => countn(12),
	datad => \pro|cu|endp~q\,
	combout => \count~15_combout\);

-- Location: FF_X55_Y46_N11
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X55_Y46_N8
\address[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[12]~16_combout\ = (\staten.pros~q\ & (\pro|AR|d\(12))) # (!\staten.pros~q\ & ((count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AR|d\(12),
	datad => count(12),
	combout => \address[12]~16_combout\);

-- Location: M9K_X64_Y45_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X55_Y49_N0
\Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\ = (!\address[14]~3_combout\ & (!\address[13]~1_combout\ & (\address[15]~2_combout\ & \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[14]~3_combout\,
	datab => \address[13]~1_combout\,
	datac => \address[15]~2_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\);

-- Location: M9K_X64_Y53_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N20
\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~9_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a40~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a32~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a40~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a32~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~9_combout\);

-- Location: LCCOMB_X55_Y49_N18
\Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\ = (\address[14]~3_combout\ & (!\address[13]~1_combout\ & (\address[15]~2_combout\ & \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[14]~3_combout\,
	datab => \address[13]~1_combout\,
	datac => \address[15]~2_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\);

-- Location: M9K_X64_Y47_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a48\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X60_Y49_N16
\Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\ = (\address[15]~2_combout\ & (\address[14]~3_combout\ & (\address[13]~1_combout\ & \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[15]~2_combout\,
	datab => \address[14]~3_combout\,
	datac => \address[13]~1_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\);

-- Location: M9K_X64_Y56_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a56\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N14
\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~10_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a56~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a48~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a48~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a56~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~10_combout\);

-- Location: FF_X63_Y48_N23
\Dram|memory_rtl_0|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \address[14]~3_combout\,
	sload => VCC,
	ena => \read~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1));

-- Location: LCCOMB_X55_Y49_N16
\Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\ = (!\address[14]~3_combout\ & (\address[13]~1_combout\ & (!\address[15]~2_combout\ & \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[14]~3_combout\,
	datab => \address[13]~1_combout\,
	datac => \address[15]~2_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\);

-- Location: M9K_X64_Y50_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N4
\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~6_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~6_combout\);

-- Location: LCCOMB_X63_Y48_N28
\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~8_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~7_combout\) # 
-- (\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~7_combout\,
	datac => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~6_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~8_combout\);

-- Location: LCCOMB_X63_Y48_N2
\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~11_combout\ = (\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~8_combout\) # ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~9_combout\) # (\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datab => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~9_combout\,
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~10_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~8_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~11_combout\);

-- Location: LCCOMB_X59_Y50_N24
\pro|mux|Mux15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux15~combout\ = (\pro|mux|Mux8~0_combout\ & (\pro|mux|Mux15~4_combout\)) # (!\pro|mux|Mux8~0_combout\ & ((\pro|mux|Mux15~4_combout\ & (\pro|IR|d\(0))) # (!\pro|mux|Mux15~4_combout\ & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~0_combout\,
	datab => \pro|mux|Mux15~4_combout\,
	datac => \pro|IR|d\(0),
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~11_combout\,
	combout => \pro|mux|Mux15~combout\);

-- Location: LCCOMB_X58_Y46_N0
\pro|alu|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~0_combout\ = (\pro|AC|d\(0) & (\pro|mux|Mux15~combout\ $ (VCC))) # (!\pro|AC|d\(0) & (\pro|mux|Mux15~combout\ & VCC))
-- \pro|alu|Add0~1\ = CARRY((\pro|AC|d\(0) & \pro|mux|Mux15~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(0),
	datab => \pro|mux|Mux15~combout\,
	datad => VCC,
	combout => \pro|alu|Add0~0_combout\,
	cout => \pro|alu|Add0~1\);

-- Location: LCCOMB_X58_Y46_N2
\pro|alu|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~2_combout\ = (\pro|mux|Mux14~combout\ & ((\pro|AC|d\(1) & (\pro|alu|Add0~1\ & VCC)) # (!\pro|AC|d\(1) & (!\pro|alu|Add0~1\)))) # (!\pro|mux|Mux14~combout\ & ((\pro|AC|d\(1) & (!\pro|alu|Add0~1\)) # (!\pro|AC|d\(1) & ((\pro|alu|Add0~1\) # 
-- (GND)))))
-- \pro|alu|Add0~3\ = CARRY((\pro|mux|Mux14~combout\ & (!\pro|AC|d\(1) & !\pro|alu|Add0~1\)) # (!\pro|mux|Mux14~combout\ & ((!\pro|alu|Add0~1\) # (!\pro|AC|d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux14~combout\,
	datab => \pro|AC|d\(1),
	datad => VCC,
	cin => \pro|alu|Add0~1\,
	combout => \pro|alu|Add0~2_combout\,
	cout => \pro|alu|Add0~3\);

-- Location: LCCOMB_X58_Y46_N6
\pro|alu|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~6_combout\ = (\pro|AC|d\(3) & ((\pro|mux|Mux12~combout\ & (\pro|alu|Add0~5\ & VCC)) # (!\pro|mux|Mux12~combout\ & (!\pro|alu|Add0~5\)))) # (!\pro|AC|d\(3) & ((\pro|mux|Mux12~combout\ & (!\pro|alu|Add0~5\)) # (!\pro|mux|Mux12~combout\ & 
-- ((\pro|alu|Add0~5\) # (GND)))))
-- \pro|alu|Add0~7\ = CARRY((\pro|AC|d\(3) & (!\pro|mux|Mux12~combout\ & !\pro|alu|Add0~5\)) # (!\pro|AC|d\(3) & ((!\pro|alu|Add0~5\) # (!\pro|mux|Mux12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(3),
	datab => \pro|mux|Mux12~combout\,
	datad => VCC,
	cin => \pro|alu|Add0~5\,
	combout => \pro|alu|Add0~6_combout\,
	cout => \pro|alu|Add0~7\);

-- Location: LCCOMB_X58_Y46_N8
\pro|alu|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~8_combout\ = ((\pro|AC|d\(4) $ (\pro|mux|Mux11~combout\ $ (!\pro|alu|Add0~7\)))) # (GND)
-- \pro|alu|Add0~9\ = CARRY((\pro|AC|d\(4) & ((\pro|mux|Mux11~combout\) # (!\pro|alu|Add0~7\))) # (!\pro|AC|d\(4) & (\pro|mux|Mux11~combout\ & !\pro|alu|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(4),
	datab => \pro|mux|Mux11~combout\,
	datad => VCC,
	cin => \pro|alu|Add0~7\,
	combout => \pro|alu|Add0~8_combout\,
	cout => \pro|alu|Add0~9\);

-- Location: LCCOMB_X58_Y46_N10
\pro|alu|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~10_combout\ = (\pro|AC|d\(5) & ((\pro|mux|Mux10~combout\ & (\pro|alu|Add0~9\ & VCC)) # (!\pro|mux|Mux10~combout\ & (!\pro|alu|Add0~9\)))) # (!\pro|AC|d\(5) & ((\pro|mux|Mux10~combout\ & (!\pro|alu|Add0~9\)) # (!\pro|mux|Mux10~combout\ & 
-- ((\pro|alu|Add0~9\) # (GND)))))
-- \pro|alu|Add0~11\ = CARRY((\pro|AC|d\(5) & (!\pro|mux|Mux10~combout\ & !\pro|alu|Add0~9\)) # (!\pro|AC|d\(5) & ((!\pro|alu|Add0~9\) # (!\pro|mux|Mux10~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(5),
	datab => \pro|mux|Mux10~combout\,
	datad => VCC,
	cin => \pro|alu|Add0~9\,
	combout => \pro|alu|Add0~10_combout\,
	cout => \pro|alu|Add0~11\);

-- Location: LCCOMB_X57_Y49_N24
\pro|alu|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux5~2_combout\ = (\pro|cu|operation\(1) & ((\pro|cu|operation\(0) & (\pro|alu|Mux5~1_combout\)) # (!\pro|cu|operation\(0) & ((\pro|alu|Add0~10_combout\))))) # (!\pro|cu|operation\(1) & (\pro|alu|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(1),
	datab => \pro|alu|Mux5~1_combout\,
	datac => \pro|cu|operation\(0),
	datad => \pro|alu|Add0~10_combout\,
	combout => \pro|alu|Mux5~2_combout\);

-- Location: LCCOMB_X57_Y49_N4
\pro|alu|data[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(5) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|data\(5))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|data\(5),
	datac => \pro|alu|Mux5~2_combout\,
	datad => \pro|alu|Mux16~0clkctrl_outclk\,
	combout => \pro|alu|data\(5));

-- Location: FF_X56_Y47_N7
\pro|R2|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(5),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(5));

-- Location: FF_X59_Y47_N31
\pro|R4|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(5),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(5));

-- Location: FF_X58_Y47_N19
\pro|R5|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(5),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(5));

-- Location: FF_X57_Y49_N5
\pro|R1|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(5),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(5));

-- Location: FF_X58_Y47_N13
\pro|R3|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(5),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(5));

-- Location: LCCOMB_X58_Y47_N12
\pro|mux|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux10~0_combout\ = (\pro|cu|M_select\(2) & (((\pro|cu|M_select\(1))))) # (!\pro|cu|M_select\(2) & ((\pro|cu|M_select\(1) & ((\pro|R3|d\(5)))) # (!\pro|cu|M_select\(1) & (\pro|R1|d\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|R1|d\(5),
	datac => \pro|R3|d\(5),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux10~0_combout\);

-- Location: LCCOMB_X58_Y47_N18
\pro|mux|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux10~1_combout\ = (\pro|cu|M_select\(2) & ((\pro|mux|Mux10~0_combout\ & (\pro|AC|d\(5))) # (!\pro|mux|Mux10~0_combout\ & ((\pro|R5|d\(5)))))) # (!\pro|cu|M_select\(2) & (((\pro|mux|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|AC|d\(5),
	datac => \pro|R5|d\(5),
	datad => \pro|mux|Mux10~0_combout\,
	combout => \pro|mux|Mux10~1_combout\);

-- Location: LCCOMB_X59_Y47_N30
\pro|mux|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux10~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux10~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(5))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(5),
	datad => \pro|mux|Mux10~1_combout\,
	combout => \pro|mux|Mux10~2_combout\);

-- Location: LCCOMB_X56_Y47_N6
\pro|mux|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux10~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux10~2_combout\ & (\pro|AR|d\(5))) # (!\pro|mux|Mux10~2_combout\ & ((\pro|R2|d\(5)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(5),
	datab => \pro|mux|Mux0~0_combout\,
	datac => \pro|R2|d\(5),
	datad => \pro|mux|Mux10~2_combout\,
	combout => \pro|mux|Mux10~3_combout\);

-- Location: LCCOMB_X56_Y47_N24
\pro|mux|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux10~4_combout\ = (\pro|mux|Mux8~5_combout\ & ((\pro|mux|Mux8~6_combout\ & ((\Pram|memory_rtl_1|auto_generated|ram_block1a5\))) # (!\pro|mux|Mux8~6_combout\ & (\pro|mux|Mux10~3_combout\)))) # (!\pro|mux|Mux8~5_combout\ & 
-- (!\pro|mux|Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~5_combout\,
	datab => \pro|mux|Mux8~6_combout\,
	datac => \pro|mux|Mux10~3_combout\,
	datad => \Pram|memory_rtl_1|auto_generated|ram_block1a5\,
	combout => \pro|mux|Mux10~4_combout\);

-- Location: LCCOMB_X55_Y47_N12
\re|Decoder1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~8_combout\ = (!\re|state\(3) & (!\re|state\(0) & (\re|state\(2) & \re|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(3),
	datab => \re|state\(0),
	datac => \re|state\(2),
	datad => \re|state\(1),
	combout => \re|Decoder1~8_combout\);

-- Location: LCCOMB_X55_Y47_N28
\re|character[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[5]~7_combout\ = (\re|flagStart~q\ & ((\re|Decoder1~8_combout\ & (\rx~input_o\)) # (!\re|Decoder1~8_combout\ & ((\re|character\(5)))))) # (!\re|flagStart~q\ & (((\re|character\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datab => \rx~input_o\,
	datac => \re|character\(5),
	datad => \re|Decoder1~8_combout\,
	combout => \re|character[5]~7_combout\);

-- Location: FF_X55_Y47_N29
\re|character[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(5));

-- Location: LCCOMB_X59_Y47_N8
\din[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \din[5]~7_combout\ = (\staten.pros~q\ & (\pro|AC|d\(5))) # (!\staten.pros~q\ & ((\re|character\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(5),
	datac => \re|character\(5),
	datad => \staten.pros~q\,
	combout => \din[5]~7_combout\);

-- Location: M9K_X51_Y49_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a53\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y44_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a61\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y48_N30
\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~46_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a61~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a53~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a53~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a61~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~46_combout\);

-- Location: LCCOMB_X55_Y49_N26
\Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\ = (!\address[14]~3_combout\ & (!\address[13]~1_combout\ & (!\address[15]~2_combout\ & \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[14]~3_combout\,
	datab => \address[13]~1_combout\,
	datac => \address[15]~2_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\);

-- Location: M9K_X51_Y51_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y55_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y48_N22
\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~42_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~42_combout\);

-- Location: LCCOMB_X55_Y49_N14
\Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\ = (\address[14]~3_combout\ & (!\address[13]~1_combout\ & (!\address[15]~2_combout\ & \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[14]~3_combout\,
	datab => \address[13]~1_combout\,
	datac => \address[15]~2_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\);

-- Location: M9K_X51_Y50_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X55_Y49_N28
\Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\ = (\address[14]~3_combout\ & (\address[13]~1_combout\ & (!\address[15]~2_combout\ & \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[14]~3_combout\,
	datab => \address[13]~1_combout\,
	datac => \address[15]~2_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[1]~0_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\);

-- Location: M9K_X51_Y52_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y48_N8
\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~43_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a29~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a21~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~43_combout\);

-- Location: LCCOMB_X52_Y48_N26
\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~44_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~42_combout\) # 
-- (\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~42_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~43_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~44_combout\);

-- Location: M9K_X78_Y45_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a45\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y46_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y48_N20
\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~45_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a45~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a37~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a45~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a37~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~45_combout\);

-- Location: LCCOMB_X52_Y48_N10
\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~47_combout\ = (\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~44_combout\) # ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~46_combout\) # (\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datab => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~46_combout\,
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~44_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~45_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~47_combout\);

-- Location: LCCOMB_X56_Y47_N16
\pro|mux|Mux10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux10~combout\ = (\pro|mux|Mux8~0_combout\ & (\pro|mux|Mux10~4_combout\)) # (!\pro|mux|Mux8~0_combout\ & ((\pro|mux|Mux10~4_combout\ & (\pro|IR|d\(5))) # (!\pro|mux|Mux10~4_combout\ & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~0_combout\,
	datab => \pro|mux|Mux10~4_combout\,
	datac => \pro|IR|d\(5),
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[5]~47_combout\,
	combout => \pro|mux|Mux10~combout\);

-- Location: LCCOMB_X58_Y46_N14
\pro|alu|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~14_combout\ = (\pro|mux|Mux8~combout\ & ((\pro|AC|d\(7) & (\pro|alu|Add0~13\ & VCC)) # (!\pro|AC|d\(7) & (!\pro|alu|Add0~13\)))) # (!\pro|mux|Mux8~combout\ & ((\pro|AC|d\(7) & (!\pro|alu|Add0~13\)) # (!\pro|AC|d\(7) & ((\pro|alu|Add0~13\) # 
-- (GND)))))
-- \pro|alu|Add0~15\ = CARRY((\pro|mux|Mux8~combout\ & (!\pro|AC|d\(7) & !\pro|alu|Add0~13\)) # (!\pro|mux|Mux8~combout\ & ((!\pro|alu|Add0~13\) # (!\pro|AC|d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~combout\,
	datab => \pro|AC|d\(7),
	datad => VCC,
	cin => \pro|alu|Add0~13\,
	combout => \pro|alu|Add0~14_combout\,
	cout => \pro|alu|Add0~15\);

-- Location: LCCOMB_X57_Y49_N0
\pro|alu|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux7~2_combout\ = (\pro|cu|operation\(0) & (\pro|alu|Mux7~1_combout\)) # (!\pro|cu|operation\(0) & ((\pro|cu|operation\(1) & ((\pro|alu|Add0~14_combout\))) # (!\pro|cu|operation\(1) & (\pro|alu|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux7~1_combout\,
	datab => \pro|cu|operation\(0),
	datac => \pro|alu|Add0~14_combout\,
	datad => \pro|cu|operation\(1),
	combout => \pro|alu|Mux7~2_combout\);

-- Location: LCCOMB_X57_Y49_N22
\pro|alu|data[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(7) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|data\(7)))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|Mux7~2_combout\,
	datac => \pro|alu|data\(7),
	datad => \pro|alu|Mux16~0clkctrl_outclk\,
	combout => \pro|alu|data\(7));

-- Location: FF_X60_Y50_N7
\pro|AR|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(7),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(7));

-- Location: FF_X56_Y47_N3
\pro|R2|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(7),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(7));

-- Location: FF_X59_Y47_N27
\pro|R4|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(7),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(7));

-- Location: FF_X58_Y47_N23
\pro|R5|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(7),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(7));

-- Location: FF_X57_Y49_N23
\pro|R1|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(7),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(7));

-- Location: FF_X58_Y47_N25
\pro|R3|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(7),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(7));

-- Location: LCCOMB_X58_Y47_N24
\pro|mux|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux8~1_combout\ = (\pro|cu|M_select\(2) & (((\pro|cu|M_select\(1))))) # (!\pro|cu|M_select\(2) & ((\pro|cu|M_select\(1) & ((\pro|R3|d\(7)))) # (!\pro|cu|M_select\(1) & (\pro|R1|d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|R1|d\(7),
	datac => \pro|R3|d\(7),
	datad => \pro|cu|M_select\(1),
	combout => \pro|mux|Mux8~1_combout\);

-- Location: LCCOMB_X58_Y47_N22
\pro|mux|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux8~2_combout\ = (\pro|cu|M_select\(2) & ((\pro|mux|Mux8~1_combout\ & (\pro|AC|d\(7))) # (!\pro|mux|Mux8~1_combout\ & ((\pro|R5|d\(7)))))) # (!\pro|cu|M_select\(2) & (((\pro|mux|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(7),
	datab => \pro|cu|M_select\(2),
	datac => \pro|R5|d\(7),
	datad => \pro|mux|Mux8~1_combout\,
	combout => \pro|mux|Mux8~2_combout\);

-- Location: LCCOMB_X59_Y47_N26
\pro|mux|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux8~3_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux8~2_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(7))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(7),
	datad => \pro|mux|Mux8~2_combout\,
	combout => \pro|mux|Mux8~3_combout\);

-- Location: LCCOMB_X56_Y47_N2
\pro|mux|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux8~4_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux8~3_combout\ & (\pro|AR|d\(7))) # (!\pro|mux|Mux8~3_combout\ & ((\pro|R2|d\(7)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~0_combout\,
	datab => \pro|AR|d\(7),
	datac => \pro|R2|d\(7),
	datad => \pro|mux|Mux8~3_combout\,
	combout => \pro|mux|Mux8~4_combout\);

-- Location: LCCOMB_X57_Y48_N4
\pro|mux|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux8~7_combout\ = (\pro|mux|Mux8~6_combout\ & (\pro|mux|Mux8~5_combout\ & (\Pram|memory_rtl_1|auto_generated|ram_block1a7\))) # (!\pro|mux|Mux8~6_combout\ & (((\pro|mux|Mux8~4_combout\)) # (!\pro|mux|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~6_combout\,
	datab => \pro|mux|Mux8~5_combout\,
	datac => \Pram|memory_rtl_1|auto_generated|ram_block1a7\,
	datad => \pro|mux|Mux8~4_combout\,
	combout => \pro|mux|Mux8~7_combout\);

-- Location: LCCOMB_X55_Y47_N22
\re|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~4_combout\ = (!\re|state\(2) & (!\re|state\(0) & (\re|state\(3) & !\re|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(0),
	datac => \re|state\(3),
	datad => \re|state\(1),
	combout => \re|Decoder1~4_combout\);

-- Location: LCCOMB_X55_Y47_N30
\re|character[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[7]~3_combout\ = (\re|flagStart~q\ & ((\re|Decoder1~4_combout\ & (\rx~input_o\)) # (!\re|Decoder1~4_combout\ & ((\re|character\(7)))))) # (!\re|flagStart~q\ & (((\re|character\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datab => \rx~input_o\,
	datac => \re|character\(7),
	datad => \re|Decoder1~4_combout\,
	combout => \re|character[7]~3_combout\);

-- Location: FF_X55_Y47_N31
\re|character[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(7));

-- Location: LCCOMB_X59_Y47_N0
\din[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \din[7]~3_combout\ = (\staten.pros~q\ & (\pro|AC|d\(7))) # (!\staten.pros~q\ & ((\re|character\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AC|d\(7),
	datad => \re|character\(7),
	combout => \din[7]~3_combout\);

-- Location: M9K_X64_Y61_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a63\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y54_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a55\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y48_N16
\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~22_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a63~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a55~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a63~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a55~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~22_combout\);

-- Location: M9K_X37_Y43_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y49_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y48_N22
\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~18_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~18_combout\);

-- Location: M9K_X64_Y62_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y45_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y48_N24
\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~19_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a31~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a23~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~19_combout\);

-- Location: LCCOMB_X57_Y48_N26
\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~20_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~18_combout\) # 
-- (\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~18_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~19_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~20_combout\);

-- Location: M9K_X51_Y53_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y46_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a47\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y48_N14
\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~21_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a47~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a39~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a39~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a47~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~21_combout\);

-- Location: LCCOMB_X57_Y48_N18
\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~23_combout\ = (\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~20_combout\) # ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~22_combout\) # (\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datab => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~22_combout\,
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~20_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~21_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~23_combout\);

-- Location: LCCOMB_X57_Y48_N0
\pro|mux|Mux8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux8~combout\ = (\pro|mux|Mux8~0_combout\ & (\pro|mux|Mux8~7_combout\)) # (!\pro|mux|Mux8~0_combout\ & ((\pro|mux|Mux8~7_combout\ & (\pro|IR|d\(7))) # (!\pro|mux|Mux8~7_combout\ & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~0_combout\,
	datab => \pro|mux|Mux8~7_combout\,
	datac => \pro|IR|d\(7),
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[7]~23_combout\,
	combout => \pro|mux|Mux8~combout\);

-- Location: LCCOMB_X57_Y49_N2
\pro|alu|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux8~1_combout\ = (\pro|alu|Mux8~0_combout\ & ((\pro|alu|Add2~16_combout\) # ((!\pro|alu|Mux11~2_combout\)))) # (!\pro|alu|Mux8~0_combout\ & (((\pro|alu|Mux11~2_combout\ & \pro|alu|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Add2~16_combout\,
	datab => \pro|alu|Mux8~0_combout\,
	datac => \pro|alu|Mux11~2_combout\,
	datad => \pro|alu|Add1~16_combout\,
	combout => \pro|alu|Mux8~1_combout\);

-- Location: LCCOMB_X57_Y49_N28
\pro|alu|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux8~2_combout\ = (\pro|cu|operation\(1) & ((\pro|cu|operation\(0) & ((\pro|alu|Mux8~1_combout\))) # (!\pro|cu|operation\(0) & (\pro|alu|Add0~16_combout\)))) # (!\pro|cu|operation\(1) & (((\pro|alu|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Add0~16_combout\,
	datab => \pro|alu|Mux8~1_combout\,
	datac => \pro|cu|operation\(1),
	datad => \pro|cu|operation\(0),
	combout => \pro|alu|Mux8~2_combout\);

-- Location: LCCOMB_X57_Y49_N20
\pro|alu|data[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(8) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|data\(8))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|data\(8),
	datac => \pro|alu|Mux16~0clkctrl_outclk\,
	datad => \pro|alu|Mux8~2_combout\,
	combout => \pro|alu|data\(8));

-- Location: FF_X58_Y50_N17
\pro|AC|d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[8]~32_combout\,
	asdata => \pro|alu|data\(8),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(8));

-- Location: LCCOMB_X61_Y46_N0
\pro|alu|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux9~3_combout\ = (\pro|alu|Mux9~2_combout\ & (((\pro|alu|Add1~18_combout\)) # (!\pro|alu|Mux11~2_combout\))) # (!\pro|alu|Mux9~2_combout\ & (\pro|alu|Mux11~2_combout\ & (\pro|alu|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux9~2_combout\,
	datab => \pro|alu|Mux11~2_combout\,
	datac => \pro|alu|Add2~18_combout\,
	datad => \pro|alu|Add1~18_combout\,
	combout => \pro|alu|Mux9~3_combout\);

-- Location: LCCOMB_X57_Y49_N30
\pro|alu|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux9~4_combout\ = (\pro|cu|operation\(1) & ((\pro|cu|operation\(0) & ((\pro|alu|Mux9~3_combout\))) # (!\pro|cu|operation\(0) & (\pro|alu|Add0~18_combout\)))) # (!\pro|cu|operation\(1) & (((\pro|alu|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Add0~18_combout\,
	datab => \pro|cu|operation\(1),
	datac => \pro|alu|Mux9~3_combout\,
	datad => \pro|cu|operation\(0),
	combout => \pro|alu|Mux9~4_combout\);

-- Location: LCCOMB_X57_Y49_N16
\pro|alu|data[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(9) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|data\(9))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|Mux9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|data\(9),
	datac => \pro|alu|Mux9~4_combout\,
	datad => \pro|alu|Mux16~0clkctrl_outclk\,
	combout => \pro|alu|data\(9));

-- Location: FF_X58_Y50_N19
\pro|AC|d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[9]~34_combout\,
	asdata => \pro|alu|data\(9),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(9));

-- Location: LCCOMB_X57_Y46_N24
\pro|alu|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux10~2_combout\ = (\pro|cu|operation\(0) & (\pro|alu|Mux10~1_combout\)) # (!\pro|cu|operation\(0) & ((\pro|cu|operation\(1) & ((\pro|alu|Add0~20_combout\))) # (!\pro|cu|operation\(1) & (\pro|alu|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux10~1_combout\,
	datab => \pro|alu|Add0~20_combout\,
	datac => \pro|cu|operation\(0),
	datad => \pro|cu|operation\(1),
	combout => \pro|alu|Mux10~2_combout\);

-- Location: LCCOMB_X57_Y46_N16
\pro|alu|data[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(10) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|data\(10)))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|Mux10~2_combout\,
	datac => \pro|alu|Mux16~0clkctrl_outclk\,
	datad => \pro|alu|data\(10),
	combout => \pro|alu|data\(10));

-- Location: FF_X58_Y50_N21
\pro|AC|d[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[10]~36_combout\,
	asdata => \pro|alu|data\(10),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(10));

-- Location: LCCOMB_X58_Y50_N22
\pro|AC|d[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[11]~38_combout\ = (\pro|AC|d\(11) & (!\pro|AC|d[10]~37\)) # (!\pro|AC|d\(11) & ((\pro|AC|d[10]~37\) # (GND)))
-- \pro|AC|d[11]~39\ = CARRY((!\pro|AC|d[10]~37\) # (!\pro|AC|d\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(11),
	datad => VCC,
	cin => \pro|AC|d[10]~37\,
	combout => \pro|AC|d[11]~38_combout\,
	cout => \pro|AC|d[11]~39\);

-- Location: FF_X58_Y50_N23
\pro|AC|d[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[11]~38_combout\,
	asdata => \pro|alu|data\(11),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(11));

-- Location: LCCOMB_X58_Y50_N24
\pro|AC|d[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[12]~40_combout\ = (\pro|AC|d\(12) & (\pro|AC|d[11]~39\ $ (GND))) # (!\pro|AC|d\(12) & (!\pro|AC|d[11]~39\ & VCC))
-- \pro|AC|d[12]~41\ = CARRY((\pro|AC|d\(12) & !\pro|AC|d[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(12),
	datad => VCC,
	cin => \pro|AC|d[11]~39\,
	combout => \pro|AC|d[12]~40_combout\,
	cout => \pro|AC|d[12]~41\);

-- Location: FF_X58_Y50_N25
\pro|AC|d[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[12]~40_combout\,
	asdata => \pro|alu|data\(12),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(12));

-- Location: LCCOMB_X58_Y50_N26
\pro|AC|d[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[13]~42_combout\ = (\pro|AC|d\(13) & (!\pro|AC|d[12]~41\)) # (!\pro|AC|d\(13) & ((\pro|AC|d[12]~41\) # (GND)))
-- \pro|AC|d[13]~43\ = CARRY((!\pro|AC|d[12]~41\) # (!\pro|AC|d\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(13),
	datad => VCC,
	cin => \pro|AC|d[12]~41\,
	combout => \pro|AC|d[13]~42_combout\,
	cout => \pro|AC|d[13]~43\);

-- Location: FF_X58_Y50_N27
\pro|AC|d[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[13]~42_combout\,
	asdata => \pro|alu|data\(13),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(13));

-- Location: LCCOMB_X58_Y50_N28
\pro|AC|d[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[14]~44_combout\ = (\pro|AC|d\(14) & (\pro|AC|d[13]~43\ $ (GND))) # (!\pro|AC|d\(14) & (!\pro|AC|d[13]~43\ & VCC))
-- \pro|AC|d[14]~45\ = CARRY((\pro|AC|d\(14) & !\pro|AC|d[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(14),
	datad => VCC,
	cin => \pro|AC|d[13]~43\,
	combout => \pro|AC|d[14]~44_combout\,
	cout => \pro|AC|d[14]~45\);

-- Location: FF_X58_Y50_N29
\pro|AC|d[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[14]~44_combout\,
	asdata => \pro|alu|data\(14),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(14));

-- Location: LCCOMB_X58_Y50_N30
\pro|AC|d[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|AC|d[15]~46_combout\ = \pro|AC|d[14]~45\ $ (\pro|AC|d\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pro|AC|d\(15),
	cin => \pro|AC|d[14]~45\,
	combout => \pro|AC|d[15]~46_combout\);

-- Location: FF_X58_Y50_N31
\pro|AC|d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[15]~46_combout\,
	asdata => \pro|alu|data\(15),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(15));

-- Location: FF_X57_Y46_N13
\pro|R3|d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(15),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(15));

-- Location: FF_X58_Y49_N29
\pro|R5|d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(15),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(15));

-- Location: LCCOMB_X58_Y49_N28
\pro|mux|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux0~3_combout\ = (\pro|cu|M_select\(1) & (((\pro|cu|M_select\(2))))) # (!\pro|cu|M_select\(1) & ((\pro|cu|M_select\(2) & ((\pro|R5|d\(15)))) # (!\pro|cu|M_select\(2) & (\pro|R1|d\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|R1|d\(15),
	datab => \pro|cu|M_select\(1),
	datac => \pro|R5|d\(15),
	datad => \pro|cu|M_select\(2),
	combout => \pro|mux|Mux0~3_combout\);

-- Location: LCCOMB_X57_Y46_N12
\pro|mux|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux0~4_combout\ = (\pro|cu|M_select\(1) & ((\pro|mux|Mux0~3_combout\ & (\pro|AC|d\(15))) # (!\pro|mux|Mux0~3_combout\ & ((\pro|R3|d\(15)))))) # (!\pro|cu|M_select\(1) & (((\pro|mux|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(1),
	datab => \pro|AC|d\(15),
	datac => \pro|R3|d\(15),
	datad => \pro|mux|Mux0~3_combout\,
	combout => \pro|mux|Mux0~4_combout\);

-- Location: LCCOMB_X59_Y47_N16
\pro|mux|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux0~5_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux0~4_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(15))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(15),
	datad => \pro|mux|Mux0~4_combout\,
	combout => \pro|mux|Mux0~5_combout\);

-- Location: LCCOMB_X55_Y49_N24
\pro|mux|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux0~6_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux0~5_combout\ & (\pro|AR|d\(15))) # (!\pro|mux|Mux0~5_combout\ & ((\pro|R2|d\(15)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~0_combout\,
	datab => \pro|AR|d\(15),
	datac => \pro|R2|d\(15),
	datad => \pro|mux|Mux0~5_combout\,
	combout => \pro|mux|Mux0~6_combout\);

-- Location: LCCOMB_X55_Y49_N10
\pro|mux|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux0~7_combout\ = (!\pro|cu|M_select\(3) & \pro|mux|Mux0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro|cu|M_select\(3),
	datad => \pro|mux|Mux0~6_combout\,
	combout => \pro|mux|Mux0~7_combout\);

-- Location: LCCOMB_X60_Y46_N30
\pro|alu|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add1~30_combout\ = \pro|AC|d\(15) $ (\pro|alu|Add1~29\ $ (!\pro|mux|Mux0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(15),
	datad => \pro|mux|Mux0~7_combout\,
	cin => \pro|alu|Add1~29\,
	combout => \pro|alu|Add1~30_combout\);

-- Location: LCCOMB_X59_Y50_N30
\pro|alu|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux15~1_combout\ = (\pro|alu|Mux15~0_combout\ & (((\pro|alu|Add1~30_combout\) # (!\pro|cu|operation\(0))))) # (!\pro|alu|Mux15~0_combout\ & (\pro|mux|Mux0~7_combout\ & ((\pro|cu|operation\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux15~0_combout\,
	datab => \pro|mux|Mux0~7_combout\,
	datac => \pro|alu|Add1~30_combout\,
	datad => \pro|cu|operation\(0),
	combout => \pro|alu|Mux15~1_combout\);

-- Location: LCCOMB_X58_Y46_N30
\pro|alu|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Add0~30_combout\ = \pro|AC|d\(15) $ (\pro|alu|Add0~29\ $ (\pro|mux|Mux0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro|AC|d\(15),
	datad => \pro|mux|Mux0~7_combout\,
	cin => \pro|alu|Add0~29\,
	combout => \pro|alu|Add0~30_combout\);

-- Location: LCCOMB_X59_Y50_N22
\pro|alu|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux15~2_combout\ = (\pro|alu|Mux15~1_combout\ & ((\pro|cu|operation\(2) & (!\pro|cu|operation\(0))) # (!\pro|cu|operation\(2) & ((\pro|cu|operation\(0)) # (\pro|alu|Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(2),
	datab => \pro|cu|operation\(0),
	datac => \pro|alu|Mux15~1_combout\,
	datad => \pro|alu|Add0~30_combout\,
	combout => \pro|alu|Mux15~2_combout\);

-- Location: LCCOMB_X59_Y50_N8
\pro|alu|data[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(15) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|data\(15))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|data\(15),
	datac => \pro|alu|Mux15~2_combout\,
	datad => \pro|alu|Mux16~0clkctrl_outclk\,
	combout => \pro|alu|data\(15));

-- Location: FF_X55_Y49_N5
\pro|AR|d[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(15),
	sload => VCC,
	ena => \pro|decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AR|d\(15));

-- Location: LCCOMB_X55_Y50_N12
\countn~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn~4_combout\ = (countn(15) & !\pro|cu|endp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(15),
	datad => \pro|cu|endp~q\,
	combout => \countn~4_combout\);

-- Location: FF_X55_Y50_N13
\countn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn~4_combout\,
	asdata => \Add0~30_combout\,
	sload => \ALT_INV_staten.pros~q\,
	ena => \countn[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(15));

-- Location: LCCOMB_X60_Y50_N18
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (countn(15) & ((!\pro|cu|endp~q\) # (!\staten.pros~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => countn(15),
	datad => \pro|cu|endp~q\,
	combout => \count~1_combout\);

-- Location: FF_X60_Y50_N19
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X55_Y49_N4
\address[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[15]~2_combout\ = (\staten.pros~q\ & (\pro|AR|d\(15))) # (!\staten.pros~q\ & ((count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \staten.pros~q\,
	datac => \pro|AR|d\(15),
	datad => count(15),
	combout => \address[15]~2_combout\);

-- Location: FF_X63_Y48_N29
\Dram|memory_rtl_0|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \address[15]~2_combout\,
	sload => VCC,
	ena => \read~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2));

-- Location: LCCOMB_X54_Y47_N14
\re|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~5_combout\ = (\re|state\(2) & (!\re|state\(1) & (\re|state\(0) & !\re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(3),
	combout => \re|Decoder1~5_combout\);

-- Location: LCCOMB_X55_Y47_N24
\re|character[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[4]~4_combout\ = (\re|flagStart~q\ & ((\re|Decoder1~5_combout\ & (\rx~input_o\)) # (!\re|Decoder1~5_combout\ & ((\re|character\(4)))))) # (!\re|flagStart~q\ & (((\re|character\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datab => \rx~input_o\,
	datac => \re|character\(4),
	datad => \re|Decoder1~5_combout\,
	combout => \re|character[4]~4_combout\);

-- Location: FF_X55_Y47_N25
\re|character[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(4));

-- Location: LCCOMB_X59_Y47_N18
\din[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \din[4]~4_combout\ = (\staten.pros~q\ & ((\pro|AC|d\(4)))) # (!\staten.pros~q\ & (\re|character\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \re|character\(4),
	datad => \pro|AC|d\(4),
	combout => \din[4]~4_combout\);

-- Location: M9K_X78_Y44_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y45_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y48_N18
\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~27_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a44~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a36~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a44~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a36~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~27_combout\);

-- Location: M9K_X51_Y62_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y44_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y48_N30
\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~25_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a28~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a20~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~25_combout\);

-- Location: M9K_X37_Y55_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y48_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y48_N28
\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~24_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~24_combout\);

-- Location: LCCOMB_X56_Y48_N0
\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~26_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~25_combout\) # 
-- (\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~25_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~24_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~26_combout\);

-- Location: LCCOMB_X56_Y48_N24
\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~29_combout\ = (\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~26_combout\) # ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~28_combout\) # (\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~28_combout\,
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~27_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~26_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~29_combout\);

-- Location: LCCOMB_X56_Y48_N12
\pro|mux|Mux11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux11~combout\ = (\pro|mux|Mux11~4_combout\ & ((\pro|mux|Mux8~0_combout\) # ((\pro|IR|d\(4))))) # (!\pro|mux|Mux11~4_combout\ & (!\pro|mux|Mux8~0_combout\ & ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux11~4_combout\,
	datab => \pro|mux|Mux8~0_combout\,
	datac => \pro|IR|d\(4),
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[4]~29_combout\,
	combout => \pro|mux|Mux11~combout\);

-- Location: LCCOMB_X59_Y46_N22
\pro|alu|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux4~2_combout\ = (\pro|cu|operation\(0) & (\pro|alu|Mux4~1_combout\)) # (!\pro|cu|operation\(0) & ((\pro|cu|operation\(1) & ((\pro|alu|Add0~8_combout\))) # (!\pro|cu|operation\(1) & (\pro|alu|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux4~1_combout\,
	datab => \pro|cu|operation\(0),
	datac => \pro|alu|Add0~8_combout\,
	datad => \pro|cu|operation\(1),
	combout => \pro|alu|Mux4~2_combout\);

-- Location: LCCOMB_X59_Y46_N10
\pro|alu|data[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(4) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|data\(4))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux16~0clkctrl_outclk\,
	datac => \pro|alu|data\(4),
	datad => \pro|alu|Mux4~2_combout\,
	combout => \pro|alu|data\(4));

-- Location: FF_X60_Y47_N25
\pro|PC|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|PC|d[4]~16_combout\,
	asdata => \pro|alu|data\(4),
	sclr => \pro|cu|resetpc~q\,
	sload => \pro|decoder|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|PC|d\(4));

-- Location: FF_X56_Y47_N17
\pro|IR|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Pram|memory_rtl_1|auto_generated|ram_block1a5\,
	sload => VCC,
	ena => \pro|decoder|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|IR|d\(5));

-- Location: FF_X60_Y48_N13
\pro|cu|D_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|D_select[1]~1_combout\,
	asdata => \pro|IR|d\(5),
	sload => \pro|cu|Equal4~1_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|D_select\(1));

-- Location: LCCOMB_X60_Y48_N30
\pro|decoder|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|decoder|Equal1~0_combout\ = (!\pro|cu|D_select\(0) & (!\pro|cu|D_select\(3) & (!\pro|cu|D_select\(2) & \pro|cu|D_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|D_select\(0),
	datab => \pro|cu|D_select\(3),
	datac => \pro|cu|D_select\(2),
	datad => \pro|cu|D_select\(1),
	combout => \pro|decoder|Equal1~0_combout\);

-- Location: FF_X59_Y48_N31
\pro|R2|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(3),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(3));

-- Location: FF_X59_Y48_N1
\pro|R4|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(3),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(3));

-- Location: LCCOMB_X58_Y47_N2
\pro|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux0~1_combout\ = (\pro|cu|M_select\(0)) # ((!\pro|cu|M_select\(1) & \pro|cu|M_select\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|M_select\(1),
	datac => \pro|cu|M_select\(2),
	datad => \pro|cu|M_select\(0),
	combout => \pro|mux|Mux0~1_combout\);

-- Location: LCCOMB_X59_Y48_N0
\pro|mux|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux12~2_combout\ = (\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux12~1_combout\) # ((!\pro|mux|Mux0~1_combout\)))) # (!\pro|mux|Mux0~2_combout\ & (((\pro|R4|d\(3) & \pro|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux12~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(3),
	datad => \pro|mux|Mux0~1_combout\,
	combout => \pro|mux|Mux12~2_combout\);

-- Location: LCCOMB_X59_Y48_N30
\pro|mux|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux12~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux12~2_combout\ & (\pro|AR|d\(3))) # (!\pro|mux|Mux12~2_combout\ & ((\pro|R2|d\(3)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(3),
	datab => \pro|mux|Mux0~0_combout\,
	datac => \pro|R2|d\(3),
	datad => \pro|mux|Mux12~2_combout\,
	combout => \pro|mux|Mux12~3_combout\);

-- Location: LCCOMB_X59_Y48_N18
\pro|mux|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux12~4_combout\ = (\pro|mux|Mux8~5_combout\ & ((\pro|mux|Mux8~6_combout\ & ((\Pram|memory_rtl_1|auto_generated|ram_block1a3\))) # (!\pro|mux|Mux8~6_combout\ & (\pro|mux|Mux12~3_combout\)))) # (!\pro|mux|Mux8~5_combout\ & 
-- (!\pro|mux|Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~5_combout\,
	datab => \pro|mux|Mux8~6_combout\,
	datac => \pro|mux|Mux12~3_combout\,
	datad => \Pram|memory_rtl_1|auto_generated|ram_block1a3\,
	combout => \pro|mux|Mux12~4_combout\);

-- Location: LCCOMB_X54_Y47_N24
\re|Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~6_combout\ = (\re|state\(2) & (!\re|state\(1) & (!\re|state\(0) & !\re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(3),
	combout => \re|Decoder1~6_combout\);

-- Location: LCCOMB_X55_Y47_N2
\re|character[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[3]~5_combout\ = (\re|flagStart~q\ & ((\re|Decoder1~6_combout\ & (\rx~input_o\)) # (!\re|Decoder1~6_combout\ & ((\re|character\(3)))))) # (!\re|flagStart~q\ & (((\re|character\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datab => \rx~input_o\,
	datac => \re|character\(3),
	datad => \re|Decoder1~6_combout\,
	combout => \re|character[3]~5_combout\);

-- Location: FF_X55_Y47_N3
\re|character[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(3));

-- Location: LCCOMB_X59_Y47_N12
\din[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \din[3]~5_combout\ = (\staten.pros~q\ & (\pro|AC|d\(3))) # (!\staten.pros~q\ & ((\re|character\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AC|d\(3),
	datad => \re|character\(3),
	combout => \din[3]~5_combout\);

-- Location: M9K_X51_Y60_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y58_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y48_N26
\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~30_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~30_combout\);

-- Location: M9K_X51_Y61_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y57_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y48_N20
\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~31_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a27~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a19~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~31_combout\);

-- Location: LCCOMB_X56_Y48_N14
\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~32_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~30_combout\) # 
-- (\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~30_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~31_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~32_combout\);

-- Location: M9K_X78_Y50_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y54_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X56_Y48_N16
\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~33_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a43~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a35~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a35~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a43~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~33_combout\);

-- Location: LCCOMB_X56_Y48_N18
\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~35_combout\ = (\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~32_combout\) # ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~34_combout\) # (\Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~34_combout\,
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~32_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~33_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~35_combout\);

-- Location: LCCOMB_X59_Y48_N20
\pro|mux|Mux12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux12~combout\ = (\pro|mux|Mux12~4_combout\ & ((\pro|IR|d\(3)) # ((\pro|mux|Mux8~0_combout\)))) # (!\pro|mux|Mux12~4_combout\ & (((!\pro|mux|Mux8~0_combout\ & \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(3),
	datab => \pro|mux|Mux12~4_combout\,
	datac => \pro|mux|Mux8~0_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[3]~35_combout\,
	combout => \pro|mux|Mux12~combout\);

-- Location: LCCOMB_X59_Y49_N26
\pro|alu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux3~0_combout\ = (\pro|alu|Mux11~2_combout\ & (!\pro|alu|Mux0~0_combout\)) # (!\pro|alu|Mux11~2_combout\ & ((\pro|alu|Mux0~0_combout\ & ((\pro|mux|Mux12~combout\))) # (!\pro|alu|Mux0~0_combout\ & (\pro|AC|d\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Mux0~0_combout\,
	datac => \pro|AC|d\(2),
	datad => \pro|mux|Mux12~combout\,
	combout => \pro|alu|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y46_N16
\pro|alu|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux3~1_combout\ = (\pro|alu|Mux11~2_combout\ & ((\pro|alu|Mux3~0_combout\ & (\pro|alu|Add1~6_combout\)) # (!\pro|alu|Mux3~0_combout\ & ((\pro|alu|Add2~6_combout\))))) # (!\pro|alu|Mux11~2_combout\ & (((\pro|alu|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Add1~6_combout\,
	datac => \pro|alu|Mux3~0_combout\,
	datad => \pro|alu|Add2~6_combout\,
	combout => \pro|alu|Mux3~1_combout\);

-- Location: LCCOMB_X59_Y46_N2
\pro|alu|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux3~2_combout\ = (\pro|cu|operation\(1) & ((\pro|cu|operation\(0) & (\pro|alu|Mux3~1_combout\)) # (!\pro|cu|operation\(0) & ((\pro|alu|Add0~6_combout\))))) # (!\pro|cu|operation\(1) & (((\pro|alu|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(1),
	datab => \pro|cu|operation\(0),
	datac => \pro|alu|Mux3~1_combout\,
	datad => \pro|alu|Add0~6_combout\,
	combout => \pro|alu|Mux3~2_combout\);

-- Location: LCCOMB_X59_Y46_N20
\pro|alu|data[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(3) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|data\(3)))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux16~0clkctrl_outclk\,
	datab => \pro|alu|Mux3~2_combout\,
	datad => \pro|alu|data\(3),
	combout => \pro|alu|data\(3));

-- Location: FF_X60_Y47_N23
\pro|PC|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|PC|d[3]~14_combout\,
	asdata => \pro|alu|data\(3),
	sclr => \pro|cu|resetpc~q\,
	sload => \pro|decoder|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|PC|d\(3));

-- Location: FF_X56_Y48_N13
\pro|IR|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Pram|memory_rtl_1|auto_generated|ram_block1a4\,
	sload => VCC,
	ena => \pro|decoder|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|IR|d\(4));

-- Location: FF_X58_Y48_N17
\pro|cu|M_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|M_select[0]~0_combout\,
	asdata => \pro|IR|d\(4),
	sload => \pro|cu|always1~0_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|M_select\(0));

-- Location: LCCOMB_X58_Y49_N18
\pro|mux|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux8~0_combout\ = (\pro|cu|M_select\(2)) # ((\pro|cu|M_select\(0)) # (!\pro|cu|M_select\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|M_select\(2),
	datac => \pro|cu|M_select\(3),
	datad => \pro|cu|M_select\(0),
	combout => \pro|mux|Mux8~0_combout\);

-- Location: LCCOMB_X54_Y47_N10
\re|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~1_combout\ = (!\re|state\(2) & (\re|state\(1) & (!\re|state\(0) & !\re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(3),
	combout => \re|Decoder1~1_combout\);

-- Location: LCCOMB_X55_Y47_N8
\re|character[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[1]~0_combout\ = (\re|flagStart~q\ & ((\re|Decoder1~1_combout\ & (\rx~input_o\)) # (!\re|Decoder1~1_combout\ & ((\re|character\(1)))))) # (!\re|flagStart~q\ & (((\re|character\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datab => \rx~input_o\,
	datac => \re|character\(1),
	datad => \re|Decoder1~1_combout\,
	combout => \re|character[1]~0_combout\);

-- Location: FF_X55_Y47_N9
\re|character[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(1));

-- Location: LCCOMB_X59_Y47_N24
\din[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \din[1]~0_combout\ = (\staten.pros~q\ & (\pro|AC|d\(1))) # (!\staten.pros~q\ & ((\re|character\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \staten.pros~q\,
	datac => \pro|AC|d\(1),
	datad => \re|character\(1),
	combout => \din[1]~0_combout\);

-- Location: M9K_X64_Y54_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y51_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N0
\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~3_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a41~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a33~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a41~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a33~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~3_combout\);

-- Location: M9K_X64_Y58_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y57_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N26
\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~1_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a25~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a17~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~1_combout\);

-- Location: M9K_X78_Y47_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y43_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X63_Y48_N16
\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~0_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~0_combout\);

-- Location: LCCOMB_X63_Y48_N30
\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~2_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~1_combout\) # 
-- (\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~1_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~0_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~2_combout\);

-- Location: LCCOMB_X63_Y48_N8
\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~5_combout\ = (\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~2_combout\) # ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~4_combout\) # (\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~4_combout\,
	datab => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~3_combout\,
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~2_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~5_combout\);

-- Location: FF_X59_Y48_N15
\pro|R2|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(1),
	sload => VCC,
	ena => \pro|decoder|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R2|d\(1));

-- Location: FF_X59_Y48_N17
\pro|R4|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(1),
	sload => VCC,
	ena => \pro|decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R4|d\(1));

-- Location: FF_X58_Y47_N11
\pro|R5|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(1),
	sload => VCC,
	ena => \pro|decoder|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R5|d\(1));

-- Location: FF_X59_Y46_N31
\pro|R1|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|data\(1),
	ena => \pro|decoder|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R1|d\(1));

-- Location: FF_X57_Y46_N27
\pro|R3|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pro|alu|data\(1),
	sload => VCC,
	ena => \pro|decoder|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|R3|d\(1));

-- Location: LCCOMB_X57_Y46_N26
\pro|mux|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux14~0_combout\ = (\pro|cu|M_select\(1) & (((\pro|R3|d\(1)) # (\pro|cu|M_select\(2))))) # (!\pro|cu|M_select\(1) & (\pro|R1|d\(1) & ((!\pro|cu|M_select\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(1),
	datab => \pro|R1|d\(1),
	datac => \pro|R3|d\(1),
	datad => \pro|cu|M_select\(2),
	combout => \pro|mux|Mux14~0_combout\);

-- Location: LCCOMB_X58_Y47_N10
\pro|mux|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux14~1_combout\ = (\pro|cu|M_select\(2) & ((\pro|mux|Mux14~0_combout\ & (\pro|AC|d\(1))) # (!\pro|mux|Mux14~0_combout\ & ((\pro|R5|d\(1)))))) # (!\pro|cu|M_select\(2) & (((\pro|mux|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|M_select\(2),
	datab => \pro|AC|d\(1),
	datac => \pro|R5|d\(1),
	datad => \pro|mux|Mux14~0_combout\,
	combout => \pro|mux|Mux14~1_combout\);

-- Location: LCCOMB_X59_Y48_N16
\pro|mux|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux14~2_combout\ = (\pro|mux|Mux0~1_combout\ & ((\pro|mux|Mux0~2_combout\ & ((\pro|mux|Mux14~1_combout\))) # (!\pro|mux|Mux0~2_combout\ & (\pro|R4|d\(1))))) # (!\pro|mux|Mux0~1_combout\ & (\pro|mux|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux0~1_combout\,
	datab => \pro|mux|Mux0~2_combout\,
	datac => \pro|R4|d\(1),
	datad => \pro|mux|Mux14~1_combout\,
	combout => \pro|mux|Mux14~2_combout\);

-- Location: LCCOMB_X59_Y48_N14
\pro|mux|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux14~3_combout\ = (\pro|mux|Mux0~0_combout\ & ((\pro|mux|Mux14~2_combout\ & (\pro|AR|d\(1))) # (!\pro|mux|Mux14~2_combout\ & ((\pro|R2|d\(1)))))) # (!\pro|mux|Mux0~0_combout\ & (((\pro|mux|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AR|d\(1),
	datab => \pro|mux|Mux0~0_combout\,
	datac => \pro|R2|d\(1),
	datad => \pro|mux|Mux14~2_combout\,
	combout => \pro|mux|Mux14~3_combout\);

-- Location: LCCOMB_X63_Y48_N18
\pro|mux|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux14~4_combout\ = (\pro|mux|Mux8~6_combout\ & (\Pram|memory_rtl_1|auto_generated|ram_block1a1\ & (\pro|mux|Mux8~5_combout\))) # (!\pro|mux|Mux8~6_combout\ & (((\pro|mux|Mux14~3_combout\) # (!\pro|mux|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|mux|Mux8~6_combout\,
	datab => \Pram|memory_rtl_1|auto_generated|ram_block1a1\,
	datac => \pro|mux|Mux8~5_combout\,
	datad => \pro|mux|Mux14~3_combout\,
	combout => \pro|mux|Mux14~4_combout\);

-- Location: LCCOMB_X63_Y48_N12
\pro|mux|Mux14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|mux|Mux14~combout\ = (\pro|mux|Mux8~0_combout\ & (((\pro|mux|Mux14~4_combout\)))) # (!\pro|mux|Mux8~0_combout\ & ((\pro|mux|Mux14~4_combout\ & (\pro|IR|d\(1))) # (!\pro|mux|Mux14~4_combout\ & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(1),
	datab => \pro|mux|Mux8~0_combout\,
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~5_combout\,
	datad => \pro|mux|Mux14~4_combout\,
	combout => \pro|mux|Mux14~combout\);

-- Location: LCCOMB_X59_Y49_N2
\pro|alu|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux1~0_combout\ = (\pro|alu|Mux11~2_combout\ & (!\pro|alu|Mux0~0_combout\)) # (!\pro|alu|Mux11~2_combout\ & ((\pro|alu|Mux0~0_combout\ & ((\pro|mux|Mux14~combout\))) # (!\pro|alu|Mux0~0_combout\ & (\pro|AC|d\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Mux0~0_combout\,
	datac => \pro|AC|d\(0),
	datad => \pro|mux|Mux14~combout\,
	combout => \pro|alu|Mux1~0_combout\);

-- Location: LCCOMB_X59_Y46_N4
\pro|alu|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux1~1_combout\ = (\pro|alu|Mux11~2_combout\ & ((\pro|alu|Mux1~0_combout\ & (\pro|alu|Add1~2_combout\)) # (!\pro|alu|Mux1~0_combout\ & ((\pro|alu|Add2~2_combout\))))) # (!\pro|alu|Mux11~2_combout\ & (((\pro|alu|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Mux11~2_combout\,
	datab => \pro|alu|Add1~2_combout\,
	datac => \pro|alu|Add2~2_combout\,
	datad => \pro|alu|Mux1~0_combout\,
	combout => \pro|alu|Mux1~1_combout\);

-- Location: LCCOMB_X59_Y46_N6
\pro|alu|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux1~2_combout\ = (\pro|cu|operation\(1) & ((\pro|cu|operation\(0) & (\pro|alu|Mux1~1_combout\)) # (!\pro|cu|operation\(0) & ((\pro|alu|Add0~2_combout\))))) # (!\pro|cu|operation\(1) & (((\pro|alu|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(1),
	datab => \pro|cu|operation\(0),
	datac => \pro|alu|Mux1~1_combout\,
	datad => \pro|alu|Add0~2_combout\,
	combout => \pro|alu|Mux1~2_combout\);

-- Location: LCCOMB_X59_Y46_N30
\pro|alu|data[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(1) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|data\(1))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|data\(1),
	datab => \pro|alu|Mux1~2_combout\,
	datad => \pro|alu|Mux16~0clkctrl_outclk\,
	combout => \pro|alu|data\(1));

-- Location: FF_X60_Y47_N19
\pro|PC|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|PC|d[1]~10_combout\,
	asdata => \pro|alu|data\(1),
	sclr => \pro|cu|resetpc~q\,
	sload => \pro|decoder|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|PC|d\(1));

-- Location: FF_X57_Y48_N1
\pro|IR|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Pram|memory_rtl_1|auto_generated|ram_block1a7\,
	sload => VCC,
	ena => \pro|decoder|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|IR|d\(7));

-- Location: FF_X60_Y48_N17
\pro|cu|D_select[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|D_select[3]~2_combout\,
	asdata => \pro|IR|d\(7),
	sload => \pro|cu|Equal4~1_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|D_select\(3));

-- Location: LCCOMB_X60_Y48_N2
\pro|decoder|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|decoder|Equal5~0_combout\ = (\pro|cu|D_select\(0) & (!\pro|cu|D_select\(3) & (\pro|cu|D_select\(2) & \pro|cu|D_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|D_select\(0),
	datab => \pro|cu|D_select\(3),
	datac => \pro|cu|D_select\(2),
	datad => \pro|cu|D_select\(1),
	combout => \pro|decoder|Equal5~0_combout\);

-- Location: FF_X58_Y50_N1
\pro|AC|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|AC|d[0]~16_combout\,
	asdata => \pro|alu|data\(0),
	sclr => \pro|cu|resetac~q\,
	sload => \pro|decoder|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|AC|d\(0));

-- Location: LCCOMB_X59_Y50_N26
\pro|alu|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux0~2_combout\ = (\pro|cu|operation\(0) & (\pro|alu|Add1~0_combout\)) # (!\pro|cu|operation\(0) & ((\pro|alu|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|operation\(0),
	datac => \pro|alu|Add1~0_combout\,
	datad => \pro|alu|Add0~0_combout\,
	combout => \pro|alu|Mux0~2_combout\);

-- Location: LCCOMB_X59_Y50_N6
\pro|alu|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux0~1_combout\ = (\pro|alu|Mux0~0_combout\ & ((\pro|cu|operation\(2) & ((\pro|alu|Add2~0_combout\))) # (!\pro|cu|operation\(2) & (\pro|mux|Mux15~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(2),
	datab => \pro|mux|Mux15~combout\,
	datac => \pro|alu|Add2~0_combout\,
	datad => \pro|alu|Mux0~0_combout\,
	combout => \pro|alu|Mux0~1_combout\);

-- Location: LCCOMB_X59_Y50_N10
\pro|alu|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Mux0~3_combout\ = (\pro|alu|Mux0~1_combout\) # ((!\pro|cu|operation\(2) & (\pro|alu|Mux0~2_combout\ & \pro|cu|operation\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|operation\(2),
	datab => \pro|alu|Mux0~2_combout\,
	datac => \pro|alu|Mux0~1_combout\,
	datad => \pro|cu|operation\(1),
	combout => \pro|alu|Mux0~3_combout\);

-- Location: LCCOMB_X59_Y50_N16
\pro|alu|data[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|data\(0) = (GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & (\pro|alu|data\(0))) # (!GLOBAL(\pro|alu|Mux16~0clkctrl_outclk\) & ((\pro|alu|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|data\(0),
	datac => \pro|alu|Mux0~3_combout\,
	datad => \pro|alu|Mux16~0clkctrl_outclk\,
	combout => \pro|alu|data\(0));

-- Location: FF_X60_Y47_N17
\pro|PC|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|PC|d[0]~8_combout\,
	asdata => \pro|alu|data\(0),
	sclr => \pro|cu|resetpc~q\,
	sload => \pro|decoder|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|PC|d\(0));

-- Location: FF_X62_Y48_N1
\pro|IR|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Pram|memory_rtl_1|auto_generated|ram_block1a3\,
	sload => VCC,
	ena => \pro|decoder|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|IR|d\(3));

-- Location: FF_X62_Y48_N9
\pro|IR|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Pram|memory_rtl_1|auto_generated|ram_block1a1\,
	sload => VCC,
	ena => \pro|decoder|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|IR|d\(1));

-- Location: LCCOMB_X62_Y48_N4
\pro|cu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Mux0~0_combout\ = (\pro|IR|d\(2) & (!\pro|IR|d\(3) & ((\pro|IR|d\(0)) # (\pro|IR|d\(1))))) # (!\pro|IR|d\(2) & (\pro|IR|d\(3) & ((\pro|IR|d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(2),
	datab => \pro|IR|d\(3),
	datac => \pro|IR|d\(0),
	datad => \pro|IR|d\(1),
	combout => \pro|cu|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y48_N26
\pro|cu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Mux2~0_combout\ = (\pro|IR|d\(2) & (\pro|IR|d\(3) & (\pro|IR|d\(1) & !\pro|IR|d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(2),
	datab => \pro|IR|d\(3),
	datac => \pro|IR|d\(1),
	datad => \pro|IR|d\(0),
	combout => \pro|cu|Mux2~0_combout\);

-- Location: CLKCTRL_G14
\pro|cu|Mux2~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pro|cu|Mux2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pro|cu|Mux2~0clkctrl_outclk\);

-- Location: LCCOMB_X62_Y48_N16
\pro|cu|mins[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|mins\(3) = (GLOBAL(\pro|cu|Mux2~0clkctrl_outclk\) & (\pro|cu|mins\(3))) # (!GLOBAL(\pro|cu|Mux2~0clkctrl_outclk\) & ((\pro|cu|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|mins\(3),
	datac => \pro|cu|Mux0~0_combout\,
	datad => \pro|cu|Mux2~0clkctrl_outclk\,
	combout => \pro|cu|mins\(3));

-- Location: LCCOMB_X62_Y48_N22
\pro|cu|next_state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|next_state~3_combout\ = (\pro|cu|musec~4_combout\ & (((\pro|cu|Equal0~1_combout\ & \pro|cu|mins\(3))) # (!\pro|cu|next_state\(4)))) # (!\pro|cu|musec~4_combout\ & (((\pro|cu|Equal0~1_combout\ & \pro|cu|mins\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|musec~4_combout\,
	datab => \pro|cu|next_state\(4),
	datac => \pro|cu|Equal0~1_combout\,
	datad => \pro|cu|mins\(3),
	combout => \pro|cu|next_state~3_combout\);

-- Location: FF_X62_Y48_N23
\pro|cu|next_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|next_state~3_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|next_state\(3));

-- Location: LCCOMB_X58_Y48_N22
\pro|cu|musec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~0_combout\ = (\pro|cu|next_state\(2) & ((\pro|cu|next_state\(0) & (!\pro|cu|next_state\(1) & !\pro|cu|next_state\(4))) # (!\pro|cu|next_state\(0) & (\pro|cu|next_state\(1) & \pro|cu|next_state\(4))))) # (!\pro|cu|next_state\(2) & 
-- (\pro|cu|next_state\(1) & (\pro|cu|next_state\(0) $ (!\pro|cu|next_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(2),
	datab => \pro|cu|next_state\(0),
	datac => \pro|cu|next_state\(1),
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|musec~0_combout\);

-- Location: LCCOMB_X58_Y48_N12
\pro|cu|mins[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|mins\(2) = (GLOBAL(\pro|cu|Mux2~0clkctrl_outclk\) & ((\pro|cu|mins\(2)))) # (!GLOBAL(\pro|cu|Mux2~0clkctrl_outclk\) & (\pro|cu|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|Mux1~0_combout\,
	datac => \pro|cu|mins\(2),
	datad => \pro|cu|Mux2~0clkctrl_outclk\,
	combout => \pro|cu|mins\(2));

-- Location: LCCOMB_X58_Y48_N24
\pro|cu|next_state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|next_state~1_combout\ = (\pro|cu|Equal0~1_combout\ & (((\pro|cu|mins\(2))))) # (!\pro|cu|Equal0~1_combout\ & (!\pro|cu|next_state\(3) & (\pro|cu|musec~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|Equal0~1_combout\,
	datab => \pro|cu|next_state\(3),
	datac => \pro|cu|musec~0_combout\,
	datad => \pro|cu|mins\(2),
	combout => \pro|cu|next_state~1_combout\);

-- Location: FF_X58_Y48_N25
\pro|cu|next_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|next_state~1_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|next_state\(2));

-- Location: LCCOMB_X60_Y49_N22
\pro|cu|musec~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~2_combout\ = (!\pro|cu|next_state\(3) & (\pro|cu|next_state\(1) & (!\pro|cu|next_state\(0) & \pro|cu|next_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(3),
	datab => \pro|cu|next_state\(1),
	datac => \pro|cu|next_state\(0),
	datad => \pro|cu|next_state\(2),
	combout => \pro|cu|musec~2_combout\);

-- Location: LCCOMB_X61_Y48_N24
\pro|cu|next_state[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|next_state[1]~0_combout\ = (\pro|cu|next_state\(4) & ((\pro|cu|musec~2_combout\))) # (!\pro|cu|next_state\(4) & (\pro|cu|musec~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|musec~1_combout\,
	datab => \pro|cu|musec~2_combout\,
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|next_state[1]~0_combout\);

-- Location: LCCOMB_X57_Y46_N0
\pro|alu|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Equal0~2_combout\ = (!\pro|AC|d\(10) & (!\pro|AC|d\(11) & (!\pro|AC|d\(9) & !\pro|AC|d\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(10),
	datab => \pro|AC|d\(11),
	datac => \pro|AC|d\(9),
	datad => \pro|AC|d\(8),
	combout => \pro|alu|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y49_N26
\pro|alu|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Equal0~1_combout\ = (!\pro|AC|d\(4) & (!\pro|AC|d\(6) & (!\pro|AC|d\(7) & !\pro|AC|d\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(4),
	datab => \pro|AC|d\(6),
	datac => \pro|AC|d\(7),
	datad => \pro|AC|d\(5),
	combout => \pro|alu|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y46_N10
\pro|alu|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Equal0~3_combout\ = (!\pro|AC|d\(14) & (!\pro|AC|d\(15) & (!\pro|AC|d\(13) & !\pro|AC|d\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(14),
	datab => \pro|AC|d\(15),
	datac => \pro|AC|d\(13),
	datad => \pro|AC|d\(12),
	combout => \pro|alu|Equal0~3_combout\);

-- Location: LCCOMB_X61_Y48_N30
\pro|alu|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|alu|Equal0~4_combout\ = (\pro|alu|Equal0~0_combout\ & (\pro|alu|Equal0~2_combout\ & (\pro|alu|Equal0~1_combout\ & \pro|alu|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|alu|Equal0~0_combout\,
	datab => \pro|alu|Equal0~2_combout\,
	datac => \pro|alu|Equal0~1_combout\,
	datad => \pro|alu|Equal0~3_combout\,
	combout => \pro|alu|Equal0~4_combout\);

-- Location: FF_X61_Y48_N31
\pro|alu|z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pro|alu|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|alu|z~q\);

-- Location: FF_X62_Y48_N11
\pro|IR|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Pram|memory_rtl_1|auto_generated|ram_block1a2\,
	sload => VCC,
	ena => \pro|decoder|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|IR|d\(2));

-- Location: LCCOMB_X62_Y48_N10
\pro|cu|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Mux3~1_combout\ = ((\pro|IR|d\(3)) # ((\pro|IR|d\(1)) # (!\pro|IR|d\(2)))) # (!\pro|IR|d\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(0),
	datab => \pro|IR|d\(3),
	datac => \pro|IR|d\(2),
	datad => \pro|IR|d\(1),
	combout => \pro|cu|Mux3~1_combout\);

-- Location: LCCOMB_X62_Y48_N0
\pro|cu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Mux3~0_combout\ = (\pro|IR|d\(0) & ((\pro|IR|d\(2) & (\pro|IR|d\(3) & \pro|IR|d\(1))) # (!\pro|IR|d\(2) & ((\pro|IR|d\(3)) # (\pro|IR|d\(1)))))) # (!\pro|IR|d\(0) & ((\pro|IR|d\(3) & (!\pro|IR|d\(2) & \pro|IR|d\(1))) # (!\pro|IR|d\(3) & 
-- ((!\pro|IR|d\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(2),
	datab => \pro|IR|d\(0),
	datac => \pro|IR|d\(3),
	datad => \pro|IR|d\(1),
	combout => \pro|cu|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y48_N8
\pro|cu|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Mux3~2_combout\ = (\pro|cu|Mux3~0_combout\) # ((!\pro|alu|z~q\ & !\pro|cu|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|alu|z~q\,
	datac => \pro|cu|Mux3~1_combout\,
	datad => \pro|cu|Mux3~0_combout\,
	combout => \pro|cu|Mux3~2_combout\);

-- Location: LCCOMB_X61_Y48_N4
\pro|cu|mins[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|mins\(1) = (GLOBAL(\pro|cu|Mux2~0clkctrl_outclk\) & (\pro|cu|mins\(1))) # (!GLOBAL(\pro|cu|Mux2~0clkctrl_outclk\) & ((\pro|cu|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|mins\(1),
	datac => \pro|cu|Mux3~2_combout\,
	datad => \pro|cu|Mux2~0clkctrl_outclk\,
	combout => \pro|cu|mins\(1));

-- Location: FF_X61_Y48_N25
\pro|cu|next_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|next_state[1]~0_combout\,
	asdata => \pro|cu|mins\(1),
	sload => \pro|cu|Equal0~1_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|next_state\(1));

-- Location: LCCOMB_X62_Y48_N20
\pro|cu|musec~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|musec~3_combout\ = (\pro|cu|next_state\(1) & ((\pro|cu|next_state\(0) & (\pro|cu|next_state\(4) & !\pro|cu|next_state\(2))) # (!\pro|cu|next_state\(0) & (\pro|cu|next_state\(4) $ (!\pro|cu|next_state\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(0),
	datab => \pro|cu|next_state\(4),
	datac => \pro|cu|next_state\(1),
	datad => \pro|cu|next_state\(2),
	combout => \pro|cu|musec~3_combout\);

-- Location: LCCOMB_X62_Y48_N14
\pro|cu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Mux5~0_combout\ = (\pro|IR|d\(2) & ((\pro|IR|d\(0) & (\pro|IR|d\(3))) # (!\pro|IR|d\(0) & ((!\pro|IR|d\(1)))))) # (!\pro|IR|d\(2) & (\pro|IR|d\(3) & ((!\pro|IR|d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(3),
	datab => \pro|IR|d\(0),
	datac => \pro|IR|d\(2),
	datad => \pro|IR|d\(1),
	combout => \pro|cu|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y48_N2
\pro|cu|mins[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|mins\(4) = (GLOBAL(\pro|cu|Mux2~0clkctrl_outclk\) & (\pro|cu|mins\(4))) # (!GLOBAL(\pro|cu|Mux2~0clkctrl_outclk\) & ((\pro|cu|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|mins\(4),
	datac => \pro|cu|Mux5~0_combout\,
	datad => \pro|cu|Mux2~0clkctrl_outclk\,
	combout => \pro|cu|mins\(4));

-- Location: LCCOMB_X62_Y48_N18
\pro|cu|next_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|next_state~2_combout\ = (\pro|cu|Equal0~1_combout\ & (((\pro|cu|mins\(4))))) # (!\pro|cu|Equal0~1_combout\ & (!\pro|cu|next_state\(3) & (\pro|cu|musec~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(3),
	datab => \pro|cu|musec~3_combout\,
	datac => \pro|cu|Equal0~1_combout\,
	datad => \pro|cu|mins\(4),
	combout => \pro|cu|next_state~2_combout\);

-- Location: FF_X62_Y48_N19
\pro|cu|next_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|next_state~2_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|next_state\(4));

-- Location: LCCOMB_X62_Y48_N8
\pro|cu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Mux4~0_combout\ = (\pro|IR|d\(0) & ((\pro|IR|d\(1) & ((!\pro|IR|d\(3)) # (!\pro|IR|d\(2)))) # (!\pro|IR|d\(1) & ((\pro|IR|d\(3)))))) # (!\pro|IR|d\(0) & (!\pro|IR|d\(2) & ((!\pro|IR|d\(3)) # (!\pro|IR|d\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(2),
	datab => \pro|IR|d\(0),
	datac => \pro|IR|d\(1),
	datad => \pro|IR|d\(3),
	combout => \pro|cu|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y48_N26
\pro|cu|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Mux4~1_combout\ = (\pro|cu|Mux4~0_combout\) # ((\pro|IR|d\(2) & (\pro|alu|z~q\ & !\pro|cu|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|IR|d\(2),
	datab => \pro|alu|z~q\,
	datac => \pro|cu|Mux3~1_combout\,
	datad => \pro|cu|Mux4~0_combout\,
	combout => \pro|cu|Mux4~1_combout\);

-- Location: LCCOMB_X61_Y48_N6
\pro|cu|mins[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|mins\(0) = (GLOBAL(\pro|cu|Mux2~0clkctrl_outclk\) & (\pro|cu|mins\(0))) # (!GLOBAL(\pro|cu|Mux2~0clkctrl_outclk\) & ((\pro|cu|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|mins\(0),
	datac => \pro|cu|Mux4~1_combout\,
	datad => \pro|cu|Mux2~0clkctrl_outclk\,
	combout => \pro|cu|mins\(0));

-- Location: LCCOMB_X61_Y48_N2
\pro|cu|next_state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|next_state~4_combout\ = (\pro|cu|Equal0~1_combout\ & ((\pro|cu|mins\(0)))) # (!\pro|cu|Equal0~1_combout\ & (\pro|cu|next_state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(3),
	datab => \pro|cu|Equal0~1_combout\,
	datad => \pro|cu|mins\(0),
	combout => \pro|cu|next_state~4_combout\);

-- Location: LCCOMB_X61_Y48_N14
\pro|cu|next_state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|next_state~6_combout\ = (\pro|cu|Equal0~1_combout\ & (((\pro|cu|next_state~4_combout\)))) # (!\pro|cu|Equal0~1_combout\ & ((\pro|cu|next_state~4_combout\ & ((!\pro|cu|next_state\(4)))) # (!\pro|cu|next_state~4_combout\ & 
-- (!\pro|cu|next_state~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state~5_combout\,
	datab => \pro|cu|next_state\(4),
	datac => \pro|cu|Equal0~1_combout\,
	datad => \pro|cu|next_state~4_combout\,
	combout => \pro|cu|next_state~6_combout\);

-- Location: FF_X61_Y48_N15
\pro|cu|next_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|next_state~6_combout\,
	ena => \startp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|next_state\(0));

-- Location: LCCOMB_X61_Y48_N20
\pro|cu|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Equal0~0_combout\ = (\pro|cu|next_state\(4) & (\pro|cu|next_state\(1) & !\pro|cu|next_state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|next_state\(4),
	datac => \pro|cu|next_state\(1),
	datad => \pro|cu|next_state\(3),
	combout => \pro|cu|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y48_N0
\pro|cu|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|Equal0~1_combout\ = (\pro|cu|next_state\(0) & (\pro|cu|next_state\(2) & \pro|cu|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro|cu|next_state\(0),
	datac => \pro|cu|next_state\(2),
	datad => \pro|cu|Equal0~0_combout\,
	combout => \pro|cu|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y48_N10
\pro|cu|endp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|endp~0_combout\ = (!\pro|cu|next_state\(3) & (\pro|cu|next_state\(1) & (\startp~q\ & \pro|cu|next_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(3),
	datab => \pro|cu|next_state\(1),
	datac => \startp~q\,
	datad => \pro|cu|next_state\(4),
	combout => \pro|cu|endp~0_combout\);

-- Location: LCCOMB_X61_Y49_N26
\pro|cu|endp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pro|cu|endp~1_combout\ = (\pro|cu|endp~q\) # ((\pro|cu|next_state\(2) & (!\pro|cu|Equal0~1_combout\ & \pro|cu|endp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|cu|next_state\(2),
	datab => \pro|cu|Equal0~1_combout\,
	datac => \pro|cu|endp~q\,
	datad => \pro|cu|endp~0_combout\,
	combout => \pro|cu|endp~1_combout\);

-- Location: FF_X61_Y49_N27
\pro|cu|endp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \pro|cu|endp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pro|cu|endp~q\);

-- Location: LCCOMB_X52_Y49_N4
\tr|localclockOS|accumulator[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[0]~27_combout\ = !\tr|localclockOS|accumulator~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tr|localclockOS|accumulator~10_combout\,
	combout => \tr|localclockOS|accumulator[0]~27_combout\);

-- Location: FF_X52_Y49_N5
\tr|localclockOS|accumulator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(0));

-- Location: LCCOMB_X52_Y49_N14
\tr|localclockOS|accumulator~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator~10_combout\ = (\tr|localclockOS|accumulator\(0) & \tr|localclockOS|accumulator~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tr|localclockOS|accumulator\(0),
	datad => \tr|localclockOS|accumulator~9_combout\,
	combout => \tr|localclockOS|accumulator~10_combout\);

-- Location: LCCOMB_X52_Y49_N16
\tr|localclockOS|accumulator[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[1]~11_combout\ = (\tr|localclockOS|accumulator~8_combout\ & (\tr|localclockOS|accumulator~10_combout\ $ (VCC))) # (!\tr|localclockOS|accumulator~8_combout\ & (\tr|localclockOS|accumulator~10_combout\ & VCC))
-- \tr|localclockOS|accumulator[1]~12\ = CARRY((\tr|localclockOS|accumulator~8_combout\ & \tr|localclockOS|accumulator~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator~8_combout\,
	datab => \tr|localclockOS|accumulator~10_combout\,
	datad => VCC,
	combout => \tr|localclockOS|accumulator[1]~11_combout\,
	cout => \tr|localclockOS|accumulator[1]~12\);

-- Location: LCCOMB_X52_Y49_N18
\tr|localclockOS|accumulator[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[2]~13_combout\ = (\tr|localclockOS|accumulator[1]~12\ & (((!\tr|localclockOS|accumulator~9_combout\)) # (!\tr|localclockOS|accumulator\(2)))) # (!\tr|localclockOS|accumulator[1]~12\ & (((\tr|localclockOS|accumulator\(2) & 
-- \tr|localclockOS|accumulator~9_combout\)) # (GND)))
-- \tr|localclockOS|accumulator[2]~14\ = CARRY(((!\tr|localclockOS|accumulator[1]~12\) # (!\tr|localclockOS|accumulator~9_combout\)) # (!\tr|localclockOS|accumulator\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(2),
	datab => \tr|localclockOS|accumulator~9_combout\,
	datad => VCC,
	cin => \tr|localclockOS|accumulator[1]~12\,
	combout => \tr|localclockOS|accumulator[2]~13_combout\,
	cout => \tr|localclockOS|accumulator[2]~14\);

-- Location: FF_X52_Y49_N19
\tr|localclockOS|accumulator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(2));

-- Location: FF_X52_Y49_N17
\tr|localclockOS|accumulator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(1));

-- Location: LCCOMB_X52_Y49_N0
\tr|localclockOS|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|Equal0~0_combout\ = ((\tr|localclockOS|accumulator\(2)) # ((\tr|localclockOS|accumulator\(1)) # (!\tr|localclockOS|accumulator\(0)))) # (!\tr|localclockOS|accumulator\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(3),
	datab => \tr|localclockOS|accumulator\(2),
	datac => \tr|localclockOS|accumulator\(0),
	datad => \tr|localclockOS|accumulator\(1),
	combout => \tr|localclockOS|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y49_N12
\tr|localclockOS|accumulator~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator~9_combout\ = (\tr|flag~q\ & ((\tr|localclockOS|Equal0~1_combout\) # ((\tr|localclockOS|Equal0~0_combout\) # (\tr|localclockOS|accumulator\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|Equal0~1_combout\,
	datab => \tr|localclockOS|Equal0~0_combout\,
	datac => \tr|localclockOS|accumulator\(8),
	datad => \tr|flag~q\,
	combout => \tr|localclockOS|accumulator~9_combout\);

-- Location: LCCOMB_X52_Y49_N20
\tr|localclockOS|accumulator[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[3]~15_combout\ = (\tr|localclockOS|accumulator[2]~14\ & (\tr|localclockOS|accumulator~9_combout\ & (\tr|localclockOS|accumulator\(3) & VCC))) # (!\tr|localclockOS|accumulator[2]~14\ & 
-- ((((\tr|localclockOS|accumulator~9_combout\ & \tr|localclockOS|accumulator\(3))))))
-- \tr|localclockOS|accumulator[3]~16\ = CARRY((\tr|localclockOS|accumulator~9_combout\ & (\tr|localclockOS|accumulator\(3) & !\tr|localclockOS|accumulator[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator~9_combout\,
	datab => \tr|localclockOS|accumulator\(3),
	datad => VCC,
	cin => \tr|localclockOS|accumulator[2]~14\,
	combout => \tr|localclockOS|accumulator[3]~15_combout\,
	cout => \tr|localclockOS|accumulator[3]~16\);

-- Location: FF_X52_Y49_N21
\tr|localclockOS|accumulator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(3));

-- Location: LCCOMB_X52_Y49_N22
\tr|localclockOS|accumulator[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[4]~17_combout\ = (\tr|localclockOS|accumulator[3]~16\ & (((!\tr|localclockOS|accumulator\(4))) # (!\tr|localclockOS|accumulator~9_combout\))) # (!\tr|localclockOS|accumulator[3]~16\ & (((\tr|localclockOS|accumulator~9_combout\ 
-- & \tr|localclockOS|accumulator\(4))) # (GND)))
-- \tr|localclockOS|accumulator[4]~18\ = CARRY(((!\tr|localclockOS|accumulator[3]~16\) # (!\tr|localclockOS|accumulator\(4))) # (!\tr|localclockOS|accumulator~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator~9_combout\,
	datab => \tr|localclockOS|accumulator\(4),
	datad => VCC,
	cin => \tr|localclockOS|accumulator[3]~16\,
	combout => \tr|localclockOS|accumulator[4]~17_combout\,
	cout => \tr|localclockOS|accumulator[4]~18\);

-- Location: FF_X52_Y49_N23
\tr|localclockOS|accumulator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(4));

-- Location: LCCOMB_X52_Y49_N24
\tr|localclockOS|accumulator[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[5]~19_combout\ = (\tr|localclockOS|accumulator[4]~18\ & (\tr|localclockOS|accumulator~9_combout\ & (\tr|localclockOS|accumulator\(5) & VCC))) # (!\tr|localclockOS|accumulator[4]~18\ & 
-- ((((\tr|localclockOS|accumulator~9_combout\ & \tr|localclockOS|accumulator\(5))))))
-- \tr|localclockOS|accumulator[5]~20\ = CARRY((\tr|localclockOS|accumulator~9_combout\ & (\tr|localclockOS|accumulator\(5) & !\tr|localclockOS|accumulator[4]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator~9_combout\,
	datab => \tr|localclockOS|accumulator\(5),
	datad => VCC,
	cin => \tr|localclockOS|accumulator[4]~18\,
	combout => \tr|localclockOS|accumulator[5]~19_combout\,
	cout => \tr|localclockOS|accumulator[5]~20\);

-- Location: FF_X52_Y49_N25
\tr|localclockOS|accumulator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(5));

-- Location: LCCOMB_X52_Y49_N26
\tr|localclockOS|accumulator[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[6]~21_combout\ = (\tr|localclockOS|accumulator[5]~20\ & (((!\tr|localclockOS|accumulator\(6))) # (!\tr|localclockOS|accumulator~9_combout\))) # (!\tr|localclockOS|accumulator[5]~20\ & (((\tr|localclockOS|accumulator~9_combout\ 
-- & \tr|localclockOS|accumulator\(6))) # (GND)))
-- \tr|localclockOS|accumulator[6]~22\ = CARRY(((!\tr|localclockOS|accumulator[5]~20\) # (!\tr|localclockOS|accumulator\(6))) # (!\tr|localclockOS|accumulator~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator~9_combout\,
	datab => \tr|localclockOS|accumulator\(6),
	datad => VCC,
	cin => \tr|localclockOS|accumulator[5]~20\,
	combout => \tr|localclockOS|accumulator[6]~21_combout\,
	cout => \tr|localclockOS|accumulator[6]~22\);

-- Location: FF_X52_Y49_N27
\tr|localclockOS|accumulator[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(6));

-- Location: LCCOMB_X52_Y49_N30
\tr|localclockOS|accumulator[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[8]~25_combout\ = \tr|localclockOS|accumulator[7]~24\ $ (((\tr|localclockOS|accumulator\(8) & \tr|localclockOS|accumulator~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tr|localclockOS|accumulator\(8),
	datad => \tr|localclockOS|accumulator~9_combout\,
	cin => \tr|localclockOS|accumulator[7]~24\,
	combout => \tr|localclockOS|accumulator[8]~25_combout\);

-- Location: FF_X52_Y49_N31
\tr|localclockOS|accumulator[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(8));

-- Location: LCCOMB_X52_Y49_N8
\tr|localclockOS|flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|flag~0_combout\ = \tr|localclockOS|flag~q\ $ (((!\tr|localclockOS|Equal0~1_combout\ & (!\tr|localclockOS|accumulator\(8) & !\tr|localclockOS|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|Equal0~1_combout\,
	datab => \tr|localclockOS|flag~q\,
	datac => \tr|localclockOS|accumulator\(8),
	datad => \tr|localclockOS|Equal0~0_combout\,
	combout => \tr|localclockOS|flag~0_combout\);

-- Location: FF_X52_Y49_N3
\tr|localclockOS|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \tr|localclockOS|flag~0_combout\,
	sclr => \tr|ALT_INV_flag~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|flag~q\);

-- Location: LCCOMB_X52_Y49_N2
\tr|transmeterClock\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|transmeterClock~combout\ = LCELL((\tr|flag~q\ & (\tr|localclockOS|flag~q\)) # (!\tr|flag~q\ & ((\clk~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tr|flag~q\,
	datac => \tr|localclockOS|flag~q\,
	datad => \clk~input_o\,
	combout => \tr|transmeterClock~combout\);

-- Location: CLKCTRL_G10
\tr|transmeterClock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tr|transmeterClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tr|transmeterClock~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y47_N28
\re|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~3_combout\ = (\re|state\(2) & (\re|state\(1) & (\re|state\(0) & !\re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(2),
	datab => \re|state\(1),
	datac => \re|state\(0),
	datad => \re|state\(3),
	combout => \re|Decoder1~3_combout\);

-- Location: LCCOMB_X55_Y47_N20
\re|character[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[6]~2_combout\ = (\re|flagStart~q\ & ((\re|Decoder1~3_combout\ & (\rx~input_o\)) # (!\re|Decoder1~3_combout\ & ((\re|character\(6)))))) # (!\re|flagStart~q\ & (((\re|character\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datab => \rx~input_o\,
	datac => \re|character\(6),
	datad => \re|Decoder1~3_combout\,
	combout => \re|character[6]~2_combout\);

-- Location: FF_X55_Y47_N21
\re|character[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(6));

-- Location: LCCOMB_X59_Y47_N6
\din[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \din[6]~2_combout\ = (\staten.pros~q\ & (\pro|AC|d\(6))) # (!\staten.pros~q\ & ((\re|character\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro|AC|d\(6),
	datab => \staten.pros~q\,
	datac => \re|character\(6),
	combout => \din[6]~2_combout\);

-- Location: M9K_X37_Y46_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode607w[3]~1_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y59_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a46\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode617w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y48_N2
\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~15_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a46~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a38~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a38~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a46~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~15_combout\);

-- Location: M9K_X64_Y60_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode587w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y53_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode597w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y48_N14
\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~13_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a30~portbdataout\))) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a22~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~13_combout\);

-- Location: M9K_X37_Y47_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode577w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y59_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y48_N20
\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~12_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~12_combout\);

-- Location: LCCOMB_X57_Y48_N8
\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~14_combout\ = (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~13_combout\) # 
-- (\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~13_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~12_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~14_combout\);

-- Location: M9K_X37_Y54_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a62\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode637w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y51_N0
\Dram|memory_rtl_0|auto_generated|ram_block1a54\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMemory:Dram|altsyncram:memory_rtl_0|altsyncram_m3e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \Dram|memory_rtl_0|auto_generated|decode2|w_anode627w[3]~0_combout\,
	ena1 => \read~0_combout\,
	portadatain => \Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\,
	portbaddr => \Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \Dram|memory_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y48_N12
\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~16_combout\ = (\Dram|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & (\Dram|memory_rtl_0|auto_generated|ram_block1a62~portbdataout\)) # 
-- (!\Dram|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\Dram|memory_rtl_0|auto_generated|ram_block1a54~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \Dram|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \Dram|memory_rtl_0|auto_generated|ram_block1a62~portbdataout\,
	datad => \Dram|memory_rtl_0|auto_generated|ram_block1a54~portbdataout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~16_combout\);

-- Location: LCCOMB_X57_Y48_N16
\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~17_combout\ = (\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~14_combout\) # ((\Dram|memory_rtl_0|auto_generated|address_reg_b\(2) & 
-- ((\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~15_combout\) # (\Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dram|memory_rtl_0|auto_generated|address_reg_b\(2),
	datab => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~15_combout\,
	datac => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~14_combout\,
	datad => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~16_combout\,
	combout => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~17_combout\);

-- Location: LCCOMB_X55_Y48_N14
\tr|data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|data[7]~0_combout\ = (!\tr|flag~q\ & \startt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|flag~q\,
	datac => \startt~q\,
	combout => \tr|data[7]~0_combout\);

-- Location: FF_X57_Y48_N17
\tr|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \Dram|memory_rtl_0|auto_generated|mux3|result_node[6]~17_combout\,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(6));

-- Location: FF_X63_Y48_N3
\tr|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \Dram|memory_rtl_0|auto_generated|mux3|result_node[0]~11_combout\,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(0));

-- Location: LCCOMB_X55_Y48_N24
\tr|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|Mux0~1_combout\ = (\tr|state\(1) & (((!\tr|state\(3) & \tr|data\(0))))) # (!\tr|state\(1) & ((\tr|data\(6)) # ((!\tr|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(1),
	datab => \tr|data\(6),
	datac => \tr|state\(3),
	datad => \tr|data\(0),
	combout => \tr|Mux0~1_combout\);

-- Location: LCCOMB_X53_Y48_N24
\tr|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|WideOr3~0_combout\ = (!\tr|state\(0) & ((\tr|state\(2) & ((!\tr|state\(3)))) # (!\tr|state\(2) & ((\tr|state\(1)) # (\tr|state\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(1),
	datab => \tr|state\(2),
	datac => \tr|state\(0),
	datad => \tr|state\(3),
	combout => \tr|WideOr3~0_combout\);

-- Location: FF_X53_Y48_N25
\tr|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \tr|WideOr3~0_combout\,
	asdata => VCC,
	sload => \tr|ALT_INV_flag~q\,
	ena => \tr|state[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|state\(0));

-- Location: FF_X63_Y48_N9
\tr|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \Dram|memory_rtl_0|auto_generated|mux3|result_node[1]~5_combout\,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(1));

-- Location: LCCOMB_X55_Y48_N12
\tr|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|Mux0~0_combout\ = (\tr|state\(1) & (\tr|state\(0) & \tr|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(1),
	datac => \tr|state\(0),
	datad => \tr|data\(1),
	combout => \tr|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y48_N6
\tr|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|Mux0~2_combout\ = (!\tr|state\(2) & ((\tr|Mux0~0_combout\) # ((!\tr|state\(0) & \tr|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(0),
	datab => \tr|Mux0~1_combout\,
	datac => \tr|state\(2),
	datad => \tr|Mux0~0_combout\,
	combout => \tr|Mux0~2_combout\);

-- Location: LCCOMB_X55_Y48_N8
\tr|dataBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|dataBit~0_combout\ = (\tr|flag~q\ & (!\tr|Mux0~6_combout\ & ((!\tr|Mux0~2_combout\)))) # (!\tr|flag~q\ & (((\tr|dataBit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|Mux0~6_combout\,
	datab => \tr|dataBit~q\,
	datac => \tr|flag~q\,
	datad => \tr|Mux0~2_combout\,
	combout => \tr|dataBit~0_combout\);

-- Location: LCCOMB_X55_Y48_N18
\tr|dataBit~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|dataBit~feeder_combout\ = \tr|dataBit~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tr|dataBit~0_combout\,
	combout => \tr|dataBit~feeder_combout\);

-- Location: FF_X55_Y48_N19
\tr|dataBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \tr|dataBit~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|dataBit~q\);

-- Location: IOIBUF_X115_Y17_N1
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);
END structure;


