----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:00:35 08/21/2011 
-- Design Name: 
-- Module Name:    FSMfinal - Behavioral 
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

entity UARTDDRFSM is
port( clk,ce,restart,rdyout,flagMMU,mode,go,continue,sclrseed,simindepentent,gostat,statistics:in std_logic;
      fifo_write:in std_logic;
	   afromminval,afromminval1,afromminval2,afromminval3,afromminval4,Qstopaddress:in std_logic_vector(8 downto 0);
		Qinsel:in std_logic_vector(7 downto 0);
		Qoutsel1,Qoutsel2,Qoutsel3,Qoutsel4:out std_logic_vector(7 downto 0);
	   --K:in std_logic_vector(31 downto 0);
		--mux_int:in std_logic_vector(2 downto 0);
		apoint1,apoint2,apoint3,apoint4,apoint5,apoint6,apoint7,apoint8,apoint1a,apoint2a,apoint3a,apoint4a,apoint5a,apoint6a,apoint7a,apoint8a,apoint1b,apoint2b,apoint3b,apoint4b,apoint5b,apoint6b,apoint7b,apoint8b,apoint1c,apoint2c,apoint3c,apoint4c,apoint5c,apoint6c,apoint7c,apoint8c:in std_logic_vector(31 downto 0);
		Qspeciesupdate1,Qspeciesupdate2,Qspeciesupdate3,Qspeciesupdate4,Qspeciesupdate5,Qspeciesupdate6,Qspeciesupdate7,Qspeciesupdate8,
		Qspeciesupdate1a,Qspeciesupdate2a,Qspeciesupdate3a,Qspeciesupdate4a,Qspeciesupdate5a,Qspeciesupdate6a,Qspeciesupdate7a,Qspeciesupdate8a,
		Qspeciesupdate1b,Qspeciesupdate2b,Qspeciesupdate3b,Qspeciesupdate4b,Qspeciesupdate5b,Qspeciesupdate6b,Qspeciesupdate7b,Qspeciesupdate8b,
		Qspeciesupdate1c,Qspeciesupdate2c,Qspeciesupdate3c,Qspeciesupdate4c,Qspeciesupdate5c,Qspeciesupdate6c,Qspeciesupdate7c,Qspeciesupdate8c:in std_logic_vector(31 downto 0);
      Qinspecies,ainstat:in std_logic_vector(31 downto 0);
		Qpointers1,Qpointers2,Qpointers3,Qpointers4:in std_logic_vector(287 downto 0);
		Qinstoichiometry:in std_logic_vector(255 downto 0);
		apoint1aa,apoint2aa,apoint3aa,apoint4aa,apoint5aa,apoint6aa,apoint7aa,apoint8aa,Qspeciesupdate1aa,Qspeciesupdate2aa,Qspeciesupdate3aa,Qspeciesupdate4aa,Qspeciesupdate5aa,Qspeciesupdate6aa,Qspeciesupdate7aa,Qspeciesupdate8aa:in std_logic_vector(31 downto 0);
		Qst:out std_logic_vector(255 downto 0);
		Qoutsp,Qoutsp1,Qoutsp2,Qoutsp3,Qoutsp4:out std_logic_vector(31 downto 0);
		Qoutpointers1,Qoutpointers2,Qoutpointers3,Qoutpointers4:out std_logic_vector(287 downto 0);
		a,ap1,ap2,ap3:out std_logic_vector(8 downto 0);
		muxintsimindi:out std_logic_vector(2 downto 0);
	   ena,saddsub,en1,en2,en3,en4,en5,enr,enr1,enr2,enr3,wep,we,westoichio,westat,rstmin,enfromFSM,wechain,selFSM,selFSM2,selFSM3,seltr,cetr,rstaddrepeat,switchST,FSMstat,cestat,cetrint,rstflagmmu,selrww:out std_logic;
		a1,a2,a3,a4,aoutstat:out std_logic_vector(31 downto 0));
end UARTDDRFSM;architecture Behavioral of UARTDDRFSM is

