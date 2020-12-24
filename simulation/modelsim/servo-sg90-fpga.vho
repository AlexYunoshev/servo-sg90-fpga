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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/24/2020 11:52:27"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	btn : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	data_out : OUT std_logic_vector(7 DOWNTO 0);
	data_exist_out : OUT std_logic;
	pwm_out : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[1]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[2]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[3]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[4]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[5]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[6]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[7]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_exist_out	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pwm_out	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_in[0]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_btn : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_exist_out : std_logic;
SIGNAL ww_pwm_out : std_logic;
SIGNAL \l1|l3|temporal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \l1|l2|temporal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \l1|l1|temporal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~4_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \l2|Add1~10_combout\ : std_logic;
SIGNAL \l2|Add1~12_combout\ : std_logic;
SIGNAL \l3|Add0~2_combout\ : std_logic;
SIGNAL \l3|Add0~4_combout\ : std_logic;
SIGNAL \l3|Add0~6_combout\ : std_logic;
SIGNAL \l3|Add0~12_combout\ : std_logic;
SIGNAL \l3|Add0~16_combout\ : std_logic;
SIGNAL \l3|Add0~18_combout\ : std_logic;
SIGNAL \l3|Add0~20_combout\ : std_logic;
SIGNAL \l3|Add0~22_combout\ : std_logic;
SIGNAL \l3|Add0~30_combout\ : std_logic;
SIGNAL \l3|Add0~32_combout\ : std_logic;
SIGNAL \l3|Add0~34_combout\ : std_logic;
SIGNAL \l1|l1|Add0~9\ : std_logic;
SIGNAL \l1|l1|Add0~10_combout\ : std_logic;
SIGNAL \l1|l2|Add0~0_combout\ : std_logic;
SIGNAL \l1|l2|Add0~1\ : std_logic;
SIGNAL \l1|l2|Add0~2_combout\ : std_logic;
SIGNAL \l1|l2|Add0~3\ : std_logic;
SIGNAL \l1|l2|Add0~4_combout\ : std_logic;
SIGNAL \l1|l2|Add0~5\ : std_logic;
SIGNAL \l1|l2|Add0~6_combout\ : std_logic;
SIGNAL \l1|l2|Add0~7\ : std_logic;
SIGNAL \l1|l2|Add0~8_combout\ : std_logic;
SIGNAL \l1|l2|Add0~9\ : std_logic;
SIGNAL \l1|l2|Add0~10_combout\ : std_logic;
SIGNAL \l1|l2|Add0~11\ : std_logic;
SIGNAL \l1|l2|Add0~12_combout\ : std_logic;
SIGNAL \l1|l2|Add0~13\ : std_logic;
SIGNAL \l1|l2|Add0~14_combout\ : std_logic;
SIGNAL \l1|l2|Add0~15\ : std_logic;
SIGNAL \l1|l2|Add0~16_combout\ : std_logic;
SIGNAL \l1|l2|Add0~17\ : std_logic;
SIGNAL \l1|l2|Add0~18_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[70]~113_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[69]~114_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[68]~116_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[67]~119_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[66]~121_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[65]~123_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[64]~124_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[78]~127_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[74]~131_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[73]~134_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[87]~136_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[97]~141_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[95]~143_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[94]~144_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[105]~147_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[103]~149_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[102]~150_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[111]~156_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[123]~159_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[122]~160_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[120]~163_combout\ : std_logic;
SIGNAL \l1|l2|temporal~regout\ : std_logic;
SIGNAL \l2|Equal0~1_combout\ : std_logic;
SIGNAL \l3|strobe:counter[8]~regout\ : std_logic;
SIGNAL \l3|strobe:counter[9]~regout\ : std_logic;
SIGNAL \l3|strobe:counter[11]~regout\ : std_logic;
SIGNAL \l3|LessThan1~3_combout\ : std_logic;
SIGNAL \l3|strobe:counter[16]~regout\ : std_logic;
SIGNAL \l1|l1|temporal~regout\ : std_logic;
SIGNAL \l1|l2|Equal0~0_combout\ : std_logic;
SIGNAL \l1|l2|Equal0~1_combout\ : std_logic;
SIGNAL \l1|l2|Equal0~2_combout\ : std_logic;
SIGNAL \l1|l2|temporal~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[8]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[9]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[11]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[16]~0_combout\ : std_logic;
SIGNAL \l1|l1|counter~0_combout\ : std_logic;
SIGNAL \l1|l2|counter~0_combout\ : std_logic;
SIGNAL \l1|l2|counter~1_combout\ : std_logic;
SIGNAL \l1|l2|counter~2_combout\ : std_logic;
SIGNAL \l1|l2|counter~3_combout\ : std_logic;
SIGNAL \l1|l2|counter~4_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[88]~164_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[86]~166_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[96]~169_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[106]~172_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[104]~174_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[115]~176_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[114]~177_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[124]~179_combout\ : std_logic;
SIGNAL \l3|strobe:counter[31]~3_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[79]~182_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[76]~185_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[75]~186_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[84]~187_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[83]~188_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[112]~189_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[121]~190_combout\ : std_logic;
SIGNAL \l1|l1|temporal~0_combout\ : std_logic;
SIGNAL \btn~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \l1|l2|temporal~clkctrl_outclk\ : std_logic;
SIGNAL \l1|l1|temporal~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \l1|l3|temporal~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \l1|l1|Add0~0_combout\ : std_logic;
SIGNAL \l1|l1|Add0~1\ : std_logic;
SIGNAL \l1|l1|Add0~3\ : std_logic;
SIGNAL \l1|l1|Add0~4_combout\ : std_logic;
SIGNAL \l1|l1|Add0~2_combout\ : std_logic;
SIGNAL \l1|l1|counter~2_combout\ : std_logic;
SIGNAL \l1|l1|Add0~5\ : std_logic;
SIGNAL \l1|l1|Add0~6_combout\ : std_logic;
SIGNAL \l1|l1|Add0~7\ : std_logic;
SIGNAL \l1|l1|Add0~8_combout\ : std_logic;
SIGNAL \l1|l1|counter~1_combout\ : std_logic;
SIGNAL \l1|l3|Equal0~0_combout\ : std_logic;
SIGNAL \l1|l3|Equal0~1_combout\ : std_logic;
SIGNAL \l1|l3|temporal~regout\ : std_logic;
SIGNAL \l1|l3|temporal~clkctrl_outclk\ : std_logic;
SIGNAL \l3|strobe:counter[0]~0_combout\ : std_logic;
SIGNAL \l3|Add0~37\ : std_logic;
SIGNAL \l3|Add0~38_combout\ : std_logic;
SIGNAL \l3|strobe:counter[19]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[19]~regout\ : std_logic;
SIGNAL \l3|Add0~39\ : std_logic;
SIGNAL \l3|Add0~40_combout\ : std_logic;
SIGNAL \l3|strobe:counter[20]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[20]~regout\ : std_logic;
SIGNAL \l3|Add0~41\ : std_logic;
SIGNAL \l3|Add0~42_combout\ : std_logic;
SIGNAL \l3|strobe:counter[21]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[21]~regout\ : std_logic;
SIGNAL \l3|Add0~43\ : std_logic;
SIGNAL \l3|Add0~44_combout\ : std_logic;
SIGNAL \l3|strobe:counter[22]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[22]~regout\ : std_logic;
SIGNAL \l3|Add0~45\ : std_logic;
SIGNAL \l3|Add0~46_combout\ : std_logic;
SIGNAL \l3|strobe:counter[23]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[23]~regout\ : std_logic;
SIGNAL \l3|LessThan1~7_combout\ : std_logic;
SIGNAL \l3|strobe:counter[2]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[2]~regout\ : std_logic;
SIGNAL \l3|Add0~47\ : std_logic;
SIGNAL \l3|Add0~48_combout\ : std_logic;
SIGNAL \l3|strobe:counter[24]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[24]~regout\ : std_logic;
SIGNAL \l3|Add0~49\ : std_logic;
SIGNAL \l3|Add0~50_combout\ : std_logic;
SIGNAL \l3|strobe:counter[25]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[25]~regout\ : std_logic;
SIGNAL \l3|Add0~51\ : std_logic;
SIGNAL \l3|Add0~52_combout\ : std_logic;
SIGNAL \l3|strobe:counter[26]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[26]~regout\ : std_logic;
SIGNAL \l3|Add0~53\ : std_logic;
SIGNAL \l3|Add0~55\ : std_logic;
SIGNAL \l3|Add0~56_combout\ : std_logic;
SIGNAL \l3|strobe:counter[28]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[28]~regout\ : std_logic;
SIGNAL \l3|strobe:counter[3]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[3]~regout\ : std_logic;
SIGNAL \l3|LessThan1~10_combout\ : std_logic;
SIGNAL \l3|LessThan1~11_combout\ : std_logic;
SIGNAL \l3|Add0~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[0]~1_combout\ : std_logic;
SIGNAL \l3|strobe:counter[0]~2_combout\ : std_logic;
SIGNAL \l3|strobe:counter[0]~regout\ : std_logic;
SIGNAL \l3|strobe~2_combout\ : std_logic;
SIGNAL \l3|Add0~54_combout\ : std_logic;
SIGNAL \l3|strobe:counter[27]~4_combout\ : std_logic;
SIGNAL \l3|strobe:counter[27]~regout\ : std_logic;
SIGNAL \l3|LessThan1~8_combout\ : std_logic;
SIGNAL \l3|LessThan1~9_combout\ : std_logic;
SIGNAL \l3|strobe:counter[27]~2_combout\ : std_logic;
SIGNAL \l3|strobe:counter[27]~5_combout\ : std_logic;
SIGNAL \l3|strobe:counter[15]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[15]~regout\ : std_logic;
SIGNAL \l3|strobe:counter[10]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[10]~regout\ : std_logic;
SIGNAL \l3|strobe:counter[1]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[1]~regout\ : std_logic;
SIGNAL \l3|Add0~1\ : std_logic;
SIGNAL \l3|Add0~3\ : std_logic;
SIGNAL \l3|Add0~5\ : std_logic;
SIGNAL \l3|Add0~7\ : std_logic;
SIGNAL \l3|Add0~9\ : std_logic;
SIGNAL \l3|Add0~10_combout\ : std_logic;
SIGNAL \l3|strobe:counter[5]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[5]~regout\ : std_logic;
SIGNAL \l3|Add0~11\ : std_logic;
SIGNAL \l3|Add0~13\ : std_logic;
SIGNAL \l3|Add0~14_combout\ : std_logic;
SIGNAL \l3|strobe:counter[7]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[7]~regout\ : std_logic;
SIGNAL \l3|Add0~15\ : std_logic;
SIGNAL \l3|Add0~17\ : std_logic;
SIGNAL \l3|Add0~19\ : std_logic;
SIGNAL \l3|Add0~21\ : std_logic;
SIGNAL \l3|Add0~23\ : std_logic;
SIGNAL \l3|Add0~24_combout\ : std_logic;
SIGNAL \l3|strobe:counter[12]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[12]~regout\ : std_logic;
SIGNAL \l3|Add0~25\ : std_logic;
SIGNAL \l3|Add0~26_combout\ : std_logic;
SIGNAL \l3|strobe:counter[13]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[13]~regout\ : std_logic;
SIGNAL \l3|Add0~27\ : std_logic;
SIGNAL \l3|Add0~28_combout\ : std_logic;
SIGNAL \l3|strobe:counter[14]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[14]~regout\ : std_logic;
SIGNAL \l3|Add0~29\ : std_logic;
SIGNAL \l3|Add0~31\ : std_logic;
SIGNAL \l3|Add0~33\ : std_logic;
SIGNAL \l3|Add0~35\ : std_logic;
SIGNAL \l3|Add0~36_combout\ : std_logic;
SIGNAL \l3|strobe:counter[18]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[18]~regout\ : std_logic;
SIGNAL \l3|strobe:counter[17]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[17]~regout\ : std_logic;
SIGNAL \l3|LessThan1~5_combout\ : std_logic;
SIGNAL \l3|Add0~8_combout\ : std_logic;
SIGNAL \l3|strobe:counter[4]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[4]~regout\ : std_logic;
SIGNAL \l3|strobe:counter[6]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[6]~regout\ : std_logic;
SIGNAL \l3|LessThan1~2_combout\ : std_logic;
SIGNAL \l3|LessThan1~4_combout\ : std_logic;
SIGNAL \l3|LessThan1~6_combout\ : std_logic;
SIGNAL \l3|strobe:counter[30]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[27]~3_combout\ : std_logic;
SIGNAL \l3|Add0~57\ : std_logic;
SIGNAL \l3|Add0~58_combout\ : std_logic;
SIGNAL \l3|strobe:counter[29]~0_combout\ : std_logic;
SIGNAL \l3|strobe:counter[29]~regout\ : std_logic;
SIGNAL \l3|Add0~59\ : std_logic;
SIGNAL \l3|Add0~60_combout\ : std_logic;
SIGNAL \l3|strobe:counter[30]~1_combout\ : std_logic;
SIGNAL \l3|strobe:counter[30]~regout\ : std_logic;
SIGNAL \l3|Add0~61\ : std_logic;
SIGNAL \l3|Add0~62_combout\ : std_logic;
SIGNAL \l3|strobe:counter[31]~2_combout\ : std_logic;
SIGNAL \l3|strobe:counter[31]~regout\ : std_logic;
SIGNAL \l3|strobe~3_combout\ : std_logic;
SIGNAL \l3|data_out~0_combout\ : std_logic;
SIGNAL \l3|data_out~regout\ : std_logic;
SIGNAL \l4|pwm_main~0_combout\ : std_logic;
SIGNAL \l4|pwm_main~1_combout\ : std_logic;
SIGNAL \l4|pwm_main~2_combout\ : std_logic;
SIGNAL \l4|pwm_main~3_combout\ : std_logic;
SIGNAL \l4|pwm_main~4_combout\ : std_logic;
SIGNAL \l4|pwm_main~5_combout\ : std_logic;
SIGNAL \l4|data[5]~feeder_combout\ : std_logic;
SIGNAL \l4|pwm_main~6_combout\ : std_logic;
SIGNAL \l4|pwm_main~7_combout\ : std_logic;
SIGNAL \l4|data[7]~feeder_combout\ : std_logic;
SIGNAL \l2|Add1~0_combout\ : std_logic;
SIGNAL \l2|Add1~1\ : std_logic;
SIGNAL \l2|Add1~2_combout\ : std_logic;
SIGNAL \l2|Add1~3\ : std_logic;
SIGNAL \l2|Add1~4_combout\ : std_logic;
SIGNAL \l2|Add1~5\ : std_logic;
SIGNAL \l2|Add1~7\ : std_logic;
SIGNAL \l2|Add1~8_combout\ : std_logic;
SIGNAL \l2|Add1~9\ : std_logic;
SIGNAL \l2|Add1~11\ : std_logic;
SIGNAL \l2|Add1~13\ : std_logic;
SIGNAL \l2|Add1~14_combout\ : std_logic;
SIGNAL \l2|Add1~15\ : std_logic;
SIGNAL \l2|Add1~16_combout\ : std_logic;
SIGNAL \l2|Add1~6_combout\ : std_logic;
SIGNAL \l2|Equal0~2_combout\ : std_logic;
SIGNAL \l2|cnt~0_combout\ : std_logic;
SIGNAL \l2|Equal0~0_combout\ : std_logic;
SIGNAL \l2|Add1~17\ : std_logic;
SIGNAL \l2|Add1~18_combout\ : std_logic;
SIGNAL \l2|Add1~19\ : std_logic;
SIGNAL \l2|Add1~20_combout\ : std_logic;
SIGNAL \l2|cnt~1_combout\ : std_logic;
SIGNAL \l4|pwm_main[7]~feeder_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[70]~112_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[69]~115_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[68]~117_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[67]~118_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[66]~120_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[65]~122_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[64]~125_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~1\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~7\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~9\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~11\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~13_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[79]~126_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[78]~183_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[77]~128_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[76]~129_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[75]~130_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_12~0_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[74]~132_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[73]~133_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~1\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~3\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~5\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~7\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~9\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~11\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~13_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~14_combout\ : std_logic;
SIGNAL \l2|Add0~0_combout\ : std_logic;
SIGNAL \l2|Add0~1_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~10_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[88]~135_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[77]~184_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[87]~165_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~6_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[85]~167_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~2_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~0_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[83]~140_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~11_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[96]~142_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[95]~170_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[94]~171_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[93]~145_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_13~8_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[97]~168_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~11_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[106]~146_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[105]~173_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[104]~148_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[93]~191_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[103]~175_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[102]~151_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~11_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[115]~152_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[114]~153_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[113]~154_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[112]~155_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[111]~157_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~11_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[124]~158_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[113]~178_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[123]~180_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[122]~181_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[121]~161_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|StageOut[120]~162_combout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_5~3_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_5~5_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_5~7_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_5~11_cout\ : std_logic;
SIGNAL \l2|Div0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \l2|LessThan0~1_cout\ : std_logic;
SIGNAL \l2|LessThan0~3_cout\ : std_logic;
SIGNAL \l2|LessThan0~5_cout\ : std_logic;
SIGNAL \l2|LessThan0~7_cout\ : std_logic;
SIGNAL \l2|LessThan0~9_cout\ : std_logic;
SIGNAL \l2|LessThan0~11_cout\ : std_logic;
SIGNAL \l2|LessThan0~13_cout\ : std_logic;
SIGNAL \l2|LessThan0~14_combout\ : std_logic;
SIGNAL \l2|LessThan0~16_combout\ : std_logic;
SIGNAL \l4|pwm_main\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \l4|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \l2|cnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \l1|l2|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \l1|l1|counter\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_btn <= btn;
ww_data_in <= data_in;
ww_reset <= reset;
data_out <= ww_data_out;
data_exist_out <= ww_data_exist_out;
pwm_out <= ww_pwm_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\l1|l3|temporal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \l1|l3|temporal~regout\);

\l1|l2|temporal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \l1|l2|temporal~regout\);

