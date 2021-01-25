library ieee; 
use ieee.std_logic_1164.all; 

entity FullAdder is 
   port (A, B, Cin: in std_logic; SUM, Cout: out std_logic); 
end FullAdder;

architecture FullAdder_struct of FullAdder is
  component Gate_And2 is
      port (x, y: in std_logic; F: out std_logic); 
	end component; 
	
	component Gate_XOR2 is 
		port (x, y: in std_logic; F: out std_logic); 
	end component; 
	
	component Gate_OR3 is 
		port (x, y, z: in std_logic; F: out std_logic); 
	end component; 
	
signal XOR2_0_out, AND2_0_out, AND2_1_out, AND2_2_out: std_logic; 
   begin
      XOR2_0: Gate_XOR2 port map (A, B, XOR2_0_out); 
		XOR2_1: Gate_XOR2 port map (XOR2_0_out, Cin, Sum); 
		AND2_0: Gate_AND2 port map (A, B, AND2_0_out); 
		AND2_1: Gate_AND2 port map (A, Cin, AND2_1_out); 
		AND2_2: Gate_AND2 port map (B, Cin, AND2_2_out); 
end FullAdder_struct; 
