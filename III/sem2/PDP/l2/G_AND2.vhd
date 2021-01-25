library ieee; 
use ieee.std_logic_1164.all; 

entity G_AND2 is
port (X,Y: IN STD_LOGIC;
	  Q: OUT STD_LOGIC);
end G_AND2;

architecture G_AND2_beh of G_AND2 is
	begin
		Q <= X AND Y;
	end G_AND2_beh;
	