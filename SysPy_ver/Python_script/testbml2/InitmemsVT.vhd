library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InitmemsVT is
port (clk : in std_logic; 
 	we  : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector (255 downto 0); 
 	do  : out std_logic_vector(255 downto 0));
end InitmemsVT;

architecture Behavioral of InitmemsVT is
type ram_type is array(0 to 511) of std_logic_vector(255 downto 0);
signal RAM:ram_type:= (

  X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",
  X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",
  X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000000000000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000000000000000000000000000000000000000000000",
  X"bf80000000000000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000000000000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000000000000000000000000000000000000000000000",
  X"bf80000000000000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000000000000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000000000000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",
  X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000000000000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000000000000000000000000000000000000000000000",X"bf80000000000000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",
  X"bf80000000000000000000000000000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000000000000000000000000000000000000000000000",X"bf80000000000000000000003f80000000000000000000000000000000000000",X"bf800000bf800000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",
  X"bf80000000000000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f80000000000000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000003f8000003f800000000000000000000000000000",X"bf80000000000000000000003f80000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",
  X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000",X"0000000000000000000000000000000000000000000000000000000000000000"
 );
begin
process(clk,we)
begin
 if clk'event and clk='1' then
   if we='1' then
	  RAM(conv_integer(a))<=di;
	 else
     do<= RAM(conv_integer(a));	 
	end if;  
end if;
end process;	

end Behavioral;