\l1|l1|temporal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \l1|l1|temporal~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCCOMB_X15_Y10_N12
\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = \l4|pwm_main\(2) $ (VCC)
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY(\l4|pwm_main\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l4|pwm_main\(2),
	datad => VCC,
	combout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X15_Y10_N14
\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\l4|pwm_main\(3) & (\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & VCC)) # (!\l4|pwm_main\(3) & 
-- (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\l4|pwm_main\(3) & !\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l4|pwm_main\(3),
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X15_Y10_N22
\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\l4|pwm_main\(7) & (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)) # (!\l4|pwm_main\(7) & 
-- ((\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\) # (GND)))
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\) # (!\l4|pwm_main\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l4|pwm_main\(7),
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X14_Y10_N12
\l2|Div0|auto_generated|divider|divider|op_12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_12~4_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~3\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[66]~121_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[66]~120_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_12~3\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[66]~121_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[66]~120_combout\)))))
-- \l2|Div0|auto_generated|divider|divider|op_12~5\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_12~3\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[66]~121_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[66]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[66]~121_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[66]~120_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_12~3\,
	combout => \l2|Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X14_Y10_N16
\l2|Div0|auto_generated|divider|divider|op_12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_12~8_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~7\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[68]~116_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[68]~117_combout\))))) 
-- # (!\l2|Div0|auto_generated|divider|divider|op_12~7\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[68]~116_combout\) # ((\l2|Div0|auto_generated|divider|divider|StageOut[68]~117_combout\) # (GND))))
-- \l2|Div0|auto_generated|divider|divider|op_12~9\ = CARRY((\l2|Div0|auto_generated|divider|divider|StageOut[68]~116_combout\) # ((\l2|Div0|auto_generated|divider|divider|StageOut[68]~117_combout\) # (!\l2|Div0|auto_generated|divider|divider|op_12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[68]~116_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[68]~117_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_12~7\,
	combout => \l2|Div0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X15_Y9_N16
\l2|Div0|auto_generated|divider|divider|op_13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_13~4_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~3\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[75]~186_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[75]~130_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_13~3\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[75]~186_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[75]~130_combout\)))))
-- \l2|Div0|auto_generated|divider|divider|op_13~5\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_13~3\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[75]~186_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[75]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[75]~186_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[75]~130_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_13~3\,
	combout => \l2|Div0|auto_generated|divider|divider|op_13~4_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_13~5\);

-- Location: LCCOMB_X14_Y9_N18
\l2|Div0|auto_generated|divider|divider|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_1~2_combout\ = (\l2|Div0|auto_generated|divider|divider|StageOut[84]~187_combout\ & (((!\l2|Div0|auto_generated|divider|divider|op_1~1\)))) # (!\l2|Div0|auto_generated|divider|divider|StageOut[84]~187_combout\ & 
-- ((\l2|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\ & (!\l2|Div0|auto_generated|divider|divider|op_1~1\)) # (!\l2|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_1~1\) # 
-- (GND)))))
-- \l2|Div0|auto_generated|divider|divider|op_1~3\ = CARRY(((!\l2|Div0|auto_generated|divider|divider|StageOut[84]~187_combout\ & !\l2|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\)) # (!\l2|Div0|auto_generated|divider|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[84]~187_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_1~1\,
	combout => \l2|Div0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X14_Y9_N20
\l2|Div0|auto_generated|divider|divider|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_1~4_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~3\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[85]~167_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_1~3\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[85]~167_combout\)))))
-- \l2|Div0|auto_generated|divider|divider|op_1~5\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_1~3\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[85]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[85]~167_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_1~3\,
	combout => \l2|Div0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X14_Y9_N24
\l2|Div0|auto_generated|divider|divider|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_1~8_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~7\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[87]~136_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[87]~165_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_1~7\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[87]~136_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[87]~165_combout\)))))
-- \l2|Div0|auto_generated|divider|divider|op_1~9\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_1~7\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[87]~136_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[87]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[87]~136_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[87]~165_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_1~7\,
	combout => \l2|Div0|auto_generated|divider|divider|op_1~8_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X17_Y9_N22
\l2|Div0|auto_generated|divider|divider|op_2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_2~6_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~5\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[95]~143_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[95]~170_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_2~5\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[95]~143_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[95]~170_combout\)))
-- \l2|Div0|auto_generated|divider|divider|op_2~7\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[95]~143_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[95]~170_combout\ & !\l2|Div0|auto_generated|divider|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[95]~143_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[95]~170_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_2~5\,
	combout => \l2|Div0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X19_Y9_N14
\l2|Div0|auto_generated|divider|divider|op_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_4~0_combout\ = \l2|Div0|auto_generated|divider|divider|op_3~12_combout\ $ (GND)
-- \l2|Div0|auto_generated|divider|divider|op_4~1\ = CARRY(!\l2|Div0|auto_generated|divider|divider|op_3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => VCC,
	combout => \l2|Div0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X19_Y9_N18
\l2|Div0|auto_generated|divider|divider|op_4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_4~4_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~3\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[112]~189_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[112]~155_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_4~3\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[112]~189_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[112]~155_combout\)))))
-- \l2|Div0|auto_generated|divider|divider|op_4~5\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_4~3\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[112]~189_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[112]~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[112]~189_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[112]~155_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_4~3\,
	combout => \l2|Div0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X19_Y9_N20
\l2|Div0|auto_generated|divider|divider|op_4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_4~6_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~5\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[113]~178_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[113]~154_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_4~5\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[113]~178_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[113]~154_combout\)))
-- \l2|Div0|auto_generated|divider|divider|op_4~7\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[113]~178_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[113]~154_combout\ & !\l2|Div0|auto_generated|divider|divider|op_4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[113]~178_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[113]~154_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_4~5\,
	combout => \l2|Div0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X12_Y9_N10
\l2|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~10_combout\ = (\l2|cnt\(5) & (!\l2|Add1~9\)) # (!\l2|cnt\(5) & ((\l2|Add1~9\) # (GND)))
-- \l2|Add1~11\ = CARRY((!\l2|Add1~9\) # (!\l2|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(5),
	datad => VCC,
	cin => \l2|Add1~9\,
	combout => \l2|Add1~10_combout\,
	cout => \l2|Add1~11\);

-- Location: LCCOMB_X12_Y9_N12
\l2|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~12_combout\ = (\l2|cnt\(6) & (\l2|Add1~11\ $ (GND))) # (!\l2|cnt\(6) & (!\l2|Add1~11\ & VCC))
-- \l2|Add1~13\ = CARRY((\l2|cnt\(6) & !\l2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(6),
	datad => VCC,
	cin => \l2|Add1~11\,
	combout => \l2|Add1~12_combout\,
	cout => \l2|Add1~13\);

-- Location: LCCOMB_X9_Y10_N2
\l3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~2_combout\ = (\l3|strobe:counter[1]~regout\ & (!\l3|Add0~1\)) # (!\l3|strobe:counter[1]~regout\ & ((\l3|Add0~1\) # (GND)))
-- \l3|Add0~3\ = CARRY((!\l3|Add0~1\) # (!\l3|strobe:counter[1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[1]~regout\,
	datad => VCC,
	cin => \l3|Add0~1\,
	combout => \l3|Add0~2_combout\,
	cout => \l3|Add0~3\);

-- Location: LCCOMB_X9_Y10_N4
\l3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~4_combout\ = (\l3|strobe:counter[2]~regout\ & (\l3|Add0~3\ $ (GND))) # (!\l3|strobe:counter[2]~regout\ & (!\l3|Add0~3\ & VCC))
-- \l3|Add0~5\ = CARRY((\l3|strobe:counter[2]~regout\ & !\l3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[2]~regout\,
	datad => VCC,
	cin => \l3|Add0~3\,
	combout => \l3|Add0~4_combout\,
	cout => \l3|Add0~5\);

-- Location: LCCOMB_X9_Y10_N6
\l3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~6_combout\ = (\l3|strobe:counter[3]~regout\ & (!\l3|Add0~5\)) # (!\l3|strobe:counter[3]~regout\ & ((\l3|Add0~5\) # (GND)))
-- \l3|Add0~7\ = CARRY((!\l3|Add0~5\) # (!\l3|strobe:counter[3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[3]~regout\,
	datad => VCC,
	cin => \l3|Add0~5\,
	combout => \l3|Add0~6_combout\,
	cout => \l3|Add0~7\);

-- Location: LCCOMB_X9_Y10_N12
\l3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~12_combout\ = (\l3|strobe:counter[6]~regout\ & (\l3|Add0~11\ $ (GND))) # (!\l3|strobe:counter[6]~regout\ & (!\l3|Add0~11\ & VCC))
-- \l3|Add0~13\ = CARRY((\l3|strobe:counter[6]~regout\ & !\l3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[6]~regout\,
	datad => VCC,
	cin => \l3|Add0~11\,
	combout => \l3|Add0~12_combout\,
	cout => \l3|Add0~13\);

-- Location: LCCOMB_X9_Y10_N16
\l3|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~16_combout\ = (\l3|strobe:counter[8]~regout\ & (\l3|Add0~15\ $ (GND))) # (!\l3|strobe:counter[8]~regout\ & (!\l3|Add0~15\ & VCC))
-- \l3|Add0~17\ = CARRY((\l3|strobe:counter[8]~regout\ & !\l3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[8]~regout\,
	datad => VCC,
	cin => \l3|Add0~15\,
	combout => \l3|Add0~16_combout\,
	cout => \l3|Add0~17\);

-- Location: LCCOMB_X9_Y10_N18
\l3|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~18_combout\ = (\l3|strobe:counter[9]~regout\ & (!\l3|Add0~17\)) # (!\l3|strobe:counter[9]~regout\ & ((\l3|Add0~17\) # (GND)))
-- \l3|Add0~19\ = CARRY((!\l3|Add0~17\) # (!\l3|strobe:counter[9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[9]~regout\,
	datad => VCC,
	cin => \l3|Add0~17\,
	combout => \l3|Add0~18_combout\,
	cout => \l3|Add0~19\);

-- Location: LCCOMB_X9_Y10_N20
\l3|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~20_combout\ = (\l3|strobe:counter[10]~regout\ & (\l3|Add0~19\ $ (GND))) # (!\l3|strobe:counter[10]~regout\ & (!\l3|Add0~19\ & VCC))
-- \l3|Add0~21\ = CARRY((\l3|strobe:counter[10]~regout\ & !\l3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[10]~regout\,
	datad => VCC,
	cin => \l3|Add0~19\,
	combout => \l3|Add0~20_combout\,
	cout => \l3|Add0~21\);

-- Location: LCCOMB_X9_Y10_N22
\l3|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~22_combout\ = (\l3|strobe:counter[11]~regout\ & (!\l3|Add0~21\)) # (!\l3|strobe:counter[11]~regout\ & ((\l3|Add0~21\) # (GND)))
-- \l3|Add0~23\ = CARRY((!\l3|Add0~21\) # (!\l3|strobe:counter[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[11]~regout\,
	datad => VCC,
	cin => \l3|Add0~21\,
	combout => \l3|Add0~22_combout\,
	cout => \l3|Add0~23\);

-- Location: LCCOMB_X9_Y10_N30
\l3|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~30_combout\ = (\l3|strobe:counter[15]~regout\ & (!\l3|Add0~29\)) # (!\l3|strobe:counter[15]~regout\ & ((\l3|Add0~29\) # (GND)))
-- \l3|Add0~31\ = CARRY((!\l3|Add0~29\) # (!\l3|strobe:counter[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[15]~regout\,
	datad => VCC,
	cin => \l3|Add0~29\,
	combout => \l3|Add0~30_combout\,
	cout => \l3|Add0~31\);

-- Location: LCCOMB_X9_Y9_N0
\l3|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~32_combout\ = (\l3|strobe:counter[16]~regout\ & (\l3|Add0~31\ $ (GND))) # (!\l3|strobe:counter[16]~regout\ & (!\l3|Add0~31\ & VCC))
-- \l3|Add0~33\ = CARRY((\l3|strobe:counter[16]~regout\ & !\l3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[16]~regout\,
	datad => VCC,
	cin => \l3|Add0~31\,
	combout => \l3|Add0~32_combout\,
	cout => \l3|Add0~33\);

-- Location: LCCOMB_X9_Y9_N2
\l3|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~34_combout\ = (\l3|strobe:counter[17]~regout\ & (!\l3|Add0~33\)) # (!\l3|strobe:counter[17]~regout\ & ((\l3|Add0~33\) # (GND)))
-- \l3|Add0~35\ = CARRY((!\l3|Add0~33\) # (!\l3|strobe:counter[17]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[17]~regout\,
	datad => VCC,
	cin => \l3|Add0~33\,
	combout => \l3|Add0~34_combout\,
	cout => \l3|Add0~35\);

-- Location: LCCOMB_X27_Y7_N10
\l1|l1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l1|Add0~8_combout\ = (\l1|l1|counter\(4) & (\l1|l1|Add0~7\ $ (GND))) # (!\l1|l1|counter\(4) & (!\l1|l1|Add0~7\ & VCC))
-- \l1|l1|Add0~9\ = CARRY((\l1|l1|counter\(4) & !\l1|l1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l1|l1|counter\(4),
	datad => VCC,
	cin => \l1|l1|Add0~7\,
	combout => \l1|l1|Add0~8_combout\,
	cout => \l1|l1|Add0~9\);

-- Location: LCCOMB_X27_Y7_N12
\l1|l1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l1|Add0~10_combout\ = \l1|l1|Add0~9\ $ (\l1|l1|counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \l1|l1|counter\(5),
	cin => \l1|l1|Add0~9\,
	combout => \l1|l1|Add0~10_combout\);

-- Location: LCCOMB_X2_Y6_N2
\l1|l2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Add0~0_combout\ = \l1|l2|counter\(0) $ (VCC)
-- \l1|l2|Add0~1\ = CARRY(\l1|l2|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l1|l2|counter\(0),
	datad => VCC,
	combout => \l1|l2|Add0~0_combout\,
	cout => \l1|l2|Add0~1\);

-- Location: LCCOMB_X2_Y6_N4
\l1|l2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Add0~2_combout\ = (\l1|l2|counter\(1) & (!\l1|l2|Add0~1\)) # (!\l1|l2|counter\(1) & ((\l1|l2|Add0~1\) # (GND)))
-- \l1|l2|Add0~3\ = CARRY((!\l1|l2|Add0~1\) # (!\l1|l2|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l1|l2|counter\(1),
	datad => VCC,
	cin => \l1|l2|Add0~1\,
	combout => \l1|l2|Add0~2_combout\,
	cout => \l1|l2|Add0~3\);

-- Location: LCCOMB_X2_Y6_N6
\l1|l2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Add0~4_combout\ = (\l1|l2|counter\(2) & (\l1|l2|Add0~3\ $ (GND))) # (!\l1|l2|counter\(2) & (!\l1|l2|Add0~3\ & VCC))
-- \l1|l2|Add0~5\ = CARRY((\l1|l2|counter\(2) & !\l1|l2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l1|l2|counter\(2),
	datad => VCC,
	cin => \l1|l2|Add0~3\,
	combout => \l1|l2|Add0~4_combout\,
	cout => \l1|l2|Add0~5\);

-- Location: LCCOMB_X2_Y6_N8
\l1|l2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Add0~6_combout\ = (\l1|l2|counter\(3) & (!\l1|l2|Add0~5\)) # (!\l1|l2|counter\(3) & ((\l1|l2|Add0~5\) # (GND)))
-- \l1|l2|Add0~7\ = CARRY((!\l1|l2|Add0~5\) # (!\l1|l2|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|counter\(3),
	datad => VCC,
	cin => \l1|l2|Add0~5\,
	combout => \l1|l2|Add0~6_combout\,
	cout => \l1|l2|Add0~7\);

-- Location: LCCOMB_X2_Y6_N10
\l1|l2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Add0~8_combout\ = (\l1|l2|counter\(4) & (\l1|l2|Add0~7\ $ (GND))) # (!\l1|l2|counter\(4) & (!\l1|l2|Add0~7\ & VCC))
-- \l1|l2|Add0~9\ = CARRY((\l1|l2|counter\(4) & !\l1|l2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|counter\(4),
	datad => VCC,
	cin => \l1|l2|Add0~7\,
	combout => \l1|l2|Add0~8_combout\,
	cout => \l1|l2|Add0~9\);

-- Location: LCCOMB_X2_Y6_N12
\l1|l2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Add0~10_combout\ = (\l1|l2|counter\(5) & (!\l1|l2|Add0~9\)) # (!\l1|l2|counter\(5) & ((\l1|l2|Add0~9\) # (GND)))
-- \l1|l2|Add0~11\ = CARRY((!\l1|l2|Add0~9\) # (!\l1|l2|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|counter\(5),
	datad => VCC,
	cin => \l1|l2|Add0~9\,
	combout => \l1|l2|Add0~10_combout\,
	cout => \l1|l2|Add0~11\);

-- Location: LCCOMB_X2_Y6_N14
\l1|l2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Add0~12_combout\ = (\l1|l2|counter\(6) & (\l1|l2|Add0~11\ $ (GND))) # (!\l1|l2|counter\(6) & (!\l1|l2|Add0~11\ & VCC))
-- \l1|l2|Add0~13\ = CARRY((\l1|l2|counter\(6) & !\l1|l2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l1|l2|counter\(6),
	datad => VCC,
	cin => \l1|l2|Add0~11\,
	combout => \l1|l2|Add0~12_combout\,
	cout => \l1|l2|Add0~13\);

-- Location: LCCOMB_X2_Y6_N16
\l1|l2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Add0~14_combout\ = (\l1|l2|counter\(7) & (!\l1|l2|Add0~13\)) # (!\l1|l2|counter\(7) & ((\l1|l2|Add0~13\) # (GND)))
-- \l1|l2|Add0~15\ = CARRY((!\l1|l2|Add0~13\) # (!\l1|l2|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|counter\(7),
	datad => VCC,
	cin => \l1|l2|Add0~13\,
	combout => \l1|l2|Add0~14_combout\,
	cout => \l1|l2|Add0~15\);

-- Location: LCCOMB_X2_Y6_N18
\l1|l2|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Add0~16_combout\ = (\l1|l2|counter\(8) & (\l1|l2|Add0~15\ $ (GND))) # (!\l1|l2|counter\(8) & (!\l1|l2|Add0~15\ & VCC))
-- \l1|l2|Add0~17\ = CARRY((\l1|l2|counter\(8) & !\l1|l2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l1|l2|counter\(8),
	datad => VCC,
	cin => \l1|l2|Add0~15\,
	combout => \l1|l2|Add0~16_combout\,
	cout => \l1|l2|Add0~17\);

-- Location: LCCOMB_X2_Y6_N20
\l1|l2|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Add0~18_combout\ = \l1|l2|Add0~17\ $ (\l1|l2|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \l1|l2|counter\(9),
	cin => \l1|l2|Add0~17\,
	combout => \l1|l2|Add0~18_combout\);

-- Location: LCFF_X12_Y10_N31
\l4|pwm_main[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	sdata => \l4|pwm_main~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|pwm_main\(3));

-- Location: LCCOMB_X14_Y10_N2
\l2|Div0|auto_generated|divider|divider|StageOut[70]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[70]~113_combout\ = (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[70]~113_combout\);

-- Location: LCCOMB_X15_Y10_N8
\l2|Div0|auto_generated|divider|divider|StageOut[69]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[69]~114_combout\ = (\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \l4|pwm_main\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \l4|pwm_main\(6),
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[69]~114_combout\);

-- Location: LCCOMB_X15_Y10_N6
\l2|Div0|auto_generated|divider|divider|StageOut[68]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[68]~116_combout\ = (\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \l4|pwm_main\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \l4|pwm_main\(5),
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[68]~116_combout\);

-- Location: LCCOMB_X14_Y10_N24
\l2|Div0|auto_generated|divider|divider|StageOut[67]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[67]~119_combout\ = (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[67]~119_combout\);

-- Location: LCCOMB_X14_Y10_N6
\l2|Div0|auto_generated|divider|divider|StageOut[66]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[66]~121_combout\ = (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[66]~121_combout\);

-- Location: LCCOMB_X14_Y10_N30
\l2|Div0|auto_generated|divider|divider|StageOut[65]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[65]~123_combout\ = (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[65]~123_combout\);

-- Location: LCCOMB_X13_Y10_N14
\l2|Div0|auto_generated|divider|divider|StageOut[64]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[64]~124_combout\ = (\l4|pwm_main\(1) & \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l4|pwm_main\(1),
	datad => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[64]~124_combout\);

-- Location: LCCOMB_X15_Y9_N10
\l2|Div0|auto_generated|divider|divider|StageOut[78]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[78]~127_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~8_combout\ & !\l2|Div0|auto_generated|divider|divider|op_12~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_12~8_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[78]~127_combout\);

-- Location: LCCOMB_X12_Y10_N28
\l2|Div0|auto_generated|divider|divider|StageOut[74]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[74]~131_combout\ = (\l4|pwm_main\(1) & \l2|Div0|auto_generated|divider|divider|op_12~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l4|pwm_main\(1),
	datad => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[74]~131_combout\);

-- Location: LCCOMB_X12_Y10_N4
\l2|Div0|auto_generated|divider|divider|StageOut[73]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[73]~134_combout\ = (\l4|pwm_main\(0) & !\l2|Div0|auto_generated|divider|divider|op_12~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l4|pwm_main\(0),
	datad => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[73]~134_combout\);

-- Location: LCFF_X12_Y9_N13
\l2|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|Add1~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(6));

-- Location: LCFF_X12_Y9_N11
\l2|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|Add1~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(5));

-- Location: LCCOMB_X14_Y9_N12
\l2|Div0|auto_generated|divider|divider|StageOut[87]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[87]~136_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & \l2|Div0|auto_generated|divider|divider|op_13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~8_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[87]~136_combout\);

-- Location: LCCOMB_X14_Y9_N10
\l2|Div0|auto_generated|divider|divider|StageOut[85]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~4_combout\ & !\l2|Div0|auto_generated|divider|divider|op_13~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_13~4_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[85]~138_combout\);

-- Location: LCCOMB_X13_Y9_N4
\l2|Div0|auto_generated|divider|divider|StageOut[97]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[97]~141_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~8_combout\ & !\l2|Div0|auto_generated|divider|divider|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_1~8_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[97]~141_combout\);

-- Location: LCCOMB_X17_Y9_N10
\l2|Div0|auto_generated|divider|divider|StageOut[95]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[95]~143_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~4_combout\ & !\l2|Div0|auto_generated|divider|divider|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_1~4_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[95]~143_combout\);

-- Location: LCCOMB_X17_Y9_N8
\l2|Div0|auto_generated|divider|divider|StageOut[94]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[94]~144_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~2_combout\ & !\l2|Div0|auto_generated|divider|divider|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_1~2_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[94]~144_combout\);

-- Location: LCCOMB_X18_Y9_N22
\l2|Div0|auto_generated|divider|divider|StageOut[105]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[105]~147_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~6_combout\ & !\l2|Div0|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_2~6_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[105]~147_combout\);

-- Location: LCCOMB_X18_Y9_N20
\l2|Div0|auto_generated|divider|divider|StageOut[103]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[103]~149_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~2_combout\ & !\l2|Div0|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_2~2_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[103]~149_combout\);

-- Location: LCCOMB_X19_Y9_N4
\l2|Div0|auto_generated|divider|divider|StageOut[102]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[102]~150_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_1~12_combout\ & \l2|Div0|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[102]~150_combout\);

