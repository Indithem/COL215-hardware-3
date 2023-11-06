----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.11.2023 02:38:09
-- Design Name: 
-- Module Name: t1 - Behavioral
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t1 is
--  Port ( );
end t1;

architecture Behavioral of t1 is

signal a:integer:=0;
signal b: std_logic_vector(11 downto 0);
begin

process begin
a<=a+1;
b<=std_logic_vector(to_unsigned(a,12));

wait for 1 ns;
end process;


end Behavioral;
