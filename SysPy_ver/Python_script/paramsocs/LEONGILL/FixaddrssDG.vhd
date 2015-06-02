----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:13:29 09/20/2011 
-- Design Name: 
-- Module Name:    FixaddrssDG - Behavioral 
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
--use ieee.numeric_std.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FixaddrssDG is
port(clk:in std_logic;
     adg:in std_logic_vector(8 downto 0);
	  adgout:out std_logic_vector(8 downto 0));
end FixaddrssDG;

architecture Behavioral of FixaddrssDG is
signal adgoutint:std_logic_vector(7 downto 0):="00000000";
signal adgint:std_logic_vector(3 downto 0):="0001";
signal adgint2:std_logic_vector(3 downto 0):="1010";
signal adgint3:std_logic_vector(3 downto 0):="0000";
begin
 process(clk,adg)
begin
 if clk'event and clk='1' then
  adgint3(3 downto 0)<=adg(3 downto 0);
  if (adg >adgint) then
    adgoutint<=adgint3*adgint2;
	 adgout<=('0'&adgoutint);
	else
  	 adgout<=adg;
   end if;	 
 end if;
end process;
end Behavioral;

