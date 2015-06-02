----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:17:23 07/07/2011 
-- Design Name: 
-- Module Name:    FSMstarting5 - Behavioral 
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

entity FSM6new is
port(clk,ce,sclr,dimertoFSm,en5,en4:in std_logic;
     flagMMU,enfsmpe,endff:out std_logic;
	  selintdimer:in std_logic_vector(2 downto 0);
     Qin:in std_logic_vector(31 downto 0);
     Qaddrss:in std_logic_vector(8 downto 0);
     Qoutval:out std_logic_vector(31 downto 0);
     Qaddrssoutval:out std_logic_vector(8 downto 0));
end FSM6new;

architecture Behavioral of FSM6new is
signal Qindummy:std_logic_vector(31 downto 0):="11111111111111111111111111111111";
signal Qinaddrsdummy:std_logic_vector(8 downto 0):="000000000";
--s_1e,s_1f,s_1g,
type states is(s_1a,s_1b,s_1c,s_1d,s_1e,s_1h,s_1f,s_1simple, s_2simple, s_3simple,s_4simple,s_5simple,s_6simple,s_7simple,s_8simple,s_9simple,s_10simple,s_11simple,s_12simple,s_13simple,s_14simple,s_15simple,s_16simple,s_17simple,s_18simple,s_19simple,s_20simple,
s_21simple, s_22simple, s_23simple,s_24simple,s_25simple,s_26simple,s_27simple,s_28simple,s_29simple,s_30simple,s_31simple,s_32simple,s_33simple,s_34simple,s_35simple,s_36simple,s_37simple,s_38simple,s_39simple,s_40simple,
s_41simple, s_42simple, s_43simple,s_44simple,s_45simple,s_46simple,s_47simple,s_48simple,
s_1dimer, s_2dimer, s_3dimer,s_4dimer,s_5dimer,s_6dimer,s_7dimer,s_8dimer,s_9dimer,s_10dimer,s_11dimer,s_12dimer,s_13dimer,s_14dimer,s_15dimer,s_16dimer,s_17dimer,s_18dimer,s_19dimer,s_20dimer,
s_21dimer, s_22dimer, s_23dimer,s_24dimer,s_25dimer,s_26dimer,s_27dimer,s_28dimer,s_29dimer,s_30dimer,s_31dimer,s_32dimer,s_33dimer,s_34dimer,s_35dimer,s_36dimer,s_37dimer,s_38dimer,s_39dimer,s_40dimer,
s_41dimer, s_42dimer, s_43dimer,s_44dimer,s_45dimer,s_46dimer,s_47dimer,s_48dimer,s_49dimer,s_50dimer,s_51dimer,s_52dimer,s_53dimer,s_54dimer,s_55dimer,s_56dimer,s_57dimer,s_58dimer,s_59dimer,s_60dimer,
s_61dimer,
s_1dimer2, s_2dimer2, s_3dimer2,s_4dimer2,s_5dimer2,s_6dimer2,s_7dimer2,s_8dimer2,s_9dimer2,s_10dimer2,s_11dimer2,s_12dimer2,s_13dimer2,s_14dimer2,s_15dimer2,s_16dimer2,s_17dimer2,s_18dimer2,s_19dimer2,s_20dimer2,
s_21dimer2, s_22dimer2, s_23dimer2,s_24dimer2,s_25dimer2,s_26dimer2,s_27dimer2,s_28dimer2,s_29dimer2,s_30dimer2,s_31dimer2,s_32dimer2,s_33dimer2,s_34dimer2,s_35dimer2,s_36dimer2,s_37dimer2,s_38dimer2,s_39dimer2,s_40dimer2,
s_41dimer2, s_42dimer2, s_43dimer2,s_44dimer2,s_45dimer2,s_46dimer2,s_47dimer2,s_48dimer2,s_49dimer2,s_50dimer2,s_51dimer2,s_52dimer2,s_53dimer2,s_54dimer2,s_55dimer2,s_56dimer2,s_57dimer2,s_58dimer2,s_59dimer2,s_60dimer2,
s_61dimer2,s_62dimer2,s_63dimer2,s_64dimer2,s_65dimer2,s_66dimer2,s_67dimer2,s_68dimer2,s_69dimer2,
--s_1simple2, s_2simple2, s_3simple2,s_4simple2,s_5simple2,s_6simple2,s_7simple2,s_8simple2,s_9simple2,s_10simple2,s_11simple2,s_12simple2,s_13simple2,s_14simple2,s_15simple2,s_16simple2,s_17simple2,s_18simple2,s_19simple2,s_20simple2,
--s_21simple2, s_22simple2, s_23simple2,s_24simple2,s_25simple2,s_26simple2,s_27simple2,s_28simple2,s_29simple2,s_30simple2,s_31simple2,s_32simple2,s_33simple2,s_34simple2,s_35simple2,s_36simple2,s_37simple2,s_38simple2,s_39simple2,s_40simple2,
--s_41simple2, s_42simple2, s_43simple2,s_44simple2,s_45simple2,s_46simple2,s_47simple2,s_48simple2,s_49simple2,s_50simple2,s_51simple2,s_52simple2,s_53simple2,
s_1simple3, s_2simple3, s_3simple3,s_4simple3,s_5simple3,s_6simple3,s_7simple3,s_8simple3,s_9simple3,s_10simple3,s_11simple3,s_12simple3,s_13simple3,s_14simple3,s_15simple3,s_16simple3,s_17simple3,s_18simple3,s_19simple3,s_20simple3,
s_21simple3, s_22simple3, s_23simple3,s_24simple3,s_25simple3,s_26simple3,s_27simple3,s_28simple3,s_29simple3,s_30simple3,s_31simple3,s_32simple3,s_33simple3,s_34simple3,s_35simple3,s_36simple3,s_37simple3,s_38simple3,s_39simple3,s_40simple3,
s_41simple3, s_42simple3, s_43simple3,s_44simple3,s_45simple3,s_46simple3,s_47simple3,s_48simple3,s_49simple3,s_50simple3,s_51simple3,s_52simple3,s_53simple3,s_54simple3,s_55simple3,s_56simple3,s_57simple3,s_58simple3,s_59simple3,s_60simple3,s_61simple3);
signal state, previous_state: states;
begin    
A1:process(clk,ce,sclr,selintdimer,en5)
begin

