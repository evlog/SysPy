 );
begin
process(clk,we)
begin
 if clk'event and clk='1' then
   if we='1' then
	  RAM(conv_integer(a))<=di;
	 else
     do<= RAM(conv_integer(a));	 
	end if;  
end if;
end process;	

end Behavioral;