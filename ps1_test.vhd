----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2019 10:05:56
-- Design Name: 
-- Module Name: ps1_test - Behavioral
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

entity ps1_test is
--  Port ( );
end ps1_test;

architecture Behavioral of ps1_test is

signal a,clk,reset: std_logic;
    signal z : std_logic;
    
    component ps1
    port(
        a,clk,reset : in std_logic;
        z: out std_logic
     );
     end component;
     
     begin
     uut: ps1 port map(a,clk,reset,z);
     
     process
        begin
            clk <= '1';
            wait for 10ns;
            clk <= '0';
             wait for 10ns;
      end process;
      
      process
           begin
              reset<='1';
              wait for 15ns;
              
              reset<='0';
              a<='1';
              wait for 250ns;
              
              a<='0';
              wait for 20ns;
              
              a<='1';
              wait for 20ns;
              
              a<='1';
              wait for 20ns;
              
              a<='0';
              wait for 20ns;
              
              a<='1';
              wait for 20ns;
              
              a<='0';
              wait for 20ns;
                            
              a<='1';
              wait for 20ns;
              
              a<='0';
              wait for 20ns;
              
              a<='1';
              wait for 20ns;
           end process;

end Behavioral;
