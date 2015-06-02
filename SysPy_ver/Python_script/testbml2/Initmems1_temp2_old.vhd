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
		    do0(31 downto 0) <= RAM(conv_integer(a))(255 downto 224);
		    do1(31 downto 0) <= RAM(conv_integer(a))(223 downto 192);
		    do2(31 downto 0) <= RAM(conv_integer(a))(191 downto 160);
		    do3(31 downto 0) <= RAM(conv_integer(a))(159 downto 128);
 			 do4(31 downto 0) <= RAM(conv_integer(a))(127 downto 96);
			 do5(31 downto 0) <= RAM(conv_integer(a))(95 downto 64);
			 do6(31 downto 0) <= RAM(conv_integer(a))(63 downto 32);
			 do7(31 downto 0) <= RAM(conv_integer(a))(31 downto 0);
 		end if;	  
 	end if; 
  end if;	
 end process; 
end Behavioral;
