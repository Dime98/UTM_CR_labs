library ieee; 
use ieee.std_logic_1164.all; 

entity G_INV is
port (X: IN STD_LOGIC;
	  Q: OUT STD_LOGIC);
end G_INV;

architecture G_INV_beh of G_INV is
	begin
		Q <= NOT X;
	end G_INV_beh;
	