-- Num. de biți           8 
-- CLK                    Front descrescător  
-- Resetare               asincronă 
-- Setare                 nu  
-- Direcție deplasare     stânga  
-- Încărcare              paralelă  
-- Iesire                 paralelă
library ieee; 
use ieee.std_logic_1164.all; 
 
entity reg8bit is 
    port(clk, SI, SLOAD,reset : in std_logic; 
        D  : in std_logic_vector(7 downto 0); 
        SO : out std_logic_vector(7 downto 0)); 
end reg8bit; 

architecture archi of reg8bit is 
    signal tmp      : std_logic_vector(7 downto 0); 
    signal p_state  : std_logic_vector(7 downto 0);
    begin 
    process (clk, reset) 
    begin
        if (reset = '0') then 
            p_state <= (others => '0');  
        elsif (clk'event and clk='0') then 
            if (SLOAD='1') then 
                tmp <= D; --încărcare paralelă
            else 
                tmp <= tmp(6 downto 0) & SI; 
            end if; 
            p_state <= tmp;
        end if; 

    end process; 
    SO <= tmp; 
end archi; 


