begin 
 process (clk,en,we) 
begin 
if en='1' then
  if (clk'event and clk = '1') then
 	  --if en='1' then
 	   	if (we = '1') then 
 			RAM1(conv_integer(a)) <= di1; 
			RAM2(conv_integer(a1)) <= di2;
			RAM3(conv_integer(a2)) <= di3;
			RAM4(conv_integer(a3)) <= di4;
			
 		else
 			 do(31 downto 0)  <= RAM1(conv_integer(a));
			 do1(31 downto 0) <= RAM1(conv_integer(a1));
			 do2(31 downto 0) <= RAM1(conv_integer(a2));
			 do3(31 downto 0) <= RAM1(conv_integer(a3));
			 
			 			 
 		end if;	  
 	end if; 
  end if;	
 end process; 

end Behavioral;
