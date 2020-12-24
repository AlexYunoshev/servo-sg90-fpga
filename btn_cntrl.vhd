library ieee;
use ieee.std_logic_1164.all;
entity btn_cntrl is
	port(
			clk: IN std_logic;
			data_in: IN std_logic;
			data_out: OUT std_logic
	);
end entity;
architecture behavior of btn_cntrl is
begin	
	strobe : process (clk) is 
		variable counter : integer := 0; 
	begin
		if (rising_edge(clk)) then 
			if (counter > 0) then 
				data_out <= '0'; 
				if (counter < 10) then 
					counter := counter + 1; 
				else
					counter := 0; 
				end if; 
			elsif (counter = 0 and data_in = '1') then 
				counter := 1; 
				data_out <= '1'; 
			end if; 
		end if; 
	end process strobe;
end behavior;
	
	
	
	
	
	