type states is(s_stop,s_stopb,s_stop2,s_stop2b,s_stop2c,s_stop2d,s_stop3,s_stop3b,s_stop4,s_stop4b,s_start,s_1a,s_1,s_2,s_mode2,s_3,s_mode3,s_4,s_mode4,s_mode3b,s_64,s_mode64,s_64a,s_66aa1,s_66aa2,s_66aa3,s_mode64a,s_66a,s_mode66aa,s_mode66aa1,s_mode66aa2,s_mode66aa3,s_mode66aa4,s_mode66a,s_65a,s_mode65a,s_65b,s_mode65b,s_65c,s_mode65c,s_65d,s_mode65d,s_65e,s_mode65e,s_65f,s_mode65f,s_65g,s_mode65g,s_65h,s_mode65h,s_65i,s_mode65i,s_65j,s_mode65j,s_65k,s_mode65k,s_65l,s_mode65l,s_65m,s_mode65m,s_65n,s_w65,s_65ldff1,s_65l1,s_65l2,s_modew65,s_delay1,s_delay2,s_mode65l1,s_mode65ldff1,s_mode65ldff2,s_mode65ldff3,s_65,s_65l3,s_65l4,s_mode65,s_delay3,s_delay4,s_mode65l2,s_67a,s_65l5,s_65l6,s_mode67a,s_delay5,s_delay6,s_mode65l3,s_67b,s_65l7,
s_65l8,s_mode67b,s_mode65l4,s_mode65e5,s_mode65e6,s_mode65e7,s_mode65e8,s_mode65e9,s_mode65e10,s_mode65e11,s_mode65e12,s_mode65e13,s_mode65e14,s_mode65e15,s_mode65e16,s_mode65e17,s_mode65e18,s_mode65e19,s_mode65e20,s_modestatwrite1,s_modestatwrite2,s_modestatwrite3,s_modestatwrite4,s_modestatwrite5,s_modestatwrite6,s_modestatwrite7,
s_67,s_mode67,s_mode3c,s_halt,s_stat1,statdelay1,statdelay2,statdelay3,statdelay4,statdelay5,s_start1,s_start2,s_start3,
s_mode1indi,s_mode2indi,s_mode3indi,s_mode4indi,s_mode3bindi,s_mode64indi,s_64aindi,s_66aa1indi,s_66aa2indi,s_66aa3indi,s_66aa4indi,s_66aa5indi,s_66aindi,s_65aindi,s_65bindi,s_65cindi,s_65dindi,s_65eindi,s_65findi,s_65gindi,s_65hindi,s_65iindi,s_65jindi,s_65kindi,s_65lindi,s_65mindi,s_65nindi,s_65oindi,s_w65indi,
s_65indidff1,s_65indidff1_1,s_65indidff1_2,s_65indidff1_3,s_delay1indi,s_delay1bindi,s_delay1cindi,s_65indil1,s_65indi,s_delay2indi,s_delay3indi,s_delay3bindi,s_delay3cindi,s_65indil2,s_65indil3,s_delay4indi,s_delay5indi,s_delay6indi,s_65indil4,s_delay7indi,s_delay8indi,s_delay9indi,
s_65indil5,s_delay10indi,s_delay11indi,s_65indil6,s_65indie7,s_65indie8,s_65indie9,s_65indie10,s_65indie11,s_65indie12,s_65indie13,s_65indie14,s_65indie15,s_65indie16,s_65indie17,s_65indie18,s_65indie19,s_65indie20,s_65indie21,s_65indie22,s_65indie23,s_65indie24,s_65indie25,s_65indie26,
s_65aindil7d,s_66aindil7,s_65aindil7,s_65bindil7,s_65cindil7,s_65dindil7,s_65eindil7,s_65findil7,s_65gindil7,s_65hindil7,s_65iindil7,s_65jindil7,s_65kindil7,s_65lindil7,s_65mindil7,s_65nindil7,s_w65indil7,
s_65indidff1l7,s_delay1indil7,
s_delay12indi,s_delay13indi,s_65indil7,s_delay14indi,s_delay15indi,s_65indil8,s_delay16indi,s_delay17indi,s_65indil9,s_delay18indi,s_delay19indi,s_65indil10,s_delay20indi,s_delay21indi,s_65indil11,
s_delay22indi,s_65indil12,s_delay23indi,s_delay24indi,s_65indil13,s_delay25indi,s_delay26indi,s_65indil14,s_65aindil15d,s_66aindil15,s_65aindil15,s_65bindil15,s_65cindil15,s_65dindil15,s_65eindil15,s_65findil15,s_65gindil15,s_65hindil15,s_65iindil15,s_65jindil15,s_65kindil15,s_65lindil15,s_65mindil15,s_65nindil15,s_w65indil15,
s_65indidff1l15,
s_delay27indi,s_delay28indi,s_65indil15,s_delay29indi,s_delay30indi,s_65indil16,s_delay31indi,s_65indil17,
s_65indil18,s_65indil19,s_65indil20,s_65indil21,s_65indil22,s_66aindil23,s_65aindil23d,s_65aindil23,s_65bindil23,s_65cindil23,s_65dindil23,s_65eindil23,s_65findil23,s_65gindil23,s_65hindil23,s_65iindil23,s_65jindil23,s_65kindil23,s_65lindil23,s_65mindil23,s_65nindil23,s_w65indil23,
s_65indidff1l23,s_start1b,s_start1d,s_start1c,s_start1e,s_start1f,
s_65indil23,s_65indil24,s_65indil25,s_65indil26,s_65indil27,s_65indil28,
s_65indil29,s_65indil30,s_65indil31,s_mode3cindi,
s_mode65l_11,s_mode65l1b,s_mode65l1c,s_delay1b,s_delay1c,s_delay4b,s_delay4c,s_delay4d,s_delay6b,s_delay6c,s_mode65e8b,s_mode65e9b,s_mode65e12b,s_mode65e12c,s_mode65e16b,s_mode65e16c,s_mode65e20b,s_mode65e20c);
signal state, previous_state: states;
signal aint,aintr,ainfoint,Qintreactions:std_logic_vector(8 downto 0):="000000000";
signal aintsp1,astat:std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal stop512,stop2k,simindi,modeint,contint,statint,NRMint,selNRM:std_logic:='0';
signal Nstop:std_logic_vector(31 downto 0):="00000000000000000001000000000000";
signal Qoutsel4int:std_logic_vector(7 downto 0);
begin
process(clk,ce,stop512,restart,rdyout,stop2k,flagMMU,mode,go,sclrseed,Qstopaddress,simindepentent,gostat,statistics)
begin
 
 if clk'event and clk='1' then
 
    if ce='1' then 
	        
		case state is
		
		when s_stop=>
		if fifo_write='1' then
		 Qoutsel1<=Qinsel;
		  enr<='0';-------DFF enable for MUX update species
		 state<=s_stopb;
		 else
		 enr<='0';
       state<=s_stop;
      end if;
		
		when s_stopb=>
		enr<='1';
		state<=s_stop2;
		
		when s_stop2=>
		enr<='0';
		if fifo_write='1' then
		 Qintreactions<=('0'&Qinsel);
		  state<=s_stop2b;
		 else
       state<=s_stop2;
       end if;	
		 
		when s_stop2b=>
		 Qintreactions<=('0'&Qinsel);
		state<=s_stop2c;
		 
		 when s_stop2c=>
		if fifo_write='1' then
		-- Qintreactions<=('0'&Qinsel); -------continue signals
	    Qoutsel2<=Qinsel;
		 enr3<='0';
		  state<=s_stop2d;
		 else
		 enr3<='0';
       state<=s_stop2c;
       end if;	
		 
		 when s_stop2d=>
		enr3<='1';
		state<=s_stop3;
		
		 when s_stop3=>
		 enr3<='0';
		if fifo_write='1' then
		 Qoutsel3<=Qinsel;
		  enr2<='0';-------DFF seed
		 state<=s_stop3b;
		 else
		 enr2<='0';
       state<=s_stop3;
      end if;		

         when s_stop3b=>	
			enr2<='1';
			state<=s_stop4;
			
		when s_stop4=>
		 enr2<='0';
		if fifo_write='1' then
		 Qoutsel4<=Qinsel;
		 Qoutsel4int<=Qinsel;
		  --enr2<='0';-------FSM internal
		 state<=s_stop4b;
		 else
		 --enr2<='0';
       state<=s_stop4;
      end if;	

      when s_stop4b=>
		 Qoutsel4<=Qinsel;
		 Qoutsel4int<=Qinsel;
		state<=s_start;		
		
		when s_start=>
		   enr2<='0';
			simindi<=Qoutsel4int(1);modeint<=Qoutsel4int(0);contint<=Qoutsel4int(3);statint<=Qoutsel4int(2);
		   ena<='0';
			saddsub<='0';
			enfromFSM<='0';rstaddrepeat<='0';
			selFSM2<='0';cestat<='0';selrww<='0';
			selFSM3<='0';FSMstat<='0';rstflagmmu<='0';
			we<='0';westoichio<='0';wep<='0';
			rstmin<='0';westat<='0';cetrint<='0';
			en1<='0'; en2<='0'; en3<='0'; en4<='0';en5<='0';
			state<=s_1a;
			
			when s_1a=>
                        rstflagmmu<='0';
			if simindi='0' then
			switchST<='0';--------take from FIRSTmem to PE
			state<=s_1;
			else
			switchST<='1';--------take from second mem indi
			state<=s_mode1indi;
			end if;
			
			when s_1=> ----- edw dinei h mnhmh pointers thn prwth timh 
		if modeint='0' then
			saddsub<='0';
			--prg<="00";
			seltr<='0';--------time update first value
			en1<='1'; ----------en PE
			en2<='0'; en3<='0'; en4<='0';
			we<='0';wep<='0';
			enfromFSM<='0';
			selFSM2<='0';
			--aint<=aint+1;
		   a<=aint;
			cetr<='0';
			seltr<='0';-----------MUX tou time show
			ap1<=aint;
			ap2<=aint;
			ap3<=aint;
			rstmin<='1';
			state<=s_2;
			else 
			en2<='0'; en3<='0'; en4<='1';en5<='0';
			en1<='1'; ----------en PE
			we<='0';wep<='0';
			enfromFSM<='0';
			selFSM2<='0';
			--aint<=aint+1;
		   a<=aint;
			cetr<='0';
			seltr<='0';-----------MUX tou time show
			ap1<=aint;
			ap2<=aint;
			ap3<=aint;
			rstmin<='1';
			state<=s_mode2;
			end if;
			
			
			when s_2=> -----1 ginetai to prwto compare
			if rdyout='1' then
			rstmin<='0';
			ena<='1';
			aint<=aint+1;
		   a<=aint;
			ap1<=aint;
			ap2<=aint;
			ap3<=aint;
			selFSM2<='0';
			state<=s_3;
			else state<=s_2;
			end if;
			
			when s_3=> -----2
			if flagMMU='1' then
			rstmin<='0';ena<='1';
			selFSM2<='0';
			if aint="000010011" then
			--if aint=Qstopaddress then
		    stop512<='1';
		    else stop512<='0';
		   end if;
			state<=s_4;
			else
			state<=s_3;
			end if;
							
			when s_4=> -----3
			if stop512='1' then
			en1<='0';en2<='0'; en3<='0'; en4<='0';
			aint<="000000000";
			state<=s_64;
			else
			aint<=aint+1;
			  a<=aint;
			ap1<=aint;
			ap2<=aint;
			ap3<=aint;
			state<=s_3;
			end if;
						
			when s_64=> -----64
			ena<='0';
			selFSM2<='1';-------pare pointers apo address from min val
		     a<=afromminval;-----show were to update
			ap1<=afromminval;
			ap2<=afromminval;
			ap3<=afromminval;
         --muxpoint<=mux_int;			
			state<=s_64a;
			------------------------------------------4cycles
			when s_64a=>
			state<=s_66aa1;---------time for internal species
			
			when s_66aa1=>
			state<=s_66aa2;---------time for internal species
			
			when s_66aa2=>
			state<=s_66aa3;---------time for internal species
			
			when s_66aa3=>
			state<=s_66a;---------time for internal species
			-------------------------------------------------------
			when s_66a=> -----add sub 
			saddsub<='1';
			we<='0';
			state<=s_65a;
			
			when s_65a=> --1
			state<=s_65b;
			
			when s_65b=> --2
			state<=s_65c;
			
			when s_65c=> --3
			state<=s_65d;
			
			when s_65d=> --4
			state<=s_65e;
			
			when s_65e=> --5
			state<=s_65f;
			
			when s_65f=> --6
			state<=s_65g;
			
			when s_65g=> --7
			state<=s_65h;
			
			when s_65h=> --8
			state<=s_65i;
			
			when s_65i=> --9
			state<=s_65j;
			
			when s_65j=> --9
			state<=s_65k;
			
			when s_65k=> --10
			state<=s_65l;
			
			when s_65l=> --11
			state<=s_65m;
			
			when s_65m=> --12
			en2<='1';
			state<=s_65n;
			
			when s_65n=> --11
			ena<='0';en2<='1';
			saddsub<='0';
			enfromFSM<='1';
			--we<='1';
			selFSM<='1';
			selFSM2<='0';
			state<=s_w65;
			
			when s_w65=>
			enfromFSM<='0';
			we<='0';en2<='0';
			a1<=apoint1;
			state<=s_65ldff1;
         
			when s_65ldff1=>
			Qoutsp<=Qspeciesupdate1;
			state<=s_65l1;
			--------------------------2 cycles latency
			when s_65l1=> --12
			we<='1';
			state<=s_65;
			------------------------------------------------			
			when s_65=> ----- update
			we<='0';
			Qoutsp<=Qspeciesupdate2;
			a1<=apoint2;-----show were to update
			state<=s_65l3;
			-------------------------------------------------------
			when s_65l3=> --12
			we<='1';
			state<=s_67a;
			--------------------------------------2 cycles
