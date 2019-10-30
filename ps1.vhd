----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.10.2019 09:24:23
-- Design Name: 
-- Module Name: ps1 - Behavioral
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

entity ps1 is
    Port ( a : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           z : out STD_LOGIC);
end ps1;

architecture Behavioral of ps1 is
    type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
    signal next_state, current_state: state_type;

begin
    process(clk,reset)
    begin
        if(reset = '1') then
            current_state <= s0;
        elsif(clk = '1') then
            current_state <= next_state;
         end if;
    end process;
    
    process(current_state,a)
    begin
        case current_state is
        when s0=>
            if a= '0' then
                next_state <= s0;
            else 
                next_state <= s1;
             end if;
         when s1=>
             if a= '0' then
                next_state <= s2;
             else 
                 next_state <= s1;
              end if;
          when s2=>
              if a= '0' then
                  next_state <= s0;
              else 
                  next_state <= s3;
               end if; 
          when s3=>
               if a ='0' then
                   next_state <= s2;
               else
                  next_state <=s4;
                end if;
          when s4=>
                if a ='0' then
                    next_state <= s5;
                else
                    next_state <=s1;
                end if;
          when s5=>
                 if a ='0' then
                    next_state <= s0;
                 else
                    next_state <=s6;
                 end if;
          when s6=>
               if a='0' then
                  next_state <= s7;
               else
                  next_state<=s1;
               end if;
          when s7=>
              if a='0' then
                  next_state<= s0;
              else
                  next_state<= s8;
              end if;
            when s8 =>
               if a='0' then
                  next_state<= s2;
               else
                  next_state<=s1;
                end if;
           end case;
    end process;
    process(current_state)
    begin 
    case current_state is
    when s0=>
        z<='0';
    when s1=>
         z<='0';
    when s2=>
          z<='0';
    when s3=>
          z<='0';
    when s4=>
         z<='0';
    when s5=>
         z<='0';
    when s6=>
         z<='0';
    when s7=>
         z<='0';
    when s8=>
          z<='1';
    end case;
    end process;
end Behavioral;
