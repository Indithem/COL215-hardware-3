LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity display_image is
    -- this is the top level entity. It contains instances of the other components
    -- code here is responsible for displaying the image on the screen

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
    -- this was described in the constraints file
    -- the clock signal from the basys board
    basys_clock: in std_logic;

    Red: out std_logic_vector(3 downto 0);
    Green: out std_logic_vector(3 downto 0);
    Blue: out std_logic_vector(3 downto 0);
    hsync : out std_logic:='1';
    vsync : out std_logic:='1';

    -- a toggle switch to switch between the image and the filtered image
    from_ram_switch : in std_logic;
    -- a reset key, but this didnt work during the submission :<
    rst : in std_logic
   );
   
end display_image;

architecture Behavioral of display_image is

-- A clock that runs at half the frequency of the input clock
-- we made this in ./clock_divider.vhd
component clock_divider is
  Port ( 
    InpClk: in std_logic;
    OutClk: out std_logic
  );
end component;

-- ROM containing the image
component img is port(
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
end component;

-- RAM containing the filtered image
component ram PORT(
    clk : IN STD_LOGIC;
    we : IN std_logic;
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    d: IN std_logic_vector(7 DOWNTO 0)
    );
END COMPONENT;

-- In the assignment, we were supposed to implement a MAC unit
-- I didn't know what that was, so I made a new unit to perform all filtering operations
--
-- 
component MAC is
    Port 
        ( 
        InpClk : in STD_LOGIC;
        reset : in STD_LOGIC;
        done : out STD_LOGIC;
        a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        spo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
end COMPONENT;

-- clock signal from the clock divider, aka Pixel clock
signal Pclk : std_logic;

-- the address that we currently want to access
signal imgaddress :  std_logic_vector(11 downto 0); --from 0 to
-- data of the image at the current address 
signal imagedata :  std_logic_vector(7 downto 0); --from 0 to 8

-- the addresss to which `imgaddress` should be changed in the next cycle
-- or -1 if we are just out of bounds
signal change_addr: integer:=-1;

signal ramdata :  std_logic_vector(7 downto 0); --from 0 to 8
signal ramaddress :  std_logic_vector(11 downto 0) := (others => '0'); --from 0 to 

-- is the filtering operation by the MAC unit done/ready?
signal done_mac : std_logic;

begin

-- map the ports to some implementations of the components
pclock: clock_divider port map (
    InpClk => basys_clock,
    outclk => Pclk
);

i: img port map(
    a=> imgaddress,
    spo=> imagedata
);

m: mac port map(
    done => done_mac,
    InpClk =>basys_clock,
    reset => rst,
    a => ramaddress,
    spo => ramdata
);

-- The process responsible for figuring which pixel to display
process(basys_clock)
begin
-- on image out of bounds, display black
if change_addr=-1 then
    Red <= (others=>'0');
    green <= (others=>'0');
    Blue <= (others=>'0');
else
    if from_ram_switch='0' then
        imgaddress<=std_logic_vector(to_unsigned(change_addr,12));
        Red <= imagedata(7 downto 4);
        Green <= imagedata(7 downto 4);
        Blue <= imagedata(7 downto 4);
    else
        if done_mac='1' then
            ramaddress<=std_logic_vector(to_unsigned(change_addr,12));
            Red <= ramdata(7 downto 4);
            Green <= ramdata(7 downto 4);
            Blue <= ramdata(7 downto 4);
        else
            Red <= (others=>'1');
            Green <= (others=>'1');
            Blue <= (others=>'1');
        end if;
    end if;
end if ;
end process ;

process(Pclk)
variable v_iter: integer:=0;
variable h_iter: integer:=-1;
begin

-- I believe this is a good template code,
-- infact i made this in the previous assignment and coppied it over here
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