--			when s_65l4=> --12
--			state<=s_67a;
			--------------------------------------------------------------
			when s_67a=>
			we<='0';
			a1<=apoint3;-----show were to update
			Qoutsp<=Qspeciesupdate3;
			state<=s_65l5;
			--------------------------------------------------------
			when s_65l5=> --12
			we<='1';
			state<=s_67b;
			--------------------------------------2 cycles
--			when s_65l6=> --12
--			state<=s_67b;
			--------------------------------------------------------------
			when s_67b=>
			we<='0';
			a1<=apoint4;-----show were to update
			Qoutsp<=Qspeciesupdate4;
			state<=s_65l7;
			---------------------------------------------
			when s_65l7=> --12
			we<='1';
			state<=s_67;
	
				
			when s_67=> -----update end restart
			we<='0';
			--en1<='0'; en2<='0'; en3<='0'; en4<='0';
			saddsub<='0';
			enfromFSM<='0';
			selFSM<='0';selFSM2<='0';rstmin<='1';
			if restart='1' then 
			state<=s_start;
			else
			en2<='0'; en3<='1'; en4<='1';
			en1<='1'; ----------en PE
			state<=s_3;-------htan s_1
			end if;
			
--------------------------------***************-------------------------------------------
         when s_mode2=> -----1 ginetai to prwto compare
			if go='0' then
			if sclrseed='0' then
			if rdyout='1' then
			en4<='1';en5<='1';
			rstmin<='0';
			ena<='1';--------
			cetr<='0';
			aint<=aint+1;
		   a<=aint;
			ap1<=aint;
			ap2<=aint;
			ap3<=aint;
			selFSM2<='0';
			state<=s_mode3;
			else 
			en4<='0';
			state<=s_mode2;
			end if;
		   else
		   state<=s_1;
			end if;
			else
         state<=s_halt;
        end if;  			
			
			when s_mode3=> -----2
			FSMstat<='0';rstflagmmu<='0';en5<='0'; ----------take address from FSM
		  if go='0' then
		   if sclrseed='0' then
			if flagMMU='1' then
			selFSM2<='0';rstmin<='0';ena<='1';---rstaddrepeat<='0';
			--if aint="100111100" then
			if aint="010001000" then --61
			--if aint=Qstopaddress then
			--if aint=Qintreactions then
			rstaddrepeat<='0';
		    stop512<='1';
		    else 
			 stop512<='0';
		   end if;
			state<=s_mode4;
			else
			state<=s_mode3;
			end if;
			else
			state<=s_1;
			end if;
			else
			state<=s_halt;
			end if;
			
							
			when s_mode4=> -----3   
			en4<='0';en5<='1';
			if stop512='1' then
			en1<='1';en2<='0'; en3<='0'; en4<='0';en5<='1';ena<='0';
			aint<="000000000";
			--a<=aint;
			state<=s_mode64;
			else
			rstflagmmu<='1';
			aint<=aint+1;
			  a<=aint;
			ap1<=aint;
			ap2<=aint;
			ap3<=aint;
			state<=s_mode3b;
			end if;
			
			when s_mode3b=> -----3 
			en4<='1';en5<='0';
			state<=s_mode3;
						
			when s_mode64=> -----64	
			ena<='0';en1<='0';en2<='0'; en3<='0'; en4<='0';en5<='1';
			selFSM2<='1';-------pare pointers apo address from min val
		     a<=afromminval;-----show were to update
			ap1<=afromminval;
			ap2<=afromminval;
			ap3<=afromminval;
			--cetr<='1';-------------updatetime
         --muxpoint<=mux_int;			
			state<=s_mode64a;			
			
			when s_mode64a=>
			--cetr<='0';
			rstflagmmu<='1';
			state<=s_mode66aa;---------time for internal species
			
			when s_mode66aa=>
			state<=s_mode66aa1;---------time for internal species
			
			when s_mode66aa1=>
			state<=s_mode66aa2;---------time for internal species
			
			when s_mode66aa2=>
			state<=s_mode66aa3;---------time for internal species
			
			when s_mode66aa3=>
			state<=s_mode66a;---------time for internal species
			
			when s_mode66a=> -----add sub 
			saddsub<='1';
			we<='0';
