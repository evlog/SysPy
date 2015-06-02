library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity speciescoppyTable1 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a:in std_logic_vector(31 downto 0);--a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,ab,a1b,a2b,ac,a1c,a2c : in std_logic_vector(31 downto 0); 
 	di  : in std_logic_vector(31 downto 0); 
	do  : out std_logic_vector(31 downto 0)); 
 	--do1,do2,do3,do4,do5,do6,do7,do8,do1a,do2a,do3a,do1b,do2b,do3b,do1c,do2c,do3c,do1d,do2d,do3d: out std_logic_vector(31 downto 0));
end speciescoppyTable1;

architecture Behavioral of speciescoppyTable1 is

type ram_type is array(0 to 127) of std_logic_vector(31 downto 0);
signal RAM:ram_type:= (

  X"00000000",X"443b8000",X"3f800000",X"44ce6000",X"41a80000",X"41000000",X"41000000",X"41000000",
  X"41000000",X"41000000",X"41000000",X"41000000",X"446e4000",X"00000000",X"00000000",X"44bb8000",
  X"00000000",X"41000000",X"41000000",X"41000000",X"41000000",X"41000000",X"41000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"41000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"43480000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"3f800000",X"3f800000",X"3f800000",X"3f800000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000"
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
