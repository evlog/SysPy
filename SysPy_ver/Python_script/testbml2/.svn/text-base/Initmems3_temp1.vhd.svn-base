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