--			a1<=apoint1;
--		   a2<=apoint2;
--			a3<=apoint3;
--			a4<=apoint4;
		--	en1<='1'; en2<='1'; en3<='1'; en4<='1';
			state<=s_mode65a;
			
			when s_mode65a=> --1
			cetr<='1';
			state<=s_mode65b;
			
			when s_mode65b=> --2
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65c;
			end if;
			
			when s_mode65c=> --3
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65d;
			end if;
			
			when s_mode65d=> --4
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65e;
			end if;
			
			when s_mode65e=> --5
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65f;
			end if;
			
			when s_mode65f=> --6
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65g;
			end if;
			
			when s_mode65g=> --7
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65h;
			end if;
			
			when s_mode65h=> --8
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65i;
			end if;
			
			when s_mode65i=> --9
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65j;
			end if;
			
			
			when s_mode65j=> --9
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65k;
			end if;
			
			when s_mode65k=> --10
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65l;
			end if;
			
			when s_mode65l=> --11
			en2<='0';
			if go='1' then ---------!!!!------------------------------
			state<=s_halt;
			else
			state<=s_mode65m;
			end if;
			
			when s_mode65m=> --11
			ena<='0';cetr<='0';--en2<='0';
			saddsub<='0';
			--enfromFSM<='1';
			--we<='1';
			selFSM2<='0';
			selFSM<='1';en2<='1';
			if go='1' then ----------------!!!!!!-----------------------
			state<=s_halt;
			else
			state<=s_modew65;
			end if;
			
			when s_modew65=>
			if go='1' then ----------------****!!!!!!-----------------------
			state<=s_halt;
			else
			enfromFSM<='1';
			we<='0';en2<='0';
			a1<=apoint1;
			state<=s_mode65ldff1;
			end if;
			
			when s_mode65ldff1=>
			if go='1' then ----------------****!!!!!!-----------------------
			state<=s_halt;
			else
			state<=s_mode65ldff2;
			end if;
			
			when s_mode65ldff2=>
			--enfromFSM<='0';
			if go='1' then ----------------****!!!!!!-----------------------
			state<=s_halt;
			else
			state<=s_mode65ldff3;
			end if;
         
			when s_mode65ldff3=>
			--enfromFSM<='0';
			Qoutsp<=Qspeciesupdate1;
			state<=s_mode65l_11;
			
			when s_mode65l_11=>
			state<=s_mode65l1b;
			
			when s_mode65l1b=>
			enfromFSM<='0';
			state<=s_mode65l1c;
			
			when s_mode65l1c=>
			state<=s_mode65l1;
 
			when s_mode65l1=>
			we<='1';
			state<=s_mode65;
			
			when s_mode65=> ----- update
			we<='0';
			Qoutsp<=Qspeciesupdate2;
			a1<=apoint2;-----show were to update
			state<=s_delay1;
			
			when s_delay1=>
			state<=s_delay2;
			
			when s_delay2=>
			state<=s_delay1b;
			
			when s_delay1b=>
			state<=s_delay1c;
			
			when s_delay1c=>
			state<=s_mode65l2;--------------2 cycles delay
			
			when s_mode65l2=>
			we<='1';
			state<=s_mode67a;
			
			when s_mode67a=>
			we<='0';
			a1<=apoint3;-----show were to update
			Qoutsp<=Qspeciesupdate3;
			state<=s_delay3;
			
			when s_delay3=>
			state<=s_delay4b;
			
			when s_delay4b=>
			state<=s_delay4c;
			
			when s_delay4c=>
			state<=s_delay4d;
			
			when s_delay4d=>
			state<=s_mode65l3;--------------2 cycles delay
			
			when s_mode65l3=>
			we<='1';
			state<=s_mode67b;
			
			when s_mode67b=>
			we<='0';
			a1<=apoint4;-----show were to update
			Qoutsp<=Qspeciesupdate4;
			state<=s_delay5;
			
			when s_delay5=>
			state<=s_delay6b;
			
			when s_delay6b=>
			state<=s_delay6c;
			
			when s_delay6c=>
			state<=s_delay6;
			
			when s_delay6=>
			state<=s_mode65l4;--------------2 cycles delay
			
			when s_mode65l4=>
			we<='1';
			state<=s_mode65e5;
			
			when s_mode65e5=>
			we<='0';
			a1<=apoint5;-----show were to update
			Qoutsp<=Qspeciesupdate5;
			state<=s_mode65e6;
			
			when s_mode65e6=>
			state<=s_mode65e7;
			
			when s_mode65e7=>
			state<=s_mode65e8;--------------2 cycles delay
			
			when s_mode65e8=>
			state<=s_mode65e8b;--------------2 cycles delay
			
			when s_mode65e8b=>
			state<=s_mode65e9b;--------------2 cycles delay
			
			when s_mode65e9b=>
			we<='1';
			state<=s_mode65e9;
			
			when s_mode65e9=>
			we<='0';
			a1<=apoint6;-----show were to update
			Qoutsp<=Qspeciesupdate6;
			state<=s_mode65e10;
			
			when s_mode65e10=>
			state<=s_mode65e11;
			
			when s_mode65e11=>
			state<=s_mode65e12;--------------2 cycles delay
			
			when s_mode65e12=>
			state<=s_mode65e12b;--------------2 cycles delay
			
			when s_mode65e12b=>
			state<=s_mode65e12c;--------------2 cycles delay
			
			when s_mode65e12c=>
			we<='1';
			state<=s_mode65e13;
			
			when s_mode65e13=>
			we<='0';
			a1<=apoint7;-----show were to update
			Qoutsp<=Qspeciesupdate7;
			state<=s_mode65e14;
			
			when s_mode65e14=>
			state<=s_mode65e15;
			
			when s_mode65e15=>
			state<=s_mode65e16b;--------------2 cycles delay
			
			when s_mode65e16b=>
			state<=s_mode65e16c;--------------2 cycles delay
			
			when s_mode65e16c=>
			state<=s_mode65e16;--------------2 cycles delay
			
			when s_mode65e16=>
			we<='1';
			state<=s_mode65e17;
			
			when s_mode65e17=>
			we<='0';
			a1<=apoint8;-----show were to update
			Qoutsp<=Qspeciesupdate8;
			state<=s_mode65e18;
			
			when s_mode65e18=>
			state<=s_mode65e19;
			
			when s_mode65e19=>
			state<=s_mode65e20;--------------2 cycles delay
			
			when s_mode65e20=>
			state<=s_mode65e20b;--------------2 cycles delay
			
			when s_mode65e20b=>
			state<=s_mode65e20c;--------------2 cycles delay
			
			when s_mode65e20c=>
			we<='1';cetrint<='1';
			state<=s_modestatwrite1;
			
			when s_modestatwrite1=>
			we<='0';westat<='0';
			aoutstat<=astat;---------address gia to eswteriko statistics memory
						a1<=ainstat;---------pare opoio species mou pei o xrhsths
			state<=s_modestatwrite2;
			
			when s_modestatwrite2=>
			state<=s_modestatwrite3;
			
			when s_modestatwrite3=>
			state<=s_modestatwrite4;
			
			when s_modestatwrite4=>
			cetrint<='0';westat<='1';
			state<=s_modestatwrite5;
			
			when s_modestatwrite5=>
			state<=s_modestatwrite6; 
			
			when s_modestatwrite6=>
			state<=s_modestatwrite7; 
			
			when s_modestatwrite7=>
			westat<='0';
