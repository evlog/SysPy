----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:56:08 03/23/2011 
-- Design Name: 
-- Module Name:    Compnew3 - Behavioral 
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


entity Compnew3 is
port(Qin1,Qin2:in std_logic_vector(31 downto 0);
     Qaddrss1,Qaddrss2:in std_logic_vector(8 downto 0);
     clk,en:in std_logic;
	  mux1stage1,mux1stage2:in std_logic_vector(2 downto 0);
	  muxint:out std_logic_vector(2 downto 0);
	  Qout:out std_logic_vector(31 downto 0);
	  Qaddrss:out std_logic_vector(8 downto 0));
end Compnew3;

architecture Behavioral of Compnew3 is

begin
process(clk,en)
begin
if clk'event and clk='1' then
 if en='1' then
  if Qin1<=Qin2 then
  Qout<=Qin1;
  muxint<=mux1stage1;
   Qaddrss<=Qaddrss1;
  elsif Qin1>=Qin2 then
   Qout<=Qin2;
	muxint<=mux1stage2;
    Qaddrss<=Qaddrss2;
  end if;
 end if;
end if;
end process; 
end Behavioral;

