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
 			 do1(31 downto 0) <= RAM(conv_integer(a));
			 do2(31 downto 0) <= RAM(conv_integer(a1));
			 do3(31 downto 0) <= RAM(conv_integer(a2));
			 do4(31 downto 0) <= RAM(conv_integer(a3));
			 do5(31 downto 0) <= RAM(conv_integer(a4));
			 do6(31 downto 0) <= RAM(conv_integer(a5));
			 do7(31 downto 0) <= RAM(conv_integer(a6));
			 do8(31 downto 0) <= RAM(conv_integer(a7));
			 
			 do1a(31 downto 0) <= RAM(conv_integer(aa));
			 do2a(31 downto 0) <= RAM(conv_integer(a1a));
			 do3a(31 downto 0) <= RAM(conv_integer(a2a));
			 
			 do1b(31 downto 0) <= RAM(conv_integer(ab));
			 do2b(31 downto 0) <= RAM(conv_integer(a1b));
			 do3b(31 downto 0) <= RAM(conv_integer(a2b));
			 
			 do1c(31 downto 0) <= RAM(conv_integer(ac));
			 do2c(31 downto 0) <= RAM(conv_integer(a1c));
			 do3c(31 downto 0) <= RAM(conv_integer(a2c));
			 
			 
 		end if;	  
 	end if; 
  end if;	
 end process; 

end Behavioral;
