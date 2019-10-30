----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2019 10:39:36
-- Design Name: 
-- Module Name: ps2 - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ps2 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           counter : out STD_LOGIC);
end ps2;

architecture Behavioral of ps2 is

signal count:std_logic;
signal k:integer:=1;
begin
-- Process for clock and reset
process(clk,reset)
begin
if(clk='1') then
    if(reset='1') then
        count<='0';
    elsif(reset='0') then
        if(k=5) then               -- Terminates if count>5
            k<=1;
            count<=not(count);    -- Negating clock
        else
            k <= k+1;
        end if;
    end if;
end if;
end process;
counter<= count;
end Behavioral;
