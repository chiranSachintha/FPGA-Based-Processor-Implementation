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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "07/23/2017 19:42:07"

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

ENTITY 	uart IS
    PORT (
	clk : IN std_logic;
	Reset : IN std_logic;
	start : IN std_logic;
	led : OUT std_logic_vector(7 DOWNTO 0);
	rx : IN std_logic;
	tx : OUT std_logic;
	res : OUT std_logic;
	t : OUT std_logic
	);
END uart;

-- Design Ports Information
-- Reset	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- res	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- t	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
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
SIGNAL ww_Reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL ww_t : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \re|activeClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tr|transmeterClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a55~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a39~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a59~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a43~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a51~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a57~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a41~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a49~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \re|localclockOS|flag~q\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[2]~14_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[7]~24_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[1]~11_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[1]~12\ : std_logic;
SIGNAL \re|localclockOS|accumulator[2]~14_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[2]~15\ : std_logic;
SIGNAL \re|localclockOS|accumulator[3]~16_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[3]~17\ : std_logic;
SIGNAL \re|localclockOS|accumulator[4]~18_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[4]~19\ : std_logic;
SIGNAL \re|localclockOS|accumulator[5]~20_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[5]~21\ : std_logic;
SIGNAL \re|localclockOS|accumulator[6]~22_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[6]~23\ : std_logic;
SIGNAL \re|localclockOS|accumulator[7]~24_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[7]~25\ : std_logic;
SIGNAL \re|localclockOS|accumulator[8]~26_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \startr~0_combout\ : std_logic;
SIGNAL \mem|memory~4_combout\ : std_logic;
SIGNAL \mem|memory~9_combout\ : std_logic;
SIGNAL \mem|memory~11_combout\ : std_logic;
SIGNAL \mem|memory~12_combout\ : std_logic;
SIGNAL \mem|memory~13_combout\ : std_logic;
SIGNAL \mem|memory~14_combout\ : std_logic;
SIGNAL \mem|memory~15_combout\ : std_logic;
SIGNAL \mem|memory~32_combout\ : std_logic;
SIGNAL \mem|memory~33_combout\ : std_logic;
SIGNAL \mem|memory~34_combout\ : std_logic;
SIGNAL \mem|memory~35_combout\ : std_logic;
SIGNAL \mem|memory~36_combout\ : std_logic;
SIGNAL \mem|memory~37_combout\ : std_logic;
SIGNAL \mem|memory~38_combout\ : std_logic;
SIGNAL \mem|memory~53_combout\ : std_logic;
SIGNAL \mem|memory~54_combout\ : std_logic;
SIGNAL \mem|memory~55_combout\ : std_logic;
SIGNAL \mem|memory~56_combout\ : std_logic;
SIGNAL \mem|memory~57_combout\ : std_logic;
SIGNAL \mem|memory~58_combout\ : std_logic;
SIGNAL \mem|memory~59_combout\ : std_logic;
SIGNAL \re|activeClock~combout\ : std_logic;
SIGNAL \re|flagStart~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\ : std_logic;
SIGNAL \re|localclockOS|Equal0~0_combout\ : std_logic;
SIGNAL \re|localclockOS|Equal0~1_combout\ : std_logic;
SIGNAL \re|localclockOS|flag~0_combout\ : std_logic;
SIGNAL \re|filter~0_combout\ : std_logic;
SIGNAL \re|filter[1]~1_combout\ : std_logic;
SIGNAL \re|filter~2_combout\ : std_logic;
SIGNAL \re|Decoder1~1_combout\ : std_logic;
SIGNAL \re|Decoder1~2_combout\ : std_logic;
SIGNAL \re|Decoder1~3_combout\ : std_logic;
SIGNAL \re|Decoder1~4_combout\ : std_logic;
SIGNAL \re|character[3]~3_combout\ : std_logic;
SIGNAL \re|Decoder1~5_combout\ : std_logic;
SIGNAL \re|Decoder1~6_combout\ : std_logic;
SIGNAL \re|Decoder1~7_combout\ : std_logic;
SIGNAL \re|character[1]~6_combout\ : std_logic;
SIGNAL \re|Decoder1~8_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator~8_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator~9_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator~10_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator~13_combout\ : std_logic;
SIGNAL \re|localclockOS|accumulator[0]~28_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \re|activeClock~clkctrl_outclk\ : std_logic;
SIGNAL \count[13]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[39]~feeder_combout\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \res~output_o\ : std_logic;
SIGNAL \t~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \re|state~1_combout\ : std_logic;
SIGNAL \re|WideOr0~0_combout\ : std_logic;
SIGNAL \re|flagStart~1_combout\ : std_logic;
SIGNAL \re|flagStart~q\ : std_logic;
SIGNAL \re|WideOr2~0_combout\ : std_logic;
SIGNAL \re|state~0_combout\ : std_logic;
SIGNAL \re|WideOr1~0_combout\ : std_logic;
SIGNAL \re|Decoder1~0_combout\ : std_logic;
SIGNAL \re|dataReady~0_combout\ : std_logic;
SIGNAL \re|dataReady~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \countn[14]~feeder_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \staten.00~0_combout\ : std_logic;
SIGNAL \staten.00~q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \staten.trans~q\ : std_logic;
SIGNAL \countn[5]~0_combout\ : std_logic;
SIGNAL \led[0]~reg0feeder_combout\ : std_logic;
SIGNAL \led[0]~reg0_q\ : std_logic;
SIGNAL \led[1]~reg0_q\ : std_logic;
SIGNAL \led[2]~reg0_q\ : std_logic;
SIGNAL \led[3]~reg0_q\ : std_logic;
SIGNAL \led[4]~reg0feeder_combout\ : std_logic;
SIGNAL \led[4]~reg0_q\ : std_logic;
SIGNAL \led[5]~reg0feeder_combout\ : std_logic;
SIGNAL \led[5]~reg0_q\ : std_logic;
SIGNAL \led[6]~reg0feeder_combout\ : std_logic;
SIGNAL \led[6]~reg0_q\ : std_logic;
SIGNAL \led[7]~reg0feeder_combout\ : std_logic;
SIGNAL \led[7]~reg0_q\ : std_logic;
SIGNAL \tr|WideOr1~0_combout\ : std_logic;
SIGNAL \startr~1_combout\ : std_logic;
SIGNAL \startr~q\ : std_logic;
SIGNAL \tr|state[0]~0_combout\ : std_logic;
SIGNAL \tr|WideOr2~0_combout\ : std_logic;
SIGNAL \tr|WideOr3~0_combout\ : std_logic;
SIGNAL \tr|WideOr0~0_combout\ : std_logic;
SIGNAL \tr|WideOr4~0_combout\ : std_logic;
SIGNAL \tr|flag~0_combout\ : std_logic;
SIGNAL \tr|flag~q\ : std_logic;
SIGNAL \tr|localclockOS|accumulator~8_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[1]~11_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator~9_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator~10_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[0]~28_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[1]~12\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[2]~15\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[3]~16_combout\ : std_logic;
SIGNAL \tr|localclockOS|Equal0~0_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator~13_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[3]~17\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[4]~19\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[5]~21\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[6]~22_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[6]~23\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[7]~25\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[8]~26_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[5]~20_combout\ : std_logic;
SIGNAL \tr|localclockOS|accumulator[4]~18_combout\ : std_logic;
SIGNAL \tr|localclockOS|Equal0~1_combout\ : std_logic;
SIGNAL \tr|localclockOS|flag~0_combout\ : std_logic;
SIGNAL \tr|localclockOS|flag~q\ : std_logic;
SIGNAL \tr|transmeterClock~combout\ : std_logic;
SIGNAL \tr|transmeterClock~clkctrl_outclk\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \re|character[0]~1_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \count~16_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|address_reg_b[2]~feeder_combout\ : std_logic;
SIGNAL \count~15_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|address_reg_b[1]~feeder_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \count~10_combout\ : std_logic;
SIGNAL \count[8]~feeder_combout\ : std_logic;
SIGNAL \count~11_combout\ : std_logic;
SIGNAL \count~12_combout\ : std_logic;
SIGNAL \count[10]~feeder_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \countn[11]~feeder_combout\ : std_logic;
SIGNAL \count~13_combout\ : std_logic;
SIGNAL \count[11]~feeder_combout\ : std_logic;
SIGNAL \count~14_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a32~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a48~portbdataout\ : std_logic;
SIGNAL \mem|memory~22_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a56~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a40~portbdataout\ : std_logic;
SIGNAL \mem|memory~21_combout\ : std_logic;
SIGNAL \mem|memory~23_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \mem|memory~19_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \mem|memory~18_combout\ : std_logic;
SIGNAL \mem|memory~20_combout\ : std_logic;
SIGNAL \mem|memory~24_combout\ : std_logic;
SIGNAL \write~0_combout\ : std_logic;
SIGNAL \write~q\ : std_logic;
SIGNAL \tr|data[7]~0_combout\ : std_logic;
SIGNAL \tr|dataBit~1_combout\ : std_logic;
SIGNAL \re|character[7]~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \mem|memory~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \mem|memory~1_combout\ : std_logic;
SIGNAL \mem|memory~2_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a47~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a63~portbdataout\ : std_logic;
SIGNAL \mem|memory~3_combout\ : std_logic;
SIGNAL \mem|memory~5_combout\ : std_logic;
SIGNAL \mem|memory~17_combout\ : std_logic;
SIGNAL \tr|dataBit~0_combout\ : std_logic;
SIGNAL \tr|dataBit~2_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[0]~0_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \mem|memory~6_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \mem|memory~7_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \mem|memory~8_combout\ : std_logic;
SIGNAL \mem|memory~10_combout\ : std_logic;
SIGNAL \mem|memory~16_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|address_reg_b[0]~feeder_combout\ : std_logic;
SIGNAL \re|character[6]~7_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a62~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a46~portbdataout\ : std_logic;
SIGNAL \mem|memory~63_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a54~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a38~portbdataout\ : std_logic;
SIGNAL \mem|memory~64_combout\ : std_logic;
SIGNAL \mem|memory~65_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \mem|memory~60_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \mem|memory~61_combout\ : std_logic;
SIGNAL \mem|memory~62_combout\ : std_logic;
SIGNAL \mem|memory~66_combout\ : std_logic;
SIGNAL \tr|dataBit~3_combout\ : std_logic;
SIGNAL \re|character[5]~5_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \mem|memory~46_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \mem|memory~47_combout\ : std_logic;
SIGNAL \mem|memory~48_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a53~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \mem|memory~50_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a61~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a45~portbdataout\ : std_logic;
SIGNAL \mem|memory~49_combout\ : std_logic;
SIGNAL \mem|memory~51_combout\ : std_logic;
SIGNAL \mem|memory~52_combout\ : std_logic;
SIGNAL \re|character[4]~2_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \mem|memory~26_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \mem|memory~25_combout\ : std_logic;
SIGNAL \mem|memory~27_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a52~portbdataout\ : std_logic;
SIGNAL \mem|memory~29_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a44~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a60~portbdataout\ : std_logic;
SIGNAL \mem|memory~28_combout\ : std_logic;
SIGNAL \mem|memory~30_combout\ : std_logic;
SIGNAL \mem|memory~31_combout\ : std_logic;
SIGNAL \tr|data[3]~feeder_combout\ : std_logic;
SIGNAL \re|character[2]~4_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \mem|memory~40_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \mem|memory~39_combout\ : std_logic;
SIGNAL \mem|memory~41_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a50~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \mem|memory~43_combout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a58~portbdataout\ : std_logic;
SIGNAL \mem|memory_rtl_0|auto_generated|ram_block1a42~portbdataout\ : std_logic;
SIGNAL \mem|memory~42_combout\ : std_logic;
SIGNAL \mem|memory~44_combout\ : std_logic;
SIGNAL \mem|memory~45_combout\ : std_logic;
SIGNAL \tr|Mux0~0_combout\ : std_logic;
SIGNAL \tr|Mux0~1_combout\ : std_logic;
SIGNAL \tr|dataBit~4_combout\ : std_logic;
SIGNAL \tr|dataBit~5_combout\ : std_logic;
SIGNAL \tr|dataBit~q\ : std_logic;
SIGNAL countn : std_logic_vector(16 DOWNTO 0);
SIGNAL count : std_logic_vector(16 DOWNTO 0);
SIGNAL \mem|d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \tr|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tr|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \re|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \re|filter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \re|character\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem|memory_rtl_0|auto_generated|address_reg_b\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tr|localclockOS|accumulator\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \re|localclockOS|accumulator\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem|memory_rtl_0_bypass\ : std_logic_vector(0 TO 40);
SIGNAL \tr|ALT_INV_flag~q\ : std_logic;
SIGNAL \tr|ALT_INV_dataBit~q\ : std_logic;
SIGNAL \re|ALT_INV_flagStart~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_Reset <= Reset;
ww_start <= start;
led <= ww_led;
ww_rx <= rx;
tx <= ww_tx;
res <= ww_res;
t <= ww_t;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \re|character\(7);

\mem|memory_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \re|character\(7);

\mem|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \re|character\(7);

\mem|memory_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \re|character\(7);

\mem|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\(0) <= \re|character\(7);

\mem|memory_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a63~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \re|character\(7);

\mem|memory_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a47~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \re|character\(7);

\mem|memory_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a55~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \re|character\(7);

\mem|memory_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a39~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \re|character\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \re|character\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \re|character\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \re|character\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \re|character\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a56~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \re|character\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a40~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\(0) <= \re|character\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a48~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \re|character\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a32~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \re|character\(4);

\mem|memory_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \re|character\(4);

\mem|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \re|character\(4);

\mem|memory_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \re|character\(4);

\mem|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\(0) <= \re|character\(4);

\mem|memory_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a60~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \re|character\(4);

\mem|memory_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a44~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \re|character\(4);

\mem|memory_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a52~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \re|character\(4);

\mem|memory_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a36~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \re|character\(3);

\mem|memory_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \re|character\(3);

\mem|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \re|character\(3);

\mem|memory_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \re|character\(3);

\mem|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \re|character\(3);

