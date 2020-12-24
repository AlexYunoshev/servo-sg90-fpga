library ieee;
use ieee.std_logic_1164.all;
entity main_block is
	port(
		    button: in std_logic;
          clk : in std_logic;
	       angle: in std_logic_vector(8-1 downto 0);
	       pwm_main: out std_logic_vector(8-1 downto 0);
			 data: out std_logic_vector(8-1 downto 0);
			 data_exist: out std_logic

	);
end entity;
architecture behavior of main_block is
	
begin
	data_exist <= '1';
	
	process(clk) is
	begin 
		if (rising_edge(clk)) then
			if (button = '1') then	 
				data <= "00000000";
				pwm_main <= "00000000";
			else 
				data <= angle;
				pwm_main <= angle;
			end if;
		end if;
	end process;
end behavior;
	
	
	
	
	
	