--			if astat=Nstop then ---------PROSOXH
--			state<=s_halt;
--			else
			astat<=astat+1;
			state<=s_mode67;
			--end if;
			
			when s_mode67=> -----update end restart
			we<='0';westat<='0';
			--en1<='0'; en2<='0'; en3<='0'; en4<='0';
			saddsub<='0';
			enfromFSM<='0';
			selFSM<='0';selFSM2<='0';rstmin<='1';
			if restart='1' then 
			state<=s_start;
			else
			seltr<='1';----------take second value
			en2<='0'; en3<='0'; en4<='1';en5<='1';
			en1<='1'; ----------en PE
			state<=s_mode3c;------------------htan s_1
			end if;	
			
			when s_mode3c=>
			en5<='0';
			state<=s_mode3;

         when s_halt=>
			astat<="00000000000000000000000000000000";selNRM<='0';
			if statint='1' then
			aint<="000000000";westat<='0';astat<="00000000000000000000000000000000";
			state<=s_stat1;
			else
         if contint='1' then
			seltr<='0';aint<="000000000";
         state<=s_start1;
         else
			if simindi='0' then
			if NRMint='1' then
			we<='0';cetr<='1';aintsp1<="00000000000000000000000000000000"; 
			--en1<='0'; en2<='0'; en3<='0'; en4<='0';en5<='1';
			saddsub<='0';selrww<='1';
			enfromFSM<='0';
			selFSM<='0';selFSM2<='0';rstmin<='1';
			seltr<='0';rstaddrepeat<='1';
			aint<="000000000";
			switchST<='0';
			en2<='0'; en3<='0'; en4<='1';en5<='1';
			en1<='1'; ----------en PE
		    --state<=s_NRMmode3;
			 --state<=s_1a;--
			 state<=s_start1;
			 else
			we<='0';cetr<='1';selrww<='1';aintsp1<="00000000000000000000000000000000"; 
			en1<='1'; en2<='0'; en3<='0'; en4<='0';en5<='1';
			saddsub<='0';
			enfromFSM<='0';
			selFSM<='0';selFSM2<='0';rstmin<='1';
			seltr<='0';rstaddrepeat<='1';
			aint<="000000000";
			switchST<='0';
			en2<='0'; en3<='0'; en4<='1';en5<='1';
			en1<='1'; ----------en PE---en1<='0';
         --state<=s_mode3;
			--state<=s_1; --s_start1
			state<=s_start1;
			end if;
			else
			if NRMint='1' then
			we<='0';cetr<='1';selrww<='1';
			en1<='1'; en2<='0'; en3<='0'; en4<='0';en5<='1';
			saddsub<='0';
			enfromFSM<='0';selrww<='1';
			selFSM<='0';selFSM2<='0';rstmin<='1';
			seltr<='0';rstaddrepeat<='1';
			aint<="000000000";aintsp1<="00000000000000000000000000000000"; 
			switchST<='1';
			en2<='0'; en3<='0'; en4<='1';en5<='1';
			en1<='1'; ----------en PE
			--state<=s_NRMmode3indi;
			--state<=s_1a; --s_start1
			state<=s_start1;
			else
			we<='0';cetr<='1';selrww<='1';
			en1<='1'; en2<='0'; en3<='0'; en4<='0';en5<='1';
			saddsub<='0';
			enfromFSM<='0';
			selFSM<='0';selFSM2<='0';rstmin<='1';
			seltr<='0';rstaddrepeat<='1';
			aint<="000000000";aintsp1<="00000000000000000000000000000000"; 
			switchST<='1';
			en2<='0'; en3<='0'; en4<='1';en5<='1';
			en1<='1'; ----------en PE
			--state<=s_mode3indi;
			--state<=s_1a; --s_start1
			state<=s_start1;
			end if;
         end if;
         end if;	
         end if;			