\mem|memory_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a59~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \re|character\(3);

\mem|memory_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a43~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \re|character\(3);

\mem|memory_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a51~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \re|character\(3);

\mem|memory_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a35~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \re|character\(2);

\mem|memory_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \re|character\(2);

\mem|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \re|character\(2);

\mem|memory_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \re|character\(2);

\mem|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \re|character\(2);

\mem|memory_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a58~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \re|character\(2);

\mem|memory_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a42~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \re|character\(2);

\mem|memory_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a50~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \re|character\(2);

\mem|memory_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a34~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \re|character\(5);

\mem|memory_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \re|character\(5);

\mem|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \re|character\(5);

\mem|memory_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \re|character\(5);

\mem|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\(0) <= \re|character\(5);

\mem|memory_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a61~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \re|character\(5);

\mem|memory_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a45~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \re|character\(5);

\mem|memory_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a53~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \re|character\(5);

\mem|memory_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a37~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \re|character\(1);

\mem|memory_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \re|character\(1);

\mem|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \re|character\(1);

\mem|memory_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \re|character\(1);

\mem|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \re|character\(1);

\mem|memory_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a57~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \re|character\(1);

\mem|memory_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a41~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \re|character\(1);

\mem|memory_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a49~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \re|character\(1);

\mem|memory_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a33~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \re|character\(6);

\mem|memory_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \re|character\(6);

\mem|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \re|character\(6);

\mem|memory_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \re|character\(6);

\mem|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\(0) <= \re|character\(6);

\mem|memory_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a62~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \re|character\(6);

\mem|memory_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a46~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \re|character\(6);

\mem|memory_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a54~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\(0);

\mem|memory_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \re|character\(6);

\mem|memory_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (count(12) & count(11) & count(10) & count(9) & count(8) & count(7) & count(6) & count(5) & count(4) & count(3) & count(2) & count(1) & count(0));

\mem|memory_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\ <= (\count~14_combout\ & \count~13_combout\ & \count~12_combout\ & \count~11_combout\ & \count~10_combout\ & \count~9_combout\ & \count~8_combout\ & \count~7_combout\ & \count~6_combout\ & 
\count~5_combout\ & \count~4_combout\ & \count~3_combout\ & \count~2_combout\);

\mem|memory_rtl_0|auto_generated|ram_block1a38~portbdataout\ <= \mem|memory_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\(0);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\re|activeClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \re|activeClock~combout\);

\tr|transmeterClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tr|transmeterClock~combout\);
\tr|ALT_INV_flag~q\ <= NOT \tr|flag~q\;
\tr|ALT_INV_dataBit~q\ <= NOT \tr|dataBit~q\;
\re|ALT_INV_flagStart~q\ <= NOT \re|flagStart~q\;

-- Location: M9K_X64_Y30_N0
\mem|memory_rtl_0|auto_generated|ram_block1a55\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a55_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a55_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y29_N0
\mem|memory_rtl_0|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a39_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a39_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y39_N0
\mem|memory_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y38_N0
\mem|memory_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y42_N0
\mem|memory_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y43_N0
\mem|memory_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y37_N0
\mem|memory_rtl_0|auto_generated|ram_block1a59\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a59_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a59_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y39_N0
\mem|memory_rtl_0|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a43_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a43_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y40_N0
\mem|memory_rtl_0|auto_generated|ram_block1a51\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a51_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a51_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y38_N0
\mem|memory_rtl_0|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y32_N0
\mem|memory_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y33_N0
\mem|memory_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y32_N0
\mem|memory_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y36_N0
\mem|memory_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y31_N0
\mem|memory_rtl_0|auto_generated|ram_block1a57\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a57_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a57_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y34_N0
\mem|memory_rtl_0|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a41_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a41_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y34_N0
\mem|memory_rtl_0|auto_generated|ram_block1a49\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a49_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a49_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y28_N0
\mem|memory_rtl_0|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: FF_X45_Y36_N11
\tr|localclockOS|accumulator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(2));

-- Location: FF_X45_Y36_N21
\tr|localclockOS|accumulator[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(7));

-- Location: FF_X2_Y36_N7
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

-- Location: LCCOMB_X45_Y36_N10
\tr|localclockOS|accumulator[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[2]~14_combout\ = (\tr|localclockOS|accumulator[1]~12\ & (((!\tr|localclockOS|accumulator~13_combout\)) # (!\tr|localclockOS|accumulator\(2)))) # (!\tr|localclockOS|accumulator[1]~12\ & (((\tr|localclockOS|accumulator\(2) & 
-- \tr|localclockOS|accumulator~13_combout\)) # (GND)))
-- \tr|localclockOS|accumulator[2]~15\ = CARRY(((!\tr|localclockOS|accumulator[1]~12\) # (!\tr|localclockOS|accumulator~13_combout\)) # (!\tr|localclockOS|accumulator\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(2),
	datab => \tr|localclockOS|accumulator~13_combout\,
	datad => VCC,
	cin => \tr|localclockOS|accumulator[1]~12\,
	combout => \tr|localclockOS|accumulator[2]~14_combout\,
	cout => \tr|localclockOS|accumulator[2]~15\);

-- Location: LCCOMB_X45_Y36_N20
\tr|localclockOS|accumulator[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[7]~24_combout\ = (\tr|localclockOS|accumulator[6]~23\ & (\tr|localclockOS|accumulator\(7) & (\tr|localclockOS|accumulator~13_combout\ & VCC))) # (!\tr|localclockOS|accumulator[6]~23\ & ((((\tr|localclockOS|accumulator\(7) & 
-- \tr|localclockOS|accumulator~13_combout\)))))
-- \tr|localclockOS|accumulator[7]~25\ = CARRY((\tr|localclockOS|accumulator\(7) & (\tr|localclockOS|accumulator~13_combout\ & !\tr|localclockOS|accumulator[6]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(7),
	datab => \tr|localclockOS|accumulator~13_combout\,
	datad => VCC,
	cin => \tr|localclockOS|accumulator[6]~23\,
	combout => \tr|localclockOS|accumulator[7]~24_combout\,
	cout => \tr|localclockOS|accumulator[7]~25\);

-- Location: FF_X14_Y35_N9
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

-- Location: FF_X14_Y35_N11
\re|localclockOS|accumulator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(2));

-- Location: FF_X14_Y35_N13
\re|localclockOS|accumulator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(3));

-- Location: FF_X14_Y35_N23
\re|localclockOS|accumulator[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(8));

-- Location: FF_X14_Y35_N17
\re|localclockOS|accumulator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(5));

-- Location: FF_X14_Y35_N15
\re|localclockOS|accumulator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(4));

-- Location: FF_X14_Y35_N19
\re|localclockOS|accumulator[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(6));

-- Location: FF_X14_Y35_N21
\re|localclockOS|accumulator[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(7));

-- Location: LCCOMB_X14_Y35_N8
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

