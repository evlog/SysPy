library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memintdimerLOTKA_VOLTERAparam is
generic (
    --fabtech   : integer := CFG_FABTECH;
    memtech   : integer := 511;
     adtech   : integer := 8;
     ditechs   : integer := 255;
     dotech   : integer := 2);
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3   : in std_logic_vector(adtech downto 0); 
 	di1,di2,di3,di4  : in std_logic_vector( dotech downto 0); 
 	do1,do2,do3,do4 : out std_logic_vector(dotech downto 0));
end memintdimerLOTKA_VOLTERAparam ;

architecture Behavioral of memintdimerLOTKA_VOLTERAparam  is

type ram_type1 is array(0 to  511) of std_logic_vector(dotech downto 0);
signal RAM1:ram_type1:= (

  "000","000","000","010","010","000","000","010",
  "010","000","000","010","010","000","000","010",
  "010","000","000","010","010","010","000","000",
  "010","010","000","000","010","010","010","000",
  "000","010","010","000","010","010","000","000",
  "010","010","010","010","010","000","000","000",
  "000","000","000","000","000","000","010","000",
  "000","010","000","000","010","010","000","000",
  "010","010","000","000","010","010","000","000",
  "010","010","000","000","010","010","000","000",
  "010","010","000","010","000","000","000","010",
  "010","010","010","000","000","000","000","000",
  "000","010","010","010","010","010","000","000",
  "000","000","000","000","000","010","010","010",
  "010","010","010","010","010","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","010","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000"
);

 type ram_type2 is array(0 to 511) of std_logic_vector(dotech downto 0);
signal RAM2:ram_type2:= (

  "000","000","000","010","010","000","000","010",
  "010","000","000","010","010","000","000","010",
  "010","000","000","010","010","010","000","000",
  "010","010","000","000","010","010","010","000",
  "000","010","010","000","010","010","000","000",
  "010","010","010","010","010","000","000","000",
  "000","000","000","000","000","000","010","000",
  "000","010","000","000","010","010","000","000",
  "010","010","000","000","010","010","000","000",
  "010","010","000","000","010","010","000","000",
  "010","010","000","010","000","000","000","010",
  "010","010","010","000","000","000","000","000",
  "000","010","010","010","010","010","000","000",
  "000","000","000","000","000","010","010","010",
  "010","010","010","010","010","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","010","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000"
);

 type ram_type3 is array(0 to 511) of std_logic_vector(dotech downto 0);
signal RAM3:ram_type3:= (

  "000","000","000","010","010","000","000","010",
  "010","000","000","010","010","000","000","010",
  "010","000","000","010","010","010","000","000",
  "010","010","000","000","010","010","010","000",
  "000","010","010","000","010","010","000","000",
  "010","010","010","010","010","000","000","000",
  "000","000","000","000","000","000","010","000",
  "000","010","000","000","010","010","000","000",
  "010","010","000","000","010","010","000","000",
  "010","010","000","000","010","010","000","000",
  "010","010","000","010","000","000","000","010",
  "010","010","010","000","000","000","000","000",
  "000","010","010","010","010","010","000","000",
  "000","000","000","000","000","010","010","010",
  "010","010","010","010","010","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","010","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000"
);

 type ram_type4 is array(0 to 511) of std_logic_vector(dotech downto 0);
signal RAM4:ram_type4:= (

  "000","000","000","010","010","000","000","010",
  "010","000","000","010","010","000","000","010",
  "010","000","000","010","010","010","000","000",
  "010","010","000","000","010","010","010","000",
  "000","010","010","000","010","010","000","000",
  "010","010","010","010","010","000","000","000",
  "000","000","000","000","000","000","010","000",
  "000","010","000","000","010","010","000","000",
  "010","010","000","000","010","010","000","000",
  "010","010","000","000","010","010","000","000",
  "010","010","000","010","000","000","000","010",
  "010","010","010","000","000","000","000","000",
  "000","010","010","010","010","010","000","000",
  "000","000","000","000","000","010","010","010",
  "010","010","010","010","010","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","010","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000",
  "000","000","000","000","000","000","000","000"
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