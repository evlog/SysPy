----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:30:31 05/08/2011 
-- Design Name: 
-- Module Name:    random2gen - Behavioral 
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

entity random2gen is
generic(n: positive :=8);
port(	clock,en:	in std_logic;
	clear:	in std_logic;
	count:	in std_logic;
	Qin:in std_logic_vector(n-1 downto 0);
	Q:	out std_logic_vector(n-1 downto 0)
);
end random2gen;

architecture Behavioral of random2gen is
type states is(s_start1,s_start2);
signal Pre_Q,Pre_Q2: std_logic_vector(n-1 downto 0):="00000000";
signal state, previous_state: states;
begin

    -- behavior describe the counter
   process(clock, count, clear,en)
    begin
	 
	  
	if clear = '1' then
 	    Pre_Q <=Qin;
	elsif (clock='1' and clock'event) then
	
	   case state is
		
		when s_start1=>
		 Pre_Q <=Qin;
		Pre_Q <= Pre_Q + 1;
		Pre_Q2(7)<=Pre_Q(3);
		Pre_Q2(6)<=Pre_Q(2);
		Pre_Q2(5)<=Pre_Q(0);
		Pre_Q2(4)<=Pre_Q(1);
		Pre_Q2(3)<=Pre_Q(7);
		Pre_Q2(2)<=Pre_Q(6);
		Pre_Q2(1)<=Pre_Q(4);
		Pre_Q2(0)<=Pre_Q(5);
		state<=s_start2;
		
		
	   when s_start2=>
	     if en='1' then
	    if count = '1' then
		 ------------------
		 --Pre_Q <=Qin;
		Pre_Q <= Pre_Q + 1;
		Pre_Q2(7)<=Pre_Q(3);
		Pre_Q2(6)<=Pre_Q(2);
		Pre_Q2(5)<=Pre_Q(0);
		Pre_Q2(4)<=Pre_Q(1);
		Pre_Q2(3)<=Pre_Q(7);
		Pre_Q2(2)<=Pre_Q(6);
		Pre_Q2(1)<=Pre_Q(4);
		Pre_Q2(0)<=Pre_Q(5);
	    end if;
	   end if;
		state<=s_start2;
		
		end case;
		
	  end if;
    end process;	
	
    -- concurrent assignment statement
    Q <= Pre_Q2;



end Behavioral;