-- Location: LCCOMB_X19_Y9_N6
\l2|Div0|auto_generated|divider|divider|StageOut[111]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[111]~156_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_2~12_combout\ & \l2|Div0|auto_generated|divider|divider|op_3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[111]~156_combout\);

-- Location: LCCOMB_X20_Y9_N12
\l2|Div0|auto_generated|divider|divider|StageOut[123]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[123]~159_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~6_combout\ & !\l2|Div0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[123]~159_combout\);

-- Location: LCCOMB_X20_Y9_N10
\l2|Div0|auto_generated|divider|divider|StageOut[122]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[122]~160_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~4_combout\ & !\l2|Div0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[122]~160_combout\);

-- Location: LCCOMB_X20_Y9_N4
\l2|Div0|auto_generated|divider|divider|StageOut[120]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[120]~163_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~0_combout\ & !\l2|Div0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_4~0_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[120]~163_combout\);

-- Location: LCFF_X1_Y6_N21
\l1|l2|temporal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|temporal~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|temporal~regout\);

-- Location: LCCOMB_X12_Y9_N24
\l2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Equal0~1_combout\ = (\l2|cnt\(5) & (\l2|cnt\(4) & (\l2|cnt\(7) & \l2|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(5),
	datab => \l2|cnt\(4),
	datac => \l2|cnt\(7),
	datad => \l2|cnt\(6),
	combout => \l2|Equal0~1_combout\);

-- Location: LCFF_X8_Y10_N21
\l3|strobe:counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[8]~regout\);

-- Location: LCFF_X8_Y10_N31
\l3|strobe:counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[9]~regout\);

-- Location: LCFF_X8_Y10_N3
\l3|strobe:counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[11]~regout\);

-- Location: LCCOMB_X7_Y10_N10
\l3|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|LessThan1~3_combout\ = (!\l3|strobe:counter[11]~regout\ & (!\l3|strobe:counter[10]~regout\ & (!\l3|strobe:counter[9]~regout\ & !\l3|strobe:counter[8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[11]~regout\,
	datab => \l3|strobe:counter[10]~regout\,
	datac => \l3|strobe:counter[9]~regout\,
	datad => \l3|strobe:counter[8]~regout\,
	combout => \l3|LessThan1~3_combout\);

-- Location: LCFF_X7_Y10_N17
\l3|strobe:counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[16]~regout\);

-- Location: LCFF_X27_Y7_N15
\l1|l1|temporal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l1|temporal~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \l1|l3|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l1|temporal~regout\);

-- Location: LCFF_X27_Y7_N17
\l1|l1|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l1|counter~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l1|counter\(5));

-- Location: LCFF_X2_Y6_N29
\l1|l2|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|counter~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|counter\(9));

-- Location: LCFF_X2_Y6_N27
\l1|l2|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|counter~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|counter\(8));

-- Location: LCFF_X2_Y6_N1
\l1|l2|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|counter~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|counter\(0));

-- Location: LCFF_X2_Y6_N17
\l1|l2|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|Add0~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|counter\(7));

-- Location: LCCOMB_X2_Y6_N30
\l1|l2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Equal0~0_combout\ = (!\l1|l2|counter\(0) & (\l1|l2|counter\(9) & (!\l1|l2|counter\(7) & \l1|l2|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|counter\(0),
	datab => \l1|l2|counter\(9),
	datac => \l1|l2|counter\(7),
	datad => \l1|l2|counter\(8),
	combout => \l1|l2|Equal0~0_combout\);

-- Location: LCFF_X2_Y6_N25
\l1|l2|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|counter~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|counter\(3));

-- Location: LCFF_X2_Y6_N15
\l1|l2|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|Add0~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|counter\(6));

-- Location: LCFF_X2_Y6_N13
\l1|l2|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|Add0~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|counter\(5));

-- Location: LCFF_X2_Y6_N11
\l1|l2|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|Add0~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|counter\(4));

-- Location: LCCOMB_X1_Y6_N30
\l1|l2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Equal0~1_combout\ = (!\l1|l2|counter\(4) & (!\l1|l2|counter\(5) & (!\l1|l2|counter\(6) & \l1|l2|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|counter\(4),
	datab => \l1|l2|counter\(5),
	datac => \l1|l2|counter\(6),
	datad => \l1|l2|counter\(3),
	combout => \l1|l2|Equal0~1_combout\);

-- Location: LCFF_X2_Y6_N23
\l1|l2|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|counter~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|counter\(2));

-- Location: LCFF_X2_Y6_N5
\l1|l2|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l2|Add0~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l2|counter\(1));

