library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity DFFinternalPE is
Generic(N:integer:=31);
port(Rs,en:in std_logic;
D:in std_logic_vector(N downto 0);
clock:in std_logic;
Q:out std_logic_vector(N downto 0));
end entity;

Architecture behavior of DFFinternalPE is
begin
process(en,RS,clock)
begin
 if RS='1' then
   Q<="00000000000000000000000000000000";
   elsif en='1' then
  if clock'event and clock='1' then
   Q<=D;
 end if;
end if;
end process;
end behavior; 