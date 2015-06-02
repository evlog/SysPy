----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:13 06/29/2011 
-- Design Name: 
-- Module Name:    MUXforspeciesTableIndi2 - Behavioral 
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

entity MUXforspeciesTableIndi2 is
port(switchST,clk:in std_logic;
     do,do1,do2,do3,do4,do5,do6,do7,do8,do9,do10,do11,dob,do1b,do2b,do3b,do4b,do5b,do6b,do7b,do8b,do9b,do10b,do11b: in std_logic_vector(31 downto 0);
	  qmux1,qmux2,qmux3,qmux4,qmux5,qmux6,qmux7,qmux8,qmux9,qmux10,qmux11,qmux12:out std_logic_vector(31 downto 0));
end MUXforspeciesTableIndi2;

architecture Behavioral of MUXforspeciesTableIndi2 is

begin
process(switchST,clk)
begin
 if clk'event and clk='1' then
  if switchST='0' then
    qmux1<=do;
	  qmux2<=do1;
	     qmux3<=do2;
	      qmux4<=do3;
		    qmux5<=do4;
	         qmux6<=do5;
		   qmux7<=do6;
	     qmux8<=do7;
	  qmux9<=do8;
  qmux10<=do9;
 qmux11<=do10;
 qmux12<=do11;
	           else 	
    qmux1<=dob;
	  qmux2<=do1b;
	     qmux3<=do2b;
	      qmux4<=do3b;
		    qmux5<=do4b;
	         qmux6<=do5b;
		   qmux7<=do6b;
	     qmux8<=do7b;
	  qmux9<=do8b;
  qmux10<=do9b;
 qmux11<=do10b;
 qmux12<=do11b;
   end if;
 end if;
end process; 
end Behavioral;


