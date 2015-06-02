----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:24:36 12/19/2010 
-- Design Name: 
-- Module Name:    random1gen - Behavioral 
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
----------------------------------------------------

entity random1gen is

generic(n: positive :=8);
port(	clock,en:	in std_logic;
	clear:	in std_logic;
	count:	in std_logic;
	Q:	out std_logic_vector(n-1 downto 0)
);
end random1gen;

----------------------------------------------------

architecture behv of random1gen is	

	 	  
	
 signal Pre_Q: std_logic_vector(n-1 downto 0):="00000000";

begin

    -- behavior describe the counter
   process(clock, count, clear,en)
    begin
	 
	  
	if clear = '1' then
 	    Pre_Q <= (others=>'0');
	elsif (clock='1' and clock'event) then
	     if en='1' then
	    if count = '1' then
		Pre_Q <= Pre_Q + 1;
	    end if;
	   end if;
	  end if;
    end process;	
	
    -- concurrent assignment statement
    Q <= Pre_Q;

end behv;

-----------------------------------------------------