-- Location: LCCOMB_X14_Y35_N10
\re|localclockOS|accumulator[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[2]~14_combout\ = (\re|localclockOS|accumulator[1]~12\ & (((!\re|localclockOS|accumulator\(2))) # (!\re|localclockOS|accumulator~13_combout\))) # (!\re|localclockOS|accumulator[1]~12\ & 
-- (((\re|localclockOS|accumulator~13_combout\ & \re|localclockOS|accumulator\(2))) # (GND)))
-- \re|localclockOS|accumulator[2]~15\ = CARRY(((!\re|localclockOS|accumulator[1]~12\) # (!\re|localclockOS|accumulator\(2))) # (!\re|localclockOS|accumulator~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator~13_combout\,
	datab => \re|localclockOS|accumulator\(2),
	datad => VCC,
	cin => \re|localclockOS|accumulator[1]~12\,
	combout => \re|localclockOS|accumulator[2]~14_combout\,
	cout => \re|localclockOS|accumulator[2]~15\);

-- Location: LCCOMB_X14_Y35_N12
\re|localclockOS|accumulator[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[3]~16_combout\ = (\re|localclockOS|accumulator[2]~15\ & (\re|localclockOS|accumulator~13_combout\ & (\re|localclockOS|accumulator\(3) & VCC))) # (!\re|localclockOS|accumulator[2]~15\ & 
-- ((((\re|localclockOS|accumulator~13_combout\ & \re|localclockOS|accumulator\(3))))))
-- \re|localclockOS|accumulator[3]~17\ = CARRY((\re|localclockOS|accumulator~13_combout\ & (\re|localclockOS|accumulator\(3) & !\re|localclockOS|accumulator[2]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator~13_combout\,
	datab => \re|localclockOS|accumulator\(3),
	datad => VCC,
	cin => \re|localclockOS|accumulator[2]~15\,
	combout => \re|localclockOS|accumulator[3]~16_combout\,
	cout => \re|localclockOS|accumulator[3]~17\);

-- Location: LCCOMB_X14_Y35_N14
\re|localclockOS|accumulator[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[4]~18_combout\ = (\re|localclockOS|accumulator[3]~17\ & (((!\re|localclockOS|accumulator\(4))) # (!\re|localclockOS|accumulator~13_combout\))) # (!\re|localclockOS|accumulator[3]~17\ & 
-- (((\re|localclockOS|accumulator~13_combout\ & \re|localclockOS|accumulator\(4))) # (GND)))
-- \re|localclockOS|accumulator[4]~19\ = CARRY(((!\re|localclockOS|accumulator[3]~17\) # (!\re|localclockOS|accumulator\(4))) # (!\re|localclockOS|accumulator~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator~13_combout\,
	datab => \re|localclockOS|accumulator\(4),
	datad => VCC,
	cin => \re|localclockOS|accumulator[3]~17\,
	combout => \re|localclockOS|accumulator[4]~18_combout\,
	cout => \re|localclockOS|accumulator[4]~19\);

-- Location: LCCOMB_X14_Y35_N16
\re|localclockOS|accumulator[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[5]~20_combout\ = (\re|localclockOS|accumulator[4]~19\ & (\re|localclockOS|accumulator~13_combout\ & (\re|localclockOS|accumulator\(5) & VCC))) # (!\re|localclockOS|accumulator[4]~19\ & 
-- ((((\re|localclockOS|accumulator~13_combout\ & \re|localclockOS|accumulator\(5))))))
-- \re|localclockOS|accumulator[5]~21\ = CARRY((\re|localclockOS|accumulator~13_combout\ & (\re|localclockOS|accumulator\(5) & !\re|localclockOS|accumulator[4]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator~13_combout\,
	datab => \re|localclockOS|accumulator\(5),
	datad => VCC,
	cin => \re|localclockOS|accumulator[4]~19\,
	combout => \re|localclockOS|accumulator[5]~20_combout\,
	cout => \re|localclockOS|accumulator[5]~21\);

-- Location: LCCOMB_X14_Y35_N18
\re|localclockOS|accumulator[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[6]~22_combout\ = (\re|localclockOS|accumulator[5]~21\ & (((!\re|localclockOS|accumulator\(6))) # (!\re|localclockOS|accumulator~13_combout\))) # (!\re|localclockOS|accumulator[5]~21\ & 
-- (((\re|localclockOS|accumulator~13_combout\ & \re|localclockOS|accumulator\(6))) # (GND)))
-- \re|localclockOS|accumulator[6]~23\ = CARRY(((!\re|localclockOS|accumulator[5]~21\) # (!\re|localclockOS|accumulator\(6))) # (!\re|localclockOS|accumulator~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator~13_combout\,
	datab => \re|localclockOS|accumulator\(6),
	datad => VCC,
	cin => \re|localclockOS|accumulator[5]~21\,
	combout => \re|localclockOS|accumulator[6]~22_combout\,
	cout => \re|localclockOS|accumulator[6]~23\);

-- Location: LCCOMB_X14_Y35_N20
\re|localclockOS|accumulator[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[7]~24_combout\ = (\re|localclockOS|accumulator[6]~23\ & (\re|localclockOS|accumulator~13_combout\ & (\re|localclockOS|accumulator\(7) & VCC))) # (!\re|localclockOS|accumulator[6]~23\ & 
-- ((((\re|localclockOS|accumulator~13_combout\ & \re|localclockOS|accumulator\(7))))))
-- \re|localclockOS|accumulator[7]~25\ = CARRY((\re|localclockOS|accumulator~13_combout\ & (\re|localclockOS|accumulator\(7) & !\re|localclockOS|accumulator[6]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator~13_combout\,
	datab => \re|localclockOS|accumulator\(7),
	datad => VCC,
	cin => \re|localclockOS|accumulator[6]~23\,
	combout => \re|localclockOS|accumulator[7]~24_combout\,
	cout => \re|localclockOS|accumulator[7]~25\);

-- Location: LCCOMB_X14_Y35_N22
\re|localclockOS|accumulator[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[8]~26_combout\ = \re|localclockOS|accumulator[7]~25\ $ (((\re|localclockOS|accumulator\(8) & \re|localclockOS|accumulator~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(8),
	datad => \re|localclockOS|accumulator~13_combout\,
	cin => \re|localclockOS|accumulator[7]~25\,
	combout => \re|localclockOS|accumulator[8]~26_combout\);

-- Location: FF_X49_Y36_N5
\tr|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	asdata => \mem|d\(1),
	sload => VCC,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(1));

-- Location: FF_X50_Y39_N29
\mem|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory~38_combout\,
	ena => \write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|d\(3));

-- Location: FF_X65_Y34_N21
\mem|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory~59_combout\,
	ena => \write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|d\(1));

-- Location: LCCOMB_X50_Y34_N30
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (countn(15) & (countn(14) & (countn(13) & countn(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(15),
	datab => countn(14),
	datac => countn(13),
	datad => countn(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X50_Y35_N14
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Add0~0_combout\ & (!\Add0~2_combout\ & (!\Add0~6_combout\ & !\Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X50_Y34_N26
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!\Add0~28_combout\ & !\Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \Add0~26_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X49_Y35_N0
\startr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \startr~0_combout\ = (\tr|flag~q\) # ((!\staten.00~q\) # (!\staten.trans~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|flag~q\,
	datab => \staten.trans~q\,
	datad => \staten.00~q\,
	combout => \startr~0_combout\);

-- Location: LCCOMB_X52_Y30_N6
\mem|memory~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~4_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a55~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a39~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a55~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a39~portbdataout\,
	combout => \mem|memory~4_combout\);

-- Location: FF_X49_Y34_N23
\mem|memory_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(3));

-- Location: FF_X49_Y34_N27
\mem|memory_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(7));

-- Location: FF_X49_Y34_N31
\mem|memory_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => count(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(11));

-- Location: FF_X48_Y34_N1
\mem|memory_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(13));

-- Location: FF_X48_Y34_N3
\mem|memory_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(15));

-- Location: FF_X48_Y34_N17
\mem|memory_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(16));

-- Location: FF_X48_Y34_N11
\mem|memory_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(14));

-- Location: LCCOMB_X48_Y34_N16
\mem|memory~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~9_combout\ = (\mem|memory_rtl_0_bypass\(14) & (\mem|memory_rtl_0_bypass\(13) & (\mem|memory_rtl_0_bypass\(15) $ (!\mem|memory_rtl_0_bypass\(16))))) # (!\mem|memory_rtl_0_bypass\(14) & (!\mem|memory_rtl_0_bypass\(13) & 
-- (\mem|memory_rtl_0_bypass\(15) $ (!\mem|memory_rtl_0_bypass\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(14),
	datab => \mem|memory_rtl_0_bypass\(15),
	datac => \mem|memory_rtl_0_bypass\(16),
	datad => \mem|memory_rtl_0_bypass\(13),
	combout => \mem|memory~9_combout\);

-- Location: FF_X52_Y35_N31
\mem|memory_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => count(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(17));

-- Location: FF_X52_Y35_N23
\mem|memory_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => count(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(19));

-- Location: FF_X52_Y35_N21
\mem|memory_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(20));

-- Location: FF_X52_Y35_N3
\mem|memory_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(18));

-- Location: LCCOMB_X52_Y35_N2
\mem|memory~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~11_combout\ = (\mem|memory_rtl_0_bypass\(19) & (\mem|memory_rtl_0_bypass\(20) & (\mem|memory_rtl_0_bypass\(17) $ (!\mem|memory_rtl_0_bypass\(18))))) # (!\mem|memory_rtl_0_bypass\(19) & (!\mem|memory_rtl_0_bypass\(20) & 
-- (\mem|memory_rtl_0_bypass\(17) $ (!\mem|memory_rtl_0_bypass\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(19),
	datab => \mem|memory_rtl_0_bypass\(17),
	datac => \mem|memory_rtl_0_bypass\(18),
	datad => \mem|memory_rtl_0_bypass\(20),
	combout => \mem|memory~11_combout\);

-- Location: FF_X52_Y35_N7
\mem|memory_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => count(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(21));

-- Location: FF_X52_Y35_N11
\mem|memory_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => count(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(23));

-- Location: FF_X52_Y35_N13
\mem|memory_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(24));

-- Location: FF_X52_Y35_N19
\mem|memory_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(22));

-- Location: LCCOMB_X52_Y35_N6
\mem|memory~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~12_combout\ = (\mem|memory_rtl_0_bypass\(24) & (\mem|memory_rtl_0_bypass\(23) & (\mem|memory_rtl_0_bypass\(22) $ (!\mem|memory_rtl_0_bypass\(21))))) # (!\mem|memory_rtl_0_bypass\(24) & (!\mem|memory_rtl_0_bypass\(23) & 
-- (\mem|memory_rtl_0_bypass\(22) $ (!\mem|memory_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(24),
	datab => \mem|memory_rtl_0_bypass\(22),
	datac => \mem|memory_rtl_0_bypass\(21),
	datad => \mem|memory_rtl_0_bypass\(23),
	combout => \mem|memory~12_combout\);

-- Location: FF_X53_Y35_N1
\mem|memory_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(25));

-- Location: FF_X53_Y35_N7
\mem|memory_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(27));

-- Location: FF_X53_Y35_N17
\mem|memory_rtl_0_bypass[28]\ : dffeas
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
	q => \mem|memory_rtl_0_bypass\(28));

-- Location: FF_X53_Y35_N31
\mem|memory_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(26));

-- Location: LCCOMB_X53_Y35_N30
\mem|memory~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~13_combout\ = (\mem|memory_rtl_0_bypass\(28) & (\mem|memory_rtl_0_bypass\(27) & (\mem|memory_rtl_0_bypass\(25) $ (!\mem|memory_rtl_0_bypass\(26))))) # (!\mem|memory_rtl_0_bypass\(28) & (!\mem|memory_rtl_0_bypass\(27) & 
-- (\mem|memory_rtl_0_bypass\(25) $ (!\mem|memory_rtl_0_bypass\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(28),
	datab => \mem|memory_rtl_0_bypass\(25),
	datac => \mem|memory_rtl_0_bypass\(26),
	datad => \mem|memory_rtl_0_bypass\(27),
	combout => \mem|memory~13_combout\);

-- Location: FF_X53_Y34_N21
\mem|memory_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(29));

-- Location: FF_X53_Y34_N11
\mem|memory_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => count(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(31));

-- Location: FF_X53_Y34_N29
\mem|memory_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(32));

-- Location: FF_X53_Y34_N15
\mem|memory_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(30));

-- Location: LCCOMB_X53_Y34_N14
\mem|memory~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~14_combout\ = (\mem|memory_rtl_0_bypass\(31) & (\mem|memory_rtl_0_bypass\(32) & (\mem|memory_rtl_0_bypass\(30) $ (!\mem|memory_rtl_0_bypass\(29))))) # (!\mem|memory_rtl_0_bypass\(31) & (!\mem|memory_rtl_0_bypass\(32) & 
-- (\mem|memory_rtl_0_bypass\(30) $ (!\mem|memory_rtl_0_bypass\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(31),
	datab => \mem|memory_rtl_0_bypass\(32),
	datac => \mem|memory_rtl_0_bypass\(30),
	datad => \mem|memory_rtl_0_bypass\(29),
	combout => \mem|memory~14_combout\);

-- Location: LCCOMB_X52_Y35_N8
\mem|memory~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~15_combout\ = (\mem|memory~12_combout\ & (\mem|memory~11_combout\ & (\mem|memory~13_combout\ & \mem|memory~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory~12_combout\,
	datab => \mem|memory~11_combout\,
	datac => \mem|memory~13_combout\,
	datad => \mem|memory~14_combout\,
	combout => \mem|memory~15_combout\);

-- Location: FF_X50_Y36_N23
\mem|memory_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(37));

-- Location: FF_X50_Y36_N29
\mem|memory_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(36));

-- Location: LCCOMB_X50_Y39_N10
\mem|memory~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~32_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a27~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	combout => \mem|memory~32_combout\);

-- Location: LCCOMB_X50_Y39_N8
\mem|memory~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~33_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a19~portbdataout\))) # 
-- (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	combout => \mem|memory~33_combout\);

-- Location: LCCOMB_X50_Y39_N18
\mem|memory~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~34_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~33_combout\) # (\mem|memory~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~33_combout\,
	datad => \mem|memory~32_combout\,
	combout => \mem|memory~34_combout\);

-- Location: LCCOMB_X50_Y39_N12
\mem|memory~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~35_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a59~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a43~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a59~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a43~portbdataout\,
	combout => \mem|memory~35_combout\);

-- Location: LCCOMB_X50_Y39_N22
\mem|memory~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~36_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a51~portbdataout\))) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\mem|memory_rtl_0|auto_generated|ram_block1a35~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a35~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a51~portbdataout\,
	combout => \mem|memory~36_combout\);

-- Location: LCCOMB_X50_Y39_N4
\mem|memory~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~37_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~35_combout\) # ((!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & \mem|memory~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~36_combout\,
	datad => \mem|memory~35_combout\,
	combout => \mem|memory~37_combout\);

-- Location: LCCOMB_X50_Y39_N28
\mem|memory~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~38_combout\ = (\mem|memory~16_combout\ & (\mem|memory_rtl_0_bypass\(36))) # (!\mem|memory~16_combout\ & (((\mem|memory~37_combout\) # (\mem|memory~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(36),
	datab => \mem|memory~16_combout\,
	datac => \mem|memory~37_combout\,
	datad => \mem|memory~34_combout\,
	combout => \mem|memory~38_combout\);

-- Location: FF_X57_Y35_N9
\mem|memory_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(34));

-- Location: LCCOMB_X65_Y34_N22
\mem|memory~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~53_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a25~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	combout => \mem|memory~53_combout\);

-- Location: LCCOMB_X65_Y34_N12
\mem|memory~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~54_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a17~portbdataout\))) # 
-- (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	combout => \mem|memory~54_combout\);

-- Location: LCCOMB_X65_Y34_N18
\mem|memory~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~55_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~53_combout\) # (\mem|memory~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~53_combout\,
	datad => \mem|memory~54_combout\,
	combout => \mem|memory~55_combout\);

-- Location: LCCOMB_X65_Y34_N4
\mem|memory~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~56_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a57~portbdataout\))) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & (\mem|memory_rtl_0|auto_generated|ram_block1a41~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|ram_block1a41~portbdataout\,
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a57~portbdataout\,
	combout => \mem|memory~56_combout\);

-- Location: LCCOMB_X65_Y34_N10
\mem|memory~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~57_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a49~portbdataout\))) # 
-- (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a33~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a33~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a49~portbdataout\,
	combout => \mem|memory~57_combout\);

-- Location: LCCOMB_X65_Y34_N8
\mem|memory~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~58_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~56_combout\) # (\mem|memory~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~56_combout\,
	datad => \mem|memory~57_combout\,
	combout => \mem|memory~58_combout\);

-- Location: LCCOMB_X65_Y34_N20
\mem|memory~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~59_combout\ = (\mem|memory~16_combout\ & (\mem|memory_rtl_0_bypass\(34))) # (!\mem|memory~16_combout\ & (((\mem|memory~58_combout\) # (\mem|memory~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(34),
	datab => \mem|memory~16_combout\,
	datac => \mem|memory~58_combout\,
	datad => \mem|memory~55_combout\,
	combout => \mem|memory~59_combout\);

-- Location: FF_X52_Y41_N11
\mem|memory_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(39));

-- Location: LCCOMB_X1_Y36_N4
\re|activeClock\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|activeClock~combout\ = LCELL((\re|flagStart~q\ & ((\re|localclockOS|flag~q\))) # (!\re|flagStart~q\ & (\clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datab => \clk~input_o\,
	datad => \re|localclockOS|flag~q\,
	combout => \re|activeClock~combout\);

-- Location: FF_X47_Y35_N15
\re|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|filter~0_combout\,
	ena => \re|filter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|filter\(1));

-- Location: FF_X47_Y35_N25
\re|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|filter~2_combout\,
	ena => \re|filter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|filter\(0));

