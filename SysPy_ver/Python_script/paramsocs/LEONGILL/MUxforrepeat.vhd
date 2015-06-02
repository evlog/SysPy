----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:51:03 04/29/2011 
-- Design Name: 
-- Module Name:    MUxforrepeat - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUxforrepeat is
port(clk,selFSm:in std_logic;
     go:out std_logic;
	  Qinnew,Qinold:in std_logic_vector(31 downto 0);
	  Qout:out std_logic_vector(31 downto 0));
end MUxforrepeat;

architecture Behavioral of MUxforrepeat is
signal Qstop:std_logic_vector(31 downto 0):= "01000111010000110101000000000000";--"01001001000100100111110000000000";      --"01000111000000000000000000000000";
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

