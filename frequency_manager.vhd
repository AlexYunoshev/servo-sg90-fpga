library ieee;
use ieee.std_logic_1164.all;
entity frequency_manager is

	generic
	(
		FREQUENCY_IN : natural := 50_000_000;
		FREQUENCY_OUT : natural := 1_000_000 
	);

	port
	(
		clk    : in  STD_LOGIC;
		reset  : in  STD_LOGIC;
      clk_out: out STD_LOGIC
	);

end frequency_manager;

architecture rtl of frequency_manager is

	signal temporal: STD_LOGIC;
   signal counter : integer range 0 to FREQUENCY_IN/FREQUENCY_OUT - 1 := 0;
begin
	freq_divider: process (clk) begin
		  if (reset = '1') then
            temporal <= '0';
            counter  <= 0;
        elsif rising_edge(clk) then
            if (counter = FREQUENCY_IN/FREQUENCY_OUT - 1) then
                temporal <= NOT(temporal);
                counter  <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
 
    clk_out <= temporal;
end rtl;