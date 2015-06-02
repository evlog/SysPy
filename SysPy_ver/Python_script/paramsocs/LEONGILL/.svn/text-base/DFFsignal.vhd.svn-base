library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity DFFsignal is
port(Rs,en:in std_logic;
D:in std_logic;
clock:in std_logic;
Q:out std_logic);
end entity;

Architecture behavior of DFFsignal is
signal Qint1:std_logic:='0';
begin
process(en,RS,clock)
begin
if RS='1' then
   Q<='0';
elsif clock'event and clock='1' then
 
	  if en='1' then
   Q<=D;
 end if;
end if;
end process;

end behavior; 
