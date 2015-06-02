----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:44 09/09/2011 
-- Design Name: 
-- Module Name:    MUXforNRMPQ - Behavioral 
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

entity MUXforNRMPQ is
port(Qtime1,Qtime2,Qtime3,Qtime4,Qtime1PQ,Qtime2PQ,Qtime3PQ,Qtime4PQ:in std_logic_vector(31 downto 0);
     clk,sel:in std_logic;
     Qtimeout1,Qtimeout2,Qtimeout3,Qtimeout4:out std_logic_vector(31 downto 0)); 
end MUXforNRMPQ;

architecture Behavioral of MUXforNRMPQ is

begin
 process(clk,sel)
begin
 if clk'event and clk='1' then
  if sel='1' then
     Qtimeout1<=Qtime1PQ;
	  Qtimeout2<=Qtime2PQ;
	  Qtimeout3<=Qtime3PQ;
	  Qtimeout4<=Qtime4PQ;
  else
     Qtimeout1<=Qtime1;
	  Qtimeout2<=Qtime2;
	  Qtimeout3<=Qtime3;
	  Qtimeout4<=Qtime4;
  end if;
 end if;
end process; 
end Behavioral;

