
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
    Port ( 
        --   InpClk : in STD_LOGIC;
        --   reset : in STD_LOGIC;
          done : out STD_LOGIC;
          a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
          spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
          );
end MAC;

architecture Behavioral of MAC is
signal InpClk : std_LOGIC := '0';
signal reset : std_LOGIC := '0';

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

signal imgaddress :  std_logic_vector(11 downto 0); --from 0 to 
signal kernaladdress :  std_logic_vector(3 downto 0) := (others => '0'); --from 0 to 8

signal imagedata :  std_logic_vector(7 downto 0); --from 0 to 8
signal ramdata :  std_logic_vector(7 downto 0); --from 0 to 8
signal kernaldata :  std_logic_vector(7 downto 0) := (others => '0'); --from 0 to 8

signal writabledata :  std_logic_vector(7 downto 0) := (others => '0'); --from 0 to 8
signal ramaddress :  std_logic_vector(11 downto 0) := (others => '0'); --from 0 to 
            
signal finalans : integer :=0;
signal diff : integer :=0;
signal writeenable : std_logic;
signal did: std_logic ;

signal got_kernal: std_logic:='0';

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
signal minval : integer :=255;


type state is (getting_data, calculating, writing);
signal workingstate: state := getting_data;

type read_state is (get, write);
signal kernalreadstate : read_state;
signal minmaxreadstate : read_state;
signal imgreadstate : read_state;

signal calc_counter:integer:=0;
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
    d=> writabledata,
    spo=>ramdata
);

process
begin
wait for 5 ns;
Inpclk <= not inpclk;
end process;

process
begin
reset <='1';
wait for 20ns;
reset <='0';
wait;
end process;

process(InpClk,reset)
--loads all a's
variable counter: integer :=0;
begin
if (reset='1') then
   kernalreadstate<=get;
   got_kernal <='0';

elsif (got_kernal='0') then
    case kernalreadstate is
        when get=>
            kernaladdress <= std_logic_vector(to_unsigned(counter,4));
            kernalreadstate<= write;
        when write=>
            kernalreadstate<=get;
            case counter is
                when 0=>
                    a1<=(to_integer(signed(kernaldata)));            counter:=counter+1;                   
                when 1=>
                    a2<=(to_integer(signed(kernaldata)));            counter:=counter+1;
                when 2=>
                    a3<=to_integer(signed(kernaldata));            counter:=counter+1;
                when 3=>
                    a4<=to_integer(signed(kernaldata));            counter:=counter+1;
                when 4=>
                    a5<=to_integer(signed(kernaldata));            counter:=counter+1;
                when 5=>
                    a6<=to_integer(signed(kernaldata));            counter:=counter+1;
                when 6=>
                    a7<=to_integer(signed(kernaldata));            counter:=counter+1;
                when 7=>
                    a8<=to_integer(signed(kernaldata));            counter:=counter+1;
                when 8=>
                    a9<=to_integer(signed(kernaldata));           counter:=counter+1;
                when others=>
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
begin
if(reset='1') then
   done<='0';
   writeenable<='1';
   imgaddressvar:=0;
   imgreadstate <= get;
   counter:=0;
   
elsif did='1' then
    done<='1';
    ramaddress<=a;
    spo<=ramdata;
    