if sclr='1' then
 flagMMU<='0';enfsmpe<='0';endff<='0';
  state<=s_1a;
  
  elsif clk'event and clk='1' then
  
  if ce='1' then
	
	   case state is
		
        when s_1a=>
		  flagMMU<='0';enfsmpe<='0';endff<='0';
		  if en4='1' then
	      state<=s_1b;
			else
	       state<=s_1a;
		  end if;	 
			
			when s_1b=>
			if en5='1' then
			 state<=s_1a;
			 else
	       state<=s_1c;
			 end if;
			 
			 when s_1c=>
			 if en5='1' then
			 state<=s_1a;
			 else
	       state<=s_1d;
			 end if;
			 
			   when s_1d=>
				if en5='1' then
			    state<=s_1a;
			     else
	          state<=s_1e;
				 end if;
				 
				  when s_1e=>
				  if en5='1' then
			       state<=s_1a;
			       else
	             state<=s_1h;
					end if; 
					 
					 when s_1h=>
					 if en5='1' then
			         state<=s_1a;
			        else
	             state<=s_1f;
					 end if;
					 
					 when s_1f=>
					 if en5='1' then
			         state<=s_1a;
			       else
				      enfsmpe<='1';
				  if selintdimer="000" then
				    state<=s_1simple;
					 elsif (selintdimer="001" or selintdimer="010") then -----k*x1*(x1-1)*1/2
					 state<=s_1dimer;
