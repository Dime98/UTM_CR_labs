library ieee; 
use ieee.std_logic_1164.all; 
entity funct is
port (N:IN STD_LOGIC_VECTOR (3 downto 0);
	  F:OUT STD_LOGIC);
end funct;

architecture funct_beh of funct is
	signal N3_L, N2_L, N1_L, N0_L: STD_LOGIC;
	signal T1,T2,T3 : STD_LOGIC;
	
	component G_INV port (X: IN STD_LOGIC;
							Q: OUT STD_LOGIC);
	end component;
							
	component G_AND2 port (X,Y: IN STD_LOGIC;
							Q: OUT STD_LOGIC);
	end component;
							
	component G_AND3 port (X,Y,Z: IN STD_LOGIC;
							Q: OUT STD_LOGIC);
	end component;
							
	component G_OR3 port (X,Y,Z: IN STD_LOGIC;
	                       Q: OUT STD_LOGIC);
	end component;

	
	begin
		U1: G_INV port map (N(3), N3_L);
		U2: G_AND3 port map (N3_L, N(1), N(0), T1);
		U3: G_AND2 port map (N(2), N(0), T2);
		U4: G_AND3 port map (N(3), N(2), N(1), T3);
		U5: G_OR3 port map(T1,T2,T3, F);
	end funct_beh;
	