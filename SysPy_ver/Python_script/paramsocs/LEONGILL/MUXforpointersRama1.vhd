----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:08 03/23/2011 
-- Design Name: 
-- Module Name:    MUXforpointersRama1 - Behavioral 
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

entity MUXforpointersRama1 is
port(selFSM,clk:in std_logic;
     QinaddrFSM,Qinaddrpointer:in std_logic_vector(31 downto 0);
	  Qoutaddr:out std_logic_vector(31 downto 0));
end MUXforpointersRama1;

architecture Behavioral of MUXforpointersRama1 is

begin
process(selFSM,clk)
begin
if clk'event and clk='1' then
 if selFSM='1' then
   Qoutaddr<=QinaddrFSM;
 else
   Qoutaddr<=Qinaddrpointer;
   end if;
end if;
end process;	
end Behavioral;