--					 elsif selintdimer="010" then ------k*x1*x2
--	             state<=s_1simple2; 
               elsif selintdimer="011" then ------k*x1*x2*x3
                 state<=s_1simple3;	
               else 
                 state<=s_1dimer2;				
			    end if;
				end if;
				 
    when s_1simple=>
	 if en5='1' then
	   state<=s_1a;
	 else
       flagMMU<='0';--- MMU gives address
       Qinaddrsdummy<=Qaddrss;
	   state<=s_2simple; 
		end if;
	   when s_2simple=>
	   state<=s_3simple;
	   when s_3simple=>
	   state<=s_4simple;
	   when s_4simple=>
	   state<=s_5simple;
	   when s_5simple=>
	   state<=s_6simple;
	   when s_6simple=>
	   state<=s_7simple;
	   when s_7simple=>
	   state<=s_8simple;
	   when s_8simple=>
	   state<=s_9simple;
	   when s_9simple=>
	   state<=s_10simple;
	   when s_10simple=>
	   state<=s_11simple;
	   when s_11simple=>
	   state<=s_12simple;
	   when s_12simple=>
	   state<=s_13simple;
	   when s_13simple=>
	   state<=s_14simple;
	   when s_14simple=>
	   state<=s_15simple;
	   when s_15simple=>
	   state<=s_16simple;
	   when s_16simple=>
	   state<=s_17simple;
	   when s_17simple=>
	   state<=s_18simple;
	   when s_18simple=>
	   state<=s_19simple;
	   when s_19simple=>
	   state<=s_20simple;
	   when s_20simple=>
	   state<=s_21simple;
	   when s_21simple=>
	   state<=s_22simple;
	   when s_22simple=>
	   state<=s_23simple;
	   when s_23simple=>
	   state<=s_24simple;	
      when s_24simple=>
	   state<=s_25simple;
	   when s_25simple=>
	   state<=s_26simple;
	   when s_26simple=>
	   state<=s_27simple;
	   when s_27simple=>
	   state<=s_28simple;
	   when s_28simple=>
	   state<=s_29simple;
	   when s_29simple=>
	   state<=s_30simple;
	   when s_30simple=>
	   --flagMMU<='0';
	   state<=s_31simple;
	   when s_31simple=>
	   state<=s_32simple;
	   when s_32simple=>
		--enfsmpe<='0';
	   state<=s_33simple;
	   when s_33simple=>
		--enfsmpe<='0';
	   state<=s_34simple;
	   when s_34simple=>
		enfsmpe<='0';
	   state<=s_35simple;
      when s_35simple=>
		--enfsmpe<='0';
	   state<=s_36simple;
	   when s_36simple=>
	   state<=s_37simple;
	   when s_37simple=>
	   state<=s_38simple;
	   when s_38simple=>
	   state<=s_39simple;
	   when s_39simple=>
	   state<=s_40simple;
	   when s_40simple=>
	   state<=s_41simple;
	   when s_41simple=>
	   state<=s_42simple;
	   when s_42simple=>
	   state<=s_43simple;
      when s_43simple=>
	   state<=s_44simple;
		when s_44simple=>
		--endff<='1';
	   state<=s_45simple;
		when s_45simple=>
	   state<=s_46simple;
		when s_46simple=>
	   state<=s_47simple;
		when s_47simple=>
		endff<='1';
	   state<=s_48simple;
	   when s_48simple=>	
	    flagMMU<='1';
	   Qindummy<=Qin;
   Qaddrssoutval<=Qinaddrsdummy;
	   state<=s_1a;	
		
		
		when s_1dimer=>
		if en5='1' then
	   state<=s_1a;
	    else
       flagMMU<='0';--- MMU gives address
		 Qinaddrsdummy<=Qaddrss;
	   state<=s_2dimer; 
		end if;
	   when s_2dimer=>
	   state<=s_3dimer;
	   when s_3dimer=>
	   state<=s_4dimer;
	   when s_4dimer=>
	   state<=s_5dimer;
	   when s_5dimer=>
	   state<=s_6dimer;
	   when s_6dimer=>
	   state<=s_7dimer;
	   when s_7dimer=>
	   state<=s_8dimer;
	   when s_8dimer=>
	   state<=s_9dimer;
	   when s_9dimer=>
	   state<=s_10dimer;
	   when s_10dimer=>
	   state<=s_11dimer;
	   when s_11dimer=>
	   state<=s_12dimer;
	   when s_12dimer=>
	   state<=s_13dimer;
	   when s_13dimer=>
	   state<=s_14dimer;
	   when s_14dimer=>
	   state<=s_15dimer;
	   when s_15dimer=>
	   state<=s_16dimer;
	   when s_16dimer=>
	   state<=s_17dimer;
	   when s_17dimer=>
	   state<=s_18dimer;
	   when s_18dimer=>
	   state<=s_19dimer;
	   when s_19dimer=>
	   state<=s_20dimer;
	   when s_20dimer=>
	   state<=s_21dimer;
	   when s_21dimer=>
	   state<=s_22dimer;
	   when s_22dimer=>
	   state<=s_23dimer;
	   when s_23dimer=>
	   state<=s_24dimer;
	   when s_24dimer=>
	   state<=s_25dimer;
	   when s_25dimer=>
	   state<=s_26dimer;
	   when s_26dimer=>
	   state<=s_27dimer;
	   when s_27dimer=>
	   state<=s_28dimer;
	   when s_28dimer=>
	   state<=s_29dimer;
	   when s_29dimer=>
	   state<=s_30dimer;
	   when s_30dimer=>
	   --flagMMU<='0';
	   state<=s_31dimer;
	   when s_31dimer=>
	   state<=s_32dimer;
	   when s_32dimer=>
		--enfsmpe<='0';
	   state<=s_33dimer;
	   when s_33dimer=>
		--enfsmpe<='0';
	   state<=s_34dimer;
	   when s_34dimer=>
		enfsmpe<='0';
	   state<=s_35dimer;
	   when s_35dimer=>
		--enfsmpe<='0';
	   state<=s_36dimer;
	   when s_36dimer=>
	   state<=s_37dimer;
	   when s_37dimer=>
	   state<=s_38dimer;
	   when s_38dimer=>
	   state<=s_39dimer;
	   when s_39dimer=>
	   state<=s_40dimer;
	   when s_40dimer=>
	   state<=s_41dimer;
	   when s_41dimer=>
	   state<=s_42dimer;
	   when s_42dimer=>
	   state<=s_43dimer;
	   when s_43dimer=>
	   state<=s_44dimer;
	   when s_44dimer=>
	   state<=s_45dimer;
	   when s_45dimer=>
	   state<=s_46dimer;
	   when s_46dimer=>
	   state<=s_47dimer;
	   when s_47dimer=>
	   state<=s_48dimer;
	   when s_48dimer=>
	   state<=s_49dimer;
		when s_49dimer=>
	   state<=s_50dimer;
		when s_50dimer=>
	   state<=s_51dimer;
		when s_51dimer=>
	   state<=s_52dimer;
		when s_52dimer=>
	   state<=s_53dimer;
		when s_53dimer=>
	   state<=s_54dimer;
		when s_54dimer=>
	   state<=s_55dimer;
		when s_55dimer=>
	   state<=s_56dimer;
		when s_56dimer=>
	   state<=s_57dimer;
		when s_57dimer=>
	   state<=s_58dimer;
		when s_58dimer=>
	   state<=s_59dimer;
		when s_59dimer=>
	   state<=s_60dimer;
		when s_60dimer=>
		endff<='1';
	   state<=s_61dimer;
		when s_61dimer=>
		flagMMU<='1';
	   Qindummy<=Qin;
	   Qaddrssoutval<=Qinaddrsdummy;
	   state<=s_1a;
