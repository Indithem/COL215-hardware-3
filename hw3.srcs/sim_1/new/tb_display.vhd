
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display_image is


    generic(   
         constant htotal_pixels : integer := 64;
         constant vtotal_pixels : integer := 64;
         
         constant h_active : integer := 640;
         constant h_sync : integer := 96;
         constant h_front : integer := 16;
         constant h_back : integer := 48;
         
         constant v_active : integer := 480;
         constant v_sync : integer := 2;
         constant v_front : integer := 10;
         constant v_back : integer := 33

    );


  Port (
    -- Inp_clock: in std_logic;
    -- from_rom_switch : in std_logic;

    Red: out std_logic_vector(3 downto 0);
    Green: out std_logic_vector(3 downto 0);
    Blue: out std_logic_vector(3 downto 0);
    hsync : out std_logic:='1';
    vsync : out std_logic:='1'
   );
   
end display_image;

architecture Behavioral of display_image is

component clock_divider is
  Port ( 
    InpClk: in std_logic;
    OutClk: out std_logic
  );
end component;

component img is port(
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
end component;

signal Pclk : std_logic;
signal Inp_clk : std_logic:='0';
-- signal from_rom_swicth : std_logic:='0';

signal imgaddress :  std_logic_vector(11 downto 0); --from 0 to 
signal imagedata :  std_logic_vector(7 downto 0); --from 0 to 8

signal change_addr: integer:=-1;

begin


process
begin
wait for 5ns;
Inp_clk <= not Inp_clk;
end process ;

pclock: clock_divider port map (
    InpClk => Inp_clk,
    outclk => Pclk
);

i: img port map(
    a=> imgaddress,
    spo=> imagedata
);

process(inp_clk)
begin
if change_addr=-1 then
    Red <= (others=>'0');
    green <= (others=>'0');
    Blue <= (others=>'0');
else
    imgaddress<=std_logic_vector(to_unsigned(change_addr,12));
    Red <= imagedata(7 downto 4);
    Green <= imagedata(7 downto 4);
    Blue <= imagedata(7 downto 4);
end if ;
end process ;

process(Pclk)
variable v_iter: integer:=0;
variable h_iter: integer:=-1;
begin

if rising_edge(Pclk) then
    h_iter := h_iter+1;

    if h_iter < h_active then
        hsync <= '1';
        if h_iter < htotal_pixels and v_iter < vtotal_pixels then
            change_addr <= vtotal_pixels * v_iter + h_iter;
         else
            change_addr <= -1;
         end if;
         
    elsif h_iter < h_front+h_active then
        hsync <= '1';
        change_addr<=-1;
        
    elsif h_iter < h_active+h_front+h_sync then
        hsync <= '0';
        change_addr<=-1;

    elsif h_iter < h_active+h_front+h_sync+h_back then
        hsync <= '1';
        change_addr<=-1;
        
    else 
        h_iter := -1;
        v_iter := v_iter+1;
            if v_iter < v_active then
                vsync <= '1';
            elsif v_iter < v_front+v_active then
                vsync <= '1';
            elsif v_iter < v_active+v_front+v_sync then
                vsync <= '0';
            elsif v_iter < v_active+v_front+v_sync+v_back then
                vsync <= '1';
            else 
                v_iter := 0;            
            end if;
    end if;
end if;
    
end process ;


end Behavioral;