elsif rising_edge(InpClk) and got_kernal='1' then

    case workingstate is
        when getting_data=>
            writeenable <= '0';
            if imgaddressvar=4096 then
                if diff=0 then
                    imgaddressvar:=0;
                    imgreadstate<=get;
                    diff <= maxval-minval;
                else
                    workingstate<=getting_data;
                    writeenable<='0';
                    imgaddressvar:=0;
                    imgreadstate<=get;
                    did <='1';
                end if;
            else
            case imgreadstate is
                when get=>
                    case counter is
                        when 0=>
                            if imgaddressvar < 64 then
                                b1<=0;
                                b2<=0;
                                b3<=0;
                                counter:=3;
                            elsif (imgaddressvar rem 64) =0 then
                                b1<=0;
                                counter:=1;
                            else
                                -- imgaddress<=imgaddressvar-64-1;
                                imgaddress<=std_logic_vector(to_unsigned((imgaddressvar-65),12));
                                imgreadstate <= write;                                
                            end if;
                        when 1=>
                            -- imgaddress<=imgaddressvar-64;
                            imgaddress<=std_logic_vector(to_unsigned((imgaddressvar-64),12));
                            imgreadstate <= write;                                
                        when 2=>
                            if ((imgaddressvar+1) rem 64) =0 then
                                b3<=0;
                                counter:=3;
                            else
                                -- imgaddress<=imgaddressvar-64+1;
                                imgaddress<=std_logic_vector(to_unsigned((imgaddressvar-63),12));
                                imgreadstate <= write;
                            end if;
                        when 3=>
                            if ((imgaddressvar) rem 64) =0 then
                                b4<=0;
                                counter:=4;
                            else
                                -- imgaddress<=imgaddressvar-1;
                                imgaddress<=std_logic_vector(to_unsigned((imgaddressvar-1),12));
                                imgreadstate <= write;
                            end if;
                        when 4=>
                            -- imgaddress<=imgaddressvar;
                            imgaddress<=std_logic_vector(to_unsigned((imgaddressvar),12));
                            imgreadstate <= write;
                        when 5=>
                            if ((imgaddressvar+1) rem 64) =0 then
                                b6<=0;
                                counter:=6;
                            else
                                -- imgaddress<=imgaddressvar+1;
                                imgaddress<=std_logic_vector(to_unsigned((imgaddressvar+1),12));
                                imgreadstate <= write;
                            end if;   
                        when 6=>
                            if imgaddressvar > 4031 then
                                b7<=0;
                                b8<=0;
                                b9<=0;
                                counter:=9;
                            elsif (imgaddressvar rem 64) =0 then
                                b7<=0;
                                counter:=7;
                            else
                                -- imgaddress<=imgaddressvar+64-1;
                                imgaddress<=std_logic_vector(to_unsigned((imgaddressvar+63),12));
                                imgreadstate <= write;                                
                            end if;
                        when 7=>
                                -- imgaddress<=imgaddressvar+64;
                                imgaddress<=std_logic_vector(to_unsigned((imgaddressvar+64),12));
                                imgreadstate <= write;
                        when 8=>
                            if ((imgaddressvar+1) rem 64) =0 then
                                b9<=0;
                                counter:=9;
                            else
                                -- imgaddress<=imgaddressvar+64+1;
                                imgaddress<=std_logic_vector(to_unsigned((imgaddressvar+65),12));
                                imgreadstate <= write;
                            end if;
                        when others=>
                            counter:=0;
                            workingstate <= calculating;
                            calc_counter<=0;
                    end case;
                    
                when write=>
                case counter is
                    when 0=>
                        b1<=(to_integer(unsigned(imagedata)));            counter:=counter+1;                   
                    when 1=>
                        b2<=(to_integer(unsigned(imagedata)));            counter:=counter+1;
                    when 2=>
                        b3<=to_integer(unsigned(imagedata));            counter:=counter+1;
                    when 3=>
                        b4<=to_integer(unsigned(imagedata));            counter:=counter+1;
                    when 4=>
                        b5<=to_integer(unsigned(imagedata));            counter:=counter+1;
                    when 5=>
                        b6<=to_integer(unsigned(imagedata));            counter:=counter+1;
                    when 6=>
                        b7<=to_integer(unsigned(imagedata));            counter:=counter+1;
                    when 7=>
                        b8<=to_integer(unsigned(imagedata));            counter:=counter+1;
                    when 8=>
                        b9<=to_integer(unsigned(imagedata));           counter:=counter+1;
                    when others=>
                        counter:=0;
                        workingstate <= calculating;
                        calc_counter<=0;
                end case;
                imgreadstate<=get;
            end case;
            end if;
        when calculating=>
            case calc_counter is
                when 0=>
                    finalans<=(a1*b1+a2*b2+a3*b3+a4*b4+a5*b5+a6*b6+a7*b7+a8*b8+a9*b9);
                    calc_counter <=9;
                when others=>
                    if diff=0 then
                        if finalans < minval then
                            minval <= finalans;
                        end if;
                        if finalans > maxval then
                            maxval <= finalans;
                        end if;
                        workingstate <= getting_data;
                        imgaddressvar := imgaddressvar +1;
                    else
                        case calc_counter is
                            when 9=>
                                finalans<= (finalans-minval)*255;
                                calc_counter<=10;
                            when 10=>
                                finalans<= finalans/diff;
                                calc_counter<=11;
                            when 11=> calc_counter<=12;
                            when others=>
                                workingstate <= writing;
                        end case;
                    end if;
            end case;
        when writing=>
            writeenable <='1';
            ramaddress <= std_logic_vector(to_unsigned(imgaddressvar,12));
            writabledata<=std_logic_vector(to_unsigned(finalans,8));
            imgaddressvar:=imgaddressvar+1;
            workingstate <= getting_data;
    end case;

end if;


end process;


end Behavioral;
