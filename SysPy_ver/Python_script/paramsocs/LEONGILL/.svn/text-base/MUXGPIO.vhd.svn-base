----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:13:45 10/13/2011 
-- Design Name: 
-- Module Name:    MUXGPIO - Behavioral 
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

entity MUXGPIO is
port(clk,muxgpio:in std_logic;
doid,dooid:in std_logic_vector(8 downto 0);
do,do0,do1,do2,do3,do4,do5,do6,do7,doo,doo0,doo1,doo2,doo3,doo4,doo5,doo6,doo7  : in std_logic_vector(31 downto 0);
doidext:out std_logic_vector(8 downto 0);
doext,doext0,doext1,doext2,doext3,doext4,doext5,doext6,doext7:out std_logic_vector(31 downto 0));
end MUXGPIO;

architecture Behavioral of MUXGPIO is

begin
process (clk,muxgpio)
begin
 if clk'event and clk='1' then
   if muxgpio='0' then
	 doidext<=doid;
	 doext<=do;
    doext0<=do0;
	 doext1<=do1;
	 doext2<=do2;
	 doext3<=do3;
	 doext4<=do4;
	 doext5<=do5;
	 doext6<=do6;
	 doext7<=do7;
	 elsif muxgpio='1' then
	 doidext<=dooid;
	 doext<=doo;
    doext0<=doo0;
	 doext1<=doo1;
	 doext2<=doo2;
	 doext3<=doo3;
	 doext4<=doo4;
	 doext5<=doo5;
	 doext6<=doo6;
	 doext7<=doo7;
 end if;
end if; 
	end process; 
end Behavioral;

