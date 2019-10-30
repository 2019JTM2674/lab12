----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2019 10:55:49
-- Design Name: 
-- Module Name: ps2_test - Behavioral
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

entity ps2_test is
--  Port ( );
end ps2_test;

architecture Behavioral of ps2_test is
signal clk,reset: std_logic;
    signal counter: std_logic;
    
    component ps2
    port(
    clk,reset: in std_logic;
    counter: out std_logic
    );
    end component;
    
    
begin
    uut: ps2 port map(clk,reset,counter);
    
    process
    begin
        clk<='1';
        wait for 10ns;
        clk<='0';
        wait for 10ns;
    
    end process;
    
    process
    begin
        reset<='1';
        wait for 10ns;
        reset<='0';
        wait;
    end process;

end Behavioral;
