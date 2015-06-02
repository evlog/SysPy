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
 			 do(31 downto 0) <= RAM(conv_integer(a));				 
 		end if;	  
 	end if; 
  end if;	
 end process; 

end Behavioral;