--		end if;
		
--		when s_1simple2=>
--       flagMMU<='0';--- MMU gives address
--       Qinaddrsdummy<=Qaddrss;
--	   state<=s_2simple2; 
--	   when s_2simple2=>
--	   --Qaddrssoutval<=Qaddrss;
--	   --flagMMU<='0';
--	   state<=s_3simple2;
--	   when s_3simple2=>
--	   state<=s_4simple2;
--	   when s_4simple2=>
--	   state<=s_5simple2;
--	   when s_5simple2=>
--	   state<=s_6simple2;
--	   when s_6simple2=>
--	   state<=s_7simple2;
--	   when s_7simple2=>
--	   state<=s_8simple2;
--	   when s_8simple2=>
--	   state<=s_9simple2;
--	   when s_9simple2=>
--	   state<=s_10simple2;
--	   when s_10simple2=>
--	   state<=s_11simple2;
--	   when s_11simple2=>
--	   state<=s_12simple2;
--	   when s_12simple2=>
--	   state<=s_13simple2;
--	   when s_13simple2=>
--	   state<=s_14simple2;
--	   when s_14simple2=>
--	   state<=s_15simple2;
--	   when s_15simple2=>
--	   state<=s_16simple2;
--	   when s_16simple2=>
--	   state<=s_17simple2;
--	   when s_17simple2=>
--	   state<=s_18simple2;
--	   when s_18simple2=>
--	   state<=s_19simple2;
--	   when s_19simple2=>
--	   state<=s_20simple2;
--	   when s_20simple2=>
--	   state<=s_21simple2;
--	   when s_21simple2=>
--	   state<=s_22simple2;
--	   when s_22simple2=>
--	   state<=s_23simple2;
--	   when s_23simple2=>
--	   state<=s_24simple2;	
--      when s_24simple2=>
--	   state<=s_25simple2;
--	   when s_25simple2=>
--	   state<=s_26simple2;
--	   when s_26simple2=>
--	   state<=s_27simple2;
--	   when s_27simple2=>
--	   state<=s_28simple2;
--	   when s_28simple2=>
--	   state<=s_29simple2;
--	   when s_29simple2=>
--	   state<=s_30simple2;
--	   when s_30simple2=>
--	   --flagMMU<='0';
--	   state<=s_31simple2;
--	   when s_31simple2=>
--	   state<=s_32simple2;
--	   when s_32simple2=>
--		--enfsmpe<='0';
--	   state<=s_33simple2;
--	   when s_33simple2=>
--		--enfsmpe<='0';
--	   state<=s_34simple2;
--	   when s_34simple2=>
--		enfsmpe<='0';
--	   state<=s_35simple2;
--      when s_35simple2=>
--		--enfsmpe<='0';
--	   state<=s_36simple2;
--	   when s_36simple2=>
--	   state<=s_37simple2;
--	   when s_37simple2=>
--	   state<=s_38simple2;
--	   when s_38simple2=>
--	   state<=s_39simple2;
--	   when s_39simple2=>
--	   state<=s_40simple2;
--	   when s_40simple2=>
--	   state<=s_41simple2;
--	   when s_41simple2=>
--	   state<=s_42simple2;
--	   when s_42simple2=>
--	   state<=s_43simple2;
--      when s_43simple2=>
--	   state<=s_44simple2;
--      when s_44simple2=>
--	   state<=s_45simple2;
--	   when s_45simple2=>
--	   state<=s_46simple2;	
--		when s_46simple2=>
--	   state<=s_47simple2;	
--      when s_47simple2=>
--	   state<=s_48simple2;
--		when s_48simple2=>
--	   state<=s_49simple2;
--	   when s_49simple2=>
--	   state<=s_50simple2;	
--      when s_50simple2=>
--	   state<=s_51simple2;
--      when s_51simple2=>
--	   state<=s_52simple2;
--		when s_52simple2=>
--	   state<=s_53simple2;
--      when s_53simple2=>		
--      flagMMU<='1';
--	   Qindummy<=Qin;
--	   Qaddrssoutval<=Qinaddrsdummy;
--	   state<=s_1a;
		
		
		when s_1simple3=>
		if en5='1' then
	   state<=s_1a;
	    else
       flagMMU<='0';--- MMU gives address
       Qinaddrsdummy<=Qaddrss;
	   state<=s_2simple3; 
		end if;
	   when s_2simple3=>
	   --Qaddrssoutval<=Qaddrss;
	   --flagMMU<='0';
	   state<=s_3simple3;
	   when s_3simple3=>
	   state<=s_4simple3;
	   when s_4simple3=>
	   state<=s_5simple3;
	   when s_5simple3=>
	   state<=s_6simple3;
	   when s_6simple3=>
	   state<=s_7simple3;
	   when s_7simple3=>
	   state<=s_8simple3;
	   when s_8simple3=>
	   state<=s_9simple3;
	   when s_9simple3=>
	   state<=s_10simple3;
	   when s_10simple3=>
	   state<=s_11simple3;
	   when s_11simple3=>
	   state<=s_12simple3;
	   when s_12simple3=>
	   state<=s_13simple3;
	   when s_13simple3=>
	   state<=s_14simple3;
	   when s_14simple3=>
	   state<=s_15simple3;
	   when s_15simple3=>
	   state<=s_16simple3;
	   when s_16simple3=>
	   state<=s_17simple3;
	   when s_17simple3=>
	   state<=s_18simple3;
	   when s_18simple3=>
	   state<=s_19simple3;
	   when s_19simple3=>
	   state<=s_20simple3;
	   when s_20simple3=>
	   state<=s_21simple3;
	   when s_21simple3=>
	   state<=s_22simple3;
	   when s_22simple3=>
	   state<=s_23simple3;
	   when s_23simple3=>
	   state<=s_24simple3;	
      when s_24simple3=>
	   state<=s_25simple3;
	   when s_25simple3=>
	   state<=s_26simple3;
	   when s_26simple3=>
	   state<=s_27simple3;
	   when s_27simple3=>
	   state<=s_28simple3;
	   when s_28simple3=>
	   state<=s_29simple3;
	   when s_29simple3=>
	   state<=s_30simple3;
	   when s_30simple3=>
	   --flagMMU<='0';
	   state<=s_31simple3;
	   when s_31simple3=>
	   state<=s_32simple3;
	   when s_32simple3=>
		--enfsmpe<='0';
	   state<=s_33simple3;
	   when s_33simple3=>
		--enfsmpe<='0';
	   state<=s_34simple3;
	   when s_34simple3=>
		enfsmpe<='0';
	   state<=s_35simple3;
      when s_35simple3=>
		--enfsmpe<='0';
	   state<=s_36simple3;
	   when s_36simple3=>
	   state<=s_37simple3;
	   when s_37simple3=>
	   state<=s_38simple3;
	   when s_38simple3=>
	   state<=s_39simple3;
	   when s_39simple3=>
	   state<=s_40simple3;
	   when s_40simple3=>
	   state<=s_41simple3;
	   when s_41simple3=>
	   state<=s_42simple3;
	   when s_42simple3=>
	   state<=s_43simple3;
      when s_43simple3=>
	   state<=s_44simple3;
      when s_44simple3=>
	   state<=s_45simple3;
	   when s_45simple3=>
	   state<=s_46simple3;	
		when s_46simple3=>
	   state<=s_47simple3;	
      when s_47simple3=>
	   state<=s_48simple3;
		when s_48simple3=>
	   state<=s_49simple3;
	   when s_49simple3=>
	   state<=s_50simple3;	
      when s_50simple3=>
	   state<=s_51simple3;
      when s_51simple3=>
	   state<=s_52simple3;
      when s_52simple3=>
		state<=s_53simple3;
		when s_53simple3=>
		state<=s_54simple3;
		when s_54simple3=>
		state<=s_55simple3;
		when s_55simple3=>
		state<=s_56simple3;
		when s_56simple3=>
		state<=s_57simple3;
		when s_57simple3=>
		state<=s_58simple3;
		when s_58simple3=>
		state<=s_59simple3;
		when s_59simple3=>
		state<=s_60simple3;
		when s_60simple3=>
		endff<='1';
		state<=s_61simple3;
		when s_61simple3=>
		flagMMU<='1';
	   Qindummy<=Qin;
	   Qaddrssoutval<=Qinaddrsdummy;
	   state<=s_1a;