------------------------------------------------------STATISTICS---------------
         when s_stat1=>
	      FSMstat<='1';
			state<=statdelay1;
			
			when statdelay1=>
			state<=statdelay2;
			
			when statdelay2=>
			state<=statdelay3;
			
			when statdelay3=>
			state<=statdelay4;
			
			when statdelay4=>
			cestat<='1';----------goes to cenable fsm stat
			state<=statdelay5;
			
			when statdelay5=>
			if gostat='1' then
			cestat<='0';FSMstat<='0';
			we<='0';
			--en1<='0'; en2<='0'; en3<='0'; en4<='0';
			saddsub<='0';
			enfromFSM<='0';
			selFSM<='0';selFSM2<='0';rstmin<='1';
			seltr<='0';rstaddrepeat<='1';
			aint<="000000000";
			switchST<='1';
			en2<='0'; en3<='0'; en4<='1';en5<='1';
			en1<='1'; ----------en PE
			state<=s_mode3c;
			else
			state<=statdelay4;
			end if;
			
			
-------------------------------SIM_INDEPENDENT-------------------------------------------
         
			when s_mode1indi=>
			en2<='0'; en3<='0'; en4<='1';en5<='0';
			en1<='1'; ----------en PE
			we<='0';wep<='0';
			enfromFSM<='0';
			selFSM2<='0';
			--aint<=aint+1;
		   a<=aint;
			cetr<='0';
			seltr<='0';-----------MUX tou time show
			ap1<=aint;
			ap2<=aint;
			ap3<=aint;
			rstmin<='1';
			state<=s_mode2indi;
			
			when s_mode2indi=> -----1 ginetai to prwto compare
			if go='0' then
			if sclrseed='0' then
			if rdyout='1' then
			en4<='1';en5<='1';
			rstmin<='0';
			ena<='1';--------
			cetr<='0';
			aint<=aint+1;
		   a<=aint;
			ap1<=aint;
			ap2<=aint;
			ap3<=aint;
			selFSM2<='0';
			state<=s_mode3indi;
			else 
			en4<='0';
			state<=s_mode2indi;
			end if;
		   else
		   state<=s_1;
			end if;
			else
         state<=s_halt;
        end if;  		

        	when s_mode3indi=> -----2
			rstflagmmu<='0';en5<='0';
		  if go='0' then
		   if sclrseed='0' then
			if flagMMU='1' then
			--en4<='0';
			selFSM2<='0';rstmin<='0';--rstaddrepeat<='0';
			--if aint="100111100" then--316
			if aint="010001000" then
			rstaddrepeat<='0';
			--if aint=Qstopaddress then
			--if aint=Qintreactions then
		    stop512<='1';
		    else stop512<='0';
		   end if;
			state<=s_mode4indi;
			else
			state<=s_mode3indi;
			end if;
			else
			state<=s_1;
			end if;
			else
			state<=s_halt;
			end if;	  
			
			when s_mode4indi=> -----3
			en4<='0';en5<='1';
			if stop512='1' then
			en1<='1';en2<='0'; en3<='0'; en4<='0';en5<='1';ena<='0';
			aint<="000000000";
			--a<=aint;
			state<=s_mode64indi;
			else
			ena<='1';
			rstflagmmu<='1';
			aint<=aint+1;
			  a<=aint;
			ap1<=aint;
			ap2<=aint;
			ap3<=aint;
			state<=s_mode3bindi;
			end if;
			
			when s_mode3bindi=>
			en4<='1';en5<='0';
			state<=s_mode3indi;
			
			when s_mode64indi=>
			en1<='0';en2<='0'; en3<='0'; en4<='0';en5<='1';
         ena<='0';--muxintsimindi<="001";
			selFSM2<='0';selFSM<='0';-------pare pointers apo address from min val
		   a<=afromminval1;-----show were to update
			ap1<=afromminval2;
			ap2<=afromminval3;
			ap3<=afromminval4;
			cetr<='1';-------------updatetime
			state<=s_64aindi;
			
			when s_64aindi=>
			rstflagmmu<='1';
                        if go='1' then
			state<=s_halt;
			else
			state<=s_66aa1indi;
                        end if;---------time for internal species
			
			when s_66aa1indi=>
                        if go='1' then
			state<=s_halt;
			else
			state<=s_66aa2indi;
                        end if;---------time for internal species
			
			when s_66aa2indi=>
                        if go='1' then
			state<=s_halt;
			else
			state<=s_66aa3indi;
                        end if;---------time for internal species
			
			when s_66aa3indi=>
                        if go='1' then
			state<=s_halt;
			else
			state<=s_66aindi;
                        end if;---------time for internal species
			
