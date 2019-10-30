----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2019 12:30:17
-- Design Name: 
-- Module Name: ps3 - Behavioral
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

entity ps3 is
    Port ( x : in STD_LOGIC_VECTOR (14 downto 0);
           y : in STD_LOGIC_VECTOR (14 downto 0);
           reset: in std_logic;
           active:in std_logic;
           lessthan : out STD_LOGIC;
           greaterthan : out STD_LOGIC;
           equalto : out STD_LOGIC;
           inv:out STD_LOGIC:='0');
end ps3;

architecture Behavioral of ps3 is

begin
    -- Process to find greater, lesser or equalto
    process(x,y)
    begin
    if(active='1' or reset='1') then
        greaterthan<='0';
        lessthan<='0';
        equalto<='0';
        inv<='0';
    end if;
    if(active='0' and reset='0' ) then
        if(x>y) then
            if(x = not(y)) then            -- Checking invert condition
            inv<='1';
            end if;
            greaterthan<='1';
            lessthan<='0';
            equalto<='0';
        elsif(x=y) then
            greaterthan<='0';
            lessthan<='0';
            equalto<='1';
            inv<='0';
        elsif(x<y) then
            greaterthan<='0';
            lessthan<='1';
            equalto<='0';
            if(x = not(y)) then
                inv<='1';
            end if;
        end if;
         
     end if;
     end process;
            

end Behavioral;