--		end if;
		
		
		when s_1dimer2=>
		if en5='1' then
	   state<=s_1a;
	    else
       flagMMU<='0';--- MMU gives address
		 Qinaddrsdummy<=Qaddrss;
	   state<=s_2dimer2; 
		end if;
	   when s_2dimer2=>
	   state<=s_3dimer2;
	   when s_3dimer2=>
	   state<=s_4dimer2;
	   when s_4dimer2=>
	   state<=s_5dimer2;
	   when s_5dimer2=>
	   state<=s_6dimer2;
	   when s_6dimer2=>
	   state<=s_7dimer2;
	   when s_7dimer2=>
	   state<=s_8dimer2;
	   when s_8dimer2=>
	   state<=s_9dimer2;
	   when s_9dimer2=>
	   state<=s_10dimer2;
	   when s_10dimer2=>
	   state<=s_11dimer2;
	   when s_11dimer2=>
	   state<=s_12dimer2;
	   when s_12dimer2=>
	   state<=s_13dimer2;
	   when s_13dimer2=>
	   state<=s_14dimer2;
	   when s_14dimer2=>
	   state<=s_15dimer2;
	   when s_15dimer2=>
	   state<=s_16dimer2;
	   when s_16dimer2=>
	   state<=s_17dimer2;
	   when s_17dimer2=>
	   state<=s_18dimer2;
	   when s_18dimer2=>
	   state<=s_19dimer2;
	   when s_19dimer2=>
	   state<=s_20dimer2;
	   when s_20dimer2=>
	   state<=s_21dimer2;
	   when s_21dimer2=>
	   state<=s_22dimer2;
	   when s_22dimer2=>
	   state<=s_23dimer2;
	   when s_23dimer2=>
	   state<=s_24dimer2;
	   when s_24dimer2=>
	   state<=s_25dimer2;
	   when s_25dimer2=>
	   state<=s_26dimer2;
	   when s_26dimer2=>
	   state<=s_27dimer2;
	   when s_27dimer2=>
	   state<=s_28dimer2;
	   when s_28dimer2=>
	   state<=s_29dimer2;
	   when s_29dimer2=>
	   state<=s_30dimer2;
	   when s_30dimer2=>
	   --flagMMU<='0';
	   state<=s_31dimer2;
	   when s_31dimer2=>
	   state<=s_32dimer2;
	   when s_32dimer2=>
		--enfsmpe<='0';
	   state<=s_33dimer2;
	   when s_33dimer2=>
		--enfsmpe<='0';
	   state<=s_34dimer2;
	   when s_34dimer2=>
		enfsmpe<='0';
	   state<=s_35dimer2;
	   when s_35dimer2=>
		--enfsmpe<='0';
	   state<=s_36dimer2;
	   when s_36dimer2=>
	   state<=s_37dimer2;
	   when s_37dimer2=>
	   state<=s_38dimer2;
	   when s_38dimer2=>
	   state<=s_39dimer2;
	   when s_39dimer2=>
	   state<=s_40dimer2;
	   when s_40dimer2=>
	   state<=s_41dimer2;
	   when s_41dimer2=>
	   state<=s_42dimer2;
	   when s_42dimer2=>
	   state<=s_43dimer2;
	   when s_43dimer2=>
	   state<=s_44dimer2;
	   when s_44dimer2=>
	   state<=s_45dimer2;
	   when s_45dimer2=>
	   state<=s_46dimer2;
	   when s_46dimer2=>
	   state<=s_47dimer2;
	   when s_47dimer2=>
	   state<=s_48dimer2;
	   when s_48dimer2=>
	   state<=s_49dimer2;
		when s_49dimer2=>
	   state<=s_50dimer2;
		when s_50dimer2=>
	   state<=s_51dimer2;
		when s_51dimer2=>
	   state<=s_52dimer2;
		when s_52dimer2=>
	   state<=s_53dimer2;
		when s_53dimer2=>
	   state<=s_54dimer2;
		when s_54dimer2=>
	   state<=s_55dimer2;
		when s_55dimer2=>
	   state<=s_56dimer2;
		when s_56dimer2=>
	   state<=s_57dimer2;
		when s_57dimer2=>
	   state<=s_58dimer2;
		when s_58dimer2=>
	   state<=s_59dimer2;
		when s_59dimer2=>
	   state<=s_60dimer2;
		when s_60dimer2=>
	   state<=s_61dimer2;
		when s_61dimer2=>
		state<=s_62dimer2;
		when s_62dimer2=>
		state<=s_63dimer2;
		when s_63dimer2=>
		state<=s_64dimer2;
		when s_64dimer2=>
		state<=s_65dimer2;
		when s_65dimer2=>
		state<=s_66dimer2;
		when s_66dimer2=>
		state<=s_67dimer2;
		when s_67dimer2=>
		state<=s_68dimer2;
		when s_68dimer2=>
		endff<='1';
		state<=s_69dimer2;
		when s_69dimer2=>
		flagMMU<='1';
	   Qindummy<=Qin;
	   Qaddrssoutval<=Qinaddrsdummy;
	   state<=s_1a;
