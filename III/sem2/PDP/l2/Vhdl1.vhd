library ieee; 
use ieee.std_logic_1164.all; 
entity Gate_And2 is 
   port (x, y: in std_logic; 
             F: out std_logic); 
end Gate_And2; 
architecture Gate_And2_beh of Gate_And2 is
  begin 
    process (x, y) 
      begin 
       F <= x and y; 
     end process; 
end Gate_And2_beh; 
