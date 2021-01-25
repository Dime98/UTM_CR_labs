library ieee;
use ieee.std_logic_1164.all;
entity reg8_depl is
   port (clk, ce, si: in std_logic;
             so:            out std_logic);
end reg8_depl;
architecture reg_depl of reg8_depl is
    signal tmp: std_logic_vector (7 downto 0);
     begin
       process (clk)
           begin
             if (clk'event and clk = '1') then
                if (ce = '1') then
                for i in 0 to 6 loop
                   tmp(i+1) <= tmp(i);
                end loop;
                   tmp(0) <= si; -- încărcare serială
                end if;
            end if;
       end process;
   so <= tmp(7); -- ieșire serială
end reg_depl; 
