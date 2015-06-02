library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity speciesTable24_2 is
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
 	a,a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,a3a,a4a,a5a,a6a,a7a,ab,a1b,a2b,a3b,a4b,a5b,a6b,a7b,ac,a1c,a2c,a3c,a4c,a5c,a6c,a7c : in std_logic_vector(dotech downto 0); 
 	di1,di2,di3,di4  : in std_logic_vector(dotech downto 0); 
 	do,do1,do2,do3,do4,do5,do6,do7,doa,do1a,do2a,do3a,do4a,do5a,do6a,do7a,dob,do1b,do2b,do3b,do4b,do5b,do6b,do7b,doc,do1c,do2c,do3c,do4c,do5c,do6c,do7c,
	dod,do1d,do2d,do3d,do4d,do5d,do6d,do7d : out std_logic_vector(dotech downto 0));
end speciesTable24_2;

architecture Behavioral of speciesTable24_2 is

type ram_type1 is array(0 to  BRAM_size) of std_logic_vector(dotech downto 0);
signal RAM1:ram_type1:= (
--place RAM values here
);

 type ram_type2 is array(0 to BRAM_size) of std_logic_vector(dotech downto 0);
signal RAM2:ram_type2:= (
--place RAM values here
);

 type ram_type3 is array(0 to BRAM_size) of std_logic_vector(dotech downto 0);
signal RAM3:ram_type3:= (
--place RAM values here
);

 type ram_type4 is array(0 to BRAM_size) of std_logic_vector(dotech downto 0);
signal RAM4:ram_type4:= (
--place RAM values here
);
