library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity speciesTable24_1 is
generic (
    --fabtech   : integer := CFG_FABTECH;
    memtech   : integer := 511;
     adtech   : integer := 8;
     ditech   : integer := 287;
     dotech   : integer := 31);	
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,ab,a1b,a2b,ac,a1c,a2c : in std_logic_vector(dotech downto 0); 
 	di  : in std_logic_vector(dotech downto 0); 
 	do1,do2,do3,do4,do5,do6,do7,do8,do1a,do2a,do3a,do1b,do2b,do3b,do1c,do2c,do3c,do1d,do2d,do3d: out std_logic_vector(dotech downto 0));
end speciesTable24_1;

architecture Behavioral of speciesTable24_1 is

type ram_type is array(0 to  127) of std_logic_vector(dotech downto 0);
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
