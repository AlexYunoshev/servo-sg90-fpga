library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity top_level is
	port(
			clk     : in  STD_LOGIC;
			btn     : in STD_LOGIC;
			data_in : in std_logic_vector(8-1 downto 0);
			reset: in  STD_LOGIC;
			data_out: out std_logic_vector(8-1 downto 0);
			data_exist_out: out std_logic;
			pwm_out : out STD_LOGIC
			
	);
end entity;
---------------------------------------------------------------------------------------
architecture behavior of top_level is

	component frequency_controller is
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
			reset	: in  std_logic;
			clk_btn : out std_logic;
			clk_pwm	: out std_logic;
			clk_main: out std_logic
		);
	end component;

	component pwm is
		port(
		  clk   : IN  STD_LOGIC;
		  reset: in  STD_LOGIC;
        pos   : IN  STD_LOGIC_VECTOR(7 downto 0);
        servo : OUT STD_LOGIC
		);
	end component;

	component btn_cntrl is
		port(
				clk: IN std_logic;
				data_in: IN std_logic;
				data_out: OUT std_logic
		);
	end component;

	component main_block is
		port(
				 button: in std_logic;
				 clk : in std_logic;
				 angle: in std_logic_vector(8-1 downto 0);
				 pwm_main: out std_logic_vector(8-1 downto 0);
				 data: out std_logic_vector(8-1 downto 0);
				 data_exist: out std_logic
		);
	end component;
	
	signal clk_btn, clk_pwm, clk_main, btn_out: STD_LOGIC;
	signal pwm_out_main: std_logic_vector(8-1 downto 0);
	
begin	
	l1: frequency_controller port map(
		clk => clk,   
		reset => reset,	
		clk_btn => clk_btn,
		clk_pwm => clk_pwm,
		clk_main => clk_main
	);
	
	l2: pwm port map (
		
		clk => clk_pwm, 
		reset => reset,
		pos => pwm_out_main,
		servo => pwm_out
	);
	
	l3: btn_cntrl port map (
		clk => clk_btn, 
		data_in => btn,
		data_out => btn_out 
	);
	
	l4: main_block port map(
		button => btn_out,
		clk => clk_main,
		angle => data_in,
		pwm_main => pwm_out_main,
		data =>  data_out,
		data_exist => data_exist_out
	);
end behavior;
	
	
	
	
	
	