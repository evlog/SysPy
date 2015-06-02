----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:28:13 01/30/2011 
-- Design Name: 
-- Module Name:    find8min64 - Behavioral 
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
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:07:15 01/27/2011 
-- Design Name: 
-- Module Name:    findmin8 - Behavioral 
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
---------------------------------------------------------------------------------
-- Engineer: Eng. Mostafa M. Amer
-- 
-- Create Date:    10:28:31 11/17/2008 
-- Design Name: Minimum of N 8-bit unsigned numbers
-- Module Name:    minimum_N - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity find8min512 is
    Port ( NO_IN : in  STD_LOGIC_VECTOR (31 downto 0); 	-- Input stream
	        Qaddress:in STD_LOGIC_VECTOR (8 downto 0);
			  ENA : in STD_LOGIC;									-- Enable
           CLK,rst : in  STD_LOGIC;									-- Clock
			  Qaddressout:out std_logic_vector(8 downto 0);
           MIN_OUT : out  STD_LOGIC_VECTOR (31 downto 0));-- The minimum of the stream
end find8min512;

architecture Behavioral of find8min512 is
   signal Qaddressint:std_logic_vector(8 downto 0);
	signal min : std_logic_vector(31 downto 0):="11111111111111111111111111111111"; -- Initial min to the maximum possible number
begin


comparator:
process(CLK,rst)
begin
if rst='1' then
 min <="11111111111111111111111111111111";
 elsif (ENA='1') then 
   if (CLK'event and CLK ='1') then   
      if ( NO_IN < min ) then 
			min <= NO_IN;
			Qaddressint<=Qaddress;
      else 
         min <= min;
			Qaddressint<=Qaddressint;
      end if;
   end if; 
else
	min <= min;
	Qaddressint<=Qaddressint;
end if;
end process; 
    
MIN_OUT <= min;
Qaddressout<=Qaddressint;			

end Behavioral;
