----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:51:00 07/07/2011 
-- Design Name: 
-- Module Name:    MUXPEintdimer2 - Behavioral 
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

entity MUXPEintdimer2 is
port(clk:in std_logic;
     selintdimer:in std_logic_vector(2 downto 0);
     X2_1,X1_1,X2,X3,k0_5,k_0166:in std_logic_vector(31 downto 0);
	  cemul1,cemul2,cemul3,cemul4:out std_logic;
	  Qmult2,Qmult3,Qmult4:out std_logic_vector(31 downto 0));
end MUXPEintdimer2;

architecture Behavioral of MUXPEintdimer2 is
signal zerocnst:std_logic_vector(31 downto 0):="00000000000000000000000000000000";
begin
process(clk,selintdimer)
begin
 if clk'event and clk='1' then
 if selintdimer="000" then
   cemul1<='1';-------k*X1
   cemul2<='0';cemul3<='0';cemul4<='0';------k*X1
  elsif selintdimer="001" then
   cemul1<='1';
   Qmult2<=X1_1;cemul2<='1';cemul3<='1';cemul4<='0';Qmult3<=k0_5; -------k*x1*(x1-1)*1/2
	elsif selintdimer="010" then
	cemul1<='1';
	Qmult2<=X2;cemul2<='1';cemul3<='0';cemul4<='0';------k*x1*x2
	elsif selintdimer="011" then
	cemul1<='1';
	Qmult2<=X2;cemul2<='1';Qmult3<=X3;cemul3<='1';cemul4<='0';----k*x1*x2*x3
	elsif selintdimer="100" then ------ k*x1*(x1-1)*x2*1/2
	cemul1<='1';cemul2<='1';cemul3<='1';cemul4<='1';Qmult2<=X1_1;Qmult3<=X2;Qmult4<=k0_5;
   elsif selintdimer="101" then ------ k*x1*(x1-1)*(x1-2)*1/6
	cemul1<='1';cemul2<='1';cemul3<='1';cemul4<='1';
	Qmult2<=X1_1;Qmult3<=X2_1;Qmult4<=k_0166;
	elsif selintdimer="110" then
	cemul1<='1';-------k*X1
   cemul2<='0';cemul3<='0';cemul4<='0';------k*X1
	end if;
  end if;
end process;  
end Behavioral;





