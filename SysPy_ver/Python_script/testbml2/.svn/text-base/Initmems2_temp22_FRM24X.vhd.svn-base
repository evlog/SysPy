begin 
 process (clk,en,we) 
begin 
if en='1' then
  if (clk'event and clk = '1') then
 	  --if en='1' then
 	   	if (we = '1') then 
 			RAM1(conv_integer(a)) <= di1; 
			RAM2(conv_integer(aa)) <= di2;
			RAM3(conv_integer(ab)) <= di3;
			RAM4(conv_integer(ac)) <= di4;
			
 		else
 			 do(31 downto 0)  <= RAM1(conv_integer(a));
			 do1(31 downto 0) <= RAM1(conv_integer(a1));
			 do2(31 downto 0) <= RAM1(conv_integer(a2));
			 do3(31 downto 0) <= RAM1(conv_integer(a3));
			 do4(31 downto 0) <= RAM1(conv_integer(a4));
			 do5(31 downto 0) <= RAM1(conv_integer(a5));
			 do6(31 downto 0) <= RAM1(conv_integer(a6));
			 do7(31 downto 0) <= RAM1(conv_integer(a7));
			 
			 doa(31 downto 0)  <= RAM2(conv_integer(aa));
			 do1a(31 downto 0) <= RAM2(conv_integer(a1a));
			 do2a(31 downto 0) <= RAM2(conv_integer(a2a));
			 do3a(31 downto 0) <= RAM2(conv_integer(a3a));
			 do4a(31 downto 0) <= RAM2(conv_integer(a4a));
			 do5a(31 downto 0) <= RAM2(conv_integer(a5a));
			 do6a(31 downto 0) <= RAM2(conv_integer(a6a));
			 do7a(31 downto 0) <= RAM2(conv_integer(a7a));
			 
			 dob(31 downto 0)  <= RAM3(conv_integer(ab));
			 do1b(31 downto 0) <= RAM3(conv_integer(a1b));
			 do2b(31 downto 0) <= RAM3(conv_integer(a2b));
			 do3b(31 downto 0) <= RAM3(conv_integer(a3b));
			 do4b(31 downto 0) <= RAM3(conv_integer(a4b));
			 do5b(31 downto 0) <= RAM3(conv_integer(a5b));
			 do6b(31 downto 0) <= RAM3(conv_integer(a6b));
			 do7b(31 downto 0) <= RAM3(conv_integer(a7b));
			 
			 doc(31 downto 0)  <= RAM4(conv_integer(ac));
			 do1c(31 downto 0) <= RAM4(conv_integer(a1c));
			 do2c(31 downto 0) <= RAM4(conv_integer(a2c));
			 do3c(31 downto 0) <= RAM4(conv_integer(a3c));
			 do4c(31 downto 0) <= RAM4(conv_integer(a4c));
			 do5c(31 downto 0) <= RAM4(conv_integer(a5c));
			 do6c(31 downto 0) <= RAM4(conv_integer(a6c));
			 do7c(31 downto 0) <= RAM4(conv_integer(a7c));
			 			 
 		end if;	  
 	end if; 
  end if;	
 end process; 

end Behavioral;
