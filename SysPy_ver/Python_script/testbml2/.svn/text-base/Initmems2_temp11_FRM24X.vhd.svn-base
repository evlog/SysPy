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

type ram_type is array(0 to  BRAM_size) of std_logic_vector(dotech downto 0);
signal RAM:ram_type:= (
