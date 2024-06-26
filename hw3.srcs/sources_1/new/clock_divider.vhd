library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- This module is responsible for maintaining proper
-- display refresh rate.
--
-- Our board used a internal clock of 100 MHz.
-- But we need to drive our pixel clock at 50 MHz. (for why this frequency see assignment 2)
-- So we need to divide the clock by 2.
entity clock_divider is
    Port ( InpClk : in STD_LOGIC;
           OutClk : out STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is

begin

process(Inpclk)
variable i: integer:=0; 
variable outsig: std_logic:='0';
begin
    if(rising_edge(inpclk)) then
        i:=i+1;
        if i>1 then
            i:=0;
            outsig:= not outsig;
            outclk<=outsig;
        end if;
        
    end if;
end process;


end Behavioral;
