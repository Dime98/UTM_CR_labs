library ieee; 
use ieee.std_logic_1164.all; 

entity FullAdder2 is 
   port (A, B, Cin: in std_logic; SUM, Cout: out std_logic); 
end FullAdder2;

architecture FullAdder2_struct of FullAdder2 is
  component FullAdder is
      port (A, B, Cin: in std_logic; SUM, Cout: out std_logic); 
	end component; 
		
--signal S: std_logic; 
   begin
      S: FullAdder port map (A, B, Cin, SUM, Cout); 
end FullAdder2_struct; 

