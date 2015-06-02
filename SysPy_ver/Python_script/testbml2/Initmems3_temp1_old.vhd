library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memintdimerLOTKA_VOLTERA is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3   : in std_logic_vector(8 downto 0); 
 	di1,di2,di3,di4  : in std_logic_vector(2 downto 0); 
 	do1,do2,do3,do4 : out std_logic_vector(2 downto 0));
end memintdimerLOTKA_VOLTERA;

architecture Behavioral of memintdimerLOTKA_VOLTERA is
type ram_type is array(0 to 511) of std_logic_vector(2 downto 0);
signal RAM:ram_type:= (
