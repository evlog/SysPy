----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:11:37 07/07/2011 
-- Design Name: 
-- Module Name:    cnstlatch2_2 - Behavioral 
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

entity cnstlatch2_2 is
port ( 
        ce:in std_logic;
		 Qout1,Qout2,Qtwo:out std_logic_vector(31 downto 0)); 
end cnstlatch2_2;

architecture Behavioral of cnstlatch2_2 is
signal Qint1:std_logic_vector(31 downto 0):="00111111000000000000000000000000";
------------------------3E29FBE7---------------------------------------------
signal Qint2:std_logic_vector(31 downto 0):="00111111001010011111110111100111";
signal Qintwo:std_logic_vector(31 downto 0):="01000000000000000000000000000000";
begin
process(ce)
begin
 if ce='1' then
   Qout1<=Qint1;
   Qout2<=Qint2;
	Qtwo<=Qintwo;
	end if;
end process; 
end Behavioral;