--			when s_66aa4indi=>
--			state<=s_66aa5indi;---------time for internal species
--			
--			when s_66aa5indi=>
--			state<=s_66aindi;---------time for internal species-------4 clocks latency
			
			when s_66aindi=> -----add sub 
                        if go='1' then
			state<=s_halt;
			else
			saddsub<='1';
			we<='0';
			state<=s_65aindi;
                        end if;
			
			when s_65aindi=> --1
                        if go='1' then
			state<=s_halt;
			else
			state<=s_65bindi;
                        end if;
			
			when s_65bindi=> --2
			if go='1' then
			state<=s_halt;
			else
			state<=s_65cindi;
			end if;
			
			when s_65cindi=> --3
			if go='1' then
			state<=s_halt;
			else
			state<=s_65dindi;
			end if;
			
			when s_65dindi=> --4
			if go='1' then
			state<=s_halt;
			else
			state<=s_65eindi;
			end if;
			
			when s_65eindi=> --5
			if go='1' then
			state<=s_halt;
			else
			state<=s_65findi;
			end if;
			
			when s_65findi=> --6
			if go='1' then
			state<=s_halt;
			else
			state<=s_65gindi;
			end if;
			
			when s_65gindi=> --7
			if go='1' then
			state<=s_halt;
			else
			state<=s_65hindi;
			end if;
			
			when s_65hindi=> --8
			if go='1' then
			state<=s_halt;
			else
			state<=s_65iindi;
			end if;
			
			when s_65iindi=> --9
			if go='1' then
			state<=s_halt;
			else
			state<=s_65jindi;
			end if;
			
			when s_65jindi=> --9
			if go='1' then
			state<=s_halt;
			else
			state<=s_65kindi;
			end if;
			
			when s_65kindi=> --10
			cetr<='0';
			if go='1' then
			state<=s_halt;
			else
			state<=s_65lindi;
			end if;
			
			when s_65lindi=> --11
			en2<='0';
			if go='1' then
			state<=s_halt;
			else
			state<=s_65mindi;
			end if;
			
			when s_65mindi=> --11
			en2<='0';
			if go='1' then
			state<=s_halt;
			else
			state<=s_65nindi;
			end if;
			
--			when s_65nindi=> --11
--			en2<='0';
--			state<=s_65oindi;
				
			when s_65nindi=> --11
			ena<='0';
			saddsub<='0';selFSM2<='0';
			selFSM<='1';en2<='1';--en3<='1';en4<='1';en5<='1';
			state<=s_w65indi;
			
			when s_w65indi=>
		   enfromFSM<='1';
			we<='0';en2<='0';en3<='0';en4<='0';en5<='1';
			a1<=apoint1aa;a2<=apoint1a;a3<=apoint1b;a4<=apoint1c;
			state<=s_65indidff1_1;
			
			when s_65indidff1_1=>
			state<=s_65indidff1_2;
			
			when s_65indidff1_2=>
			state<=s_65indidff1_3;
			
			when s_65indidff1_3=>
			state<=s_65indidff1;
         
			when s_65indidff1=>
			Qoutsp1<=Qspeciesupdate1aa;Qoutsp2<=Qspeciesupdate1a;Qoutsp3<=Qspeciesupdate1b;Qoutsp4<=Qspeciesupdate1c;
			state<=s_delay1indi;
			
			when s_delay1indi=>
			--enfromFSM<='0';
			state<=s_delay1bindi;
			
			when s_delay1bindi=>
			state<=s_delay1cindi;
			
			when s_delay1cindi=>
			enfromFSM<='0';
			state<=s_65indil1;
 
			when s_65indil1=>
			we<='1';
			state<=s_65indi;
			
			
			when s_65indi=> ----- update
			we<='0';
			Qoutsp1<=Qspeciesupdate2aa;Qoutsp2<=Qspeciesupdate2a;Qoutsp3<=Qspeciesupdate2b;Qoutsp4<=Qspeciesupdate2c;
			a1<=apoint2aa;a2<=apoint2a;a3<=apoint2b;a4<=apoint2c;
			state<=s_delay2indi;
			
			when s_delay2indi=>
			state<=s_delay3indi;
			
			when s_delay3indi=>
			state<=s_delay3bindi;
			
			when s_delay3bindi=>
			state<=s_delay3cindi;
			
			when s_delay3cindi=>
			state<=s_65indil2;
			
