library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_unsigned.all;
use IEEE.NUMERIC_STD.ALL;
entity pwm is
	port(
		  clk   : IN  STD_LOGIC;
		  reset : IN  STD_LOGIC;
        pos   : IN  STD_LOGIC_VECTOR(7 downto 0);
        servo : OUT STD_LOGIC
	);
end entity;	
architecture behavior of pwm is
    -- Counter, from 0 to 1279.
	 signal cnt : unsigned(10 downto 0);
    -- Temporal signal used to generate the PWM pulse.
    signal pwmi: unsigned(7 downto 0);
begin
    -- Minimum value should be 0.5ms.
    --pwmi <= unsigned('0' & pos) + 32;
	 
	 pwmi <= to_unsigned(to_integer(unsigned(pos))*128/180, 8) + 32;
    -- Counter process, from 0 to 1279.
     counter: process (reset, clk) begin
        if (reset = '1') then
            cnt <= (others => '0');
        elsif rising_edge(clk) then
            if (cnt = 1279) then
                cnt <= (others => '0');
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end process;
    -- Output signal for the servomotor.
    servo <= '1' when (cnt < pwmi) else '0';
end behavior;
	
	
	
	
	
	