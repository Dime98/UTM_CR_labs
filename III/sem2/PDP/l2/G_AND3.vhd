library ieee; 
use ieee.std_logic_1164.all; 

entity G_AND3 is
port (X,Y,Z: IN STD_LOGIC;
	  Q: OUT STD_LOGIC);
end G_AND3;

architecture G_AND3_beh of G_AND3 is
	begin
		Q <= X AND Y AND Z;
	end G_AND3_beh;
	