----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:05:09 09/10/2011 
-- Design Name: 
-- Module Name:    MUXDGNRM - Behavioral 
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

entity MUXDGNRM is
port(clk,switchST:in std_logic;
     adg1,adg2,adg3,adg4,adg1indi,adg2indi,adg3indi,adg4indi:in std_logic_vector(8 downto 0);
	  adgout1,adgout2,adgout3,adgout4:out std_logic_vector(8 downto 0));
end MUXDGNRM;

architecture Behavioral of MUXDGNRM is

begin
process(clk,switchST)
begin
if clk'event and clk='1' then
  if switchST='1' then
   adgout1<=adg1indi;
	adgout2<=adg2indi;
	adgout3<=adg3indi;
	adgout4<=adg4indi;
	else
	adgout1<=adg1;
	adgout2<=adg2;
	adgout3<=adg3;
	adgout4<=adg4;
	end if;
	end if;
end process;
end Behavioral;