--			when s_delay3dindi=>
--			state<=s_65indil2;
			
			when s_65indil2=>
			we<='1';
			state<=s_65indil3;
			
			when s_65indil3=>
			we<='0';
			a1<=apoint3aa;a2<=apoint3a;a3<=apoint3b;a4<=apoint3c;
			Qoutsp1<=Qspeciesupdate3aa;Qoutsp2<=Qspeciesupdate3a;Qoutsp3<=Qspeciesupdate3b;Qoutsp4<=Qspeciesupdate3c;
			state<=s_delay4indi;
			
			when s_delay4indi=>
			state<=s_delay5indi;
			
			when s_delay5indi=>
			state<=s_delay6indi;
			
			when s_delay6indi=>
			state<=s_65indil4;
			
			when s_65indil4=>
			we<='1';
			state<=s_65indil5;
			
			when s_65indil5=>
			we<='0';
			a1<=apoint4aa;a2<=apoint4a;a3<=apoint4b;a4<=apoint4c;
			Qoutsp1<=Qspeciesupdate4aa;Qoutsp2<=Qspeciesupdate4a;Qoutsp3<=Qspeciesupdate4b;Qoutsp4<=Qspeciesupdate4c;
			state<=s_delay7indi;
			
			when s_delay7indi=>
			state<=s_delay8indi;
			
			when s_delay8indi=>
			state<=s_delay9indi;
			
			when s_delay9indi=>
			state<=s_65indil6;
			
			when s_65indil6=>
			we<='1';
			state<=s_65indie7;
		-------------------------------------	
		   when s_65indie7=>
			we<='0';
			a1<=apoint5aa;a2<=apoint5a;a3<=apoint5b;a4<=apoint5c;
			Qoutsp1<=Qspeciesupdate5aa;Qoutsp2<=Qspeciesupdate5a;Qoutsp3<=Qspeciesupdate5b;Qoutsp4<=Qspeciesupdate5c;
			state<=s_65indie8;
			
			when s_65indie8=>
			state<=s_65indie9;
			
			when s_65indie9=>
			state<=s_65indie10;
			
			when s_65indie10=>
			state<=s_65indie11;
			
			when s_65indie11=>
			we<='1';
			state<=s_65indie12;
			
			when s_65indie12=>
			we<='0';
			a1<=apoint6aa;a2<=apoint6a;a3<=apoint6b;a4<=apoint6c;
			Qoutsp1<=Qspeciesupdate6aa;Qoutsp2<=Qspeciesupdate6a;Qoutsp3<=Qspeciesupdate6b;Qoutsp4<=Qspeciesupdate6c;
			state<=s_65indie13;
			
			when s_65indie13=>
			state<=s_65indie14;
			
			when s_65indie14=>
			state<=s_65indie15;
			
			when s_65indie15=>
			state<=s_65indie16;
			
			when s_65indie16=>
			we<='1';
			state<=s_65indie17;
			
			when s_65indie17=>
			we<='0';
			a1<=apoint7aa;a2<=apoint7a;a3<=apoint7b;a4<=apoint7c;
			Qoutsp1<=Qspeciesupdate7aa;Qoutsp2<=Qspeciesupdate7a;Qoutsp3<=Qspeciesupdate7b;Qoutsp4<=Qspeciesupdate7c;
			state<=s_65indie18;
			
			when s_65indie18=>
			state<=s_65indie19;
			
			when s_65indie19=>
			state<=s_65indie20;
			
			when s_65indie20=>
			state<=s_65indie21;
			
			when s_65indie21=>
			we<='0';--------------aplopoihsh htan 1
			state<=s_65indie22;
			
			when s_65indie22=>
			we<='0';
			a1<=apoint8aa;a2<=apoint8a;a3<=apoint8b;a4<=apoint8c;
			Qoutsp1<=Qspeciesupdate8aa;Qoutsp2<=Qspeciesupdate8a;Qoutsp3<=Qspeciesupdate8b;Qoutsp4<=Qspeciesupdate8c;
			state<=s_65indie23;
			
			when s_65indie23=>
			state<=s_65indie24;
			
			when s_65indie24=>
			state<=s_65indie25;
			
			when s_65indie25=>
			state<=s_65indie26;
			
			when s_65indie26=>
			we<='0';--------aplopoihsh
			state<=s_65indil31;
			
			when s_65indil31=> -----update end restart
			we<='0';
			--en1<='0'; en2<='0'; en3<='0'; en4<='0';
			saddsub<='0';
			enfromFSM<='0';selFSM3<='0';
			selFSM<='0';selFSM2<='0';rstmin<='1';
			if restart='1' then 
			state<=s_start;
			else
			seltr<='1';----------take second value
			en2<='0'; en3<='0'; en4<='1';en5<='1';
			en1<='1'; ----------en PE
			selFSM3<='0';
			state<=s_mode3cindi;------------------htan s_1
			end if;		
			
			when s_mode3cindi=>
			en5<='0';
			state<=s_mode3indi;

-------------------------------****************-------------------------------------------			
			when s_start1=>
		   --prg<="01"; ------start load from outside world
			--aint<=aint+1;
--			 a<=aint;
--			 cetr<='0';
--			ap1<=aint;
--			ap2<=aint;
--			ap3<=aint;
			 selFSM<='1';
			 aintsp1<=aintsp1;
			 a1<=aintsp1;
			 a2<=aintsp1;
			 a3<=aintsp1;
			 a4<=aintsp1;
--			 Qoutsp<=Qinspecies;
--		     Qst<=Qinstoichiometry;
--			  Qoutpointers1<=Qpointers1;
--			  Qoutpointers2<=Qpointers2;
--			  Qoutpointers3<=Qpointers3;
--			  Qoutpointers4<=Qpointers4;
			ena<='0';
			saddsub<='0';
			enfromFSM<='0';
			selFSM2<='0';
			--we<='1';--westoichio<='1';wep<='1';
			rstmin<='0';
			en1<='0'; en2<='0'; en3<='0'; en4<='0';en5<='0';
			if aintsp1="00000000000000000000000001100100" then
			--if aint="000000011" then
			
		    stop512<='1';
		    else 
			 stop512<='0';
		   end if;
--			--if aintsp1="0000000000000000000011111111111" then
--			if aintsp1="111111111" then
--		    stop2k<='1';
--		    else stop2k<='0';
--		   end if;
			state<=s_start1b;
			
			when s_start1b=>
			state<=s_start1c;
			
			when s_start1c=>
			state<=s_start1d;
			
			when s_start1d=>
			state<=s_start1e;
			
			when s_start1e=>
			state<=s_start1f;
			
			when s_start1f=>
			we<='1';
			state<=s_start2;
			
			when s_start2=>
		  if stop512='1' then
		  --  if stop2k='1' then
			--prg<="00"; ------read from mems
--			 aint<=aint+1;
--		    a<=aint;
         selrww<='0';
         selFSM<='0';aintsp1<="00000000000000000000000000000000";
			we<='0';westoichio<='0';wep<='0';
			en1<='0'; en2<='0'; en3<='0'; en4<='0';
			seltr<='0';--------time update first value
			state<=s_1a;
			else 
			selFSM<='1';we<='0';
			aintsp1<=aintsp1+1;
			state<=s_start1;
			  end if;
--			else 
--			state<=s_start1;
	--		end if;
			
			
--			when s_start3=>
--			we<='1';wep<='0';westoichio<='0';
--			aintsp1<=aintsp1+1;
--			a1<=aintsp1;
--			Qoutsp<=Qinspecies;
--			ena<='0';
--			saddsub<='0';
--			enfromFSM<='0';
--			rstmin<='0';
--			if aintsp1="0000000000000000000011111111111" then
--		    stop2k<='1';
--		    else stop2k<='0';
--		   end if;
--			state<=s_start2;
			
			when others =>
         state<=s_start;
			 
			 end case;
			 
			 end if;
		   end if;
		 end process;
			
			
end Behavioral;



