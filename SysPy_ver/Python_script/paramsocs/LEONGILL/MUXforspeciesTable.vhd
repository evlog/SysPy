----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:52 11/14/2011 
-- Design Name: 
-- Module Name:    MUXforspeciesTable - Behavioral 
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

entity MUXforspeciesTable is
port(clk,rrw:in std_logic;
     di1,di2:in std_logic_vector(31 downto 0);
	  do:out std_logic_vector(31 downto 0));
end MUXforspeciesTable;

architecture Behavioral of MUXforspeciesTable is

begin
 process(clk,rrw)
begin
 if clk'event and clk='1' then
    if  rrw='1' then
	    do<=di2;
		
		else
		
		  do<=di1;
	  
		
    end if;
 end if;
end process;
end Behavioral;

