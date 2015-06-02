library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Initmems is
port (clk : in std_logic; 
 	we  : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector (159 downto 0); 
 	do  : out std_logic_vector(159 downto 0));
end Initmems;

architecture Behavioral of Initmems is
type ram_type is array(0 to 511) of std_logic_vector(159 downto 0);
signal RAM:ram_type:= (