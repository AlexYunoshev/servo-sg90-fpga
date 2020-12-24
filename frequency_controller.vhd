library ieee;
use ieee.std_logic_1164.all;
entity frequency_controller is

	generic
	(
		FREQUENCY_IN : natural := 50_000_000;
		FREQUENCY_OUT_BTN : natural := 1_000_000;
		FREQUENCY_OUT_PWM : natural := 64_000;
		FREQUENCY_OUT_MAIN : natural := 1_000_000
	);

	port
	(
		clk	: in  std_logic;
		reset: in  std_logic;
		clk_btn : out std_logic;
		clk_pwm	: out std_logic;
		clk_main: out std_logic
	);

end frequency_controller;

architecture rtl of frequency_controller is
	component frequency_manager is

	generic
	(
		FREQUENCY_IN : natural := 50_000_000;
		FREQUENCY_OUT : natural := 1_000_000 
	);

	port
	(
		clk	: in  std_logic;
		reset: in  std_logic;
		clk_out : out std_logic
	);

	end component frequency_manager;
	
begin
	l1:frequency_manager generic map(FREQUENCY_IN, FREQUENCY_OUT_BTN)
	port map(
		
		clk => clk,
		reset => reset,
		clk_out => clk_btn
		);
	l2:frequency_manager generic map(FREQUENCY_IN, FREQUENCY_OUT_PWM)
	port map(
		clk => clk,
		reset => reset,
		clk_out => clk_pwm
		);
	l3:frequency_manager generic map(FREQUENCY_IN, FREQUENCY_OUT_MAIN)
	port map(
		clk => clk,
		reset => reset,
		clk_out => clk_main
		);
end rtl;