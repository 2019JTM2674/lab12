----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2019 12:41:26
-- Design Name: 
-- Module Name: ps3_test - Behavioral
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

entity ps3_test is
--  Port ( );
end ps3_test;

architecture Behavioral of ps3_test is

    component ps3 
    port(
        x: in std_logic_vector(14 downto 0);
        y: in std_logic_vector(14 downto 0);
        reset: in std_logic;
        active:in std_logic;
        lessthan: out std_logic;
        greaterthan : out STD_LOGIC;
        equalto : out STD_LOGIC;
        inv:out STD_LOGIC
        );
    end component;
    
    signal x,y: std_logic_vector(14 downto 0);
    signal reset,active: std_logic;
    signal lessthan,greaterthan,equalto,inv: std_logic;

begin
    UUT: ps3 port map (x,y,reset,active,lessthan,greaterthan,equalto,inv);
    process
    begin
        active <='1';
        x <= "000111100000000";
        y <= "000000011111111";
        wait for 20ns;
        
        active<='0';
        reset<='0';
        x <= "000111100000000";
        y <= "000000011111111";
        wait for 100ns;
        
        x <= "000111100000000";
        y <= "100000011111111";
        wait for 100ns;
        
        x<= "101010101010000";
        y<="010101010101111";
        wait for 100ns;
        
        x <= "000111100000000";
        y <= "000111100000000";
        wait for 100ns;
        
        wait;
    end process;

end Behavioral;