-- Location: LCCOMB_X1_Y6_N14
\l1|l2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|Equal0~2_combout\ = (!\l1|l2|counter\(1) & \l1|l2|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|counter\(1),
	datad => \l1|l2|counter\(2),
	combout => \l1|l2|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y6_N20
\l1|l2|temporal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|temporal~0_combout\ = \l1|l2|temporal~regout\ $ (((\l1|l2|Equal0~1_combout\ & (\l1|l2|Equal0~2_combout\ & \l1|l2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|Equal0~1_combout\,
	datab => \l1|l2|Equal0~2_combout\,
	datac => \l1|l2|temporal~regout\,
	datad => \l1|l2|Equal0~0_combout\,
	combout => \l1|l2|temporal~0_combout\);

-- Location: LCCOMB_X8_Y10_N20
\l3|strobe:counter[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[8]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[8]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~16_combout\ & (\l3|strobe:counter[27]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Add0~16_combout\,
	datab => \l3|strobe:counter[27]~5_combout\,
	datac => \l3|strobe:counter[8]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[8]~0_combout\);

-- Location: LCCOMB_X8_Y10_N30
\l3|strobe:counter[9]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[9]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[9]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & ((\l3|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[9]~regout\,
	datad => \l3|Add0~18_combout\,
	combout => \l3|strobe:counter[9]~0_combout\);

-- Location: LCCOMB_X8_Y10_N2
\l3|strobe:counter[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[11]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[11]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & ((\l3|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[11]~regout\,
	datad => \l3|Add0~22_combout\,
	combout => \l3|strobe:counter[11]~0_combout\);

-- Location: LCCOMB_X7_Y10_N16
\l3|strobe:counter[16]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[16]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[16]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~32_combout\ & ((\l3|strobe:counter[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Add0~32_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[16]~regout\,
	datad => \l3|strobe:counter[27]~5_combout\,
	combout => \l3|strobe:counter[16]~0_combout\);

-- Location: LCCOMB_X27_Y7_N16
\l1|l1|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l1|counter~0_combout\ = (\l1|l1|Add0~10_combout\ & ((\l1|l1|counter\(1)) # ((\l1|l1|counter\(2)) # (!\l1|l3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l1|counter\(1),
	datab => \l1|l1|counter\(2),
	datac => \l1|l3|Equal0~0_combout\,
	datad => \l1|l1|Add0~10_combout\,
	combout => \l1|l1|counter~0_combout\);

-- Location: LCCOMB_X2_Y6_N28
\l1|l2|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|counter~0_combout\ = (\l1|l2|Add0~18_combout\ & (((!\l1|l2|Equal0~2_combout\) # (!\l1|l2|Equal0~0_combout\)) # (!\l1|l2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|Equal0~1_combout\,
	datab => \l1|l2|Equal0~0_combout\,
	datac => \l1|l2|Add0~18_combout\,
	datad => \l1|l2|Equal0~2_combout\,
	combout => \l1|l2|counter~0_combout\);

-- Location: LCCOMB_X2_Y6_N26
\l1|l2|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|counter~1_combout\ = (\l1|l2|Add0~16_combout\ & (((!\l1|l2|Equal0~1_combout\) # (!\l1|l2|Equal0~0_combout\)) # (!\l1|l2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|Equal0~2_combout\,
	datab => \l1|l2|Equal0~0_combout\,
	datac => \l1|l2|Equal0~1_combout\,
	datad => \l1|l2|Add0~16_combout\,
	combout => \l1|l2|counter~1_combout\);

-- Location: LCCOMB_X2_Y6_N0
\l1|l2|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|counter~2_combout\ = (\l1|l2|Add0~0_combout\ & (((!\l1|l2|Equal0~1_combout\) # (!\l1|l2|Equal0~0_combout\)) # (!\l1|l2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|Equal0~2_combout\,
	datab => \l1|l2|Equal0~0_combout\,
	datac => \l1|l2|Equal0~1_combout\,
	datad => \l1|l2|Add0~0_combout\,
	combout => \l1|l2|counter~2_combout\);

-- Location: LCCOMB_X2_Y6_N24
\l1|l2|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|counter~3_combout\ = (\l1|l2|Add0~6_combout\ & (((!\l1|l2|Equal0~2_combout\) # (!\l1|l2|Equal0~0_combout\)) # (!\l1|l2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|Equal0~1_combout\,
	datab => \l1|l2|Equal0~0_combout\,
	datac => \l1|l2|Add0~6_combout\,
	datad => \l1|l2|Equal0~2_combout\,
	combout => \l1|l2|counter~3_combout\);

-- Location: LCCOMB_X2_Y6_N22
\l1|l2|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l2|counter~4_combout\ = (\l1|l2|Add0~4_combout\ & (((!\l1|l2|Equal0~1_combout\) # (!\l1|l2|Equal0~0_combout\)) # (!\l1|l2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l2|Equal0~2_combout\,
	datab => \l1|l2|Equal0~0_combout\,
	datac => \l1|l2|Equal0~1_combout\,
	datad => \l1|l2|Add0~4_combout\,
	combout => \l1|l2|counter~4_combout\);

-- Location: LCCOMB_X15_Y9_N2
\l2|Div0|auto_generated|divider|divider|StageOut[88]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[88]~164_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[78]~183_combout\) # 
-- ((!\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & \l2|Div0|auto_generated|divider|divider|op_12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_12~8_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|StageOut[78]~183_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[88]~164_combout\);

-- Location: LCCOMB_X15_Y9_N0
\l2|Div0|auto_generated|divider|divider|StageOut[86]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[86]~166_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[76]~185_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_12~4_combout\ & !\l2|Div0|auto_generated|divider|divider|op_12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_12~4_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|StageOut[76]~185_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[86]~166_combout\);

-- Location: LCCOMB_X17_Y9_N12
\l2|Div0|auto_generated|divider|divider|StageOut[96]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[96]~169_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[86]~166_combout\) # 
-- ((!\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & \l2|Div0|auto_generated|divider|divider|op_13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|StageOut[86]~166_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~6_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[96]~169_combout\);

-- Location: LCCOMB_X17_Y9_N30
\l2|Div0|auto_generated|divider|divider|StageOut[106]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[106]~172_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[96]~169_combout\) # 
-- ((!\l2|Div0|auto_generated|divider|divider|op_1~12_combout\ & \l2|Div0|auto_generated|divider|divider|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[96]~169_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[106]~172_combout\);

-- Location: LCCOMB_X17_Y9_N14
\l2|Div0|auto_generated|divider|divider|StageOut[104]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[104]~174_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[94]~171_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_1~2_combout\ & !\l2|Div0|auto_generated|divider|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_1~2_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|StageOut[94]~171_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[104]~174_combout\);

-- Location: LCCOMB_X18_Y9_N30
\l2|Div0|auto_generated|divider|divider|StageOut[115]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[115]~176_combout\ = (\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[105]~173_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_2~6_combout\ & !\l2|Div0|auto_generated|divider|divider|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_2~6_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|StageOut[105]~173_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[115]~176_combout\);

-- Location: LCCOMB_X18_Y9_N0
\l2|Div0|auto_generated|divider|divider|StageOut[114]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[114]~177_combout\ = (\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[104]~174_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_2~4_combout\ & !\l2|Div0|auto_generated|divider|divider|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_2~4_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|StageOut[104]~174_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[114]~177_combout\);

-- Location: LCCOMB_X19_Y9_N30
\l2|Div0|auto_generated|divider|divider|StageOut[124]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[124]~179_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[114]~177_combout\) # 
-- ((!\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & \l2|Div0|auto_generated|divider|divider|op_3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[114]~177_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[124]~179_combout\);

-- Location: LCCOMB_X7_Y10_N30
\l3|strobe:counter[31]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[31]~3_combout\ = (!\l3|strobe:counter[30]~regout\ & (!\l3|strobe:counter[29]~regout\ & (!\l3|strobe:counter[30]~0_combout\ & \l3|LessThan1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[30]~regout\,
	datab => \l3|strobe:counter[29]~regout\,
	datac => \l3|strobe:counter[30]~0_combout\,
	datad => \l3|LessThan1~11_combout\,
	combout => \l3|strobe:counter[31]~3_combout\);

-- Location: LCCOMB_X15_Y10_N28
\l2|Div0|auto_generated|divider|divider|StageOut[79]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[79]~182_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\l4|pwm_main\(6))) # 
-- (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \l4|pwm_main\(6),
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[79]~182_combout\);

-- Location: LCCOMB_X15_Y10_N4
\l2|Div0|auto_generated|divider|divider|StageOut[76]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[76]~185_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\l4|pwm_main\(3))) # 
-- (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l4|pwm_main\(3),
	datab => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[76]~185_combout\);

-- Location: LCCOMB_X15_Y10_N2
\l2|Div0|auto_generated|divider|divider|StageOut[75]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[75]~186_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\l4|pwm_main\(2)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datab => \l4|pwm_main\(2),
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[75]~186_combout\);

-- Location: LCCOMB_X13_Y9_N8
\l2|Div0|auto_generated|divider|divider|StageOut[84]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[84]~187_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & (\l4|pwm_main\(1))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l4|pwm_main\(1),
	datab => \l2|Div0|auto_generated|divider|divider|op_12~0_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[84]~187_combout\);

-- Location: LCCOMB_X13_Y9_N30
\l2|Div0|auto_generated|divider|divider|StageOut[83]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[83]~188_combout\ = (\l4|pwm_main\(0) & \l2|Div0|auto_generated|divider|divider|op_13~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l4|pwm_main\(0),
	datad => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[83]~188_combout\);

-- Location: LCCOMB_X19_Y9_N12
\l2|Div0|auto_generated|divider|divider|StageOut[112]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[112]~189_combout\ = (\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_2~12_combout\ & ((!\l2|Div0|auto_generated|divider|divider|op_1~12_combout\))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_2~12_combout\ & (\l2|Div0|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_2~0_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[112]~189_combout\);

-- Location: LCCOMB_X19_Y9_N10
\l2|Div0|auto_generated|divider|divider|StageOut[121]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[121]~190_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & (!\l2|Div0|auto_generated|divider|divider|op_2~12_combout\)) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[121]~190_combout\);

-- Location: LCCOMB_X27_Y7_N14
\l1|l1|temporal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l1|temporal~0_combout\ = !\l1|l1|temporal~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l1|l1|temporal~regout\,
	combout => \l1|l1|temporal~0_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(3),
	combout => \data_in~combout\(3));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(5),
	combout => \data_in~combout\(5));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(7),
	combout => \data_in~combout\(7));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_btn,
	combout => \btn~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\l1|l2|temporal~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \l1|l2|temporal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \l1|l2|temporal~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\l1|l1|temporal~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \l1|l1|temporal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \l1|l1|temporal~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y7_N30
\l1|l3|temporal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l3|temporal~0_combout\ = !\l1|l3|temporal~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l1|l3|temporal~regout\,
	combout => \l1|l3|temporal~0_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G6
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y7_N2
\l1|l1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l1|Add0~0_combout\ = \l1|l1|counter\(0) $ (VCC)
-- \l1|l1|Add0~1\ = CARRY(\l1|l1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l1|l1|counter\(0),
	datad => VCC,
	combout => \l1|l1|Add0~0_combout\,
	cout => \l1|l1|Add0~1\);

-- Location: LCFF_X27_Y7_N3
\l1|l1|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l1|Add0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l1|counter\(0));

-- Location: LCCOMB_X27_Y7_N4
\l1|l1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l1|Add0~2_combout\ = (\l1|l1|counter\(1) & (!\l1|l1|Add0~1\)) # (!\l1|l1|counter\(1) & ((\l1|l1|Add0~1\) # (GND)))
-- \l1|l1|Add0~3\ = CARRY((!\l1|l1|Add0~1\) # (!\l1|l1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l1|l1|counter\(1),
	datad => VCC,
	cin => \l1|l1|Add0~1\,
	combout => \l1|l1|Add0~2_combout\,
	cout => \l1|l1|Add0~3\);

-- Location: LCCOMB_X27_Y7_N6
\l1|l1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l1|Add0~4_combout\ = (\l1|l1|counter\(2) & (\l1|l1|Add0~3\ $ (GND))) # (!\l1|l1|counter\(2) & (!\l1|l1|Add0~3\ & VCC))
-- \l1|l1|Add0~5\ = CARRY((\l1|l1|counter\(2) & !\l1|l1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l1|counter\(2),
	datad => VCC,
	cin => \l1|l1|Add0~3\,
	combout => \l1|l1|Add0~4_combout\,
	cout => \l1|l1|Add0~5\);

-- Location: LCFF_X27_Y7_N7
\l1|l1|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l1|Add0~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l1|counter\(2));

-- Location: LCCOMB_X27_Y7_N26
\l1|l1|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l1|counter~2_combout\ = (\l1|l1|Add0~2_combout\ & (((\l1|l1|counter\(2)) # (\l1|l1|counter\(1))) # (!\l1|l3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l3|Equal0~0_combout\,
	datab => \l1|l1|counter\(2),
	datac => \l1|l1|counter\(1),
	datad => \l1|l1|Add0~2_combout\,
	combout => \l1|l1|counter~2_combout\);

-- Location: LCFF_X27_Y7_N27
\l1|l1|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l1|counter~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l1|counter\(1));

-- Location: LCCOMB_X27_Y7_N8
\l1|l1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l1|Add0~6_combout\ = (\l1|l1|counter\(3) & (!\l1|l1|Add0~5\)) # (!\l1|l1|counter\(3) & ((\l1|l1|Add0~5\) # (GND)))
-- \l1|l1|Add0~7\ = CARRY((!\l1|l1|Add0~5\) # (!\l1|l1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l1|l1|counter\(3),
	datad => VCC,
	cin => \l1|l1|Add0~5\,
	combout => \l1|l1|Add0~6_combout\,
	cout => \l1|l1|Add0~7\);

-- Location: LCFF_X27_Y7_N9
\l1|l1|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l1|Add0~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l1|counter\(3));

-- Location: LCCOMB_X27_Y7_N28
\l1|l1|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l1|counter~1_combout\ = (\l1|l1|Add0~8_combout\ & ((\l1|l1|counter\(1)) # ((\l1|l1|counter\(2)) # (!\l1|l3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l1|counter\(1),
	datab => \l1|l3|Equal0~0_combout\,
	datac => \l1|l1|counter\(2),
	datad => \l1|l1|Add0~8_combout\,
	combout => \l1|l1|counter~1_combout\);

-- Location: LCFF_X27_Y7_N29
\l1|l1|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l1|counter~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l1|counter\(4));

-- Location: LCCOMB_X27_Y7_N22
\l1|l3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l3|Equal0~0_combout\ = (\l1|l1|counter\(5) & (\l1|l1|counter\(0) & (!\l1|l1|counter\(3) & \l1|l1|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l1|l1|counter\(5),
	datab => \l1|l1|counter\(0),
	datac => \l1|l1|counter\(3),
	datad => \l1|l1|counter\(4),
	combout => \l1|l3|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y7_N24
\l1|l3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l1|l3|Equal0~1_combout\ = (!\l1|l1|counter\(1) & (!\l1|l1|counter\(2) & \l1|l3|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l1|l1|counter\(1),
	datac => \l1|l1|counter\(2),
	datad => \l1|l3|Equal0~0_combout\,
	combout => \l1|l3|Equal0~1_combout\);

-- Location: LCFF_X27_Y7_N31
\l1|l3|temporal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \l1|l3|temporal~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \l1|l3|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l1|l3|temporal~regout\);

-- Location: CLKCTRL_G4
\l1|l3|temporal~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \l1|l3|temporal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \l1|l3|temporal~clkctrl_outclk\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

-- Location: LCCOMB_X7_Y10_N0
\l3|strobe:counter[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[0]~0_combout\ = (!\l3|strobe:counter[30]~regout\ & !\l3|strobe:counter[29]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l3|strobe:counter[30]~regout\,
	datad => \l3|strobe:counter[29]~regout\,
	combout => \l3|strobe:counter[0]~0_combout\);

-- Location: LCCOMB_X9_Y9_N4
\l3|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~36_combout\ = (\l3|strobe:counter[18]~regout\ & (\l3|Add0~35\ $ (GND))) # (!\l3|strobe:counter[18]~regout\ & (!\l3|Add0~35\ & VCC))
-- \l3|Add0~37\ = CARRY((\l3|strobe:counter[18]~regout\ & !\l3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[18]~regout\,
	datad => VCC,
	cin => \l3|Add0~35\,
	combout => \l3|Add0~36_combout\,
	cout => \l3|Add0~37\);

-- Location: LCCOMB_X9_Y9_N6
\l3|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~38_combout\ = (\l3|strobe:counter[19]~regout\ & (!\l3|Add0~37\)) # (!\l3|strobe:counter[19]~regout\ & ((\l3|Add0~37\) # (GND)))
-- \l3|Add0~39\ = CARRY((!\l3|Add0~37\) # (!\l3|strobe:counter[19]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[19]~regout\,
	datad => VCC,
	cin => \l3|Add0~37\,
	combout => \l3|Add0~38_combout\,
	cout => \l3|Add0~39\);

-- Location: LCCOMB_X8_Y10_N4
\l3|strobe:counter[19]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[19]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[19]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & ((\l3|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[19]~regout\,
	datad => \l3|Add0~38_combout\,
	combout => \l3|strobe:counter[19]~0_combout\);

-- Location: LCFF_X8_Y10_N5
\l3|strobe:counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[19]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[19]~regout\);

-- Location: LCCOMB_X9_Y9_N8
\l3|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~40_combout\ = (\l3|strobe:counter[20]~regout\ & (\l3|Add0~39\ $ (GND))) # (!\l3|strobe:counter[20]~regout\ & (!\l3|Add0~39\ & VCC))
-- \l3|Add0~41\ = CARRY((\l3|strobe:counter[20]~regout\ & !\l3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[20]~regout\,
	datad => VCC,
	cin => \l3|Add0~39\,
	combout => \l3|Add0~40_combout\,
	cout => \l3|Add0~41\);

-- Location: LCCOMB_X10_Y10_N6
\l3|strobe:counter[20]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[20]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[20]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & ((\l3|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[20]~regout\,
	datad => \l3|Add0~40_combout\,
	combout => \l3|strobe:counter[20]~0_combout\);

-- Location: LCFF_X10_Y10_N7
\l3|strobe:counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[20]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[20]~regout\);

-- Location: LCCOMB_X9_Y9_N10
\l3|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~42_combout\ = (\l3|strobe:counter[21]~regout\ & (!\l3|Add0~41\)) # (!\l3|strobe:counter[21]~regout\ & ((\l3|Add0~41\) # (GND)))
-- \l3|Add0~43\ = CARRY((!\l3|Add0~41\) # (!\l3|strobe:counter[21]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[21]~regout\,
	datad => VCC,
	cin => \l3|Add0~41\,
	combout => \l3|Add0~42_combout\,
	cout => \l3|Add0~43\);

-- Location: LCCOMB_X10_Y10_N16
\l3|strobe:counter[21]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[21]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[21]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & ((\l3|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[21]~regout\,
	datad => \l3|Add0~42_combout\,
	combout => \l3|strobe:counter[21]~0_combout\);

-- Location: LCFF_X10_Y10_N17
\l3|strobe:counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[21]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[21]~regout\);

-- Location: LCCOMB_X9_Y9_N12
\l3|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~44_combout\ = (\l3|strobe:counter[22]~regout\ & (\l3|Add0~43\ $ (GND))) # (!\l3|strobe:counter[22]~regout\ & (!\l3|Add0~43\ & VCC))
-- \l3|Add0~45\ = CARRY((\l3|strobe:counter[22]~regout\ & !\l3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[22]~regout\,
	datad => VCC,
	cin => \l3|Add0~43\,
	combout => \l3|Add0~44_combout\,
	cout => \l3|Add0~45\);

-- Location: LCCOMB_X10_Y10_N26
\l3|strobe:counter[22]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[22]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[22]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~44_combout\ & ((\l3|strobe:counter[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~3_combout\,
	datab => \l3|Add0~44_combout\,
	datac => \l3|strobe:counter[22]~regout\,
	datad => \l3|strobe:counter[27]~5_combout\,
	combout => \l3|strobe:counter[22]~0_combout\);

-- Location: LCFF_X10_Y10_N27
\l3|strobe:counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[22]~regout\);

-- Location: LCCOMB_X9_Y9_N14
\l3|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~46_combout\ = (\l3|strobe:counter[23]~regout\ & (!\l3|Add0~45\)) # (!\l3|strobe:counter[23]~regout\ & ((\l3|Add0~45\) # (GND)))
-- \l3|Add0~47\ = CARRY((!\l3|Add0~45\) # (!\l3|strobe:counter[23]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[23]~regout\,
	datad => VCC,
	cin => \l3|Add0~45\,
	combout => \l3|Add0~46_combout\,
	cout => \l3|Add0~47\);

-- Location: LCCOMB_X10_Y10_N0
\l3|strobe:counter[23]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[23]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[23]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & (\l3|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|Add0~46_combout\,
	datac => \l3|strobe:counter[23]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[23]~0_combout\);

-- Location: LCFF_X10_Y10_N1
\l3|strobe:counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[23]~regout\);

-- Location: LCCOMB_X10_Y10_N18
\l3|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|LessThan1~7_combout\ = (!\l3|strobe:counter[20]~regout\ & (!\l3|strobe:counter[23]~regout\ & (!\l3|strobe:counter[21]~regout\ & !\l3|strobe:counter[22]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[20]~regout\,
	datab => \l3|strobe:counter[23]~regout\,
	datac => \l3|strobe:counter[21]~regout\,
	datad => \l3|strobe:counter[22]~regout\,
	combout => \l3|LessThan1~7_combout\);

-- Location: LCCOMB_X8_Y10_N14
\l3|strobe:counter[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[2]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[2]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~4_combout\ & (\l3|strobe:counter[27]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Add0~4_combout\,
	datab => \l3|strobe:counter[27]~5_combout\,
	datac => \l3|strobe:counter[2]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[2]~0_combout\);

-- Location: LCFF_X8_Y10_N15
\l3|strobe:counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[2]~regout\);

-- Location: LCCOMB_X9_Y9_N16
\l3|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~48_combout\ = (\l3|strobe:counter[24]~regout\ & (\l3|Add0~47\ $ (GND))) # (!\l3|strobe:counter[24]~regout\ & (!\l3|Add0~47\ & VCC))
-- \l3|Add0~49\ = CARRY((\l3|strobe:counter[24]~regout\ & !\l3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[24]~regout\,
	datad => VCC,
	cin => \l3|Add0~47\,
	combout => \l3|Add0~48_combout\,
	cout => \l3|Add0~49\);

-- Location: LCCOMB_X8_Y9_N28
\l3|strobe:counter[24]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[24]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[24]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & (\l3|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|Add0~48_combout\,
	datac => \l3|strobe:counter[24]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[24]~0_combout\);

-- Location: LCFF_X8_Y9_N29
\l3|strobe:counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[24]~regout\);

-- Location: LCCOMB_X9_Y9_N18
\l3|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~50_combout\ = (\l3|strobe:counter[25]~regout\ & (!\l3|Add0~49\)) # (!\l3|strobe:counter[25]~regout\ & ((\l3|Add0~49\) # (GND)))
-- \l3|Add0~51\ = CARRY((!\l3|Add0~49\) # (!\l3|strobe:counter[25]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[25]~regout\,
	datad => VCC,
	cin => \l3|Add0~49\,
	combout => \l3|Add0~50_combout\,
	cout => \l3|Add0~51\);

-- Location: LCCOMB_X8_Y9_N6
\l3|strobe:counter[25]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[25]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[25]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & (\l3|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|Add0~50_combout\,
	datac => \l3|strobe:counter[25]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[25]~0_combout\);

-- Location: LCFF_X8_Y9_N7
\l3|strobe:counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[25]~regout\);

-- Location: LCCOMB_X9_Y9_N20
\l3|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~52_combout\ = (\l3|strobe:counter[26]~regout\ & (\l3|Add0~51\ $ (GND))) # (!\l3|strobe:counter[26]~regout\ & (!\l3|Add0~51\ & VCC))
-- \l3|Add0~53\ = CARRY((\l3|strobe:counter[26]~regout\ & !\l3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[26]~regout\,
	datad => VCC,
	cin => \l3|Add0~51\,
	combout => \l3|Add0~52_combout\,
	cout => \l3|Add0~53\);

-- Location: LCCOMB_X8_Y9_N16
\l3|strobe:counter[26]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[26]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[26]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & (\l3|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|Add0~52_combout\,
	datac => \l3|strobe:counter[26]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[26]~0_combout\);

-- Location: LCFF_X8_Y9_N17
\l3|strobe:counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[26]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[26]~regout\);

-- Location: LCCOMB_X9_Y9_N22
\l3|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~54_combout\ = (\l3|strobe:counter[27]~regout\ & (!\l3|Add0~53\)) # (!\l3|strobe:counter[27]~regout\ & ((\l3|Add0~53\) # (GND)))
-- \l3|Add0~55\ = CARRY((!\l3|Add0~53\) # (!\l3|strobe:counter[27]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~regout\,
	datad => VCC,
	cin => \l3|Add0~53\,
	combout => \l3|Add0~54_combout\,
	cout => \l3|Add0~55\);

-- Location: LCCOMB_X9_Y9_N24
\l3|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~56_combout\ = (\l3|strobe:counter[28]~regout\ & (\l3|Add0~55\ $ (GND))) # (!\l3|strobe:counter[28]~regout\ & (!\l3|Add0~55\ & VCC))
-- \l3|Add0~57\ = CARRY((\l3|strobe:counter[28]~regout\ & !\l3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[28]~regout\,
	datad => VCC,
	cin => \l3|Add0~55\,
	combout => \l3|Add0~56_combout\,
	cout => \l3|Add0~57\);

-- Location: LCCOMB_X8_Y10_N8
\l3|strobe:counter[28]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[28]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[28]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & ((\l3|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[28]~regout\,
	datad => \l3|Add0~56_combout\,
	combout => \l3|strobe:counter[28]~0_combout\);

-- Location: LCFF_X8_Y10_N9
\l3|strobe:counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[28]~regout\);

-- Location: LCCOMB_X8_Y10_N18
\l3|strobe:counter[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[3]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[3]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~6_combout\ & (\l3|strobe:counter[27]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Add0~6_combout\,
	datab => \l3|strobe:counter[27]~5_combout\,
	datac => \l3|strobe:counter[3]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[3]~0_combout\);

-- Location: LCFF_X8_Y10_N19
\l3|strobe:counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[3]~regout\);

-- Location: LCCOMB_X7_Y10_N6
\l3|LessThan1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|LessThan1~10_combout\ = (!\l3|strobe:counter[28]~regout\ & (((!\l3|strobe:counter[1]~regout\ & !\l3|strobe:counter[2]~regout\)) # (!\l3|strobe:counter[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[1]~regout\,
	datab => \l3|strobe:counter[2]~regout\,
	datac => \l3|strobe:counter[28]~regout\,
	datad => \l3|strobe:counter[3]~regout\,
	combout => \l3|LessThan1~10_combout\);

-- Location: LCCOMB_X7_Y10_N26
\l3|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|LessThan1~11_combout\ = (\l3|LessThan1~8_combout\ & (\l3|LessThan1~7_combout\ & (\l3|LessThan1~6_combout\ & \l3|LessThan1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|LessThan1~8_combout\,
	datab => \l3|LessThan1~7_combout\,
	datac => \l3|LessThan1~6_combout\,
	datad => \l3|LessThan1~10_combout\,
	combout => \l3|LessThan1~11_combout\);

-- Location: LCCOMB_X9_Y10_N0
\l3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~0_combout\ = \l3|strobe:counter[0]~regout\ $ (VCC)
-- \l3|Add0~1\ = CARRY(\l3|strobe:counter[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[0]~regout\,
	datad => VCC,
	combout => \l3|Add0~0_combout\,
	cout => \l3|Add0~1\);

-- Location: LCCOMB_X7_Y10_N28
\l3|strobe:counter[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[0]~1_combout\ = (\l3|strobe:counter[0]~0_combout\ & ((\l3|strobe:counter[30]~0_combout\) # ((\l3|LessThan1~11_combout\ & \l3|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[30]~0_combout\,
	datab => \l3|LessThan1~11_combout\,
	datac => \l3|Add0~0_combout\,
	datad => \l3|strobe:counter[0]~0_combout\,
	combout => \l3|strobe:counter[0]~1_combout\);

-- Location: LCCOMB_X8_Y10_N28
\l3|strobe:counter[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[0]~2_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[0]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & ((\l3|strobe:counter[31]~regout\) # ((\l3|strobe:counter[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[31]~regout\,
	datab => \l3|strobe:counter[0]~1_combout\,
	datac => \l3|strobe:counter[0]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[0]~2_combout\);

-- Location: LCFF_X8_Y10_N29
\l3|strobe:counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[0]~regout\);

-- Location: LCCOMB_X7_Y10_N24
\l3|strobe~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe~2_combout\ = (!\l3|strobe:counter[1]~regout\ & (!\l3|strobe:counter[0]~regout\ & (!\l3|strobe:counter[2]~regout\ & !\l3|strobe:counter[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[1]~regout\,
	datab => \l3|strobe:counter[0]~regout\,
	datac => \l3|strobe:counter[2]~regout\,
	datad => \l3|strobe:counter[3]~regout\,
	combout => \l3|strobe~2_combout\);

-- Location: LCCOMB_X8_Y9_N14
\l3|strobe:counter[27]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[27]~4_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[27]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & (\l3|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|Add0~54_combout\,
	datac => \l3|strobe:counter[27]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[27]~4_combout\);

-- Location: LCFF_X8_Y9_N15
\l3|strobe:counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[27]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[27]~regout\);

-- Location: LCCOMB_X8_Y9_N0
\l3|LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|LessThan1~8_combout\ = (!\l3|strobe:counter[25]~regout\ & (!\l3|strobe:counter[27]~regout\ & (!\l3|strobe:counter[26]~regout\ & !\l3|strobe:counter[24]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[25]~regout\,
	datab => \l3|strobe:counter[27]~regout\,
	datac => \l3|strobe:counter[26]~regout\,
	datad => \l3|strobe:counter[24]~regout\,
	combout => \l3|LessThan1~8_combout\);

-- Location: LCCOMB_X7_Y10_N2
\l3|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|LessThan1~9_combout\ = (\l3|LessThan1~8_combout\ & \l3|LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l3|LessThan1~8_combout\,
	datad => \l3|LessThan1~7_combout\,
	combout => \l3|LessThan1~9_combout\);

-- Location: LCCOMB_X7_Y10_N8
\l3|strobe:counter[27]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[27]~2_combout\ = (!\l3|strobe:counter[31]~regout\ & (((!\l3|LessThan1~9_combout\) # (!\l3|strobe~2_combout\)) # (!\l3|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[31]~regout\,
	datab => \l3|LessThan1~6_combout\,
	datac => \l3|strobe~2_combout\,
	datad => \l3|LessThan1~9_combout\,
	combout => \l3|strobe:counter[27]~2_combout\);

-- Location: LCCOMB_X7_Y10_N12
\l3|strobe:counter[27]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[27]~5_combout\ = (!\l3|strobe:counter[30]~regout\ & (!\l3|strobe:counter[29]~regout\ & (\l3|strobe:counter[27]~2_combout\ & \l3|LessThan1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[30]~regout\,
	datab => \l3|strobe:counter[29]~regout\,
	datac => \l3|strobe:counter[27]~2_combout\,
	datad => \l3|LessThan1~11_combout\,
	combout => \l3|strobe:counter[27]~5_combout\);

-- Location: LCCOMB_X10_Y10_N14
\l3|strobe:counter[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[15]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[15]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~30_combout\ & ((\l3|strobe:counter[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Add0~30_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[15]~regout\,
	datad => \l3|strobe:counter[27]~5_combout\,
	combout => \l3|strobe:counter[15]~0_combout\);

-- Location: LCFF_X10_Y10_N15
\l3|strobe:counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[15]~regout\);

-- Location: LCCOMB_X8_Y10_N24
\l3|strobe:counter[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[10]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[10]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~20_combout\ & (\l3|strobe:counter[27]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Add0~20_combout\,
	datab => \l3|strobe:counter[27]~5_combout\,
	datac => \l3|strobe:counter[10]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[10]~0_combout\);

-- Location: LCFF_X8_Y10_N25
\l3|strobe:counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[10]~regout\);

-- Location: LCCOMB_X10_Y10_N28
\l3|strobe:counter[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[1]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[1]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~2_combout\ & ((\l3|strobe:counter[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Add0~2_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[1]~regout\,
	datad => \l3|strobe:counter[27]~5_combout\,
	combout => \l3|strobe:counter[1]~0_combout\);

-- Location: LCFF_X10_Y10_N29
\l3|strobe:counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[1]~regout\);

-- Location: LCCOMB_X9_Y10_N8
\l3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~8_combout\ = (\l3|strobe:counter[4]~regout\ & (\l3|Add0~7\ $ (GND))) # (!\l3|strobe:counter[4]~regout\ & (!\l3|Add0~7\ & VCC))
-- \l3|Add0~9\ = CARRY((\l3|strobe:counter[4]~regout\ & !\l3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[4]~regout\,
	datad => VCC,
	cin => \l3|Add0~7\,
	combout => \l3|Add0~8_combout\,
	cout => \l3|Add0~9\);

-- Location: LCCOMB_X9_Y10_N10
\l3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~10_combout\ = (\l3|strobe:counter[5]~regout\ & (!\l3|Add0~9\)) # (!\l3|strobe:counter[5]~regout\ & ((\l3|Add0~9\) # (GND)))
-- \l3|Add0~11\ = CARRY((!\l3|Add0~9\) # (!\l3|strobe:counter[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[5]~regout\,
	datad => VCC,
	cin => \l3|Add0~9\,
	combout => \l3|Add0~10_combout\,
	cout => \l3|Add0~11\);

-- Location: LCCOMB_X8_Y10_N6
\l3|strobe:counter[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[5]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[5]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & (\l3|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|Add0~10_combout\,
	datac => \l3|strobe:counter[5]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[5]~0_combout\);

-- Location: LCFF_X8_Y10_N7
\l3|strobe:counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[5]~regout\);

-- Location: LCCOMB_X9_Y10_N14
\l3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~14_combout\ = (\l3|strobe:counter[7]~regout\ & (!\l3|Add0~13\)) # (!\l3|strobe:counter[7]~regout\ & ((\l3|Add0~13\) # (GND)))
-- \l3|Add0~15\ = CARRY((!\l3|Add0~13\) # (!\l3|strobe:counter[7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[7]~regout\,
	datad => VCC,
	cin => \l3|Add0~13\,
	combout => \l3|Add0~14_combout\,
	cout => \l3|Add0~15\);

-- Location: LCCOMB_X8_Y10_N22
\l3|strobe:counter[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[7]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[7]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & (\l3|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|Add0~14_combout\,
	datac => \l3|strobe:counter[7]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[7]~0_combout\);

-- Location: LCFF_X8_Y10_N23
\l3|strobe:counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[7]~regout\);

-- Location: LCCOMB_X9_Y10_N24
\l3|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~24_combout\ = (\l3|strobe:counter[12]~regout\ & (\l3|Add0~23\ $ (GND))) # (!\l3|strobe:counter[12]~regout\ & (!\l3|Add0~23\ & VCC))
-- \l3|Add0~25\ = CARRY((\l3|strobe:counter[12]~regout\ & !\l3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[12]~regout\,
	datad => VCC,
	cin => \l3|Add0~23\,
	combout => \l3|Add0~24_combout\,
	cout => \l3|Add0~25\);

-- Location: LCCOMB_X10_Y10_N24
\l3|strobe:counter[12]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[12]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[12]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~24_combout\ & ((\l3|strobe:counter[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~3_combout\,
	datab => \l3|Add0~24_combout\,
	datac => \l3|strobe:counter[12]~regout\,
	datad => \l3|strobe:counter[27]~5_combout\,
	combout => \l3|strobe:counter[12]~0_combout\);

-- Location: LCFF_X10_Y10_N25
\l3|strobe:counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[12]~regout\);

-- Location: LCCOMB_X9_Y10_N26
\l3|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~26_combout\ = (\l3|strobe:counter[13]~regout\ & (!\l3|Add0~25\)) # (!\l3|strobe:counter[13]~regout\ & ((\l3|Add0~25\) # (GND)))
-- \l3|Add0~27\ = CARRY((!\l3|Add0~25\) # (!\l3|strobe:counter[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[13]~regout\,
	datad => VCC,
	cin => \l3|Add0~25\,
	combout => \l3|Add0~26_combout\,
	cout => \l3|Add0~27\);

-- Location: LCCOMB_X10_Y10_N30
\l3|strobe:counter[13]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[13]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[13]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~26_combout\ & ((\l3|strobe:counter[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~3_combout\,
	datab => \l3|Add0~26_combout\,
	datac => \l3|strobe:counter[13]~regout\,
	datad => \l3|strobe:counter[27]~5_combout\,
	combout => \l3|strobe:counter[13]~0_combout\);

-- Location: LCFF_X10_Y10_N31
\l3|strobe:counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[13]~regout\);

-- Location: LCCOMB_X9_Y10_N28
\l3|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~28_combout\ = (\l3|strobe:counter[14]~regout\ & (\l3|Add0~27\ $ (GND))) # (!\l3|strobe:counter[14]~regout\ & (!\l3|Add0~27\ & VCC))
-- \l3|Add0~29\ = CARRY((\l3|strobe:counter[14]~regout\ & !\l3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[14]~regout\,
	datad => VCC,
	cin => \l3|Add0~27\,
	combout => \l3|Add0~28_combout\,
	cout => \l3|Add0~29\);

-- Location: LCCOMB_X10_Y10_N8
\l3|strobe:counter[14]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[14]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[14]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & ((\l3|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[14]~regout\,
	datad => \l3|Add0~28_combout\,
	combout => \l3|strobe:counter[14]~0_combout\);

-- Location: LCFF_X10_Y10_N9
\l3|strobe:counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[14]~regout\);

-- Location: LCCOMB_X8_Y10_N10
\l3|strobe:counter[18]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[18]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[18]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & ((\l3|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[18]~regout\,
	datad => \l3|Add0~36_combout\,
	combout => \l3|strobe:counter[18]~0_combout\);

-- Location: LCFF_X8_Y10_N11
\l3|strobe:counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[18]~regout\);

-- Location: LCCOMB_X8_Y10_N16
\l3|strobe:counter[17]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[17]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[17]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~34_combout\ & (\l3|strobe:counter[27]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Add0~34_combout\,
	datab => \l3|strobe:counter[27]~5_combout\,
	datac => \l3|strobe:counter[17]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[17]~0_combout\);

-- Location: LCFF_X8_Y10_N17
\l3|strobe:counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[17]~regout\);

-- Location: LCCOMB_X7_Y10_N22
\l3|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|LessThan1~5_combout\ = (!\l3|strobe:counter[16]~regout\ & (!\l3|strobe:counter[18]~regout\ & (!\l3|strobe:counter[17]~regout\ & !\l3|strobe:counter[19]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[16]~regout\,
	datab => \l3|strobe:counter[18]~regout\,
	datac => \l3|strobe:counter[17]~regout\,
	datad => \l3|strobe:counter[19]~regout\,
	combout => \l3|LessThan1~5_combout\);

-- Location: LCCOMB_X8_Y10_N0
\l3|strobe:counter[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[4]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[4]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & (\l3|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|Add0~8_combout\,
	datac => \l3|strobe:counter[4]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[4]~0_combout\);

-- Location: LCFF_X8_Y10_N1
\l3|strobe:counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[4]~regout\);

-- Location: LCCOMB_X8_Y10_N12
\l3|strobe:counter[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[6]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[6]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|Add0~12_combout\ & (\l3|strobe:counter[27]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|Add0~12_combout\,
	datab => \l3|strobe:counter[27]~5_combout\,
	datac => \l3|strobe:counter[6]~regout\,
	datad => \l3|strobe:counter[27]~3_combout\,
	combout => \l3|strobe:counter[6]~0_combout\);

-- Location: LCFF_X8_Y10_N13
\l3|strobe:counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[6]~regout\);

-- Location: LCCOMB_X7_Y10_N20
\l3|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|LessThan1~2_combout\ = (!\l3|strobe:counter[5]~regout\ & (!\l3|strobe:counter[4]~regout\ & (!\l3|strobe:counter[6]~regout\ & !\l3|strobe:counter[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[5]~regout\,
	datab => \l3|strobe:counter[4]~regout\,
	datac => \l3|strobe:counter[6]~regout\,
	datad => \l3|strobe:counter[7]~regout\,
	combout => \l3|LessThan1~2_combout\);

-- Location: LCCOMB_X10_Y10_N20
\l3|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|LessThan1~4_combout\ = (!\l3|strobe:counter[12]~regout\ & (!\l3|strobe:counter[14]~regout\ & (!\l3|strobe:counter[15]~regout\ & !\l3|strobe:counter[13]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[12]~regout\,
	datab => \l3|strobe:counter[14]~regout\,
	datac => \l3|strobe:counter[15]~regout\,
	datad => \l3|strobe:counter[13]~regout\,
	combout => \l3|LessThan1~4_combout\);

-- Location: LCCOMB_X7_Y10_N4
\l3|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|LessThan1~6_combout\ = (\l3|LessThan1~3_combout\ & (\l3|LessThan1~5_combout\ & (\l3|LessThan1~2_combout\ & \l3|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|LessThan1~3_combout\,
	datab => \l3|LessThan1~5_combout\,
	datac => \l3|LessThan1~2_combout\,
	datad => \l3|LessThan1~4_combout\,
	combout => \l3|LessThan1~6_combout\);

-- Location: LCCOMB_X7_Y10_N14
\l3|strobe:counter[30]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[30]~0_combout\ = (\l3|strobe~2_combout\ & (\l3|LessThan1~6_combout\ & (!\l3|strobe:counter[28]~regout\ & \l3|LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe~2_combout\,
	datab => \l3|LessThan1~6_combout\,
	datac => \l3|strobe:counter[28]~regout\,
	datad => \l3|LessThan1~9_combout\,
	combout => \l3|strobe:counter[30]~0_combout\);

-- Location: LCCOMB_X7_Y10_N18
\l3|strobe:counter[27]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[27]~3_combout\ = (\l3|strobe:counter[31]~regout\) # ((!\btn~combout\ & (\l3|strobe:counter[0]~0_combout\ & \l3|strobe:counter[30]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \l3|strobe:counter[0]~0_combout\,
	datac => \l3|strobe:counter[30]~0_combout\,
	datad => \l3|strobe:counter[31]~regout\,
	combout => \l3|strobe:counter[27]~3_combout\);

-- Location: LCCOMB_X9_Y9_N26
\l3|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~58_combout\ = (\l3|strobe:counter[29]~regout\ & (!\l3|Add0~57\)) # (!\l3|strobe:counter[29]~regout\ & ((\l3|Add0~57\) # (GND)))
-- \l3|Add0~59\ = CARRY((!\l3|Add0~57\) # (!\l3|strobe:counter[29]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[29]~regout\,
	datad => VCC,
	cin => \l3|Add0~57\,
	combout => \l3|Add0~58_combout\,
	cout => \l3|Add0~59\);

-- Location: LCCOMB_X8_Y10_N26
\l3|strobe:counter[29]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[29]~0_combout\ = (\l3|strobe:counter[27]~3_combout\ & (((\l3|strobe:counter[29]~regout\)))) # (!\l3|strobe:counter[27]~3_combout\ & (\l3|strobe:counter[27]~5_combout\ & ((\l3|Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[27]~5_combout\,
	datab => \l3|strobe:counter[27]~3_combout\,
	datac => \l3|strobe:counter[29]~regout\,
	datad => \l3|Add0~58_combout\,
	combout => \l3|strobe:counter[29]~0_combout\);

-- Location: LCFF_X8_Y10_N27
\l3|strobe:counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[29]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[29]~regout\);

-- Location: LCCOMB_X9_Y9_N28
\l3|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~60_combout\ = (\l3|strobe:counter[30]~regout\ & (\l3|Add0~59\ $ (GND))) # (!\l3|strobe:counter[30]~regout\ & (!\l3|Add0~59\ & VCC))
-- \l3|Add0~61\ = CARRY((\l3|strobe:counter[30]~regout\ & !\l3|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l3|strobe:counter[30]~regout\,
	datad => VCC,
	cin => \l3|Add0~59\,
	combout => \l3|Add0~60_combout\,
	cout => \l3|Add0~61\);

-- Location: LCCOMB_X8_Y9_N22
\l3|strobe:counter[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[30]~1_combout\ = (\l3|strobe:counter[31]~regout\ & (((\l3|strobe:counter[30]~regout\)))) # (!\l3|strobe:counter[31]~regout\ & (\l3|strobe:counter[31]~3_combout\ & ((\l3|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[31]~3_combout\,
	datab => \l3|strobe:counter[31]~regout\,
	datac => \l3|strobe:counter[30]~regout\,
	datad => \l3|Add0~60_combout\,
	combout => \l3|strobe:counter[30]~1_combout\);

-- Location: LCFF_X8_Y9_N23
\l3|strobe:counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[30]~regout\);

-- Location: LCCOMB_X9_Y9_N30
\l3|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|Add0~62_combout\ = \l3|Add0~61\ $ (\l3|strobe:counter[31]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \l3|strobe:counter[31]~regout\,
	cin => \l3|Add0~61\,
	combout => \l3|Add0~62_combout\);

-- Location: LCCOMB_X8_Y9_N12
\l3|strobe:counter[31]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe:counter[31]~2_combout\ = (\l3|strobe:counter[31]~regout\) # ((\l3|strobe:counter[31]~3_combout\ & \l3|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[31]~3_combout\,
	datac => \l3|strobe:counter[31]~regout\,
	datad => \l3|Add0~62_combout\,
	combout => \l3|strobe:counter[31]~2_combout\);

-- Location: LCFF_X8_Y9_N13
\l3|strobe:counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|strobe:counter[31]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|strobe:counter[31]~regout\);

-- Location: LCCOMB_X12_Y10_N0
\l3|strobe~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|strobe~3_combout\ = (!\l3|strobe:counter[29]~regout\ & (!\l3|strobe:counter[30]~regout\ & \l3|strobe:counter[30]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l3|strobe:counter[29]~regout\,
	datab => \l3|strobe:counter[30]~regout\,
	datad => \l3|strobe:counter[30]~0_combout\,
	combout => \l3|strobe~3_combout\);

-- Location: LCCOMB_X12_Y10_N10
\l3|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l3|data_out~0_combout\ = (\l3|strobe:counter[31]~regout\ & (((\l3|data_out~regout\)))) # (!\l3|strobe:counter[31]~regout\ & (\l3|strobe~3_combout\ & ((\btn~combout\) # (\l3|data_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \l3|strobe:counter[31]~regout\,
	datac => \l3|data_out~regout\,
	datad => \l3|strobe~3_combout\,
	combout => \l3|data_out~0_combout\);

-- Location: LCFF_X12_Y10_N11
\l3|data_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l1|temporal~clkctrl_outclk\,
	datain => \l3|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l3|data_out~regout\);

-- Location: LCCOMB_X12_Y10_N8
\l4|pwm_main~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|pwm_main~0_combout\ = (\data_in~combout\(0) & !\l3|data_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in~combout\(0),
	datad => \l3|data_out~regout\,
	combout => \l4|pwm_main~0_combout\);

-- Location: LCFF_X12_Y10_N9
\l4|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	datain => \l4|pwm_main~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|data\(0));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(1),
	combout => \data_in~combout\(1));

-- Location: LCCOMB_X12_Y10_N6
\l4|pwm_main~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|pwm_main~1_combout\ = (\data_in~combout\(1) & !\l3|data_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in~combout\(1),
	datad => \l3|data_out~regout\,
	combout => \l4|pwm_main~1_combout\);

-- Location: LCFF_X12_Y10_N19
\l4|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	sdata => \l4|pwm_main~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|data\(1));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(2),
	combout => \data_in~combout\(2));

-- Location: LCCOMB_X12_Y10_N14
\l4|pwm_main~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|pwm_main~2_combout\ = (\data_in~combout\(2) & !\l3|data_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(2),
	datad => \l3|data_out~regout\,
	combout => \l4|pwm_main~2_combout\);

-- Location: LCFF_X12_Y10_N29
\l4|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	sdata => \l4|pwm_main~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|data\(2));

-- Location: LCCOMB_X12_Y10_N20
\l4|pwm_main~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|pwm_main~3_combout\ = (\data_in~combout\(3) & !\l3|data_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datad => \l3|data_out~regout\,
	combout => \l4|pwm_main~3_combout\);

-- Location: LCFF_X12_Y10_N3
\l4|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	sdata => \l4|pwm_main~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|data\(3));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(4),
	combout => \data_in~combout\(4));

-- Location: LCCOMB_X12_Y10_N24
\l4|pwm_main~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|pwm_main~4_combout\ = (\data_in~combout\(4) & !\l3|data_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in~combout\(4),
	datad => \l3|data_out~regout\,
	combout => \l4|pwm_main~4_combout\);

-- Location: LCFF_X12_Y10_N1
\l4|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	sdata => \l4|pwm_main~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|data\(4));

-- Location: LCCOMB_X12_Y10_N30
\l4|pwm_main~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|pwm_main~5_combout\ = (\data_in~combout\(5) & !\l3|data_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datad => \l3|data_out~regout\,
	combout => \l4|pwm_main~5_combout\);

-- Location: LCCOMB_X12_Y10_N26
\l4|data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|data[5]~feeder_combout\ = \l4|pwm_main~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \l4|pwm_main~5_combout\,
	combout => \l4|data[5]~feeder_combout\);

-- Location: LCFF_X12_Y10_N27
\l4|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	datain => \l4|data[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|data\(5));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(6),
	combout => \data_in~combout\(6));

-- Location: LCCOMB_X12_Y10_N18
\l4|pwm_main~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|pwm_main~6_combout\ = (\data_in~combout\(6) & !\l3|data_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(6),
	datad => \l3|data_out~regout\,
	combout => \l4|pwm_main~6_combout\);

-- Location: LCFF_X12_Y10_N5
\l4|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	sdata => \l4|pwm_main~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|data\(6));

-- Location: LCCOMB_X12_Y10_N12
\l4|pwm_main~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|pwm_main~7_combout\ = (\data_in~combout\(7) & !\l3|data_out~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(7),
	datad => \l3|data_out~regout\,
	combout => \l4|pwm_main~7_combout\);

-- Location: LCCOMB_X12_Y10_N22
\l4|data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|data[7]~feeder_combout\ = \l4|pwm_main~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \l4|pwm_main~7_combout\,
	combout => \l4|data[7]~feeder_combout\);

-- Location: LCFF_X12_Y10_N23
\l4|data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	datain => \l4|data[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|data\(7));

-- Location: LCCOMB_X12_Y9_N0
\l2|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~0_combout\ = \l2|cnt\(0) $ (VCC)
-- \l2|Add1~1\ = CARRY(\l2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|cnt\(0),
	datad => VCC,
	combout => \l2|Add1~0_combout\,
	cout => \l2|Add1~1\);

-- Location: LCFF_X12_Y9_N1
\l2|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|Add1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(0));

-- Location: LCCOMB_X12_Y9_N2
\l2|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~2_combout\ = (\l2|cnt\(1) & (!\l2|Add1~1\)) # (!\l2|cnt\(1) & ((\l2|Add1~1\) # (GND)))
-- \l2|Add1~3\ = CARRY((!\l2|Add1~1\) # (!\l2|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l2|cnt\(1),
	datad => VCC,
	cin => \l2|Add1~1\,
	combout => \l2|Add1~2_combout\,
	cout => \l2|Add1~3\);

-- Location: LCFF_X12_Y9_N3
\l2|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|Add1~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(1));

-- Location: LCCOMB_X12_Y9_N4
\l2|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~4_combout\ = (\l2|cnt\(2) & (\l2|Add1~3\ $ (GND))) # (!\l2|cnt\(2) & (!\l2|Add1~3\ & VCC))
-- \l2|Add1~5\ = CARRY((\l2|cnt\(2) & !\l2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l2|cnt\(2),
	datad => VCC,
	cin => \l2|Add1~3\,
	combout => \l2|Add1~4_combout\,
	cout => \l2|Add1~5\);

-- Location: LCFF_X12_Y9_N5
\l2|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|Add1~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(2));

-- Location: LCCOMB_X12_Y9_N6
\l2|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~6_combout\ = (\l2|cnt\(3) & (!\l2|Add1~5\)) # (!\l2|cnt\(3) & ((\l2|Add1~5\) # (GND)))
-- \l2|Add1~7\ = CARRY((!\l2|Add1~5\) # (!\l2|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(3),
	datad => VCC,
	cin => \l2|Add1~5\,
	combout => \l2|Add1~6_combout\,
	cout => \l2|Add1~7\);

-- Location: LCCOMB_X12_Y9_N8
\l2|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~8_combout\ = (\l2|cnt\(4) & (\l2|Add1~7\ $ (GND))) # (!\l2|cnt\(4) & (!\l2|Add1~7\ & VCC))
-- \l2|Add1~9\ = CARRY((\l2|cnt\(4) & !\l2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l2|cnt\(4),
	datad => VCC,
	cin => \l2|Add1~7\,
	combout => \l2|Add1~8_combout\,
	cout => \l2|Add1~9\);

-- Location: LCFF_X12_Y9_N9
\l2|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|Add1~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(4));

-- Location: LCCOMB_X12_Y9_N14
\l2|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~14_combout\ = (\l2|cnt\(7) & (!\l2|Add1~13\)) # (!\l2|cnt\(7) & ((\l2|Add1~13\) # (GND)))
-- \l2|Add1~15\ = CARRY((!\l2|Add1~13\) # (!\l2|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l2|cnt\(7),
	datad => VCC,
	cin => \l2|Add1~13\,
	combout => \l2|Add1~14_combout\,
	cout => \l2|Add1~15\);

-- Location: LCFF_X12_Y9_N15
\l2|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|Add1~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(7));

-- Location: LCCOMB_X12_Y9_N16
\l2|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~16_combout\ = (\l2|cnt\(8) & (\l2|Add1~15\ $ (GND))) # (!\l2|cnt\(8) & (!\l2|Add1~15\ & VCC))
-- \l2|Add1~17\ = CARRY((\l2|cnt\(8) & !\l2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l2|cnt\(8),
	datad => VCC,
	cin => \l2|Add1~15\,
	combout => \l2|Add1~16_combout\,
	cout => \l2|Add1~17\);

-- Location: LCFF_X12_Y9_N7
\l2|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|Add1~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(3));

-- Location: LCCOMB_X12_Y9_N26
\l2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Equal0~2_combout\ = (\l2|cnt\(2) & (\l2|cnt\(3) & \l2|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(2),
	datab => \l2|cnt\(3),
	datac => \l2|cnt\(1),
	combout => \l2|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y9_N22
\l2|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|cnt~0_combout\ = (\l2|Add1~16_combout\ & (((!\l2|Equal0~2_combout\) # (!\l2|Equal0~0_combout\)) # (!\l2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Equal0~1_combout\,
	datab => \l2|Equal0~0_combout\,
	datac => \l2|Add1~16_combout\,
	datad => \l2|Equal0~2_combout\,
	combout => \l2|cnt~0_combout\);

-- Location: LCFF_X12_Y9_N23
\l2|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|cnt~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(8));

-- Location: LCCOMB_X12_Y9_N30
\l2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Equal0~0_combout\ = (!\l2|cnt\(9) & (\l2|cnt\(10) & (\l2|cnt\(0) & !\l2|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(9),
	datab => \l2|cnt\(10),
	datac => \l2|cnt\(0),
	datad => \l2|cnt\(8),
	combout => \l2|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y9_N18
\l2|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~18_combout\ = (\l2|cnt\(9) & (!\l2|Add1~17\)) # (!\l2|cnt\(9) & ((\l2|Add1~17\) # (GND)))
-- \l2|Add1~19\ = CARRY((!\l2|Add1~17\) # (!\l2|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l2|cnt\(9),
	datad => VCC,
	cin => \l2|Add1~17\,
	combout => \l2|Add1~18_combout\,
	cout => \l2|Add1~19\);

-- Location: LCFF_X12_Y9_N19
\l2|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|Add1~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(9));

-- Location: LCCOMB_X12_Y9_N20
\l2|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add1~20_combout\ = \l2|Add1~19\ $ (!\l2|cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \l2|cnt\(10),
	cin => \l2|Add1~19\,
	combout => \l2|Add1~20_combout\);

-- Location: LCCOMB_X12_Y9_N28
\l2|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|cnt~1_combout\ = (\l2|Add1~20_combout\ & (((!\l2|Equal0~2_combout\) # (!\l2|Equal0~0_combout\)) # (!\l2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Equal0~1_combout\,
	datab => \l2|Equal0~0_combout\,
	datac => \l2|Add1~20_combout\,
	datad => \l2|Equal0~2_combout\,
	combout => \l2|cnt~1_combout\);

-- Location: LCFF_X12_Y9_N29
\l2|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l2|temporal~clkctrl_outclk\,
	datain => \l2|cnt~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l2|cnt\(10));

-- Location: LCCOMB_X13_Y10_N16
\l4|pwm_main[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \l4|pwm_main[7]~feeder_combout\ = \l4|pwm_main~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \l4|pwm_main~7_combout\,
	combout => \l4|pwm_main[7]~feeder_combout\);

-- Location: LCFF_X13_Y10_N17
\l4|pwm_main[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	datain => \l4|pwm_main[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|pwm_main\(7));

-- Location: LCFF_X12_Y10_N21
\l4|pwm_main[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	sdata => \l4|pwm_main~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|pwm_main\(6));

-- Location: LCFF_X12_Y10_N15
\l4|pwm_main[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	sdata => \l4|pwm_main~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|pwm_main\(5));

-- Location: LCFF_X12_Y10_N13
\l4|pwm_main[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	sdata => \l4|pwm_main~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|pwm_main\(2));

-- Location: LCCOMB_X15_Y10_N16
\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\l4|pwm_main\(4) & (\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ $ (GND))) # (!\l4|pwm_main\(4) & 
-- (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & VCC))
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\l4|pwm_main\(4) & !\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l4|pwm_main\(4),
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X15_Y10_N18
\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\l4|pwm_main\(5) & (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # (!\l4|pwm_main\(5) & 
-- ((\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY((!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (!\l4|pwm_main\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l4|pwm_main\(5),
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X15_Y10_N20
\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\l4|pwm_main\(6) & ((GND) # (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\))) # (!\l4|pwm_main\(6) & 
-- (\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ $ (GND)))
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((\l4|pwm_main\(6)) # (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l4|pwm_main\(6),
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X15_Y10_N24
\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X14_Y10_N4
\l2|Div0|auto_generated|divider|divider|StageOut[70]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[70]~112_combout\ = (\l4|pwm_main\(7) & \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l4|pwm_main\(7),
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[70]~112_combout\);

-- Location: LCCOMB_X14_Y10_N0
\l2|Div0|auto_generated|divider|divider|StageOut[69]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[69]~115_combout\ = (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[69]~115_combout\);

-- Location: LCCOMB_X14_Y10_N26
\l2|Div0|auto_generated|divider|divider|StageOut[68]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[68]~117_combout\ = (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[68]~117_combout\);

-- Location: LCCOMB_X15_Y10_N0
\l2|Div0|auto_generated|divider|divider|StageOut[67]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[67]~118_combout\ = (\l4|pwm_main\(4) & \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l4|pwm_main\(4),
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[67]~118_combout\);

-- Location: LCCOMB_X15_Y10_N30
\l2|Div0|auto_generated|divider|divider|StageOut[66]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[66]~120_combout\ = (\l4|pwm_main\(3) & \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l4|pwm_main\(3),
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[66]~120_combout\);

-- Location: LCCOMB_X14_Y10_N28
\l2|Div0|auto_generated|divider|divider|StageOut[65]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[65]~122_combout\ = (\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \l4|pwm_main\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \l4|pwm_main\(2),
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[65]~122_combout\);

-- Location: LCFF_X12_Y10_N7
\l4|pwm_main[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	datain => \l4|pwm_main~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|pwm_main\(1));

-- Location: LCCOMB_X13_Y10_N24
\l2|Div0|auto_generated|divider|divider|StageOut[64]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[64]~125_combout\ = (\l4|pwm_main\(1) & !\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l4|pwm_main\(1),
	datad => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[64]~125_combout\);

-- Location: LCCOMB_X14_Y10_N8
\l2|Div0|auto_generated|divider|divider|op_12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_12~0_combout\ = (((\l2|Div0|auto_generated|divider|divider|StageOut[64]~124_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[64]~125_combout\)))
-- \l2|Div0|auto_generated|divider|divider|op_12~1\ = CARRY((\l2|Div0|auto_generated|divider|divider|StageOut[64]~124_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[64]~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[64]~124_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[64]~125_combout\,
	datad => VCC,
	combout => \l2|Div0|auto_generated|divider|divider|op_12~0_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_12~1\);

-- Location: LCCOMB_X14_Y10_N10
\l2|Div0|auto_generated|divider|divider|op_12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_12~2_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~1\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[65]~123_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[65]~122_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_12~1\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[65]~123_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[65]~122_combout\)))
-- \l2|Div0|auto_generated|divider|divider|op_12~3\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[65]~123_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[65]~122_combout\ & !\l2|Div0|auto_generated|divider|divider|op_12~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[65]~123_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[65]~122_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_12~1\,
	combout => \l2|Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X14_Y10_N14
\l2|Div0|auto_generated|divider|divider|op_12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_12~6_combout\ = (\l2|Div0|auto_generated|divider|divider|StageOut[67]~119_combout\ & (((!\l2|Div0|auto_generated|divider|divider|op_12~5\)))) # (!\l2|Div0|auto_generated|divider|divider|StageOut[67]~119_combout\ 
-- & ((\l2|Div0|auto_generated|divider|divider|StageOut[67]~118_combout\ & (!\l2|Div0|auto_generated|divider|divider|op_12~5\)) # (!\l2|Div0|auto_generated|divider|divider|StageOut[67]~118_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_12~5\) # 
-- (GND)))))
-- \l2|Div0|auto_generated|divider|divider|op_12~7\ = CARRY(((!\l2|Div0|auto_generated|divider|divider|StageOut[67]~119_combout\ & !\l2|Div0|auto_generated|divider|divider|StageOut[67]~118_combout\)) # (!\l2|Div0|auto_generated|divider|divider|op_12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[67]~119_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[67]~118_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_12~5\,
	combout => \l2|Div0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X14_Y10_N18
\l2|Div0|auto_generated|divider|divider|op_12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_12~10_combout\ = (\l2|Div0|auto_generated|divider|divider|StageOut[69]~114_combout\ & (((!\l2|Div0|auto_generated|divider|divider|op_12~9\)))) # (!\l2|Div0|auto_generated|divider|divider|StageOut[69]~114_combout\ 
-- & ((\l2|Div0|auto_generated|divider|divider|StageOut[69]~115_combout\ & (!\l2|Div0|auto_generated|divider|divider|op_12~9\)) # (!\l2|Div0|auto_generated|divider|divider|StageOut[69]~115_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_12~9\) # 
-- (GND)))))
-- \l2|Div0|auto_generated|divider|divider|op_12~11\ = CARRY(((!\l2|Div0|auto_generated|divider|divider|StageOut[69]~114_combout\ & !\l2|Div0|auto_generated|divider|divider|StageOut[69]~115_combout\)) # (!\l2|Div0|auto_generated|divider|divider|op_12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[69]~114_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[69]~115_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_12~9\,
	combout => \l2|Div0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X14_Y10_N20
\l2|Div0|auto_generated|divider|divider|op_12~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_12~13_cout\ = CARRY((\l2|Div0|auto_generated|divider|divider|StageOut[70]~113_combout\) # ((\l2|Div0|auto_generated|divider|divider|StageOut[70]~112_combout\) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[70]~113_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[70]~112_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_12~11\,
	cout => \l2|Div0|auto_generated|divider|divider|op_12~13_cout\);

-- Location: LCCOMB_X14_Y10_N22
\l2|Div0|auto_generated|divider|divider|op_12~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_12~14_combout\ = !\l2|Div0|auto_generated|divider|divider|op_12~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \l2|Div0|auto_generated|divider|divider|op_12~13_cout\,
	combout => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\);

-- Location: LCCOMB_X15_Y9_N4
\l2|Div0|auto_generated|divider|divider|StageOut[79]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[79]~126_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & \l2|Div0|auto_generated|divider|divider|op_12~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_12~10_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[79]~126_combout\);

-- Location: LCCOMB_X15_Y10_N10
\l2|Div0|auto_generated|divider|divider|StageOut[78]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[78]~183_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\l4|pwm_main\(5)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \l4|pwm_main\(5),
	datac => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[78]~183_combout\);

-- Location: LCCOMB_X14_Y9_N4
\l2|Div0|auto_generated|divider|divider|StageOut[77]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[77]~128_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & \l2|Div0|auto_generated|divider|divider|op_12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_12~6_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[77]~128_combout\);

-- Location: LCCOMB_X15_Y9_N8
\l2|Div0|auto_generated|divider|divider|StageOut[76]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[76]~129_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~4_combout\ & !\l2|Div0|auto_generated|divider|divider|op_12~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_12~4_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[76]~129_combout\);

-- Location: LCCOMB_X15_Y9_N6
\l2|Div0|auto_generated|divider|divider|StageOut[75]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[75]~130_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & \l2|Div0|auto_generated|divider|divider|op_12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_12~2_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[75]~130_combout\);

-- Location: LCCOMB_X13_Y9_N12
\l2|Div0|auto_generated|divider|divider|StageOut[74]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[74]~132_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~0_combout\ & !\l2|Div0|auto_generated|divider|divider|op_12~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_12~0_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[74]~132_combout\);

-- Location: LCFF_X12_Y10_N17
\l4|pwm_main[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	sdata => \l4|pwm_main~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|pwm_main\(0));

-- Location: LCCOMB_X12_Y10_N16
\l2|Div0|auto_generated|divider|divider|StageOut[73]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[73]~133_combout\ = (\l4|pwm_main\(0) & \l2|Div0|auto_generated|divider|divider|op_12~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l4|pwm_main\(0),
	datad => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[73]~133_combout\);

-- Location: LCCOMB_X15_Y9_N12
\l2|Div0|auto_generated|divider|divider|op_13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_13~0_combout\ = (((\l2|Div0|auto_generated|divider|divider|StageOut[73]~134_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[73]~133_combout\)))
-- \l2|Div0|auto_generated|divider|divider|op_13~1\ = CARRY((\l2|Div0|auto_generated|divider|divider|StageOut[73]~134_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[73]~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[73]~134_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[73]~133_combout\,
	datad => VCC,
	combout => \l2|Div0|auto_generated|divider|divider|op_13~0_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_13~1\);

-- Location: LCCOMB_X15_Y9_N14
\l2|Div0|auto_generated|divider|divider|op_13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_13~2_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~1\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[74]~131_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[74]~132_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_13~1\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[74]~131_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[74]~132_combout\)))
-- \l2|Div0|auto_generated|divider|divider|op_13~3\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[74]~131_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[74]~132_combout\ & !\l2|Div0|auto_generated|divider|divider|op_13~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[74]~131_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[74]~132_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_13~1\,
	combout => \l2|Div0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X15_Y9_N18
\l2|Div0|auto_generated|divider|divider|op_13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_13~6_combout\ = (\l2|Div0|auto_generated|divider|divider|StageOut[76]~185_combout\ & (((!\l2|Div0|auto_generated|divider|divider|op_13~5\)))) # (!\l2|Div0|auto_generated|divider|divider|StageOut[76]~185_combout\ 
-- & ((\l2|Div0|auto_generated|divider|divider|StageOut[76]~129_combout\ & (!\l2|Div0|auto_generated|divider|divider|op_13~5\)) # (!\l2|Div0|auto_generated|divider|divider|StageOut[76]~129_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_13~5\) # 
-- (GND)))))
-- \l2|Div0|auto_generated|divider|divider|op_13~7\ = CARRY(((!\l2|Div0|auto_generated|divider|divider|StageOut[76]~185_combout\ & !\l2|Div0|auto_generated|divider|divider|StageOut[76]~129_combout\)) # (!\l2|Div0|auto_generated|divider|divider|op_13~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[76]~185_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[76]~129_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_13~5\,
	combout => \l2|Div0|auto_generated|divider|divider|op_13~6_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_13~7\);

-- Location: LCCOMB_X15_Y9_N20
\l2|Div0|auto_generated|divider|divider|op_13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_13~8_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~7\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[77]~184_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[77]~128_combout\))))) 
-- # (!\l2|Div0|auto_generated|divider|divider|op_13~7\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[77]~184_combout\) # ((\l2|Div0|auto_generated|divider|divider|StageOut[77]~128_combout\) # (GND))))
-- \l2|Div0|auto_generated|divider|divider|op_13~9\ = CARRY((\l2|Div0|auto_generated|divider|divider|StageOut[77]~184_combout\) # ((\l2|Div0|auto_generated|divider|divider|StageOut[77]~128_combout\) # (!\l2|Div0|auto_generated|divider|divider|op_13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[77]~184_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[77]~128_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_13~7\,
	combout => \l2|Div0|auto_generated|divider|divider|op_13~8_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_13~9\);

-- Location: LCCOMB_X15_Y9_N22
\l2|Div0|auto_generated|divider|divider|op_13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_13~10_combout\ = (\l2|Div0|auto_generated|divider|divider|StageOut[78]~127_combout\ & (((!\l2|Div0|auto_generated|divider|divider|op_13~9\)))) # (!\l2|Div0|auto_generated|divider|divider|StageOut[78]~127_combout\ 
-- & ((\l2|Div0|auto_generated|divider|divider|StageOut[78]~183_combout\ & (!\l2|Div0|auto_generated|divider|divider|op_13~9\)) # (!\l2|Div0|auto_generated|divider|divider|StageOut[78]~183_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_13~9\) # 
-- (GND)))))
-- \l2|Div0|auto_generated|divider|divider|op_13~11\ = CARRY(((!\l2|Div0|auto_generated|divider|divider|StageOut[78]~127_combout\ & !\l2|Div0|auto_generated|divider|divider|StageOut[78]~183_combout\)) # (!\l2|Div0|auto_generated|divider|divider|op_13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[78]~127_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[78]~183_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_13~9\,
	combout => \l2|Div0|auto_generated|divider|divider|op_13~10_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_13~11\);

-- Location: LCCOMB_X15_Y9_N24
\l2|Div0|auto_generated|divider|divider|op_13~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_13~13_cout\ = CARRY((\l2|Div0|auto_generated|divider|divider|StageOut[79]~182_combout\) # ((\l2|Div0|auto_generated|divider|divider|StageOut[79]~126_combout\) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[79]~182_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[79]~126_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_13~11\,
	cout => \l2|Div0|auto_generated|divider|divider|op_13~13_cout\);

-- Location: LCCOMB_X15_Y9_N26
\l2|Div0|auto_generated|divider|divider|op_13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_13~14_combout\ = !\l2|Div0|auto_generated|divider|divider|op_13~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \l2|Div0|auto_generated|divider|divider|op_13~13_cout\,
	combout => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\);

-- Location: LCCOMB_X13_Y9_N10
\l2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add0~0_combout\ = \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (((\l2|Div0|auto_generated|divider|divider|op_13~14_combout\) # (\l2|Div0|auto_generated|divider|divider|op_12~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \l2|Add0~0_combout\);

-- Location: LCCOMB_X13_Y9_N0
\l2|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Add0~1_combout\ = \l2|Div0|auto_generated|divider|divider|op_12~14_combout\ $ (\l2|Div0|auto_generated|divider|divider|op_13~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \l2|Add0~1_combout\);

-- Location: LCCOMB_X14_Y9_N14
\l2|Div0|auto_generated|divider|divider|StageOut[88]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[88]~135_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & \l2|Div0|auto_generated|divider|divider|op_13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~10_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[88]~135_combout\);

-- Location: LCFF_X12_Y10_N25
\l4|pwm_main[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \l1|l3|temporal~clkctrl_outclk\,
	datain => \l4|pwm_main~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \l4|pwm_main\(4));

-- Location: LCCOMB_X15_Y10_N26
\l2|Div0|auto_generated|divider|divider|StageOut[77]~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[77]~184_combout\ = (\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\l4|pwm_main\(4)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \l4|pwm_main\(4),
	datad => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[77]~184_combout\);

-- Location: LCCOMB_X14_Y9_N30
\l2|Div0|auto_generated|divider|divider|StageOut[87]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[87]~165_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[77]~184_combout\) # 
-- ((!\l2|Div0|auto_generated|divider|divider|op_12~14_combout\ & \l2|Div0|auto_generated|divider|divider|op_12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|StageOut[77]~184_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[87]~165_combout\);

-- Location: LCCOMB_X15_Y9_N28
\l2|Div0|auto_generated|divider|divider|StageOut[86]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & \l2|Div0|auto_generated|divider|divider|op_13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~6_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\);

-- Location: LCCOMB_X15_Y9_N30
\l2|Div0|auto_generated|divider|divider|StageOut[85]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[85]~167_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[75]~186_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_12~2_combout\ & !\l2|Div0|auto_generated|divider|divider|op_12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[75]~186_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_12~2_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[85]~167_combout\);

-- Location: LCCOMB_X13_Y9_N6
\l2|Div0|auto_generated|divider|divider|StageOut[84]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~2_combout\ & !\l2|Div0|auto_generated|divider|divider|op_13~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_13~2_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[84]~139_combout\);

-- Location: LCCOMB_X14_Y9_N0
\l2|Div0|auto_generated|divider|divider|StageOut[83]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[83]~140_combout\ = (\l2|Div0|auto_generated|divider|divider|op_13~0_combout\ & !\l2|Div0|auto_generated|divider|divider|op_13~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_13~0_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[83]~140_combout\);

-- Location: LCCOMB_X14_Y9_N16
\l2|Div0|auto_generated|divider|divider|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_1~0_combout\ = (((\l2|Div0|auto_generated|divider|divider|StageOut[83]~188_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[83]~140_combout\)))
-- \l2|Div0|auto_generated|divider|divider|op_1~1\ = CARRY((\l2|Div0|auto_generated|divider|divider|StageOut[83]~188_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[83]~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[83]~188_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[83]~140_combout\,
	datad => VCC,
	combout => \l2|Div0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X14_Y9_N22
\l2|Div0|auto_generated|divider|divider|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_1~6_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~5\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[86]~166_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_1~5\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[86]~166_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\)))
-- \l2|Div0|auto_generated|divider|divider|op_1~7\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[86]~166_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\ & !\l2|Div0|auto_generated|divider|divider|op_1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[86]~166_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[86]~137_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_1~5\,
	combout => \l2|Div0|auto_generated|divider|divider|op_1~6_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X14_Y9_N26
\l2|Div0|auto_generated|divider|divider|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_1~11_cout\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[88]~164_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[88]~135_combout\ & !\l2|Div0|auto_generated|divider|divider|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[88]~164_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[88]~135_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_1~9\,
	cout => \l2|Div0|auto_generated|divider|divider|op_1~11_cout\);

-- Location: LCCOMB_X14_Y9_N28
\l2|Div0|auto_generated|divider|divider|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_1~12_combout\ = \l2|Div0|auto_generated|divider|divider|op_1~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \l2|Div0|auto_generated|divider|divider|op_1~11_cout\,
	combout => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\);

-- Location: LCCOMB_X17_Y9_N0
\l2|Div0|auto_generated|divider|divider|StageOut[96]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[96]~142_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~6_combout\ & !\l2|Div0|auto_generated|divider|divider|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[96]~142_combout\);

-- Location: LCCOMB_X14_Y9_N6
\l2|Div0|auto_generated|divider|divider|StageOut[95]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[95]~170_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[85]~167_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_13~4_combout\ & !\l2|Div0|auto_generated|divider|divider|op_13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_13~4_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|StageOut[85]~167_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[95]~170_combout\);

-- Location: LCCOMB_X13_Y9_N2
\l2|Div0|auto_generated|divider|divider|StageOut[94]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[94]~171_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[84]~187_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_13~2_combout\ & !\l2|Div0|auto_generated|divider|divider|op_13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[84]~187_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_13~2_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[94]~171_combout\);

-- Location: LCCOMB_X17_Y9_N2
\l2|Div0|auto_generated|divider|divider|StageOut[93]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[93]~145_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~0_combout\ & !\l2|Div0|auto_generated|divider|divider|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_1~0_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[93]~145_combout\);

-- Location: LCCOMB_X17_Y9_N16
\l2|Div0|auto_generated|divider|divider|op_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_2~0_combout\ = \l2|Div0|auto_generated|divider|divider|op_1~12_combout\ $ (GND)
-- \l2|Div0|auto_generated|divider|divider|op_2~1\ = CARRY(!\l2|Div0|auto_generated|divider|divider|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datad => VCC,
	combout => \l2|Div0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X17_Y9_N18
\l2|Div0|auto_generated|divider|divider|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_2~2_combout\ = (\l2|Div0|auto_generated|divider|divider|StageOut[93]~191_combout\ & (((!\l2|Div0|auto_generated|divider|divider|op_2~1\)))) # (!\l2|Div0|auto_generated|divider|divider|StageOut[93]~191_combout\ & 
-- ((\l2|Div0|auto_generated|divider|divider|StageOut[93]~145_combout\ & (!\l2|Div0|auto_generated|divider|divider|op_2~1\)) # (!\l2|Div0|auto_generated|divider|divider|StageOut[93]~145_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_2~1\) # 
-- (GND)))))
-- \l2|Div0|auto_generated|divider|divider|op_2~3\ = CARRY(((!\l2|Div0|auto_generated|divider|divider|StageOut[93]~191_combout\ & !\l2|Div0|auto_generated|divider|divider|StageOut[93]~145_combout\)) # (!\l2|Div0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[93]~191_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[93]~145_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_2~1\,
	combout => \l2|Div0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X17_Y9_N20
\l2|Div0|auto_generated|divider|divider|op_2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_2~4_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~3\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[94]~144_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[94]~171_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_2~3\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[94]~144_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[94]~171_combout\)))))
-- \l2|Div0|auto_generated|divider|divider|op_2~5\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_2~3\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[94]~144_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[94]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[94]~144_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[94]~171_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_2~3\,
	combout => \l2|Div0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X17_Y9_N24
\l2|Div0|auto_generated|divider|divider|op_2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_2~8_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~7\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[96]~169_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[96]~142_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_2~7\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[96]~169_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[96]~142_combout\)))))
-- \l2|Div0|auto_generated|divider|divider|op_2~9\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_2~7\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[96]~169_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[96]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[96]~169_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[96]~142_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_2~7\,
	combout => \l2|Div0|auto_generated|divider|divider|op_2~8_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X14_Y9_N8