-- Location: LCCOMB_X47_Y35_N6
\re|flagStart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|flagStart~0_combout\ = (!\re|flagStart~q\ & (((\re|dataReady~q\) # (!\re|filter\(1))) # (!\re|filter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~q\,
	datab => \re|filter\(0),
	datac => \re|filter\(1),
	datad => \re|dataReady~q\,
	combout => \re|flagStart~0_combout\);

-- Location: FF_X53_Y35_N11
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: FF_X53_Y34_N9
\count[14]\ : dffeas
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
	q => count(14));

-- Location: FF_X53_Y34_N19
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X53_Y35_N24
\mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\ = (!count(15) & (count(14) & (!\write~q\ & count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => \write~q\,
	datad => count(13),
	combout => \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\);

-- Location: LCCOMB_X53_Y35_N14
\mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\ = (!count(15) & (!count(14) & (!\write~q\ & count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => \write~q\,
	datad => count(13),
	combout => \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\);

-- Location: LCCOMB_X53_Y35_N12
\mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\ = (!count(15) & (count(14) & (!\write~q\ & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => \write~q\,
	datad => count(13),
	combout => \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\);

-- Location: LCCOMB_X53_Y35_N22
\mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\ = (!count(15) & (!count(14) & (!\write~q\ & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => \write~q\,
	datad => count(13),
	combout => \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\);

-- Location: LCCOMB_X53_Y35_N28
\mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\ = (count(15) & (count(14) & (!\write~q\ & count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => \write~q\,
	datad => count(13),
	combout => \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\);

-- Location: LCCOMB_X53_Y35_N2
\mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\ = (count(15) & (!count(14) & (!\write~q\ & count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => \write~q\,
	datad => count(13),
	combout => \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\);

-- Location: LCCOMB_X53_Y35_N20
\mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\ = (count(15) & (count(14) & (!\write~q\ & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => \write~q\,
	datad => count(13),
	combout => \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\);

-- Location: LCCOMB_X53_Y35_N26
\mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\ = (count(15) & (!count(14) & (!\write~q\ & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(14),
	datac => \write~q\,
	datad => count(13),
	combout => \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\);

-- Location: FF_X48_Y35_N1
\re|character[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(3));

-- Location: FF_X47_Y35_N29
\re|character[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(1));

-- Location: FF_X14_Y35_N5
\re|localclockOS|accumulator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \re|localclockOS|accumulator[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|localclockOS|accumulator\(0));

-- Location: LCCOMB_X14_Y35_N26
\re|localclockOS|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|Equal0~0_combout\ = (\re|localclockOS|accumulator\(2)) # ((\re|localclockOS|accumulator\(1)) # ((!\re|localclockOS|accumulator\(3)) # (!\re|localclockOS|accumulator\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(2),
	datab => \re|localclockOS|accumulator\(1),
	datac => \re|localclockOS|accumulator\(0),
	datad => \re|localclockOS|accumulator\(3),
	combout => \re|localclockOS|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y35_N24
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

-- Location: LCCOMB_X14_Y35_N30
\re|localclockOS|flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|flag~0_combout\ = \re|localclockOS|flag~q\ $ (((!\re|localclockOS|accumulator\(8) & (!\re|localclockOS|Equal0~1_combout\ & !\re|localclockOS|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator\(8),
	datab => \re|localclockOS|Equal0~1_combout\,
	datac => \re|localclockOS|Equal0~0_combout\,
	datad => \re|localclockOS|flag~q\,
	combout => \re|localclockOS|flag~0_combout\);

-- Location: LCCOMB_X47_Y35_N14
\re|filter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|filter~0_combout\ = (!\re|filter\(1) & \re|filter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \re|filter\(1),
	datad => \re|filter\(0),
	combout => \re|filter~0_combout\);

-- Location: LCCOMB_X47_Y35_N16
\re|filter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|filter[1]~1_combout\ = (!\re|flagStart~q\ & !\re|dataReady~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re|flagStart~q\,
	datad => \re|dataReady~q\,
	combout => \re|filter[1]~1_combout\);

-- Location: LCCOMB_X47_Y35_N24
\re|filter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|filter~2_combout\ = (!\rx~input_o\ & ((!\re|filter\(0)) # (!\re|filter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re|filter\(1),
	datac => \re|filter\(0),
	datad => \rx~input_o\,
	combout => \re|filter~2_combout\);

-- Location: LCCOMB_X48_Y35_N14
\re|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~1_combout\ = (!\re|state\(0) & (!\re|state\(2) & (!\re|state\(1) & \re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(2),
	datac => \re|state\(1),
	datad => \re|state\(3),
	combout => \re|Decoder1~1_combout\);

-- Location: LCCOMB_X48_Y35_N12
\re|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~2_combout\ = (\re|state\(0) & (!\re|state\(2) & (!\re|state\(1) & !\re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(2),
	datac => \re|state\(1),
	datad => \re|state\(3),
	combout => \re|Decoder1~2_combout\);

-- Location: LCCOMB_X47_Y35_N10
\re|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~3_combout\ = (\re|state\(0) & (!\re|state\(3) & (\re|state\(2) & !\re|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(3),
	datac => \re|state\(2),
	datad => \re|state\(1),
	combout => \re|Decoder1~3_combout\);

-- Location: LCCOMB_X48_Y35_N22
\re|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~4_combout\ = (!\re|state\(0) & (\re|state\(2) & (!\re|state\(1) & !\re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(2),
	datac => \re|state\(1),
	datad => \re|state\(3),
	combout => \re|Decoder1~4_combout\);

-- Location: LCCOMB_X48_Y35_N0
\re|character[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[3]~3_combout\ = (\re|Decoder1~4_combout\ & ((\re|flagStart~q\ & (\rx~input_o\)) # (!\re|flagStart~q\ & ((\re|character\(3)))))) # (!\re|Decoder1~4_combout\ & (((\re|character\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|Decoder1~4_combout\,
	datab => \rx~input_o\,
	datac => \re|character\(3),
	datad => \re|flagStart~q\,
	combout => \re|character[3]~3_combout\);

-- Location: LCCOMB_X48_Y35_N28
\re|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~5_combout\ = (\re|state\(0) & (!\re|state\(2) & (\re|state\(1) & !\re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(2),
	datac => \re|state\(1),
	datad => \re|state\(3),
	combout => \re|Decoder1~5_combout\);

-- Location: LCCOMB_X48_Y35_N18
\re|Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~6_combout\ = (!\re|state\(0) & (\re|state\(2) & (\re|state\(1) & !\re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(2),
	datac => \re|state\(1),
	datad => \re|state\(3),
	combout => \re|Decoder1~6_combout\);

-- Location: LCCOMB_X47_Y35_N12
\re|Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~7_combout\ = (!\re|state\(0) & (!\re|state\(3) & (!\re|state\(2) & \re|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(3),
	datac => \re|state\(2),
	datad => \re|state\(1),
	combout => \re|Decoder1~7_combout\);

-- Location: LCCOMB_X47_Y35_N28
\re|character[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[1]~6_combout\ = (\re|Decoder1~7_combout\ & ((\re|flagStart~q\ & (\rx~input_o\)) # (!\re|flagStart~q\ & ((\re|character\(1)))))) # (!\re|Decoder1~7_combout\ & (((\re|character\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|Decoder1~7_combout\,
	datab => \rx~input_o\,
	datac => \re|character\(1),
	datad => \re|flagStart~q\,
	combout => \re|character[1]~6_combout\);

-- Location: LCCOMB_X47_Y35_N26
\re|Decoder1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~8_combout\ = (\re|state\(0) & (!\re|state\(3) & (\re|state\(2) & \re|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(3),
	datac => \re|state\(2),
	datad => \re|state\(1),
	combout => \re|Decoder1~8_combout\);

-- Location: LCCOMB_X14_Y35_N0
\re|localclockOS|accumulator~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator~8_combout\ = (\re|localclockOS|accumulator\(1) & \re|flagStart~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \re|localclockOS|accumulator\(1),
	datad => \re|flagStart~q\,
	combout => \re|localclockOS|accumulator~8_combout\);

-- Location: LCCOMB_X14_Y35_N2
\re|localclockOS|accumulator~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator~9_combout\ = (\re|localclockOS|Equal0~0_combout\) # (\re|localclockOS|accumulator\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|Equal0~0_combout\,
	datac => \re|localclockOS|accumulator\(8),
	combout => \re|localclockOS|accumulator~9_combout\);

-- Location: LCCOMB_X14_Y35_N28
\re|localclockOS|accumulator~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator~10_combout\ = (\re|localclockOS|accumulator\(0) & (\re|flagStart~q\ & ((\re|localclockOS|accumulator~9_combout\) # (\re|localclockOS|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|accumulator~9_combout\,
	datab => \re|localclockOS|Equal0~1_combout\,
	datac => \re|localclockOS|accumulator\(0),
	datad => \re|flagStart~q\,
	combout => \re|localclockOS|accumulator~10_combout\);

-- Location: LCCOMB_X14_Y35_N6
\re|localclockOS|accumulator~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator~13_combout\ = (\re|flagStart~q\ & ((\re|localclockOS|Equal0~0_combout\) # ((\re|localclockOS|Equal0~1_combout\) # (\re|localclockOS|accumulator\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|localclockOS|Equal0~0_combout\,
	datab => \re|localclockOS|Equal0~1_combout\,
	datac => \re|localclockOS|accumulator\(8),
	datad => \re|flagStart~q\,
	combout => \re|localclockOS|accumulator~13_combout\);

-- Location: LCCOMB_X14_Y35_N4
\re|localclockOS|accumulator[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|localclockOS|accumulator[0]~28_combout\ = !\re|localclockOS|accumulator~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \re|localclockOS|accumulator~10_combout\,
	combout => \re|localclockOS|accumulator[0]~28_combout\);

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

-- Location: LCCOMB_X53_Y35_N10
\count[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~feeder_combout\ = \count~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count~1_combout\,
	combout => \count[13]~feeder_combout\);

-- Location: LCCOMB_X53_Y35_N6
\mem|memory_rtl_0_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[27]~feeder_combout\ = count(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(13),
	combout => \mem|memory_rtl_0_bypass[27]~feeder_combout\);

-- Location: LCCOMB_X53_Y34_N20
\mem|memory_rtl_0_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[29]~feeder_combout\ = count(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(14),
	combout => \mem|memory_rtl_0_bypass[29]~feeder_combout\);

-- Location: LCCOMB_X49_Y34_N22
\mem|memory_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[3]~feeder_combout\ = count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(1),
	combout => \mem|memory_rtl_0_bypass[3]~feeder_combout\);

-- Location: LCCOMB_X49_Y34_N26
\mem|memory_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[7]~feeder_combout\ = count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(3),
	combout => \mem|memory_rtl_0_bypass[7]~feeder_combout\);

-- Location: LCCOMB_X48_Y34_N0
\mem|memory_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[13]~feeder_combout\ = count(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(6),
	combout => \mem|memory_rtl_0_bypass[13]~feeder_combout\);

-- Location: LCCOMB_X48_Y34_N2
\mem|memory_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[15]~feeder_combout\ = count(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(7),
	combout => \mem|memory_rtl_0_bypass[15]~feeder_combout\);

-- Location: LCCOMB_X53_Y35_N0
\mem|memory_rtl_0_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[25]~feeder_combout\ = count(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(12),
	combout => \mem|memory_rtl_0_bypass[25]~feeder_combout\);

-- Location: LCCOMB_X48_Y34_N10
\mem|memory_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[14]~feeder_combout\ = \count~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count~8_combout\,
	combout => \mem|memory_rtl_0_bypass[14]~feeder_combout\);

-- Location: LCCOMB_X52_Y35_N18
\mem|memory_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[22]~feeder_combout\ = \count~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~12_combout\,
	combout => \mem|memory_rtl_0_bypass[22]~feeder_combout\);

-- Location: LCCOMB_X52_Y35_N12
\mem|memory_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[24]~feeder_combout\ = \count~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count~13_combout\,
	combout => \mem|memory_rtl_0_bypass[24]~feeder_combout\);

-- Location: LCCOMB_X53_Y34_N28
\mem|memory_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[32]~feeder_combout\ = \count~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count~16_combout\,
	combout => \mem|memory_rtl_0_bypass[32]~feeder_combout\);

-- Location: LCCOMB_X50_Y36_N22
\mem|memory_rtl_0_bypass[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[37]~feeder_combout\ = \re|character\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \re|character\(4),
	combout => \mem|memory_rtl_0_bypass[37]~feeder_combout\);

-- Location: LCCOMB_X50_Y36_N28
\mem|memory_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[36]~feeder_combout\ = \re|character\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \re|character\(3),
	combout => \mem|memory_rtl_0_bypass[36]~feeder_combout\);

-- Location: LCCOMB_X57_Y35_N8
\mem|memory_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[34]~feeder_combout\ = \re|character\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \re|character\(1),
	combout => \mem|memory_rtl_0_bypass[34]~feeder_combout\);

-- Location: LCCOMB_X52_Y41_N10
\mem|memory_rtl_0_bypass[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[39]~feeder_combout\ = \re|character\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \re|character\(6),
	combout => \mem|memory_rtl_0_bypass[39]~feeder_combout\);

-- Location: IOOBUF_X69_Y73_N16
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[4]~reg0_q\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[5]~reg0_q\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[6]~reg0_q\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led[7]~reg0_q\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

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
	o => \tx~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\res~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \res~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\t~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \t~output_o\);

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

-- Location: LCCOMB_X50_Y35_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = countn(0) $ (VCC)
-- \Add0~1\ = CARRY(countn(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countn(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X48_Y35_N16
\re|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|state~1_combout\ = (\re|state\(0) & (\re|state\(1) & (!\re|state\(3) & \re|state\(2)))) # (!\re|state\(0) & (!\re|state\(1) & (\re|state\(3) & !\re|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(1),
	datac => \re|state\(3),
	datad => \re|state\(2),
	combout => \re|state~1_combout\);

-- Location: LCCOMB_X47_Y35_N0
\re|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|WideOr0~0_combout\ = (\re|state\(3) & ((\re|state\(0)) # ((\re|state\(2)) # (\re|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(3),
	datac => \re|state\(2),
	datad => \re|state\(1),
	combout => \re|WideOr0~0_combout\);

-- Location: LCCOMB_X47_Y35_N20
\re|flagStart~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|flagStart~1_combout\ = (!\re|flagStart~0_combout\ & ((!\re|WideOr0~0_combout\) # (!\re|flagStart~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|flagStart~0_combout\,
	datac => \re|flagStart~q\,
	datad => \re|WideOr0~0_combout\,
	combout => \re|flagStart~1_combout\);

-- Location: FF_X47_Y35_N21
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

-- Location: FF_X48_Y35_N17
\re|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|state~1_combout\,
	ena => \re|flagStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|state\(3));

-- Location: LCCOMB_X48_Y35_N6
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

-- Location: FF_X48_Y35_N7
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

-- Location: LCCOMB_X48_Y35_N4
\re|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|state~0_combout\ = (!\re|state\(3) & (\re|state\(1) $ (\re|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re|state\(3),
	datac => \re|state\(1),
	datad => \re|state\(0),
	combout => \re|state~0_combout\);

-- Location: FF_X48_Y35_N5
\re|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|state~0_combout\,
	ena => \re|flagStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|state\(1));

-- Location: LCCOMB_X48_Y35_N30
\re|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|WideOr1~0_combout\ = (!\re|state\(3) & (\re|state\(2) $ (((\re|state\(0) & \re|state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(1),
	datac => \re|state\(2),
	datad => \re|state\(3),
	combout => \re|WideOr1~0_combout\);

-- Location: FF_X48_Y35_N31
\re|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|WideOr1~0_combout\,
	ena => \re|flagStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|state\(2));

-- Location: LCCOMB_X48_Y35_N2
\re|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|Decoder1~0_combout\ = (\re|state\(0) & (!\re|state\(2) & (!\re|state\(1) & \re|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|state\(0),
	datab => \re|state\(2),
	datac => \re|state\(1),
	datad => \re|state\(3),
	combout => \re|Decoder1~0_combout\);

-- Location: LCCOMB_X48_Y35_N24
\re|dataReady~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|dataReady~0_combout\ = (\re|dataReady~q\) # (\re|Decoder1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \re|dataReady~q\,
	datad => \re|Decoder1~0_combout\,
	combout => \re|dataReady~0_combout\);

-- Location: FF_X48_Y35_N25
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

-- Location: LCCOMB_X50_Y35_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (countn(1) & (!\Add0~1\)) # (!countn(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!countn(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X50_Y35_N5
\countn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(1));

-- Location: LCCOMB_X50_Y35_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (countn(2) & (\Add0~3\ $ (GND))) # (!countn(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((countn(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X50_Y35_N3
\countn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~4_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(2));

-- Location: LCCOMB_X50_Y35_N22
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

-- Location: FF_X50_Y35_N15
\countn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~6_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(3));

-- Location: LCCOMB_X50_Y35_N24
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (countn(4) & (\Add0~7\ $ (GND))) # (!countn(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((countn(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X50_Y35_N26
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

-- Location: LCCOMB_X50_Y35_N28
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (countn(6) & (\Add0~11\ $ (GND))) # (!countn(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((countn(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X50_Y35_N29
\countn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(6));

-- Location: LCCOMB_X50_Y35_N30
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

-- Location: FF_X50_Y35_N7
\countn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(7));

-- Location: LCCOMB_X50_Y34_N0
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (countn(8) & (\Add0~15\ $ (GND))) # (!countn(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((countn(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X50_Y34_N2
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

-- Location: FF_X50_Y34_N27
\countn[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~18_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(9));

-- Location: LCCOMB_X50_Y34_N4
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (countn(10) & (\Add0~19\ $ (GND))) # (!countn(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((countn(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countn(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X50_Y34_N6
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

-- Location: LCCOMB_X50_Y34_N8
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (countn(12) & (\Add0~23\ $ (GND))) # (!countn(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((countn(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X50_Y34_N29
\countn[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~24_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(12));

-- Location: LCCOMB_X50_Y34_N10
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

-- Location: LCCOMB_X50_Y34_N12
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

-- Location: LCCOMB_X50_Y34_N20
\countn[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn[14]~feeder_combout\ = \Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	combout => \countn[14]~feeder_combout\);

-- Location: FF_X50_Y34_N21
\countn[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn[14]~feeder_combout\,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(14));

-- Location: LCCOMB_X50_Y34_N14
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (countn(15) & (!\Add0~29\)) # (!countn(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!countn(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countn(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X50_Y34_N19
\countn[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~30_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(15));

-- Location: LCCOMB_X50_Y34_N16
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \Add0~31\ $ (!countn(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => countn(16),
	cin => \Add0~31\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X49_Y35_N26
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Add0~32_combout\ & (((\staten.00~q\) # (countn(16))) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \staten.00~q\,
	datac => countn(16),
	datad => \Add0~32_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X49_Y35_N27
\countn[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(16));

-- Location: LCCOMB_X49_Y35_N14
\staten.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \staten.00~0_combout\ = (\staten.00~q\) # ((\Equal0~4_combout\ & (!countn(16) & \re|dataReady~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => countn(16),
	datac => \staten.00~q\,
	datad => \re|dataReady~q\,
	combout => \staten.00~0_combout\);

-- Location: FF_X49_Y35_N15
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

-- Location: LCCOMB_X50_Y35_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (countn(11) & (countn(1) & (countn(2) & countn(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(11),
	datab => countn(1),
	datac => countn(2),
	datad => countn(0),
	combout => \Equal0~2_combout\);

-- Location: FF_X50_Y35_N9
\countn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(4));

-- Location: LCCOMB_X50_Y35_N8
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (countn(5) & (countn(3) & (countn(4) & countn(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(5),
	datab => countn(3),
	datac => countn(4),
	datad => countn(6),
	combout => \Equal0~1_combout\);

-- Location: FF_X50_Y34_N25
\countn[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~16_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(8));

-- Location: LCCOMB_X50_Y35_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (countn(10) & (countn(8) & (countn(7) & countn(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(10),
	datab => countn(8),
	datac => countn(7),
	datad => countn(9),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X50_Y35_N12
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X49_Y35_N8
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (countn(16)) # ((\staten.00~q\) # ((!\re|dataReady~q\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(16),
	datab => \staten.00~q\,
	datac => \Equal0~4_combout\,
	datad => \re|dataReady~q\,
	combout => \count~0_combout\);

-- Location: LCCOMB_X50_Y35_N10
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Add0~14_combout\ & (!\Add0~12_combout\ & (!\Add0~10_combout\ & !\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~8_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X50_Y34_N24
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & (!\Add0~18_combout\ & (!\Add0~16_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~16_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X50_Y34_N28
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\Add0~22_combout\ & (!\Add0~20_combout\ & (!\Add0~24_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~24_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X50_Y34_N18
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~4_combout\ & (\Add0~32_combout\ & (!\Add0~30_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~30_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X49_Y35_N16
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ((\staten.trans~q\ & ((\tr|flag~q\) # (!\Equal1~5_combout\)))) # (!\count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|flag~q\,
	datab => \count~0_combout\,
	datac => \staten.trans~q\,
	datad => \Equal1~5_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X49_Y35_N17
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

-- Location: LCCOMB_X49_Y35_N2
\countn[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn[5]~0_combout\ = (\tr|flag~q\ & (\re|dataReady~q\ & (!\staten.00~q\))) # (!\tr|flag~q\ & ((\staten.trans~q\) # ((\re|dataReady~q\ & !\staten.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|flag~q\,
	datab => \re|dataReady~q\,
	datac => \staten.00~q\,
	datad => \staten.trans~q\,
	combout => \countn[5]~0_combout\);

-- Location: FF_X50_Y35_N1
\countn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(0));

-- Location: LCCOMB_X57_Y35_N12
\led[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[0]~reg0feeder_combout\ = countn(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(0),
	combout => \led[0]~reg0feeder_combout\);

-- Location: FF_X57_Y35_N13
\led[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[0]~reg0_q\);

-- Location: FF_X50_Y35_N19
\led[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => countn(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[1]~reg0_q\);

-- Location: FF_X49_Y35_N1
\led[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => countn(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[2]~reg0_q\);

-- Location: FF_X50_Y35_N23
\led[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => countn(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[3]~reg0_q\);

-- Location: LCCOMB_X56_Y35_N0
\led[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[4]~reg0feeder_combout\ = countn(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => countn(4),
	combout => \led[4]~reg0feeder_combout\);

-- Location: FF_X56_Y35_N1
\led[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[4]~reg0_q\);

-- Location: FF_X50_Y35_N11
\countn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~10_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(5));

-- Location: LCCOMB_X52_Y35_N28
\led[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[5]~reg0feeder_combout\ = countn(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => countn(5),
	combout => \led[5]~reg0feeder_combout\);

-- Location: FF_X52_Y35_N29
\led[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[5]~reg0_q\);

-- Location: LCCOMB_X49_Y35_N22
\led[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[6]~reg0feeder_combout\ = countn(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => countn(6),
	combout => \led[6]~reg0feeder_combout\);

-- Location: FF_X49_Y35_N23
\led[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[6]~reg0_q\);

-- Location: LCCOMB_X49_Y35_N24
\led[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[7]~reg0feeder_combout\ = countn(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => countn(7),
	combout => \led[7]~reg0feeder_combout\);

-- Location: FF_X49_Y35_N25
\led[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[7]~reg0_q\);

-- Location: LCCOMB_X46_Y36_N20
\tr|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|WideOr1~0_combout\ = (!\tr|state\(3) & (\tr|state\(2) $ (((\tr|state\(1) & \tr|state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(1),
	datab => \tr|state\(0),
	datac => \tr|state\(2),
	datad => \tr|state\(3),
	combout => \tr|WideOr1~0_combout\);

-- Location: LCCOMB_X49_Y35_N28
\startr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \startr~1_combout\ = ((\startr~q\ & ((\startr~0_combout\) # (!\Equal1~5_combout\)))) # (!\count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startr~0_combout\,
	datab => \count~0_combout\,
	datac => \startr~q\,
	datad => \Equal1~5_combout\,
	combout => \startr~1_combout\);

-- Location: FF_X49_Y35_N29
startr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \startr~q\);

-- Location: LCCOMB_X46_Y36_N10
\tr|state[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|state[0]~0_combout\ = (\startr~q\) # (\tr|flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \startr~q\,
	datad => \tr|flag~q\,
	combout => \tr|state[0]~0_combout\);

-- Location: FF_X46_Y36_N21
\tr|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \tr|WideOr1~0_combout\,
	sclr => \tr|ALT_INV_flag~q\,
	ena => \tr|state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|state\(2));

-- Location: LCCOMB_X46_Y36_N30
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

-- Location: FF_X46_Y36_N31
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
	ena => \tr|state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|state\(1));

-- Location: LCCOMB_X45_Y36_N24
\tr|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|WideOr3~0_combout\ = (!\tr|state\(0) & ((\tr|state\(2) & ((!\tr|state\(3)))) # (!\tr|state\(2) & ((\tr|state\(1)) # (\tr|state\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(2),
	datab => \tr|state\(1),
	datac => \tr|state\(0),
	datad => \tr|state\(3),
	combout => \tr|WideOr3~0_combout\);

-- Location: FF_X45_Y36_N25
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
	ena => \tr|state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|state\(0));

-- Location: LCCOMB_X46_Y36_N12
\tr|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|WideOr0~0_combout\ = (\tr|state\(3) & (!\tr|state\(2) & ((!\tr|state\(0)) # (!\tr|state\(1))))) # (!\tr|state\(3) & (\tr|state\(1) & (\tr|state\(0) & \tr|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(1),
	datab => \tr|state\(0),
	datac => \tr|state\(3),
	datad => \tr|state\(2),
	combout => \tr|WideOr0~0_combout\);

-- Location: FF_X46_Y36_N13
\tr|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \tr|WideOr0~0_combout\,
	sclr => \tr|ALT_INV_flag~q\,
	ena => \tr|state[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|state\(3));

-- Location: LCCOMB_X46_Y36_N16
\tr|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|WideOr4~0_combout\ = (\tr|state\(3) & (!\tr|state\(2) & ((!\tr|state\(1)) # (!\tr|state\(0))))) # (!\tr|state\(3) & ((\tr|state\(0)) # ((\tr|state\(1)) # (\tr|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(0),
	datab => \tr|state\(3),
	datac => \tr|state\(1),
	datad => \tr|state\(2),
	combout => \tr|WideOr4~0_combout\);

-- Location: LCCOMB_X46_Y36_N22
\tr|flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|flag~0_combout\ = (\tr|flag~q\ & ((\tr|WideOr4~0_combout\))) # (!\tr|flag~q\ & (\startr~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \startr~q\,
	datac => \tr|flag~q\,
	datad => \tr|WideOr4~0_combout\,
	combout => \tr|flag~0_combout\);

-- Location: FF_X46_Y36_N23
\tr|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \tr|flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|flag~q\);

-- Location: LCCOMB_X45_Y36_N0
\tr|localclockOS|accumulator~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator~8_combout\ = (\tr|localclockOS|accumulator\(1) & \tr|flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tr|localclockOS|accumulator\(1),
	datad => \tr|flag~q\,
	combout => \tr|localclockOS|accumulator~8_combout\);

-- Location: LCCOMB_X45_Y36_N8
\tr|localclockOS|accumulator[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[1]~11_combout\ = (\tr|localclockOS|accumulator~10_combout\ & (\tr|localclockOS|accumulator~8_combout\ $ (VCC))) # (!\tr|localclockOS|accumulator~10_combout\ & (\tr|localclockOS|accumulator~8_combout\ & VCC))
-- \tr|localclockOS|accumulator[1]~12\ = CARRY((\tr|localclockOS|accumulator~10_combout\ & \tr|localclockOS|accumulator~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator~10_combout\,
	datab => \tr|localclockOS|accumulator~8_combout\,
	datad => VCC,
	combout => \tr|localclockOS|accumulator[1]~11_combout\,
	cout => \tr|localclockOS|accumulator[1]~12\);

-- Location: FF_X45_Y36_N9
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

-- Location: LCCOMB_X45_Y36_N26
\tr|localclockOS|accumulator~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator~9_combout\ = (\tr|localclockOS|Equal0~0_combout\) # (\tr|localclockOS|accumulator\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tr|localclockOS|Equal0~0_combout\,
	datac => \tr|localclockOS|accumulator\(8),
	combout => \tr|localclockOS|accumulator~9_combout\);

-- Location: LCCOMB_X45_Y36_N28
\tr|localclockOS|accumulator~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator~10_combout\ = (\tr|localclockOS|accumulator\(0) & (\tr|flag~q\ & ((\tr|localclockOS|Equal0~1_combout\) # (\tr|localclockOS|accumulator~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|Equal0~1_combout\,
	datab => \tr|localclockOS|accumulator\(0),
	datac => \tr|localclockOS|accumulator~9_combout\,
	datad => \tr|flag~q\,
	combout => \tr|localclockOS|accumulator~10_combout\);

-- Location: LCCOMB_X45_Y36_N30
\tr|localclockOS|accumulator[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[0]~28_combout\ = !\tr|localclockOS|accumulator~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tr|localclockOS|accumulator~10_combout\,
	combout => \tr|localclockOS|accumulator[0]~28_combout\);

-- Location: FF_X45_Y36_N31
\tr|localclockOS|accumulator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(0));

-- Location: LCCOMB_X45_Y36_N12
\tr|localclockOS|accumulator[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[3]~16_combout\ = (\tr|localclockOS|accumulator[2]~15\ & (\tr|localclockOS|accumulator\(3) & (\tr|localclockOS|accumulator~13_combout\ & VCC))) # (!\tr|localclockOS|accumulator[2]~15\ & ((((\tr|localclockOS|accumulator\(3) & 
-- \tr|localclockOS|accumulator~13_combout\)))))
-- \tr|localclockOS|accumulator[3]~17\ = CARRY((\tr|localclockOS|accumulator\(3) & (\tr|localclockOS|accumulator~13_combout\ & !\tr|localclockOS|accumulator[2]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(3),
	datab => \tr|localclockOS|accumulator~13_combout\,
	datad => VCC,
	cin => \tr|localclockOS|accumulator[2]~15\,
	combout => \tr|localclockOS|accumulator[3]~16_combout\,
	cout => \tr|localclockOS|accumulator[3]~17\);

-- Location: FF_X45_Y36_N13
\tr|localclockOS|accumulator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(3));

-- Location: LCCOMB_X45_Y36_N4
\tr|localclockOS|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|Equal0~0_combout\ = (\tr|localclockOS|accumulator\(2)) # ((\tr|localclockOS|accumulator\(1)) # ((!\tr|localclockOS|accumulator\(3)) # (!\tr|localclockOS|accumulator\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(2),
	datab => \tr|localclockOS|accumulator\(1),
	datac => \tr|localclockOS|accumulator\(0),
	datad => \tr|localclockOS|accumulator\(3),
	combout => \tr|localclockOS|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y36_N2
\tr|localclockOS|accumulator~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator~13_combout\ = (\tr|flag~q\ & ((\tr|localclockOS|Equal0~1_combout\) # ((\tr|localclockOS|Equal0~0_combout\) # (\tr|localclockOS|accumulator\(8)))))

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
	combout => \tr|localclockOS|accumulator~13_combout\);

-- Location: LCCOMB_X45_Y36_N14
\tr|localclockOS|accumulator[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[4]~18_combout\ = (\tr|localclockOS|accumulator[3]~17\ & (((!\tr|localclockOS|accumulator~13_combout\)) # (!\tr|localclockOS|accumulator\(4)))) # (!\tr|localclockOS|accumulator[3]~17\ & (((\tr|localclockOS|accumulator\(4) & 
-- \tr|localclockOS|accumulator~13_combout\)) # (GND)))
-- \tr|localclockOS|accumulator[4]~19\ = CARRY(((!\tr|localclockOS|accumulator[3]~17\) # (!\tr|localclockOS|accumulator~13_combout\)) # (!\tr|localclockOS|accumulator\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(4),
	datab => \tr|localclockOS|accumulator~13_combout\,
	datad => VCC,
	cin => \tr|localclockOS|accumulator[3]~17\,
	combout => \tr|localclockOS|accumulator[4]~18_combout\,
	cout => \tr|localclockOS|accumulator[4]~19\);

-- Location: LCCOMB_X45_Y36_N16
\tr|localclockOS|accumulator[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[5]~20_combout\ = (\tr|localclockOS|accumulator[4]~19\ & (\tr|localclockOS|accumulator\(5) & (\tr|localclockOS|accumulator~13_combout\ & VCC))) # (!\tr|localclockOS|accumulator[4]~19\ & ((((\tr|localclockOS|accumulator\(5) & 
-- \tr|localclockOS|accumulator~13_combout\)))))
-- \tr|localclockOS|accumulator[5]~21\ = CARRY((\tr|localclockOS|accumulator\(5) & (\tr|localclockOS|accumulator~13_combout\ & !\tr|localclockOS|accumulator[4]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(5),
	datab => \tr|localclockOS|accumulator~13_combout\,
	datad => VCC,
	cin => \tr|localclockOS|accumulator[4]~19\,
	combout => \tr|localclockOS|accumulator[5]~20_combout\,
	cout => \tr|localclockOS|accumulator[5]~21\);

-- Location: LCCOMB_X45_Y36_N18
\tr|localclockOS|accumulator[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[6]~22_combout\ = (\tr|localclockOS|accumulator[5]~21\ & (((!\tr|localclockOS|accumulator\(6))) # (!\tr|localclockOS|accumulator~13_combout\))) # (!\tr|localclockOS|accumulator[5]~21\ & 
-- (((\tr|localclockOS|accumulator~13_combout\ & \tr|localclockOS|accumulator\(6))) # (GND)))
-- \tr|localclockOS|accumulator[6]~23\ = CARRY(((!\tr|localclockOS|accumulator[5]~21\) # (!\tr|localclockOS|accumulator\(6))) # (!\tr|localclockOS|accumulator~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator~13_combout\,
	datab => \tr|localclockOS|accumulator\(6),
	datad => VCC,
	cin => \tr|localclockOS|accumulator[5]~21\,
	combout => \tr|localclockOS|accumulator[6]~22_combout\,
	cout => \tr|localclockOS|accumulator[6]~23\);

-- Location: FF_X45_Y36_N19
\tr|localclockOS|accumulator[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(6));

-- Location: LCCOMB_X45_Y36_N22
\tr|localclockOS|accumulator[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|accumulator[8]~26_combout\ = \tr|localclockOS|accumulator[7]~25\ $ (((\tr|localclockOS|accumulator\(8) & \tr|localclockOS|accumulator~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(8),
	datab => \tr|localclockOS|accumulator~13_combout\,
	cin => \tr|localclockOS|accumulator[7]~25\,
	combout => \tr|localclockOS|accumulator[8]~26_combout\);

-- Location: FF_X45_Y36_N23
\tr|localclockOS|accumulator[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(8));

-- Location: FF_X45_Y36_N17
\tr|localclockOS|accumulator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(5));

-- Location: FF_X45_Y36_N15
\tr|localclockOS|accumulator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tr|localclockOS|accumulator[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|accumulator\(4));

-- Location: LCCOMB_X45_Y36_N6
\tr|localclockOS|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|Equal0~1_combout\ = ((\tr|localclockOS|accumulator\(5)) # ((!\tr|localclockOS|accumulator\(6)) # (!\tr|localclockOS|accumulator\(4)))) # (!\tr|localclockOS|accumulator\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|accumulator\(7),
	datab => \tr|localclockOS|accumulator\(5),
	datac => \tr|localclockOS|accumulator\(4),
	datad => \tr|localclockOS|accumulator\(6),
	combout => \tr|localclockOS|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y36_N14
\tr|localclockOS|flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|localclockOS|flag~0_combout\ = \tr|localclockOS|flag~q\ $ (((!\tr|localclockOS|Equal0~0_combout\ & (!\tr|localclockOS|accumulator\(8) & !\tr|localclockOS|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|localclockOS|Equal0~0_combout\,
	datab => \tr|localclockOS|accumulator\(8),
	datac => \tr|localclockOS|flag~q\,
	datad => \tr|localclockOS|Equal0~1_combout\,
	combout => \tr|localclockOS|flag~0_combout\);

-- Location: FF_X1_Y36_N15
\tr|localclockOS|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tr|localclockOS|flag~0_combout\,
	sclr => \tr|ALT_INV_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|localclockOS|flag~q\);

-- Location: LCCOMB_X1_Y36_N20
\tr|transmeterClock\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|transmeterClock~combout\ = LCELL((\tr|flag~q\ & ((\tr|localclockOS|flag~q\))) # (!\tr|flag~q\ & (\clk~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk~input_o\,
	datac => \tr|flag~q\,
	datad => \tr|localclockOS|flag~q\,
	combout => \tr|transmeterClock~combout\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X48_Y35_N10
\re|character[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[0]~1_combout\ = (\re|Decoder1~2_combout\ & ((\re|flagStart~q\ & ((\rx~input_o\))) # (!\re|flagStart~q\ & (\re|character\(0))))) # (!\re|Decoder1~2_combout\ & (((\re|character\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|Decoder1~2_combout\,
	datab => \re|flagStart~q\,
	datac => \re|character\(0),
	datad => \rx~input_o\,
	combout => \re|character[0]~1_combout\);

-- Location: FF_X48_Y35_N11
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

-- Location: LCCOMB_X52_Y30_N14
\mem|memory_rtl_0_bypass[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[33]~feeder_combout\ = \re|character\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \re|character\(0),
	combout => \mem|memory_rtl_0_bypass[33]~feeder_combout\);

-- Location: FF_X52_Y30_N15
\mem|memory_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(33));

-- Location: LCCOMB_X53_Y34_N18
\count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~16_combout\ = (\count~0_combout\ & countn(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~0_combout\,
	datad => countn(15),
	combout => \count~16_combout\);

-- Location: LCCOMB_X53_Y34_N26
\mem|memory_rtl_0|auto_generated|address_reg_b[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|address_reg_b[2]~feeder_combout\ = \count~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count~16_combout\,
	combout => \mem|memory_rtl_0|auto_generated|address_reg_b[2]~feeder_combout\);

-- Location: FF_X53_Y34_N27
\mem|memory_rtl_0|auto_generated|address_reg_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0|auto_generated|address_reg_b[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0|auto_generated|address_reg_b\(2));

-- Location: LCCOMB_X53_Y34_N8
\count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~15_combout\ = (\count~0_combout\ & countn(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~0_combout\,
	datad => countn(14),
	combout => \count~15_combout\);

-- Location: LCCOMB_X53_Y34_N4
\mem|memory_rtl_0|auto_generated|address_reg_b[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|address_reg_b[1]~feeder_combout\ = \count~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~15_combout\,
	combout => \mem|memory_rtl_0|auto_generated|address_reg_b[1]~feeder_combout\);

-- Location: FF_X53_Y34_N5
\mem|memory_rtl_0|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0|auto_generated|address_reg_b[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0|auto_generated|address_reg_b\(1));

-- Location: LCCOMB_X49_Y35_N10
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (countn(0) & \count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countn(0),
	datac => \count~0_combout\,
	combout => \count~2_combout\);

-- Location: FF_X49_Y35_N11
\count[0]\ : dffeas
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
	q => count(0));

-- Location: LCCOMB_X50_Y35_N4
\count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (countn(1) & \count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(1),
	datad => \count~0_combout\,
	combout => \count~3_combout\);

-- Location: FF_X50_Y35_N27
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X49_Y35_N12
\count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (countn(2) & \count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countn(2),
	datac => \count~0_combout\,
	combout => \count~4_combout\);

-- Location: FF_X49_Y35_N13
\count[2]\ : dffeas
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
	q => count(2));

-- Location: LCCOMB_X49_Y35_N6
\count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (\count~0_combout\ & countn(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~0_combout\,
	datad => countn(3),
	combout => \count~5_combout\);

-- Location: FF_X49_Y35_N7
\count[3]\ : dffeas
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
	q => count(3));

-- Location: LCCOMB_X49_Y35_N20
\count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (\count~0_combout\ & countn(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~0_combout\,
	datad => countn(4),
	combout => \count~6_combout\);

-- Location: FF_X49_Y35_N21
\count[4]\ : dffeas
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
	q => count(4));

-- Location: LCCOMB_X49_Y35_N30
\count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (countn(5) & \count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countn(5),
	datac => \count~0_combout\,
	combout => \count~7_combout\);

-- Location: FF_X49_Y35_N31
\count[5]\ : dffeas
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
	q => count(5));

-- Location: LCCOMB_X49_Y35_N4
\count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (\count~0_combout\ & countn(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~0_combout\,
	datad => countn(6),
	combout => \count~8_combout\);

-- Location: FF_X49_Y35_N5
\count[6]\ : dffeas
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
	q => count(6));

-- Location: LCCOMB_X49_Y35_N18
\count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~9_combout\ = (\count~0_combout\ & countn(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~0_combout\,
	datad => countn(7),
	combout => \count~9_combout\);

-- Location: FF_X49_Y35_N19
\count[7]\ : dffeas
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
	q => count(7));

-- Location: LCCOMB_X52_Y35_N22
\count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~10_combout\ = (countn(8) & \count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countn(8),
	datad => \count~0_combout\,
	combout => \count~10_combout\);

-- Location: LCCOMB_X52_Y35_N26
\count[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~feeder_combout\ = \count~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count~10_combout\,
	combout => \count[8]~feeder_combout\);

-- Location: FF_X52_Y35_N27
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X52_Y35_N14
\count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~11_combout\ = (countn(9) & \count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => countn(9),
	datad => \count~0_combout\,
	combout => \count~11_combout\);

-- Location: FF_X52_Y35_N15
\count[9]\ : dffeas
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
	q => count(9));

-- Location: FF_X50_Y34_N15
\countn[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(10));

-- Location: LCCOMB_X52_Y35_N20
\count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~12_combout\ = (countn(10) & \count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countn(10),
	datad => \count~0_combout\,
	combout => \count~12_combout\);

-- Location: LCCOMB_X52_Y35_N24
\count[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~feeder_combout\ = \count~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~12_combout\,
	combout => \count[10]~feeder_combout\);

-- Location: FF_X52_Y35_N25
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X50_Y34_N22
\countn[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \countn[11]~feeder_combout\ = \Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~22_combout\,
	combout => \countn[11]~feeder_combout\);

-- Location: FF_X50_Y34_N23
\countn[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countn[11]~feeder_combout\,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(11));

-- Location: LCCOMB_X52_Y35_N10
\count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~13_combout\ = (countn(11) & \count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countn(11),
	datad => \count~0_combout\,
	combout => \count~13_combout\);

-- Location: LCCOMB_X52_Y35_N16
\count[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~feeder_combout\ = \count~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count~13_combout\,
	combout => \count[11]~feeder_combout\);

-- Location: FF_X52_Y35_N17
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X50_Y35_N0
\count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~14_combout\ = (countn(12) & \count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countn(12),
	datad => \count~0_combout\,
	combout => \count~14_combout\);

-- Location: FF_X50_Y35_N17
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: M9K_X51_Y26_N0
\mem|memory_rtl_0|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a32_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a32_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y27_N0
\mem|memory_rtl_0|auto_generated|ram_block1a48\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a48_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a48_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y30_N4
\mem|memory~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~22_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a48~portbdataout\))) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- (\mem|memory_rtl_0|auto_generated|ram_block1a32~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a32~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a48~portbdataout\,
	combout => \mem|memory~22_combout\);

-- Location: M9K_X78_Y30_N0
\mem|memory_rtl_0|auto_generated|ram_block1a56\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a56_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a56_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y30_N0
\mem|memory_rtl_0|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a40_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y30_N10
\mem|memory~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~21_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a56~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a40~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a56~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a40~portbdataout\,
	combout => \mem|memory~21_combout\);

-- Location: LCCOMB_X52_Y30_N22
\mem|memory~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~23_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~21_combout\) # ((!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & \mem|memory~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~22_combout\,
	datad => \mem|memory~21_combout\,
	combout => \mem|memory~23_combout\);

-- Location: M9K_X51_Y31_N0
\mem|memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y28_N0
\mem|memory_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y30_N2
\mem|memory~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~19_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a16~portbdataout\))) # 
-- (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	combout => \mem|memory~19_combout\);

-- Location: M9K_X51_Y32_N0
\mem|memory_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y27_N0
\mem|memory_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y30_N24
\mem|memory~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~18_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a24~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	combout => \mem|memory~18_combout\);

-- Location: LCCOMB_X52_Y30_N28
\mem|memory~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~20_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~19_combout\) # (\mem|memory~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~19_combout\,
	datad => \mem|memory~18_combout\,
	combout => \mem|memory~20_combout\);

-- Location: LCCOMB_X52_Y30_N18
\mem|memory~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~24_combout\ = (\mem|memory~16_combout\ & (\mem|memory_rtl_0_bypass\(33))) # (!\mem|memory~16_combout\ & (((\mem|memory~23_combout\) # (\mem|memory~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory~16_combout\,
	datab => \mem|memory_rtl_0_bypass\(33),
	datac => \mem|memory~23_combout\,
	datad => \mem|memory~20_combout\,
	combout => \mem|memory~24_combout\);

-- Location: LCCOMB_X53_Y35_N8
\write~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \write~0_combout\ = (\write~q\) # (!\count~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count~0_combout\,
	datac => \write~q\,
	combout => \write~0_combout\);

-- Location: FF_X53_Y35_N9
write : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \write~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write~q\);

-- Location: FF_X52_Y30_N19
\mem|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory~24_combout\,
	ena => \write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|d\(0));

-- Location: LCCOMB_X48_Y36_N24
\tr|data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|data[7]~0_combout\ = (\startr~q\ & !\tr|flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \startr~q\,
	datad => \tr|flag~q\,
	combout => \tr|data[7]~0_combout\);

-- Location: FF_X48_Y36_N9
\tr|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	asdata => \mem|d\(0),
	sload => VCC,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(0));

-- Location: LCCOMB_X48_Y36_N8
\tr|dataBit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|dataBit~1_combout\ = (!\tr|state\(2) & (\tr|flag~q\ & ((\tr|data\(0)) # (!\tr|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(2),
	datab => \tr|state\(1),
	datac => \tr|data\(0),
	datad => \tr|flag~q\,
	combout => \tr|dataBit~1_combout\);

-- Location: LCCOMB_X48_Y35_N20
\re|character[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[7]~0_combout\ = (\re|Decoder1~1_combout\ & ((\re|flagStart~q\ & (\rx~input_o\)) # (!\re|flagStart~q\ & ((\re|character\(7)))))) # (!\re|Decoder1~1_combout\ & (((\re|character\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|Decoder1~1_combout\,
	datab => \rx~input_o\,
	datac => \re|character\(7),
	datad => \re|flagStart~q\,
	combout => \re|character[7]~0_combout\);

-- Location: FF_X48_Y35_N21
\re|character[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(7));

-- Location: LCCOMB_X52_Y30_N8
\mem|memory_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[40]~feeder_combout\ = \re|character\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \re|character\(7),
	combout => \mem|memory_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X52_Y30_N9
\mem|memory_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(40));

-- Location: M9K_X37_Y29_N0
\mem|memory_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y32_N0
\mem|memory_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y30_N30
\mem|memory~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~0_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a31~portbdataout\))) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & (\mem|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	combout => \mem|memory~0_combout\);

-- Location: M9K_X51_Y30_N0
\mem|memory_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y31_N0
\mem|memory_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y30_N16
\mem|memory~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~1_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a23~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	datac => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	combout => \mem|memory~1_combout\);

-- Location: LCCOMB_X52_Y30_N26
\mem|memory~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~2_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~0_combout\) # (\mem|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~0_combout\,
	datad => \mem|memory~1_combout\,
	combout => \mem|memory~2_combout\);

-- Location: M9K_X51_Y29_N0
\mem|memory_rtl_0|auto_generated|ram_block1a47\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a47_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a47_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y31_N0
\mem|memory_rtl_0|auto_generated|ram_block1a63\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a63_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a63_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y30_N12
\mem|memory~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~3_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a63~portbdataout\))) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & (\mem|memory_rtl_0|auto_generated|ram_block1a47~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a47~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a63~portbdataout\,
	combout => \mem|memory~3_combout\);

-- Location: LCCOMB_X52_Y30_N20
\mem|memory~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~5_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~4_combout\) # (\mem|memory~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory~4_combout\,
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datad => \mem|memory~3_combout\,
	combout => \mem|memory~5_combout\);

-- Location: LCCOMB_X52_Y30_N0
\mem|memory~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~17_combout\ = (\mem|memory~16_combout\ & (\mem|memory_rtl_0_bypass\(40))) # (!\mem|memory~16_combout\ & (((\mem|memory~2_combout\) # (\mem|memory~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory~16_combout\,
	datab => \mem|memory_rtl_0_bypass\(40),
	datac => \mem|memory~2_combout\,
	datad => \mem|memory~5_combout\,
	combout => \mem|memory~17_combout\);

-- Location: FF_X52_Y30_N1
\mem|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory~17_combout\,
	ena => \write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|d\(7));

-- Location: FF_X48_Y36_N11
\tr|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	asdata => \mem|d\(7),
	sload => VCC,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(7));

-- Location: LCCOMB_X48_Y36_N10
\tr|dataBit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|dataBit~0_combout\ = (\tr|state\(3) & (\tr|flag~q\ & ((\tr|state\(1)) # (\tr|data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(1),
	datab => \tr|state\(3),
	datac => \tr|data\(7),
	datad => \tr|flag~q\,
	combout => \tr|dataBit~0_combout\);

-- Location: LCCOMB_X48_Y36_N2
\tr|dataBit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|dataBit~2_combout\ = (\tr|state\(0) & (((\tr|dataBit~0_combout\)))) # (!\tr|state\(0) & (!\tr|state\(3) & (\tr|dataBit~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(0),
	datab => \tr|state\(3),
	datac => \tr|dataBit~1_combout\,
	datad => \tr|dataBit~0_combout\,
	combout => \tr|dataBit~2_combout\);

-- Location: LCCOMB_X53_Y35_N18
\mem|memory_rtl_0_bypass[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[0]~0_combout\ = !\write~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write~q\,
	combout => \mem|memory_rtl_0_bypass[0]~0_combout\);

-- Location: FF_X53_Y35_N19
\mem|memory_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(0));

-- Location: FF_X49_Y34_N29
\mem|memory_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => count(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(1));

-- Location: FF_X49_Y34_N17
\mem|memory_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(4));

-- Location: LCCOMB_X49_Y34_N10
\mem|memory_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[2]~feeder_combout\ = \count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~2_combout\,
	combout => \mem|memory_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X49_Y34_N11
\mem|memory_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(2));

-- Location: LCCOMB_X49_Y34_N16
\mem|memory~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~6_combout\ = (\mem|memory_rtl_0_bypass\(3) & (\mem|memory_rtl_0_bypass\(4) & (\mem|memory_rtl_0_bypass\(1) $ (!\mem|memory_rtl_0_bypass\(2))))) # (!\mem|memory_rtl_0_bypass\(3) & (!\mem|memory_rtl_0_bypass\(4) & (\mem|memory_rtl_0_bypass\(1) $ 
-- (!\mem|memory_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(3),
	datab => \mem|memory_rtl_0_bypass\(1),
	datac => \mem|memory_rtl_0_bypass\(4),
	datad => \mem|memory_rtl_0_bypass\(2),
	combout => \mem|memory~6_combout\);

-- Location: LCCOMB_X49_Y34_N18
\mem|memory_rtl_0_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[6]~feeder_combout\ = \count~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count~4_combout\,
	combout => \mem|memory_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X49_Y34_N19
\mem|memory_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(6));

-- Location: FF_X49_Y34_N9
\mem|memory_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(8));

-- Location: LCCOMB_X49_Y34_N24
\mem|memory_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[5]~feeder_combout\ = count(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(2),
	combout => \mem|memory_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X49_Y34_N25
\mem|memory_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(5));

-- Location: LCCOMB_X49_Y34_N8
\mem|memory~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~7_combout\ = (\mem|memory_rtl_0_bypass\(7) & (\mem|memory_rtl_0_bypass\(8) & (\mem|memory_rtl_0_bypass\(6) $ (!\mem|memory_rtl_0_bypass\(5))))) # (!\mem|memory_rtl_0_bypass\(7) & (!\mem|memory_rtl_0_bypass\(8) & (\mem|memory_rtl_0_bypass\(6) $ 
-- (!\mem|memory_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(7),
	datab => \mem|memory_rtl_0_bypass\(6),
	datac => \mem|memory_rtl_0_bypass\(8),
	datad => \mem|memory_rtl_0_bypass\(5),
	combout => \mem|memory~7_combout\);

-- Location: LCCOMB_X49_Y34_N20
\mem|memory_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[9]~feeder_combout\ = count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(4),
	combout => \mem|memory_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X49_Y34_N21
\mem|memory_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(9));

-- Location: FF_X49_Y34_N13
\mem|memory_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(12));

-- Location: LCCOMB_X49_Y34_N2
\mem|memory_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[10]~feeder_combout\ = \count~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count~6_combout\,
	combout => \mem|memory_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X49_Y34_N3
\mem|memory_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(10));

-- Location: LCCOMB_X49_Y34_N12
\mem|memory~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~8_combout\ = (\mem|memory_rtl_0_bypass\(11) & (\mem|memory_rtl_0_bypass\(12) & (\mem|memory_rtl_0_bypass\(9) $ (!\mem|memory_rtl_0_bypass\(10))))) # (!\mem|memory_rtl_0_bypass\(11) & (!\mem|memory_rtl_0_bypass\(12) & 
-- (\mem|memory_rtl_0_bypass\(9) $ (!\mem|memory_rtl_0_bypass\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(11),
	datab => \mem|memory_rtl_0_bypass\(9),
	datac => \mem|memory_rtl_0_bypass\(12),
	datad => \mem|memory_rtl_0_bypass\(10),
	combout => \mem|memory~8_combout\);

-- Location: LCCOMB_X49_Y34_N0
\mem|memory~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~10_combout\ = (\mem|memory~9_combout\ & (\mem|memory~6_combout\ & (\mem|memory~7_combout\ & \mem|memory~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory~9_combout\,
	datab => \mem|memory~6_combout\,
	datac => \mem|memory~7_combout\,
	datad => \mem|memory~8_combout\,
	combout => \mem|memory~10_combout\);

-- Location: LCCOMB_X52_Y35_N30
\mem|memory~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~16_combout\ = (\mem|memory~15_combout\ & (\mem|memory_rtl_0_bypass\(0) & \mem|memory~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory~15_combout\,
	datab => \mem|memory_rtl_0_bypass\(0),
	datad => \mem|memory~10_combout\,
	combout => \mem|memory~16_combout\);

-- Location: FF_X50_Y34_N31
\countn[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~26_combout\,
	sload => VCC,
	ena => \countn[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countn(13));

-- Location: LCCOMB_X53_Y35_N16
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\count~0_combout\ & countn(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count~0_combout\,
	datad => countn(13),
	combout => \count~1_combout\);

-- Location: LCCOMB_X53_Y35_N4
\mem|memory_rtl_0|auto_generated|address_reg_b[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0|auto_generated|address_reg_b[0]~feeder_combout\ = \count~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \count~1_combout\,
	combout => \mem|memory_rtl_0|auto_generated|address_reg_b[0]~feeder_combout\);

-- Location: FF_X53_Y35_N5
\mem|memory_rtl_0|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0|auto_generated|address_reg_b[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X47_Y35_N22
\re|character[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[6]~7_combout\ = (\re|Decoder1~8_combout\ & ((\re|flagStart~q\ & (\rx~input_o\)) # (!\re|flagStart~q\ & ((\re|character\(6)))))) # (!\re|Decoder1~8_combout\ & (((\re|character\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|Decoder1~8_combout\,
	datab => \rx~input_o\,
	datac => \re|character\(6),
	datad => \re|flagStart~q\,
	combout => \re|character[6]~7_combout\);

-- Location: FF_X47_Y35_N23
\re|character[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(6));

-- Location: M9K_X51_Y47_N0
\mem|memory_rtl_0|auto_generated|ram_block1a62\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a62_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a62_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y41_N0
\mem|memory_rtl_0|auto_generated|ram_block1a46\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a46_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a46_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y41_N30
\mem|memory~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~63_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a62~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a46~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a62~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a46~portbdataout\,
	combout => \mem|memory~63_combout\);

-- Location: M9K_X51_Y42_N0
\mem|memory_rtl_0|auto_generated|ram_block1a54\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a54_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a54_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y40_N0
\mem|memory_rtl_0|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a38_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a38_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y41_N20
\mem|memory~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~64_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a54~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a38~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a54~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a38~portbdataout\,
	combout => \mem|memory~64_combout\);

-- Location: LCCOMB_X52_Y41_N14
\mem|memory~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~65_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~63_combout\) # ((!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & \mem|memory~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory~63_combout\,
	datad => \mem|memory~64_combout\,
	combout => \mem|memory~65_combout\);

-- Location: M9K_X51_Y45_N0
\mem|memory_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y40_N0
\mem|memory_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y41_N8
\mem|memory~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~60_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a30~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	combout => \mem|memory~60_combout\);

-- Location: M9K_X37_Y43_N0
\mem|memory_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y44_N0
\mem|memory_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y41_N6
\mem|memory~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~61_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a22~portbdataout\))) # 
-- (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	combout => \mem|memory~61_combout\);

-- Location: LCCOMB_X52_Y41_N12
\mem|memory~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~62_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~60_combout\) # (\mem|memory~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~60_combout\,
	datad => \mem|memory~61_combout\,
	combout => \mem|memory~62_combout\);

-- Location: LCCOMB_X52_Y41_N18
\mem|memory~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~66_combout\ = (\mem|memory~16_combout\ & (\mem|memory_rtl_0_bypass\(39))) # (!\mem|memory~16_combout\ & (((\mem|memory~65_combout\) # (\mem|memory~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(39),
	datab => \mem|memory~16_combout\,
	datac => \mem|memory~65_combout\,
	datad => \mem|memory~62_combout\,
	combout => \mem|memory~66_combout\);

-- Location: FF_X52_Y41_N19
\mem|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory~66_combout\,
	ena => \write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|d\(6));

-- Location: FF_X48_Y36_N5
\tr|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	asdata => \mem|d\(6),
	sload => VCC,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(6));

-- Location: LCCOMB_X48_Y36_N4
\tr|dataBit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|dataBit~3_combout\ = (\tr|state\(0) & (\tr|data\(1) & ((\tr|state\(1))))) # (!\tr|state\(0) & (((\tr|data\(6) & !\tr|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|data\(1),
	datab => \tr|state\(0),
	datac => \tr|data\(6),
	datad => \tr|state\(1),
	combout => \tr|dataBit~3_combout\);

-- Location: LCCOMB_X48_Y35_N8
\re|character[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[5]~5_combout\ = (\re|Decoder1~6_combout\ & ((\re|flagStart~q\ & (\rx~input_o\)) # (!\re|flagStart~q\ & ((\re|character\(5)))))) # (!\re|Decoder1~6_combout\ & (((\re|character\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|Decoder1~6_combout\,
	datab => \rx~input_o\,
	datac => \re|character\(5),
	datad => \re|flagStart~q\,
	combout => \re|character[5]~5_combout\);

-- Location: FF_X48_Y35_N9
\re|character[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(5));

-- Location: LCCOMB_X57_Y35_N2
\mem|memory_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[38]~feeder_combout\ = \re|character\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \re|character\(5),
	combout => \mem|memory_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X57_Y35_N3
\mem|memory_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(38));

-- Location: M9K_X64_Y37_N0
\mem|memory_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y39_N0
\mem|memory_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y35_N22
\mem|memory~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~46_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a29~portbdataout\))) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & (\mem|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	combout => \mem|memory~46_combout\);

-- Location: M9K_X64_Y38_N0
\mem|memory_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y33_N0
\mem|memory_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y35_N0
\mem|memory~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~47_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a21~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & ((\mem|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	combout => \mem|memory~47_combout\);

-- Location: LCCOMB_X65_Y35_N26
\mem|memory~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~48_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~46_combout\) # (\mem|memory~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~46_combout\,
	datad => \mem|memory~47_combout\,
	combout => \mem|memory~48_combout\);

-- Location: M9K_X64_Y35_N0
\mem|memory_rtl_0|auto_generated|ram_block1a53\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a53_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a53_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y27_N0
\mem|memory_rtl_0|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y35_N14
\mem|memory~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~50_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a53~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & ((\mem|memory_rtl_0|auto_generated|ram_block1a37~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|ram_block1a53~portbdataout\,
	datac => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a37~portbdataout\,
	combout => \mem|memory~50_combout\);

-- Location: M9K_X78_Y35_N0
\mem|memory_rtl_0|auto_generated|ram_block1a61\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a61_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a61_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y35_N0
\mem|memory_rtl_0|auto_generated|ram_block1a45\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a45_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a45_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y35_N12
\mem|memory~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~49_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a61~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a45~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a61~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a45~portbdataout\,
	combout => \mem|memory~49_combout\);

-- Location: LCCOMB_X65_Y35_N20
\mem|memory~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~51_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~50_combout\) # (\mem|memory~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~50_combout\,
	datad => \mem|memory~49_combout\,
	combout => \mem|memory~51_combout\);

-- Location: LCCOMB_X65_Y35_N28
\mem|memory~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~52_combout\ = (\mem|memory~16_combout\ & (\mem|memory_rtl_0_bypass\(38))) # (!\mem|memory~16_combout\ & (((\mem|memory~48_combout\) # (\mem|memory~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory~16_combout\,
	datab => \mem|memory_rtl_0_bypass\(38),
	datac => \mem|memory~48_combout\,
	datad => \mem|memory~51_combout\,
	combout => \mem|memory~52_combout\);

-- Location: FF_X65_Y35_N29
\mem|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory~52_combout\,
	ena => \write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|d\(5));

-- Location: FF_X49_Y36_N23
\tr|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	asdata => \mem|d\(5),
	sload => VCC,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(5));

-- Location: LCCOMB_X47_Y35_N30
\re|character[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[4]~2_combout\ = (\re|Decoder1~3_combout\ & ((\re|flagStart~q\ & (\rx~input_o\)) # (!\re|flagStart~q\ & ((\re|character\(4)))))) # (!\re|Decoder1~3_combout\ & (((\re|character\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|Decoder1~3_combout\,
	datab => \rx~input_o\,
	datac => \re|character\(4),
	datad => \re|flagStart~q\,
	combout => \re|character[4]~2_combout\);

-- Location: FF_X47_Y35_N31
\re|character[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(4));

-- Location: M9K_X51_Y33_N0
\mem|memory_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y36_N0
\mem|memory_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X50_Y36_N26
\mem|memory~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~26_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a20~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & ((\mem|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	combout => \mem|memory~26_combout\);

-- Location: M9K_X51_Y36_N0
\mem|memory_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y36_N0
\mem|memory_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X50_Y36_N0
\mem|memory~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~25_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a28~portbdataout\))) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & (\mem|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	combout => \mem|memory~25_combout\);

-- Location: LCCOMB_X50_Y36_N4
\mem|memory~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~27_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~26_combout\) # (\mem|memory~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~26_combout\,
	datad => \mem|memory~25_combout\,
	combout => \mem|memory~27_combout\);

-- Location: M9K_X51_Y35_N0
\mem|memory_rtl_0|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y37_N0
\mem|memory_rtl_0|auto_generated|ram_block1a52\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a52_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a52_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X50_Y36_N8
\mem|memory~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~29_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a52~portbdataout\))) # 
-- (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a36~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a36~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a52~portbdataout\,
	combout => \mem|memory~29_combout\);

-- Location: M9K_X51_Y34_N0
\mem|memory_rtl_0|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a44_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y34_N0
\mem|memory_rtl_0|auto_generated|ram_block1a60\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a60_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a60_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X50_Y36_N18
\mem|memory~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~28_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a60~portbdataout\))) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & (\mem|memory_rtl_0|auto_generated|ram_block1a44~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a44~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a60~portbdataout\,
	combout => \mem|memory~28_combout\);

-- Location: LCCOMB_X50_Y36_N10
\mem|memory~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~30_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~29_combout\) # (\mem|memory~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~29_combout\,
	datad => \mem|memory~28_combout\,
	combout => \mem|memory~30_combout\);

-- Location: LCCOMB_X50_Y36_N24
\mem|memory~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~31_combout\ = (\mem|memory~16_combout\ & (\mem|memory_rtl_0_bypass\(37))) # (!\mem|memory~16_combout\ & (((\mem|memory~27_combout\) # (\mem|memory~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0_bypass\(37),
	datab => \mem|memory~16_combout\,
	datac => \mem|memory~27_combout\,
	datad => \mem|memory~30_combout\,
	combout => \mem|memory~31_combout\);

-- Location: FF_X50_Y36_N25
\mem|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory~31_combout\,
	ena => \write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|d\(4));

-- Location: FF_X48_Y36_N1
\tr|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	asdata => \mem|d\(4),
	sload => VCC,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(4));

-- Location: LCCOMB_X49_Y36_N16
\tr|data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|data[3]~feeder_combout\ = \mem|d\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|d\(3),
	combout => \tr|data[3]~feeder_combout\);

-- Location: FF_X49_Y36_N17
\tr|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \tr|data[3]~feeder_combout\,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(3));

-- Location: LCCOMB_X48_Y35_N26
\re|character[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \re|character[2]~4_combout\ = (\re|Decoder1~5_combout\ & ((\re|flagStart~q\ & ((\rx~input_o\))) # (!\re|flagStart~q\ & (\re|character\(2))))) # (!\re|Decoder1~5_combout\ & (((\re|character\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \re|Decoder1~5_combout\,
	datab => \re|flagStart~q\,
	datac => \re|character\(2),
	datad => \rx~input_o\,
	combout => \re|character[2]~4_combout\);

-- Location: FF_X48_Y35_N27
\re|character[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \re|activeClock~clkctrl_outclk\,
	d => \re|character[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \re|character\(2));

-- Location: LCCOMB_X52_Y41_N24
\mem|memory_rtl_0_bypass[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory_rtl_0_bypass[35]~feeder_combout\ = \re|character\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \re|character\(2),
	combout => \mem|memory_rtl_0_bypass[35]~feeder_combout\);

-- Location: FF_X52_Y41_N25
\mem|memory_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory_rtl_0_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|memory_rtl_0_bypass\(35));

-- Location: M9K_X51_Y44_N0
\mem|memory_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode570w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y41_N0
\mem|memory_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode543w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y41_N4
\mem|memory~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~40_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a18~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & ((\mem|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	combout => \mem|memory~40_combout\);

-- Location: M9K_X64_Y42_N0
\mem|memory_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode560w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y39_N0
\mem|memory_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode580w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y41_N2
\mem|memory~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~39_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & ((\mem|memory_rtl_0|auto_generated|ram_block1a26~portbdataout\))) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & (\mem|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	combout => \mem|memory~39_combout\);

-- Location: LCCOMB_X52_Y41_N22
\mem|memory~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~41_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~40_combout\) # (\mem|memory~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~40_combout\,
	datad => \mem|memory~39_combout\,
	combout => \mem|memory~41_combout\);

-- Location: M9K_X51_Y41_N0
\mem|memory_rtl_0|auto_generated|ram_block1a50\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode610w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a50_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a50_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y43_N0
\mem|memory_rtl_0|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode590w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y41_N26
\mem|memory~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~43_combout\ = (!\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a50~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) 
-- & ((\mem|memory_rtl_0|auto_generated|ram_block1a34~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|ram_block1a50~portbdataout\,
	datac => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a34~portbdataout\,
	combout => \mem|memory~43_combout\);

-- Location: M9K_X51_Y46_N0
\mem|memory_rtl_0|auto_generated|ram_block1a58\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode620w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a58_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a58_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y41_N0
\mem|memory_rtl_0|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:mem|altsyncram:memory_rtl_0|altsyncram_07h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
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
	port_b_address_clock => "clock0",
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
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem|memory_rtl_0|auto_generated|decode2|w_anode600w[3]~0_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \mem|memory_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \mem|memory_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\,
	portbaddr => \mem|memory_rtl_0|auto_generated|ram_block1a42_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem|memory_rtl_0|auto_generated|ram_block1a42_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y41_N16
\mem|memory~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~42_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(0) & ((\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & (\mem|memory_rtl_0|auto_generated|ram_block1a58~portbdataout\)) # (!\mem|memory_rtl_0|auto_generated|address_reg_b\(1) & 
-- ((\mem|memory_rtl_0|auto_generated|ram_block1a42~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(1),
	datab => \mem|memory_rtl_0|auto_generated|address_reg_b\(0),
	datac => \mem|memory_rtl_0|auto_generated|ram_block1a58~portbdataout\,
	datad => \mem|memory_rtl_0|auto_generated|ram_block1a42~portbdataout\,
	combout => \mem|memory~42_combout\);

-- Location: LCCOMB_X52_Y41_N0
\mem|memory~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~44_combout\ = (\mem|memory_rtl_0|auto_generated|address_reg_b\(2) & ((\mem|memory~43_combout\) # (\mem|memory~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory_rtl_0|auto_generated|address_reg_b\(2),
	datac => \mem|memory~43_combout\,
	datad => \mem|memory~42_combout\,
	combout => \mem|memory~44_combout\);

-- Location: LCCOMB_X52_Y41_N28
\mem|memory~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|memory~45_combout\ = (\mem|memory~16_combout\ & (\mem|memory_rtl_0_bypass\(35))) # (!\mem|memory~16_combout\ & (((\mem|memory~41_combout\) # (\mem|memory~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|memory~16_combout\,
	datab => \mem|memory_rtl_0_bypass\(35),
	datac => \mem|memory~41_combout\,
	datad => \mem|memory~44_combout\,
	combout => \mem|memory~45_combout\);

-- Location: FF_X52_Y41_N29
\mem|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mem|memory~45_combout\,
	ena => \write~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem|d\(2));

-- Location: FF_X48_Y36_N19
\tr|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	asdata => \mem|d\(2),
	sload => VCC,
	ena => \tr|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|data\(2));

-- Location: LCCOMB_X48_Y36_N18
\tr|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|Mux0~0_combout\ = (\tr|state\(1) & (((\tr|state\(0))))) # (!\tr|state\(1) & ((\tr|state\(0) & (\tr|data\(3))) # (!\tr|state\(0) & ((\tr|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(1),
	datab => \tr|data\(3),
	datac => \tr|data\(2),
	datad => \tr|state\(0),
	combout => \tr|Mux0~0_combout\);

-- Location: LCCOMB_X48_Y36_N0
\tr|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|Mux0~1_combout\ = (\tr|state\(1) & ((\tr|Mux0~0_combout\ & (\tr|data\(5))) # (!\tr|Mux0~0_combout\ & ((\tr|data\(4)))))) # (!\tr|state\(1) & (((\tr|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(1),
	datab => \tr|data\(5),
	datac => \tr|data\(4),
	datad => \tr|Mux0~0_combout\,
	combout => \tr|Mux0~1_combout\);

-- Location: LCCOMB_X48_Y36_N6
\tr|dataBit~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|dataBit~4_combout\ = (\tr|state\(2) & ((\tr|state\(3)) # ((\tr|Mux0~1_combout\)))) # (!\tr|state\(2) & (((\tr|dataBit~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|state\(2),
	datab => \tr|state\(3),
	datac => \tr|dataBit~3_combout\,
	datad => \tr|Mux0~1_combout\,
	combout => \tr|dataBit~4_combout\);

-- Location: LCCOMB_X48_Y36_N20
\tr|dataBit~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tr|dataBit~5_combout\ = (!\tr|dataBit~2_combout\ & ((\tr|flag~q\ & ((!\tr|dataBit~4_combout\))) # (!\tr|flag~q\ & (\tr|dataBit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tr|flag~q\,
	datab => \tr|dataBit~2_combout\,
	datac => \tr|dataBit~q\,
	datad => \tr|dataBit~4_combout\,
	combout => \tr|dataBit~5_combout\);

-- Location: FF_X48_Y36_N21
\tr|dataBit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tr|transmeterClock~clkctrl_outclk\,
	d => \tr|dataBit~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tr|dataBit~q\);

-- Location: IOIBUF_X115_Y14_N8
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_tx <= \tx~output_o\;

ww_res <= \res~output_o\;

ww_t <= \t~output_o\;
END structure;


