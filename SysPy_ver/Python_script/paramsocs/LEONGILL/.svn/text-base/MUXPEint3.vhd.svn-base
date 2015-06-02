----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:19:33 07/07/2011 
-- Design Name: 
-- Module Name:    MUXPEint3 - Behavioral 
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

entity MUXPEint3 is
port(KX1,KX1X2,KX1X2X3,KX1_1X1K0_5,KX1_1X2X1K0_5,KX1_1X1_2X1K0_166:in std_logic_vector(31 downto 0);
     selint:in std_logic_vector(2 downto 0);
	  clk,rdy1,rdy2,rdy3,rdy4,rdy5,rdy6:in std_logic;
	  rdyout:out std_logic;
	  Qajxout:out std_logic_vector(31 downto 0));
end MUXPEint3;

architecture Behavioral of MUXPEint3 is
begin
process(selint,clk)
begin
if clk'event and clk='1' then
   if (selint="000" or selint="110") then
	rdyout<=rdy1;
	 Qajxout<=KX1;
	 --ce3rdmul<='1';
	  elsif selint="001" then
	rdyout<=rdy4;
    Qajxout<=KX1_1X1K0_5;
	 --ce3rdmul<='0';
	  elsif selint="010" then
	   rdyout<=rdy2;
		Qajxout<=KX1X2;
		--ce3rdmul<='1';
		elsif selint="011" then
	   rdyout<=rdy3;
		Qajxout<=KX1X2X3;
		elsif selint="100" then
	   rdyout<=rdy5;
		Qajxout<=KX1_1X2X1K0_5;
		elsif selint="101" then
	   rdyout<=rdy5;
		Qajxout<=KX1_1X1_2X1K0_166;
  end if;
end if;
end process;  


end Behavioral;




