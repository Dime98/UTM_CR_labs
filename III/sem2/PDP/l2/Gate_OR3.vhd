library ieee; 
use ieee.std_logic_1164.all; 
entity Gate_OR3 is 
   port (x, y, z: in std_logic; 
             F: out std_logic); 
end Gate_OR3; 
architecture Gate_OR3_beh of Gate_OR3 is
  begin 
    process (x, y, z) 
      begin 
       F <= x OR y OR z; 
     end process; 
end Gate_OR3_beh; 
