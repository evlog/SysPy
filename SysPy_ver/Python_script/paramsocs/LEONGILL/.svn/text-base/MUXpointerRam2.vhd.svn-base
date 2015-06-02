----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:20:21 03/23/2011 
-- Design Name: 
-- Module Name:    MUXpointerRam2 - Behavioral 
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

entity MUXpointerRam2 is
port(selFSM2,clk:in std_logic;
     Qinpointer1,Qinpointer2,QinMUxupdate1,QinMUxupdate2:in std_logic_vector(31 downto 0);
	  Qoutaddr1,Qoutaddr2:out std_logic_vector(31 downto 0));
end MUXpointerRam2;

architecture Behavioral of MUXpointerRam2 is

begin
process(selFSM2,clk)
begin
if clk'event and clk='1' then
 if selFSM2='0' then
   Qoutaddr1<=Qinpointer1;
	Qoutaddr2<=Qinpointer2;
 else
   Qoutaddr1<=QinMUxupdate1;
	Qoutaddr2<=QinMUxupdate2;
   end if;
end if;
end process;	
end Behavioral;

