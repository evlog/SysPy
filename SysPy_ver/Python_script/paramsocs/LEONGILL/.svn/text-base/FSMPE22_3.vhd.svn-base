----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:48:38 04/09/2011 
-- Design Name: 
-- Module Name:    FSMPE22 - Behavioral 
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

entity FSMPE22_3 is
port(clk,ce,sclr:in std_logic;
     en:out std_logic);
end FSMPE22_3;

architecture Behavioral of FSMPE22_3 is
type states is(s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8,s_9,s_10,s_11,s_12,s_13,s_14,s_15,s_16,s_17,s_18,s_19,s_20,
s_21, s_22,s_23,s_24,s_25,s_26,s_27,s_28,s_29,s_30,s_31,s_32,s_33,s_34);
signal state, previous_state: states;

begin    
A1:process(clk,ce)
begin
if sclr='1' then
 en<='0';
 state<=s_1;
 
 elsif clk'event and clk='1' then
   if ce='1' then

    case state is

      when s_1=>
		en<='0';
	   state<=s_2;
	   when s_2=>
	   state<=s_3;
	   when s_3=>
	   state<=s_4;
	   when s_4=>
	   state<=s_5;
	   when s_5=>
	   state<=s_6;
	   when s_6=>
	   state<=s_7;
	   when s_7=>
	   state<=s_8;
	   when s_8=>
	   state<=s_9;
	   when s_9=>
	   state<=s_10;
	   when s_10=>
	   state<=s_11;
	   when s_11=>
	   state<=s_12;
	   when s_12=>
	   state<=s_13;
	   when s_13=>
	   state<=s_14;
	   when s_14=>
	   state<=s_15;
	   when s_15=>
	   state<=s_16;
	   when s_16=>
	   state<=s_17;
	   when s_17=>
	   state<=s_18;
	   when s_18=>
	   state<=s_19;
	   when s_19=>
	   state<=s_20;
	   when s_20=>
	   state<=s_21;
	   when s_21=>
	   state<=s_22;
		when s_22=>
		--en<='1';
		state<=s_23;
		when s_23=>
	   state<=s_24;
		when s_24=>
	   state<=s_25;
		when s_25=>
	   state<=s_26;
		when s_26=>
	   state<=s_27;
		when s_27=>
		--en<='1';
	   state<=s_28;
		when s_28=>
		state<=s_29;
		when s_29=>
		--en<='1';
		state<=s_30;
		when s_30=>
		en<='0';
		state<=s_31;
		when s_31=>
		 en<='0';
		state<=s_32;
		when s_32=>
		--en<='1';
		state<=s_33;
		when s_33=>
		 en<='1';
		state<=s_34;
		when s_34=>
		en<='0';
		state<=s_1;
		
		when others =>
       state<=s_1;
			 
		end case;
	 end if;
 end if;
end process;	
		
end Behavioral;   