library ieee;
use ieee.std_logic_1164.all;
entity reg8 is
   port (d: in std_logic_vector (7 downto 0);
            clk: in std_logic;
            q: out std_logic_vector (7 downto 0));
end reg8;
architecture ex_reg of reg8 is
    begin
       process (clk)
          begin
            if (clk'event and clk = '1') then
           q <= d;
           end if;
    end process;
end ex_reg;
