library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LOTKA_VOLTERA_STOICHIO is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector(255 downto 0); 
 	do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(31 downto 0));
end LOTKA_VOLTERA_STOICHIO;

architecture Behavioral of LOTKA_VOLTERA_STOICHIO is
type ram_type is array(0 to BRAM_size) of std_logic_vector(255 downto 0);
signal RAM:ram_type:= (
