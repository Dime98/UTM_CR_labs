library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
LIBRARY lpm;
USE lpm.lpm_components.all;


package DEMO_PACK is

	type WORD_ARRAY_type is array (integer range <>) of std_logic_vector (31 downto 0);

end DEMO_PACK;


entity RAM is 

    generic (
        DATA_WIDTH : natural := 8;
        NrProc     : natural := 3
    );

    port ( 
		MDD : in WORD_ARRAY_type(NrProc-1 downto 0)
    );

end entity;


architecture RAM_arch of RAM is 


    begin 


end architecture RAM_arch;