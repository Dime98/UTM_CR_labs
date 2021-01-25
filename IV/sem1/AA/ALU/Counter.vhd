-- mod					 	9	
-- CLK					 	Front crescător
-- Resetare					asincronă
-- Tip numărător			Invers
-- Secvența de numărare		14-6	
-- Încărcare				paralelă

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
Port(clk : in STD_LOGIC;
	reset : in STD_LOGIC;
	count : out STD_LOGIC_VECTOR (7 downto 0));
end Counter;
architecture Behavioral of Counter is
signal count_int : std_logic_vector(7 downto 0);
begin
process (reset, clk)
begin
	if reset = '1' then
		count_int <= "00001110";
	elsif clk'event and clk = '1' then
		if count_int <= "00001110" and count_int > "0000110" then
			count_int <= count_int - "1";
		else
		    count_int <= "00001110";
		end if;
	end if;
end process;
count <= count_int;
end Behavioral;