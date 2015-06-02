----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:05 11/15/2011 
-- Design Name: 
-- Module Name:    Muxforrepeat2 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUxforrepeat2 is

port(clk,selFSm:in std_logic;
     go:out std_logic;
	  Qstop:in std_logic_vector(31 downto 0);
	  Qinnew,Qinold:in std_logic_vector(31 downto 0);
	  Qout:out std_logic_vector(31 downto 0));
end MUxforrepeat2;

architecture Behavioral of MUxforrepeat2 is
--signal Qstop:std_logic_vector(31 downto 0):="01010111110000110101000000000000";
begin
process(clk,selFSM)
begin
 if clk'event and clk='1' then
   if selFSM='0' then
     Qout<=Qinnew;go<='0';
	 else
     if Qinold>=Qstop then
       go<='1';
       Qout<=Qinnew;		 
      else
--		 if Qinold >="01111111100000000000000000000000" then
--		    Qout<="00000000000000000000000000000000"; 
--			 go<='0';
--			 else
       go<='0';
       Qout<=Qinold; 
--		  end if;
		end if;
    end if;
	end if; 
 end process;
end Behavioral;

