----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:49 03/23/2011 
-- Design Name: 
-- Module Name:    Comp1new - Behavioral 
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

entity Comp1new is
port(Qin1,Qin2:in std_logic_vector(31 downto 0);
     Qaddrss1,Qaddrss2:in std_logic_vector(8 downto 0);
     clk,en:in std_logic;
	  muxint:out std_logic_vector(2 downto 0);
	  Qout:out std_logic_vector(31 downto 0);
	  Qaddrss:out std_logic_vector(8 downto 0));
end Comp1new;

architecture Behavioral of Comp1new is

begin
process(clk,en)
begin
if clk'event and clk='1' then
 if en='1' then
  if Qin1<=Qin2 then
  Qout<=Qin1;
  muxint<="001";
   Qaddrss<=Qaddrss1;
  elsif Qin1>=Qin2 then
   Qout<=Qin2;
	muxint<="010";
    Qaddrss<=Qaddrss2;
  end if;
 end if;
end if;
end process; 
end Behavioral;

