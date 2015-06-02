----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:04:32 09/16/2011 
-- Design Name: 
-- Module Name:    Compforlnx - Behavioral 
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

entity Compforlnx is
port(clk:in std_logic;
     Qin1,Qin2:in std_logic_vector(31 downto 0);
	  Qoutb,Qouts:out std_logic_vector(31 downto 0));
end Compforlnx;

architecture Behavioral of Compforlnx is
begin
process(clk)
begin
 if clk'event and clk='1' then
   if Qin1>Qin2 then
	  Qoutb<=Qin1; Qouts<=Qin2;
	  else
	   Qoutb<=Qin2; Qouts<=Qin1;
   end if;
 end if;
end process; 
end Behavioral;