\l2|Div0|auto_generated|divider|divider|StageOut[97]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[97]~168_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[87]~165_combout\) # 
-- ((!\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & \l2|Div0|auto_generated|divider|divider|op_13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[87]~165_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_13~8_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[97]~168_combout\);

-- Location: LCCOMB_X17_Y9_N26
\l2|Div0|auto_generated|divider|divider|op_2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_2~11_cout\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[97]~141_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[97]~168_combout\ & !\l2|Div0|auto_generated|divider|divider|op_2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[97]~141_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[97]~168_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_2~9\,
	cout => \l2|Div0|auto_generated|divider|divider|op_2~11_cout\);

-- Location: LCCOMB_X17_Y9_N28
\l2|Div0|auto_generated|divider|divider|op_2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_2~12_combout\ = \l2|Div0|auto_generated|divider|divider|op_2~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \l2|Div0|auto_generated|divider|divider|op_2~11_cout\,
	combout => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\);

-- Location: LCCOMB_X18_Y9_N28
\l2|Div0|auto_generated|divider|divider|StageOut[106]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[106]~146_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~8_combout\ & !\l2|Div0|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_2~8_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[106]~146_combout\);

-- Location: LCCOMB_X17_Y9_N4
\l2|Div0|auto_generated|divider|divider|StageOut[105]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[105]~173_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[95]~170_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_1~4_combout\ & !\l2|Div0|auto_generated|divider|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_1~4_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|StageOut[95]~170_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[105]~173_combout\);

