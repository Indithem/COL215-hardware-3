----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.11.2023 11:53:14
-- Design Name: 
-- Module Name: clock_divider - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
