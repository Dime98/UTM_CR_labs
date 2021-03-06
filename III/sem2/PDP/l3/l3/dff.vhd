library ieee;
use ieee.std_logic_1164.all;

entity dff is
   port (d: in std_logic; 
            clk: in std_logic;
            q: out std_logic;
				reset: in std_logic);
end dff;

architecture example_r of dff is 
begin 
process (clk, reset) 
begin 
if (reset = '1') then 
q <= '0'; 
elsif rising_edge (clk) then 
q <= d; 
end if; 
end process; 
end example_r; 