-- Location: LCCOMB_X18_Y9_N18
\l2|Div0|auto_generated|divider|divider|StageOut[104]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[104]~148_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~4_combout\ & !\l2|Div0|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_2~4_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[104]~148_combout\);

-- Location: LCCOMB_X14_Y9_N2
\l2|Div0|auto_generated|divider|divider|StageOut[93]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[93]~191_combout\ = (\l2|Div0|auto_generated|divider|divider|op_1~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & (\l4|pwm_main\(0))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datab => \l4|pwm_main\(0),
	datac => \l2|Div0|auto_generated|divider|divider|op_13~0_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[93]~191_combout\);

-- Location: LCCOMB_X17_Y9_N6
\l2|Div0|auto_generated|divider|divider|StageOut[103]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[103]~175_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[93]~191_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_1~0_combout\ & !\l2|Div0|auto_generated|divider|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_1~0_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|StageOut[93]~191_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[103]~175_combout\);

-- Location: LCCOMB_X18_Y9_N26
\l2|Div0|auto_generated|divider|divider|StageOut[102]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[102]~151_combout\ = (\l2|Div0|auto_generated|divider|divider|op_2~0_combout\ & !\l2|Div0|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[102]~151_combout\);

-- Location: LCCOMB_X18_Y9_N4
\l2|Div0|auto_generated|divider|divider|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_3~0_combout\ = \l2|Div0|auto_generated|divider|divider|op_2~12_combout\ $ (GND)
-- \l2|Div0|auto_generated|divider|divider|op_3~1\ = CARRY(!\l2|Div0|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	datad => VCC,
	combout => \l2|Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X18_Y9_N6
\l2|Div0|auto_generated|divider|divider|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_3~2_combout\ = (\l2|Div0|auto_generated|divider|divider|StageOut[102]~150_combout\ & (((!\l2|Div0|auto_generated|divider|divider|op_3~1\)))) # (!\l2|Div0|auto_generated|divider|divider|StageOut[102]~150_combout\ 
-- & ((\l2|Div0|auto_generated|divider|divider|StageOut[102]~151_combout\ & (!\l2|Div0|auto_generated|divider|divider|op_3~1\)) # (!\l2|Div0|auto_generated|divider|divider|StageOut[102]~151_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_3~1\) # 
-- (GND)))))
-- \l2|Div0|auto_generated|divider|divider|op_3~3\ = CARRY(((!\l2|Div0|auto_generated|divider|divider|StageOut[102]~150_combout\ & !\l2|Div0|auto_generated|divider|divider|StageOut[102]~151_combout\)) # (!\l2|Div0|auto_generated|divider|divider|op_3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[102]~150_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[102]~151_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_3~1\,
	combout => \l2|Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X18_Y9_N8
\l2|Div0|auto_generated|divider|divider|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_3~4_combout\ = (\l2|Div0|auto_generated|divider|divider|op_3~3\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[103]~149_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[103]~175_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_3~3\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[103]~149_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[103]~175_combout\)))))
-- \l2|Div0|auto_generated|divider|divider|op_3~5\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_3~3\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[103]~149_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[103]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[103]~149_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[103]~175_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_3~3\,
	combout => \l2|Div0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X18_Y9_N10
