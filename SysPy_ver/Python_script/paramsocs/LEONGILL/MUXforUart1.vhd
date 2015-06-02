----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:47:05 07/03/2011 
-- Design Name: 
-- Module Name:    MUXforUart1 - Behavioral 
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

entity MUXforUart1 is
port (muxint:in std_logic_vector(7 downto 0);
     clk:in std_logic;
Qspeciesupdate1,Qspeciesupdate2,Qspeciesupdate3,Qspeciesupdate4,Qspeciesupdate5,Qspeciesupdate6,Qspeciesupdate7,Qspeciesupdate8,Qtime1:in std_logic_vector(31 downto 0);
afrominval,afrominval1,afrominval2,afrominval3,afrominval4:in std_logic_vector(8 downto 0);
Qspeciesupdate1aa,Qspeciesupdate2aa,Qspeciesupdate3aa,Qspeciesupdate4aa,Qspeciesupdate5aa,Qspeciesupdate6aa,Qspeciesupdate7aa,Qspeciesupdate8aa,Qtime1aa:in std_logic_vector(31 downto 0);
Qspeciesupdate1a,Qspeciesupdate2a,Qspeciesupdate3a,Qspeciesupdate4a,Qspeciesupdate5a,Qspeciesupdate6a,Qspeciesupdate7a,Qspeciesupdate8a,Qtime1a:in std_logic_vector(31 downto 0);
Qspeciesupdate1b,Qspeciesupdate2b,Qspeciesupdate3b,Qspeciesupdate4b,Qspeciesupdate5b,Qspeciesupdate6b,Qspeciesupdate7b,Qspeciesupdate8b,Qtime1b:in std_logic_vector(31 downto 0);
Qspeciesupdate1c,Qspeciesupdate2c,Qspeciesupdate3c,Qspeciesupdate4c,Qspeciesupdate5c,Qspeciesupdate6c,Qspeciesupdate7c,Qspeciesupdate8c,Qtime1c:in std_logic_vector(31 downto 0);
Qspeciesupdateint1,Qspeciesupdateint2,Qspeciesupdateint3,Qspeciesupdateint4,Qspeciesupdateint5,Qspeciesupdateint6,Qspeciesupdateint7,Qspeciesupdateint8,Qtimeout:out std_logic_vector(31 downto 0);
afrominvalout:out std_logic_vector(8 downto 0));
end MUXforUart1;

architecture Behavioral of MUXforUart1 is

begin
process(muxint,clk)
begin
 if clk'event and clk='1' then
   if muxint="00000001" then
       Qspeciesupdateint1<=Qspeciesupdate1;
       Qspeciesupdateint2<=Qspeciesupdate2;
       Qspeciesupdateint3<=Qspeciesupdate3;
       Qspeciesupdateint4<=Qspeciesupdate4;
       Qspeciesupdateint5<=Qspeciesupdate5;
       Qspeciesupdateint6<=Qspeciesupdate6;
       Qspeciesupdateint7<=Qspeciesupdate7;
       Qspeciesupdateint8<=Qspeciesupdate8;
	    Qtimeout<=Qtime1;
		 afrominvalout<=afrominval;
	elsif muxint="00000010" then 
	    Qspeciesupdateint1<=Qspeciesupdate1a;
       Qspeciesupdateint2<=Qspeciesupdate2a;
       Qspeciesupdateint3<=Qspeciesupdate3a;
       Qspeciesupdateint4<=Qspeciesupdate4a;
       Qspeciesupdateint5<=Qspeciesupdate5a;
       Qspeciesupdateint6<=Qspeciesupdate6a;
       Qspeciesupdateint7<=Qspeciesupdate7a;
       Qspeciesupdateint8<=Qspeciesupdate8a;
		 Qtimeout<=Qtime1a;
		 afrominvalout<=afrominval2;
	elsif muxint="00000011" then 
	    Qspeciesupdateint1<=Qspeciesupdate1b;
       Qspeciesupdateint2<=Qspeciesupdate2b;
       Qspeciesupdateint3<=Qspeciesupdate3b;
       Qspeciesupdateint4<=Qspeciesupdate4b;
       Qspeciesupdateint5<=Qspeciesupdate5b;
       Qspeciesupdateint6<=Qspeciesupdate6b;
       Qspeciesupdateint7<=Qspeciesupdate7b;
       Qspeciesupdateint8<=Qspeciesupdate8b;
		 Qtimeout<=Qtime1b;
		 afrominvalout<=afrominval3;
   elsif muxint="00000100" then
       Qspeciesupdateint1<=Qspeciesupdate1c;
       Qspeciesupdateint2<=Qspeciesupdate2c;
       Qspeciesupdateint3<=Qspeciesupdate3c;
       Qspeciesupdateint4<=Qspeciesupdate4c;
       Qspeciesupdateint5<=Qspeciesupdate5c;
       Qspeciesupdateint6<=Qspeciesupdate6c;
       Qspeciesupdateint7<=Qspeciesupdate7c;
       Qspeciesupdateint8<=Qspeciesupdate8c;
	    Qtimeout<=Qtime1c;
		 afrominvalout<=afrominval4;
		 elsif muxint="00000101" then 
		 Qspeciesupdateint1<=Qspeciesupdate1aa;
       Qspeciesupdateint2<=Qspeciesupdate2aa;
       Qspeciesupdateint3<=Qspeciesupdate3aa;
       Qspeciesupdateint4<=Qspeciesupdate4aa;
       Qspeciesupdateint5<=Qspeciesupdate5aa;
       Qspeciesupdateint6<=Qspeciesupdate6aa;
       Qspeciesupdateint7<=Qspeciesupdate7aa;
       Qspeciesupdateint8<=Qspeciesupdate8aa;
		 Qtimeout<=Qtime1aa;
		 afrominvalout<=afrominval1;
		 end if;
    end if;
  end process;
end Behavioral;