--		end if;
		
--		when s_1dimer3=>
--       flagMMU<='0';--- MMU gives address
--		 Qinaddrsdummy<=Qaddrss;
--	   state<=s_2dimer3; 
--	   when s_2dimer3=>
--	   state<=s_3dimer3;
--	   when s_3dimer3=>
--	   state<=s_4dimer3;
--	   when s_4dimer3=>
--	   state<=s_5dimer3;
--	   when s_5dimer3=>
--	   state<=s_6dimer3;
--	   when s_6dimer3=>
--	   state<=s_7dimer3;
--	   when s_7dimer3=>
--	   state<=s_8dimer3;
--	   when s_8dimer3=>
--	   state<=s_9dimer3;
--	   when s_9dimer3=>
--	   state<=s_10dimer3;
--	   when s_10dimer3=>
--	   state<=s_11dimer3;
--	   when s_11dimer3=>
--	   state<=s_12dimer3;
--	   when s_12dimer3=>
--	   state<=s_13dimer3;
--	   when s_13dimer3=>
--	   state<=s_14dimer3;
--	   when s_14dimer3=>
--	   state<=s_15dimer3;
--	   when s_15dimer3=>
--	   state<=s_16dimer3;
--	   when s_16dimer3=>
--	   state<=s_17dimer3;
--	   when s_17dimer3=>
--	   state<=s_18dimer3;
--	   when s_18dimer3=>
--	   state<=s_19dimer3;
--	   when s_19dimer3=>
--	   state<=s_20dimer3;
--	   when s_20dimer3=>
--	   state<=s_21dimer3;
--	   when s_21dimer3=>
--	   state<=s_22dimer3;
--	   when s_22dimer3=>
--	   state<=s_23dimer3;
--	   when s_23dimer3=>
--	   state<=s_24dimer3;
--	   when s_24dimer3=>
--	   state<=s_25dimer3;
--	   when s_25dimer3=>
--	   state<=s_26dimer3;
--	   when s_26dimer3=>
--	   state<=s_27dimer3;
--	   when s_27dimer3=>
--	   state<=s_28dimer3;
--	   when s_28dimer3=>
--	   state<=s_29dimer3;
--	   when s_29dimer3=>
--	   state<=s_30dimer3;
--	   when s_30dimer3=>
--	   --flagMMU<='0';
--	   state<=s_31dimer3;
--	   when s_31dimer3=>
--	   state<=s_32dimer3;
--	   when s_32dimer3=>
--		--enfsmpe<='0';
--	   state<=s_33dimer3;
--	   when s_33dimer3=>
--		--enfsmpe<='0';
--	   state<=s_34dimer3;
--	   when s_34dimer3=>
--		enfsmpe<='0';
--	   state<=s_35dimer3;
--	   when s_35dimer3=>
--		--enfsmpe<='0';
--	   state<=s_36dimer3;
--	   when s_36dimer3=>
--	   state<=s_37dimer3;
--	   when s_37dimer3=>
--	   state<=s_38dimer3;
--	   when s_38dimer3=>
--	   state<=s_39dimer3;
--	   when s_39dimer3=>
--	   state<=s_40dimer3;
--	   when s_40dimer3=>
--	   state<=s_41dimer3;
--	   when s_41dimer3=>
--	   state<=s_42dimer3;
--	   when s_42dimer3=>
--	   state<=s_43dimer3;
--	   when s_43dimer3=>
--	   state<=s_44dimer3;
--	   when s_44dimer3=>
--	   state<=s_45dimer3;
--	   when s_45dimer3=>
--	   state<=s_46dimer3;
--	   when s_46dimer3=>
--	   state<=s_47dimer3;
--	   when s_47dimer3=>
--	   state<=s_48dimer3;
--	   when s_48dimer3=>
--	   state<=s_49dimer3;
--		when s_49dimer3=>
--	   state<=s_50dimer3;
--		when s_50dimer3=>
--	   state<=s_51dimer3;
--		when s_51dimer3=>
--	   state<=s_52dimer3;
--		when s_52dimer3=>
--	   state<=s_53dimer3;
--		when s_53dimer3=>
--	   state<=s_54dimer3;
--		when s_54dimer3=>
--	   state<=s_55dimer3;
--		when s_55dimer3=>
--	   state<=s_56dimer3;
--		when s_56dimer3=>
--	   state<=s_57dimer3;
--		when s_57dimer3=>
--	   state<=s_58dimer3;
--		when s_58dimer3=>
--	   state<=s_59dimer3;
--		when s_59dimer3=>
--	   state<=s_60dimer3;
--		when s_60dimer3=>
--	   state<=s_61dimer3;
--		when s_61dimer3=>
--		state<=s_62dimer3;
--		when s_62dimer3=>
--		state<=s_63dimer3;
--		when s_63dimer3=>
--		state<=s_64dimer3;
--		when s_64dimer3=>
--		state<=s_65dimer3;
--		when s_65dimer3=>
--		state<=s_66dimer3;
--		when s_66dimer3=>
--		state<=s_67dimer3;
--		when s_67dimer3=>
--		state<=s_68dimer3;
--		when s_68dimer3=>
--		state<=s_69dimer3;
--		when s_69dimer3=>
--		flagMMU<='1';
--	   Qindummy<=Qin;
--	   Qaddrssoutval<=Qinaddrsdummy;
--	   state<=s_1a;
		
		when others =>
         state<=s_1a;
			 
			 end case;
			 
			 end if;
			 
			 --else
			 --state<=s_1b;
		   end if;
		 end process;
Qoutval<=Qindummy;
--Qaddrssoutval<=Qinaddrsdummy;
end Behavioral;