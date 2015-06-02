);
begin 
 process (clk,en,we) 
 begin 
if en='1' then
  if (clk'event and clk = '1') then
 	  --if en='1' then
 	   	if (we = '1') then 
 			RAM(conv_integer(a)) <= di; 
 		else
--		    do(31 downto 0)  <= RAM(conv_integer(a))(287 downto 256);
--			 do0(31 downto 0) <= RAM(conv_integer(a))(255 downto 224);
--		    do1(31 downto 0) <= RAM(conv_integer(a))(223 downto 192);
--		    do2(31 downto 0) <= RAM(conv_integer(a))(191 downto 160);
-- 			 do3(31 downto 0) <= RAM(conv_integer(a))(159 downto 128);
--			 do4(31 downto 0) <= RAM(conv_integer(a))(127 downto 96);
--			 do5(31 downto 0) <= RAM(conv_integer(a))(95 downto 64);
--			 do6(31 downto 0) <= RAM(conv_integer(a))(63 downto 32);
--			 do7(31 downto 0) <= RAM(conv_integer(a))(31 downto 0);
		    do(31 downto 0)  <= RAM(conv_integer(a))((9*dotech+8) downto ((8*dotech)+8));
			 do0(31 downto 0) <= RAM(conv_integer(a))((8*dotech+7) downto ((7*dotech)+7));
		    do1(31 downto 0) <= RAM(conv_integer(a))((7*dotech+6) downto ((6*dotech)+6));
		    do2(31 downto 0) <= RAM(conv_integer(a))((6*dotech+5) downto ((5*dotech)+5));
 			 do3(31 downto 0) <= RAM(conv_integer(a))((5*dotech+4) downto ((4*dotech)+4));
			 do4(31 downto 0) <= RAM(conv_integer(a))((4*dotech+3) downto ((3*dotech)+3));
			 do5(31 downto 0) <= RAM(conv_integer(a))((3*dotech+2) downto ((2*dotech)+2));
			 do6(31 downto 0) <= RAM(conv_integer(a))((2*dotech+1) downto (dotech+1));
			 do7(31 downto 0) <= RAM(conv_integer(a))(dotech downto 0);
 		end if;	  
 	end if; 
  end if;	
 end process; 


end Behavioral;

