library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
ENTITY top_level_tb IS
END top_level_tb;
 
ARCHITECTURE behavior OF top_level_tb IS
    -- Unit under test.
    COMPONENT top_level
        port(
			clk     : in  STD_LOGIC;
			btn     : in STD_LOGIC;
			data_in : in std_logic_vector(8-1 downto 0);
			reset : IN  std_logic;
			data_out: out std_logic_vector(8-1 downto 0);
			data_exist_out: out std_logic;
			pwm_out : out STD_LOGIC
		  );
    END COMPONENT;

    -- Inputs.
    signal clk  : std_logic;
	 signal btn  : std_logic ;
    signal data_in  : std_logic_vector(7 downto 0);
	 signal reset :  std_logic;
    -- Outputs.
    signal data_out : std_logic_vector(7 downto 0);
	 signal data_exist_out : std_logic;
	 signal pwm_out : std_logic;
    -- Clock definition.
BEGIN
    -- Instance of the unit under test.
    INST1: top_level port map (clk, btn, data_in, reset, data_out, data_exist_out, pwm_out);

    process 
	 begin
		  reset <= '1';
        wait for 50 ns;
        reset <= '0';
        wait for 50 ns;
     
		  clk <= '0';
		  btn <= '0';
        data_in <= "00000000";
        wait for 20 ms;
		  
		  clk <= '0';
		  btn <= '0';
		  data_in <= "01011010";
        wait for 20 ms;
		  
		  clk <= '0';
		  btn <= '0';
        data_in <= "10110100";
        wait;
    end process;
END;