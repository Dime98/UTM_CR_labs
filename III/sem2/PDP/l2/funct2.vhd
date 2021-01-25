library ieee; 
use ieee.std_logic_1164.all; 

entity funct2 is
port (N:IN STD_LOGIC_VECTOR (3 downto 0);
	  F:OUT STD_LOGIC);
end funct2;

architecture funct2_beh of funct2 is
	signal N3_L: STD_LOGIC;
	signal T1,T2,T3,T4 : STD_LOGIC;
	
	begin
		F <=  (NOT N(3) AND N(1) AND N(0)) OR (N(2) AND N(0)) OR (N(3) AND N(2) AND N(1));
	end funct2_beh;
	