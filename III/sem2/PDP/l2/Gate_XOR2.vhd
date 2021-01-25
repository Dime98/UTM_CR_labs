library ieee; 
use ieee.std_logic_1164.all; 
entity Gate_XOR2 is 
   port (x, y: in std_logic; 
             F: out std_logic); 
end Gate_XOR2; 
architecture Gate_XOR2_beh of Gate_XOR2 is
  begin 
    process (x, y) 
      begin 
       F <= x XOR y; 
     end process; 
end Gate_XOR2_beh; 
