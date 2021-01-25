library ieee; 
use ieee.std_logic_1164.all; 

entity G_OR3 is
port (X,Y,Z: IN STD_LOGIC;
	  Q: OUT STD_LOGIC);
end G_OR3;

architecture G_OR3_beh of G_OR3 is
	begin
		Q <= X OR Y OR Z;
	end G_OR3_beh;
	