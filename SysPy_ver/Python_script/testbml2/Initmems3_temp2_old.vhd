 );
begin
process (clk,en,we) 
begin 
if en='1' then
  if (clk'event and clk = '1') then
 	   	if (we = '1') then 
 			RAM1(conv_integer(a)) <= di1; 
			RAM2(conv_integer(a1)) <= di2;
			RAM3(conv_integer(a2)) <= di3;
			RAM4(conv_integer(a3)) <= di4;
 		else
 			 do1 <= RAM1(conv_integer(a));
			 do2 <= RAM2(conv_integer(a1));
			 do3 <= RAM3(conv_integer(a2));
			 do4 <= RAM4(conv_integer(a3));
			end if;	  
 	 end if; 
  end if;	
 end process; 

end Behavioral;