\l2|Div0|auto_generated|divider|divider|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_3~6_combout\ = (\l2|Div0|auto_generated|divider|divider|op_3~5\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[104]~174_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[104]~148_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_3~5\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[104]~174_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[104]~148_combout\)))
-- \l2|Div0|auto_generated|divider|divider|op_3~7\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[104]~174_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[104]~148_combout\ & !\l2|Div0|auto_generated|divider|divider|op_3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[104]~174_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[104]~148_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_3~5\,
	combout => \l2|Div0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X18_Y9_N12
\l2|Div0|auto_generated|divider|divider|op_3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_3~8_combout\ = (\l2|Div0|auto_generated|divider|divider|op_3~7\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[105]~147_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[105]~173_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_3~7\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[105]~147_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[105]~173_combout\)))))
-- \l2|Div0|auto_generated|divider|divider|op_3~9\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_3~7\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[105]~147_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[105]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[105]~147_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[105]~173_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_3~7\,
	combout => \l2|Div0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X18_Y9_N14
\l2|Div0|auto_generated|divider|divider|op_3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_3~11_cout\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[106]~172_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[106]~146_combout\ & !\l2|Div0|auto_generated|divider|divider|op_3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[106]~172_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[106]~146_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_3~9\,
	cout => \l2|Div0|auto_generated|divider|divider|op_3~11_cout\);

