----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:46:57 09/20/2011 
-- Design Name: 
-- Module Name:    FixaddrssDG2 - Behavioral 
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

entity FixaddrssDG2 is
port(clk:in std_logic;
     adg,adg2,adg3,adg4:in std_logic_vector(8 downto 0);
	  adgout,adgout2,adgout3,adgout4:out std_logic_vector(8 downto 0));
end FixaddrssDG2;

architecture Behavioral of FixaddrssDG2 is
signal adgint:std_logic_vector(3 downto 0):="0001";
signal adgintb:std_logic_vector(3 downto 0):="1010";
signal adgoutint,adgout2int,adgout3int,adgout4int: std_logic_vector(7 downto 0):="00000000";
signal adgint1,adgint2,adgint3,adgint4:std_logic_vector(3 downto 0):="0000";
begin

A1: process(clk,adg)
begin
  if clk'event and clk='1' then
  adgint1(3 downto 0)<=adg(3 downto 0);
  if (adg >adgint) then
    adgoutint<=adgint1*adgintb;
	 adgout<=('0'&adgoutint);
	else
  	 adgout<=adg;
   end if;	 
 end if;
end process;

A2: process(clk,adg2)
begin
  if clk'event and clk='1' then
  adgint2(3 downto 0)<=adg2(3 downto 0);
  if (adg2 >adgint) then
   -- adgout2<=adgint2*adgintb;
	adgout2int<=adgint2*adgintb;
	 adgout2<=('0'&adgout2int);
	else
  	 adgout2<=adg2;
   end if;	  	
 end if;
end process;

A3: process(clk,adg3)
begin
  if clk'event and clk='1' then
  adgint3(3 downto 0)<=adg3(3 downto 0);
  if (adg3 >adgint) then
    --adgout3<=adgint3*adgintb;
	 adgout3int<=adgint3*adgintb;
	 adgout3<=('0'&adgout3int);
	else
  	 adgout3<=adg3;
   end if;	  	
 end if;
end process;

A4: process(clk,adg3)
begin
  if clk'event and clk='1' then
  adgint4(3 downto 0)<=adg4(3 downto 0);
  if (adg4 >adgint) then
    --adgout4<=adgint4*adgintb;
	  adgout4int<=adgint4*adgintb;
	 adgout4<=('0'&adgout4int);
	else
  	 adgout4<=adg4;
   end if;	  	
 end if;
end process;

end Behavioral;


