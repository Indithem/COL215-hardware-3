----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2023 02:06:26 AM
-- Design Name: 
-- Module Name: MAC - Behavioral
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

entity MAC is
    Port ( done : out STD_LOGIC;
           InpClk : in STD_LOGIC;
           reset : in STD_LOGIC);
end MAC;

architecture Behavioral of MAC is

component img is port(
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
end component;

component filter is port(
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
end component;

 component ram PORT(
            clk : IN STD_LOGIC;
            we : IN std_logic;
            a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            d: IN std_logic_vector(7 DOWNTO 0)
            );
        END COMPONENT;
 
signal imgaddress :  std_logic_vector(11 downto 0) := (others => '0'); --from 0 to 
signal kernaladdress :  std_logic_vector(3 downto 0) := (others => '0'); --from 0 to 8

signal imagedata :  std_logic_vector(7 downto 0) := (others => '0'); --from 0 to 8
signal kernaldata :  std_logic_vector(7 downto 0) := (others => '0'); --from 0 to 8

signal writabledata :  std_logic_vector(7 downto 0) := (others => '0'); --from 0 to 8
signal ramaddress :  std_logic_vector(11 downto 0) := (others => '0'); --from 0 to 

signal writeenable : std_logic := '0';
signal did: std_logic := '0';

signal got_kernal: std_logic:='1';
signal got_minmax: std_logic:='1';

signal a1 : integer :=0;
signal a2 : integer :=0;
signal a3 : integer :=0;
signal a4 : integer :=0;
signal a5 : integer :=0;
signal a6 : integer :=0;
signal a7 : integer :=0;
signal a8 : integer :=0;
signal a9 : integer :=0;

signal b1 : integer :=0;
signal b2 : integer :=0;
signal b3 : integer :=0;
signal b4 : integer :=0;
signal b5 : integer :=0;
signal b6 : integer :=0;
signal b7 : integer :=0;
signal b8 : integer :=0;
signal b9 : integer :=0;

signal maxval : integer :=0;
signal minval : integer :=0;


type state is (getting_data, calculating, writing);
signal workingstate: state := getting_data;

type read_state is (get, write);
signal kernalreadstate : read_state:=get;
signal minmaxreadstate : read_state:=get;
begin

k:filter port map(
    a=>kernaladdress,
    spo=> kernaldata
);

i: img port map(
    a=> imgaddress,
    spo=> imagedata
);

r: ram port map(
    clk=> InpClk,
    we=> writeenable,
    a=> ramaddress,
    d=> writabledata
);

process(reset)
begin
if(reset='1') then
   done<='0';
   writeenable<='0'; 
   imgaddress <= (others => '0');
   ramaddress <= (others => '0');
   got_kernal <='0';
   got_minmax <='0';
   kernalreadstate<=get;
   minmaxreadstate<=get;
end if;
end process;

process(InpClk)
-- gets min and max values from the image
variable counter: integer :=0;
variable data: integer :=0;
begin
if (got_minmax='0') then
    case minmaxreadstate is
        when get=>
            imgaddress <= std_logic_vector(to_unsigned(counter,12));
            kernalreadstate<= write;
        when write=>
            kernalreadstate<=get;
            counter:=counter+1;
            if counter=4096 then
                counter:=0;
                got_minmax<='1';
            else   
                data:= to_integer(unsigned(imagedata));
                if data < minval then
                    minval <= data;
                elsif data > maxval then
                    maxval <= data;
                end if;
            end if;
    end case;
end if;
end process;

process(InpClk)
--loads all a's
variable counter: integer :=0;
begin
if (got_kernal='0') then
    case kernalreadstate is
        when get=>
            kernaladdress <= std_logic_vector(to_unsigned(counter,4));
            kernalreadstate<= write;
        when write=>
            kernalreadstate<=get;
            case counter is
                when 0=>
                    a1<=(to_integer(unsigned(kernaldata)));            counter:=counter+1;                   
                when 1=>
                    a2<=(to_integer(unsigned(kernaldata)));            counter:=counter+1;
                when 2=>
                    a3<=to_integer(unsigned(kernaldata));            counter:=counter+1;
                when 3=>
                    a4<=to_integer(unsigned(kernaldata));            counter:=counter+1;
                when 4=>
                    a5<=to_integer(unsigned(kernaldata));            counter:=counter+1;
                when 5=>
                    a6<=to_integer(unsigned(kernaldata));            counter:=counter+1;
                when 6=>
                    a7<=to_integer(unsigned(kernaldata));            counter:=counter+1;
                when 7=>
                    a8<=to_integer(unsigned(kernaldata));            counter:=counter+1;
                when 8=>
                    a9<=to_integer(unsigned(kernaldata));
                    counter:=0;
                    got_kernal<='1';                                   
            end case;
    end case;
end if;
end process;

process(InpClk)
-- the main function
variable counter : integer :=0;
variable imgaddressvar : integer :=0;
variable finalans : integer :=0;
begin

if did='1' then
    done<='1';
    
elsif got_kernal='1' then
    writeenable<='1';
    case workingstate is
        when getting_data=>
           imgaddressvar := to_integer(unsigned(imgaddress));
           
        when calculating=>
            finalans:=a1*b1+a2*b2+a3*b3+a4*b4+a5*b5+a6*b6+a7*b7+a8*b8+a9*b9;
        when writing=>
            writabledata<=std_logic_vector(to_unsigned(finalans,8));
            imgaddressvar:=imgaddressvar+1;
            if imgaddressvar=4096 then
                did<='1';
                imgaddressvar:=0;
            else
                imgaddress<=std_logic_vector(to_unsigned(imgaddressvar,12));
            end if;
    end case;

end if;


end process;


end Behavioral;
