----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:09:25 09/24/2011 
-- Design Name: 
-- Module Name:    FSMintforsending - Behavioral 
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

entity FSMintforsending is
port (clk,sendfsmint,rstFSMforsend:in std_logic;
      id:in  STD_LOGIC_VECTOR (8 downto 0);
      timeint,Qsp1int,Qsp2int,Qsp3int,Qsp4int,Qsp5int,Qsp6int,Qsp7int,Qsp8int:in std_logic_vector(31 downto 0);
      dimem :out  STD_LOGIC_VECTOR (31 downto 0));
end FSMintforsending;

architecture Behavioral of FSMintforsending is
signal spcnt:std_logic_vector(31 downto 0):="00000000000000000000000000001010";
type states is(start0,start1,s_start2a,s_start2,s_start3,s_start4a,s_start4,s_start5,s_start6a,s_start6,s_start7,s_start8a,s_start8,s_start9,s_start10,s_start11,s_start12,s_start13,s_start14,s_start15,s_start16,s_start17,s_start18,s_start19,s_start20,s_start21,s_start22,s_start23,s_start24,s_start25,s_start26,s_start27,s_start28,s_start29,s_start30,s_start31,s_start32);
signal state, previous_state: states;

begin
 process (clk,sendfsmint,rstFSMforsend)
 begin
  if clk'event and clk='1' then
  
    case state is
	 
	 when start0=>
		  dimem<=timeint;
		 state<=start1;
		 
		  when start1=> 
        if rstFSMforsend='1' then
         	state<=start0;
         else				
		  if sendfsmint='1' then
		  state<=s_start2a;
		  else
         state<=start1;
        end if;	
		  end if;
	 
	 when s_start2a=>
		  dimem<=Qsp8int;
		 state<=s_start2;
		 
		  when s_start2=> 
       if rstFSMforsend='1' then
         	state<=start0;
         else					  
		  if sendfsmint='1' then
		  state<=s_start3;
		  else
         state<=s_start2;
        end if;
        end if;		  

    	when s_start3=>
		  dimem<=Qsp7int;
		 state<=s_start4a;
	
		  when s_start4a=>
	   if rstFSMforsend='1' then
         	state<=start0;
         else					  
		  if sendfsmint='1' then
		  state<=s_start5;
		  else
         state<=s_start4a;
        end if;
        end if;		  

     	when s_start5=>
		  dimem<=Qsp6int;
		 state<=s_start6a;
	
		  when s_start6a=> 	
		  if rstFSMforsend='1' then
         	state<=start0;
         else				
		  if sendfsmint='1' then
		  state<=s_start6;
		  else
         state<=s_start6a;
        end if;
        end if;		  
	  
	  	when s_start6=>
		  dimem<=(("00000000000000000000000")&id);
		 state<=s_start7;
	
		  when s_start7=> 
        if rstFSMforsend='1' then
         	state<=start0;
         else						  
		  if sendfsmint='1' then
		  state<=s_start8a;
		  else
         state<=s_start7;
        end if;
        end if;		  
   	  	  
	  	when s_start8a=>
		  dimem<=Qsp5int;
		 state<=s_start8;
	
		  when s_start8=> 
        	if rstFSMforsend='1' then
         	state<=start0;
         else					  
		  if sendfsmint='1' then
		  state<=s_start9;
		  else
         state<=s_start8;
        end if;
        end if;		  

      when s_start9=>
		  dimem<=Qsp4int;
		 state<=s_start10;
	
		  when s_start10=>
         if rstFSMforsend='1' then
         	state<=start0;
         else						  
		  if sendfsmint='1' then
		  state<=s_start11;
		  else
         state<=s_start10;
        end if;
        end if;		  

     when s_start11=>
		  dimem<=Qsp3int;
		 state<=s_start12;
		 
	  when s_start12=> 
       if rstFSMforsend='1' then
         	state<=start0;
         else					  
		  if sendfsmint='1' then
		  state<=s_start13;
		  else
         state<=s_start12;
        end if;
        end if;		  

       when s_start13=>
		  dimem<=Qsp2int;
		 state<=s_start14;
		 
	  when s_start14=> 	
	  if rstFSMforsend='1' then
         	state<=start0;
         else				
		  if sendfsmint='1' then
		  state<=s_start15;
		  else
         state<=s_start14;
        end if;
        end if;		  

        when s_start15=>
		  dimem<=Qsp1int;
		 state<=s_start16;
		 
	  when s_start16=> 	
	  if rstFSMforsend='1' then
         	state<=start0;
         else				
		  if sendfsmint='1' then
		  state<=s_start17;
		  else
         state<=s_start16;
        end if;
        end if;		  
		  
		  when s_start17=>
		  dimem<=(others => '0');--timeint;
		  
		 state<=s_start18;

    when s_start18=>
    state<=start0;	 
  
     when others =>
		state <= start0;
					
			end case;
			
		end if;
		
	end process;
end Behavioral;

