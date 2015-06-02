----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:09:53 06/29/2011 
-- Design Name: 
-- Module Name:    MUXforupdatespecies2_c - Behavioral 
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

entity MUXforupdatespecies2_c is
port (muxint:in std_logic_vector(2 downto 0);
     clk:in std_logic;
Qspeciesupdate1,Qspeciesupdate2,Qspeciesupdate3,Qspeciesupdate4,Qspeciesupdate5,Qspeciesupdate6,Qspeciesupdate7,Qspeciesupdate8:in std_logic_vector(31 downto 0);
Qspeciesupdate1a,Qspeciesupdate2a,Qspeciesupdate3a,Qspeciesupdate4a,Qspeciesupdate5a,Qspeciesupdate6a,Qspeciesupdate7a,Qspeciesupdate8a:in std_logic_vector(31 downto 0);
Qspeciesupdate1b,Qspeciesupdate2b,Qspeciesupdate3b,Qspeciesupdate4b,Qspeciesupdate5b,Qspeciesupdate6b,Qspeciesupdate7b,Qspeciesupdate8b:in std_logic_vector(31 downto 0);
Qspeciesupdate1c,Qspeciesupdate2c,Qspeciesupdate3c,Qspeciesupdate4c,Qspeciesupdate5c,Qspeciesupdate6c,Qspeciesupdate7c,Qspeciesupdate8c:in std_logic_vector(31 downto 0);
Qstoixio1,Qstoixio2,Qstoixio3,Qstoixio4,Qstoixio5,Qstoixio6,Qstoixio7,Qstoixio8:in std_logic_vector(31 downto 0);
Qstoixio1a,Qstoixio2a,Qstoixio3a,Qstoixio4a,Qstoixio5a,Qstoixio6a,Qstoixio7a,Qstoixio8a:in std_logic_vector(31 downto 0);
Qstoixio1b,Qstoixio2b,Qstoixio3b,Qstoixio4b,Qstoixio5b,Qstoixio6b,Qstoixio7b,Qstoixio8b:in std_logic_vector(31 downto 0);
Qstoixio1c,Qstoixio2c,Qstoixio3c,Qstoixio4c,Qstoixio5c,Qstoixio6c,Qstoixio7c,Qstoixio8c:in std_logic_vector(31 downto 0);
Qstoixiout1,Qstoixiout2,Qstoixiout3,Qstoixiout4,Qstoixiout5,Qstoixiout6,Qstoixiout7,Qstoixiout8:out std_logic_vector(31 downto 0);
Qspeciesupdateint1,Qspeciesupdateint2,Qspeciesupdateint3,Qspeciesupdateint4,Qspeciesupdateint5,Qspeciesupdateint6,Qspeciesupdateint7,Qspeciesupdateint8:out std_logic_vector(31 downto 0));
end MUXforupdatespecies2_c;

architecture Behavioral of MUXforupdatespecies2_c is

begin
process(muxint,clk)
begin
if clk'event and clk='1' then
if muxint="001" then

Qspeciesupdateint1<=Qspeciesupdate1;
Qspeciesupdateint2<=Qspeciesupdate2;
Qspeciesupdateint3<=Qspeciesupdate3;
Qspeciesupdateint4<=Qspeciesupdate4;
Qspeciesupdateint5<=Qspeciesupdate5;
Qspeciesupdateint6<=Qspeciesupdate6;
Qspeciesupdateint7<=Qspeciesupdate7;
Qspeciesupdateint8<=Qspeciesupdate8;

Qstoixiout1<=Qstoixio1;
Qstoixiout2<=Qstoixio2;
Qstoixiout3<=Qstoixio3;
Qstoixiout4<=Qstoixio4;
Qstoixiout5<=Qstoixio5;
Qstoixiout6<=Qstoixio6;
Qstoixiout7<=Qstoixio7;
Qstoixiout8<=Qstoixio8;

elsif muxint="010" then

Qspeciesupdateint1<=Qspeciesupdate1a;
Qspeciesupdateint2<=Qspeciesupdate2a;
Qspeciesupdateint3<=Qspeciesupdate3a;
Qspeciesupdateint4<=Qspeciesupdate4a;
Qspeciesupdateint5<=Qspeciesupdate5a;
Qspeciesupdateint6<=Qspeciesupdate6a;
Qspeciesupdateint7<=Qspeciesupdate7a;
Qspeciesupdateint8<=Qspeciesupdate8a;

Qstoixiout1<=Qstoixio1a;
Qstoixiout2<=Qstoixio2a;
Qstoixiout3<=Qstoixio3a;
Qstoixiout4<=Qstoixio4a;
Qstoixiout5<=Qstoixio5a;
Qstoixiout6<=Qstoixio6a;
Qstoixiout7<=Qstoixio7a;
Qstoixiout8<=Qstoixio8a;

elsif muxint="011" then

Qspeciesupdateint1<=Qspeciesupdate1b;
Qspeciesupdateint2<=Qspeciesupdate2b;
Qspeciesupdateint3<=Qspeciesupdate3b;
Qspeciesupdateint4<=Qspeciesupdate4b;
Qspeciesupdateint5<=Qspeciesupdate5b;
Qspeciesupdateint6<=Qspeciesupdate6b;
Qspeciesupdateint7<=Qspeciesupdate7b;
Qspeciesupdateint8<=Qspeciesupdate8b;

Qstoixiout1<=Qstoixio1b;
Qstoixiout2<=Qstoixio2b;
Qstoixiout3<=Qstoixio3b;
Qstoixiout4<=Qstoixio4b;
Qstoixiout5<=Qstoixio5b;
Qstoixiout6<=Qstoixio6b;
Qstoixiout7<=Qstoixio7b;
Qstoixiout8<=Qstoixio8b;

elsif muxint="100" then

Qspeciesupdateint1<=Qspeciesupdate1c;
Qspeciesupdateint2<=Qspeciesupdate2c;
Qspeciesupdateint3<=Qspeciesupdate3c;
Qspeciesupdateint4<=Qspeciesupdate4c;
Qspeciesupdateint5<=Qspeciesupdate5c;
Qspeciesupdateint6<=Qspeciesupdate6c;
Qspeciesupdateint7<=Qspeciesupdate7c;
Qspeciesupdateint8<=Qspeciesupdate8c;

Qstoixiout1<=Qstoixio1c;
Qstoixiout2<=Qstoixio2c;
Qstoixiout3<=Qstoixio3c;
Qstoixiout4<=Qstoixio4c;
Qstoixiout5<=Qstoixio5c;
Qstoixiout6<=Qstoixio6c;
Qstoixiout7<=Qstoixio7c;
Qstoixiout8<=Qstoixio8c;

end if;
end if;
end process;
end Behavioral;




