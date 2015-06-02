----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:02 06/28/2011 
-- Design Name: 
-- Module Name:    MUXPEintdimer - Behavioral 
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

entity MUXPEintdimer is
port(clk:in std_logic;
     selintdimer:in std_logic_vector(1 downto 0);
     X1X2int,X1:in std_logic_vector(31 downto 0);
	  ce3rdmul:out std_logic;
	  Qintdimer:out std_logic_vector(31 downto 0));
end MUXPEintdimer;

architecture Behavioral of MUXPEintdimer is

begin
process(clk,selintdimer)
begin
 if clk'event and clk='1' then
  if selintdimer="01" then
   Qintdimer<=X1;ce3rdmul<='1';
	elsif selintdimer="00" then
	Qintdimer<=X1X2int;ce3rdmul<='0';
	elsif selintdimer="10" then
	Qintdimer<=X1X2int;ce3rdmul<='1';
   end if;
  end if;
end process;  
end Behavioral;