-- Location: LCCOMB_X18_Y9_N16
\l2|Div0|auto_generated|divider|divider|op_3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_3~12_combout\ = \l2|Div0|auto_generated|divider|divider|op_3~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \l2|Div0|auto_generated|divider|divider|op_3~11_cout\,
	combout => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\);

-- Location: LCCOMB_X18_Y9_N24
\l2|Div0|auto_generated|divider|divider|StageOut[115]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[115]~152_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & \l2|Div0|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[115]~152_combout\);

-- Location: LCCOMB_X19_Y9_N2
\l2|Div0|auto_generated|divider|divider|StageOut[114]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[114]~153_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & \l2|Div0|auto_generated|divider|divider|op_3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[114]~153_combout\);

-- Location: LCCOMB_X20_Y9_N28
\l2|Div0|auto_generated|divider|divider|StageOut[113]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[113]~154_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & \l2|Div0|auto_generated|divider|divider|op_3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_3~4_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[113]~154_combout\);

-- Location: LCCOMB_X19_Y9_N0
\l2|Div0|auto_generated|divider|divider|StageOut[112]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[112]~155_combout\ = (\l2|Div0|auto_generated|divider|divider|op_3~2_combout\ & !\l2|Div0|auto_generated|divider|divider|op_3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[112]~155_combout\);

-- Location: LCCOMB_X19_Y9_N8
\l2|Div0|auto_generated|divider|divider|StageOut[111]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[111]~157_combout\ = (\l2|Div0|auto_generated|divider|divider|op_3~0_combout\ & !\l2|Div0|auto_generated|divider|divider|op_3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[111]~157_combout\);

-- Location: LCCOMB_X19_Y9_N16
\l2|Div0|auto_generated|divider|divider|op_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_4~2_combout\ = (\l2|Div0|auto_generated|divider|divider|StageOut[111]~156_combout\ & (((!\l2|Div0|auto_generated|divider|divider|op_4~1\)))) # (!\l2|Div0|auto_generated|divider|divider|StageOut[111]~156_combout\ 
-- & ((\l2|Div0|auto_generated|divider|divider|StageOut[111]~157_combout\ & (!\l2|Div0|auto_generated|divider|divider|op_4~1\)) # (!\l2|Div0|auto_generated|divider|divider|StageOut[111]~157_combout\ & ((\l2|Div0|auto_generated|divider|divider|op_4~1\) # 
-- (GND)))))
-- \l2|Div0|auto_generated|divider|divider|op_4~3\ = CARRY(((!\l2|Div0|auto_generated|divider|divider|StageOut[111]~156_combout\ & !\l2|Div0|auto_generated|divider|divider|StageOut[111]~157_combout\)) # (!\l2|Div0|auto_generated|divider|divider|op_4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[111]~156_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[111]~157_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_4~1\,
	combout => \l2|Div0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X19_Y9_N22
\l2|Div0|auto_generated|divider|divider|op_4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_4~8_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~7\ & (((\l2|Div0|auto_generated|divider|divider|StageOut[114]~177_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[114]~153_combout\)))) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_4~7\ & ((((\l2|Div0|auto_generated|divider|divider|StageOut[114]~177_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[114]~153_combout\)))))
-- \l2|Div0|auto_generated|divider|divider|op_4~9\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_4~7\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[114]~177_combout\) # (\l2|Div0|auto_generated|divider|divider|StageOut[114]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[114]~177_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[114]~153_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_4~7\,
	combout => \l2|Div0|auto_generated|divider|divider|op_4~8_combout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X19_Y9_N24
\l2|Div0|auto_generated|divider|divider|op_4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_4~11_cout\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[115]~176_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[115]~152_combout\ & !\l2|Div0|auto_generated|divider|divider|op_4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[115]~176_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[115]~152_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_4~9\,
	cout => \l2|Div0|auto_generated|divider|divider|op_4~11_cout\);

-- Location: LCCOMB_X19_Y9_N26
\l2|Div0|auto_generated|divider|divider|op_4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_4~12_combout\ = \l2|Div0|auto_generated|divider|divider|op_4~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \l2|Div0|auto_generated|divider|divider|op_4~11_cout\,
	combout => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\);

-- Location: LCCOMB_X20_Y9_N30
\l2|Div0|auto_generated|divider|divider|StageOut[124]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[124]~158_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~8_combout\ & !\l2|Div0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[124]~158_combout\);

-- Location: LCCOMB_X18_Y9_N2
\l2|Div0|auto_generated|divider|divider|StageOut[113]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[113]~178_combout\ = (\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[103]~175_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_2~2_combout\ & !\l2|Div0|auto_generated|divider|divider|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_2~2_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|StageOut[103]~175_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[113]~178_combout\);

-- Location: LCCOMB_X20_Y9_N8
\l2|Div0|auto_generated|divider|divider|StageOut[123]~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[123]~180_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[113]~178_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_3~4_combout\ & !\l2|Div0|auto_generated|divider|divider|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_3~4_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[113]~178_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[123]~180_combout\);

-- Location: LCCOMB_X19_Y9_N28
\l2|Div0|auto_generated|divider|divider|StageOut[122]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[122]~181_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~12_combout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[112]~189_combout\) # 
-- ((\l2|Div0|auto_generated|divider|divider|op_3~2_combout\ & !\l2|Div0|auto_generated|divider|divider|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[112]~189_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|op_3~2_combout\,
	datac => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[122]~181_combout\);

-- Location: LCCOMB_X20_Y9_N0
\l2|Div0|auto_generated|divider|divider|StageOut[121]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[121]~161_combout\ = (\l2|Div0|auto_generated|divider|divider|op_4~2_combout\ & !\l2|Div0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_4~2_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[121]~161_combout\);

-- Location: LCCOMB_X20_Y9_N2
\l2|Div0|auto_generated|divider|divider|StageOut[120]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|StageOut[120]~162_combout\ = (!\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & \l2|Div0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \l2|Div0|auto_generated|divider|divider|StageOut[120]~162_combout\);

-- Location: LCCOMB_X20_Y9_N14
\l2|Div0|auto_generated|divider|divider|op_5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_5~1_cout\ = CARRY(!\l2|Div0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	datad => VCC,
	cout => \l2|Div0|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X20_Y9_N16
\l2|Div0|auto_generated|divider|divider|op_5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_5~3_cout\ = CARRY(((!\l2|Div0|auto_generated|divider|divider|StageOut[120]~163_combout\ & !\l2|Div0|auto_generated|divider|divider|StageOut[120]~162_combout\)) # 
-- (!\l2|Div0|auto_generated|divider|divider|op_5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[120]~163_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[120]~162_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_5~1_cout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_5~3_cout\);

-- Location: LCCOMB_X20_Y9_N18
\l2|Div0|auto_generated|divider|divider|op_5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_5~5_cout\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_5~3_cout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[121]~190_combout\) # 
-- (\l2|Div0|auto_generated|divider|divider|StageOut[121]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[121]~190_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[121]~161_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_5~3_cout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_5~5_cout\);

-- Location: LCCOMB_X20_Y9_N20
\l2|Div0|auto_generated|divider|divider|op_5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_5~7_cout\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[122]~160_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[122]~181_combout\ & 
-- !\l2|Div0|auto_generated|divider|divider|op_5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[122]~160_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[122]~181_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_5~5_cout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_5~7_cout\);

-- Location: LCCOMB_X20_Y9_N22
\l2|Div0|auto_generated|divider|divider|op_5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_5~9_cout\ = CARRY((!\l2|Div0|auto_generated|divider|divider|op_5~7_cout\ & ((\l2|Div0|auto_generated|divider|divider|StageOut[123]~159_combout\) # 
-- (\l2|Div0|auto_generated|divider|divider|StageOut[123]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[123]~159_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[123]~180_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_5~7_cout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X20_Y9_N24
\l2|Div0|auto_generated|divider|divider|op_5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_5~11_cout\ = CARRY((!\l2|Div0|auto_generated|divider|divider|StageOut[124]~179_combout\ & (!\l2|Div0|auto_generated|divider|divider|StageOut[124]~158_combout\ & 
-- !\l2|Div0|auto_generated|divider|divider|op_5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|StageOut[124]~179_combout\,
	datab => \l2|Div0|auto_generated|divider|divider|StageOut[124]~158_combout\,
	datad => VCC,
	cin => \l2|Div0|auto_generated|divider|divider|op_5~9_cout\,
	cout => \l2|Div0|auto_generated|divider|divider|op_5~11_cout\);

-- Location: LCCOMB_X20_Y9_N26
\l2|Div0|auto_generated|divider|divider|op_5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|Div0|auto_generated|divider|divider|op_5~12_combout\ = \l2|Div0|auto_generated|divider|divider|op_5~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \l2|Div0|auto_generated|divider|divider|op_5~11_cout\,
	combout => \l2|Div0|auto_generated|divider|divider|op_5~12_combout\);

-- Location: LCCOMB_X13_Y9_N14
\l2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|LessThan0~1_cout\ = CARRY((!\l2|cnt\(0) & !\l2|Div0|auto_generated|divider|divider|op_5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(0),
	datab => \l2|Div0|auto_generated|divider|divider|op_5~12_combout\,
	datad => VCC,
	cout => \l2|LessThan0~1_cout\);

-- Location: LCCOMB_X13_Y9_N16
\l2|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|LessThan0~3_cout\ = CARRY((\l2|cnt\(1) & ((\l2|Div0|auto_generated|divider|divider|op_4~12_combout\) # (!\l2|LessThan0~1_cout\))) # (!\l2|cnt\(1) & (\l2|Div0|auto_generated|divider|divider|op_4~12_combout\ & !\l2|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(1),
	datab => \l2|Div0|auto_generated|divider|divider|op_4~12_combout\,
	datad => VCC,
	cin => \l2|LessThan0~1_cout\,
	cout => \l2|LessThan0~3_cout\);

-- Location: LCCOMB_X13_Y9_N18
\l2|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|LessThan0~5_cout\ = CARRY((\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & (!\l2|cnt\(2) & !\l2|LessThan0~3_cout\)) # (!\l2|Div0|auto_generated|divider|divider|op_3~12_combout\ & ((!\l2|LessThan0~3_cout\) # (!\l2|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datab => \l2|cnt\(2),
	datad => VCC,
	cin => \l2|LessThan0~3_cout\,
	cout => \l2|LessThan0~5_cout\);

-- Location: LCCOMB_X13_Y9_N20
\l2|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|LessThan0~7_cout\ = CARRY((\l2|Div0|auto_generated|divider|divider|op_2~12_combout\ & ((\l2|cnt\(3)) # (!\l2|LessThan0~5_cout\))) # (!\l2|Div0|auto_generated|divider|divider|op_2~12_combout\ & (\l2|cnt\(3) & !\l2|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|Div0|auto_generated|divider|divider|op_2~12_combout\,
	datab => \l2|cnt\(3),
	datad => VCC,
	cin => \l2|LessThan0~5_cout\,
	cout => \l2|LessThan0~7_cout\);

-- Location: LCCOMB_X13_Y9_N22
\l2|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|LessThan0~9_cout\ = CARRY((\l2|cnt\(4) & (!\l2|Div0|auto_generated|divider|divider|op_1~12_combout\ & !\l2|LessThan0~7_cout\)) # (!\l2|cnt\(4) & ((!\l2|LessThan0~7_cout\) # (!\l2|Div0|auto_generated|divider|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(4),
	datab => \l2|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datad => VCC,
	cin => \l2|LessThan0~7_cout\,
	cout => \l2|LessThan0~9_cout\);

-- Location: LCCOMB_X13_Y9_N24
\l2|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|LessThan0~11_cout\ = CARRY((\l2|cnt\(5) & ((!\l2|LessThan0~9_cout\) # (!\l2|Div0|auto_generated|divider|divider|op_13~14_combout\))) # (!\l2|cnt\(5) & (!\l2|Div0|auto_generated|divider|divider|op_13~14_combout\ & !\l2|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(5),
	datab => \l2|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datad => VCC,
	cin => \l2|LessThan0~9_cout\,
	cout => \l2|LessThan0~11_cout\);

-- Location: LCCOMB_X13_Y9_N26
\l2|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|LessThan0~13_cout\ = CARRY((\l2|cnt\(6) & (\l2|Add0~1_combout\ & !\l2|LessThan0~11_cout\)) # (!\l2|cnt\(6) & ((\l2|Add0~1_combout\) # (!\l2|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(6),
	datab => \l2|Add0~1_combout\,
	datad => VCC,
	cin => \l2|LessThan0~11_cout\,
	cout => \l2|LessThan0~13_cout\);

-- Location: LCCOMB_X13_Y9_N28
\l2|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|LessThan0~14_combout\ = (\l2|cnt\(7) & (\l2|LessThan0~13_cout\ & \l2|Add0~0_combout\)) # (!\l2|cnt\(7) & ((\l2|LessThan0~13_cout\) # (\l2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(7),
	datad => \l2|Add0~0_combout\,
	cin => \l2|LessThan0~13_cout\,
	combout => \l2|LessThan0~14_combout\);

-- Location: LCCOMB_X12_Y8_N8
\l2|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \l2|LessThan0~16_combout\ = (!\l2|cnt\(10) & (!\l2|cnt\(9) & (\l2|LessThan0~14_combout\ & !\l2|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l2|cnt\(10),
	datab => \l2|cnt\(9),
	datac => \l2|LessThan0~14_combout\,
	datad => \l2|cnt\(8),
	combout => \l2|LessThan0~16_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l4|data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(0));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l4|data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(1));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l4|data\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(2));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l4|data\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(3));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l4|data\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(4));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l4|data\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(5));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l4|data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(6));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l4|data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(7));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_exist_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_exist_out);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pwm_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \l2|LessThan0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pwm_out);
END structure;


