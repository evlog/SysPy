----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:33 11/14/2011 
-- Design Name: 
-- Module Name:    MUXforspeciesTable2 - Behavioral 
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

entity MUXforspeciesTable2 is
port(clk,rrw:in std_logic;
di1,di2,di3,di4:in std_logic_vector(31 downto 0);
dii1,dii2,dii3,dii4:in std_logic_vector(31 downto 0);
doout,do1out,do2out,do3out:out std_logic_vector(31 downto 0));
end MUXforspeciesTable2;

architecture Behavioral of MUXforspeciesTable2 is

begin
 process(clk,rrw)
begin
 if clk'event and clk='1' then
    if  rrw='1' then
           doout<=dii1;
			  do1out<=dii2;
			  do2out<=dii3;
			  do3out<=dii4;
			  
			else
        
           doout<=di1;
			  do1out<=di2;
			  do2out<=di3;
			  do3out<=di4;
			  	  
		end if;
     end if;
  end process;	  

end Behavioral;

