library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InitmemsRT is
port (clk : in std_logic; 
 	we  : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector (287 downto 0); 
 	do  : out std_logic_vector(287 downto 0));
end InitmemsRT;

architecture Behavioral of InitmemsRT is
type ram_type is array(0 to 511) of std_logic_vector(287 downto 0);
signal RAM:ram_type:= (

  X"00000001000000020000000040228f5c0000000300000000000000000000000000000000",X"0000000300000000000000003f8000000000000100000002000000000000000000000000",X"0000000100000004000000003e82c4a00000000500000000000000000000000000000000",X"0000000500000000000000003f8000000000000100000004000000000000000000000000",X"0000000100000006000000003cd013a90000000700000000000000000000000000000000",X"000000070000000000000000412000000000000100000006000000000000000000000000",X"000000040000000800000000437e00000000000900000000000000000000000000000000",X"000000090000000000000000461c40000000000400000008000000000000000000000000",
  X"000000080000000a0000000039852b4e0000000b00000000000000000000000000000000",X"0000000b00000000000000003c23d7a0000000080000000a000000000000000000000000",X"00000003000000060000000039852b4e0000000c00000000000000000000000000000000",X"0000000c00000000000000003f8000000000000300000006000000000000000000000000",X"00000005000000060000000039852b4e0000000d00000000000000000000000000000000",X"0000000d00000000000000003f8000000000000500000006000000000000000000000000",X"000000030000000f0000000040228f5c0000000e00000000000000000000000000000000",X"0000000e00000000000000003f800000000000030000000f000000000000000000000000",
  X"000000050000001000000000451ec0000000001100000000000000000000000000000000",X"000000110000000000000000447a00000000000500000010000000000000000000000000",X"0000000900000012000000003cd013a90000001300000000000000000000000000000000",X"0000001300000000000000003f8000000000000900000012000000000000000000000000",X"0000001500000000000000003f1eb8520000001500000014000000000000000000000000",X"0000001400000000000000003f0000000000000000000000000000000000000000000000",X"00000015000000000000000041a000000000001500000008000000000000000000000000",X"0000000800000000000000003cf5c28f0000000000000000000000000000000000000000",
  X"0000000b00000000000000003cf5c28f0000000a00000000000000000000000000000000",X"0000000900000000000000003cf5c28f0000000400000000000000000000000000000000",X"0000001300000000000000003cf5c28f0000000400000012000000000000000000000000",X"0000001700000000000000003cf5c28f0000000400000016000000000000000000000000",X"0000001500000000000000003fd5c28f0000001500000018000000000000000000000000",X"0000001800000000000000003f0000000000000000000000000000000000000000000000",X"00000015000000000000000041a000000000001500000012000000000000000000000000",X"0000001200000000000000003cf5c28f0000000000000000000000000000000000000000",
  X"0000001300000000000000003cf5c28f0000000900000000000000000000000000000000",X"0000001500000000000000003bcccccd0000001500000019000000000000000000000000",X"0000001900000000000000003f0000000000000000000000000000000000000000000000",X"00000015000000000000000040e000000000001500000004000000000000000000000000",X"0000000400000000000000003cf5c28f0000000000000000000000000000000000000000",X"000000130000000000000000404000000000000800000012000000000000000000000000",X"0000001b00000000000000003f3333330000001a00000000000000000000000000000000",X"0000001700000000000000003f0000000000000800000016000000000000000000000000",
  X"0000001500000000000000003f800000000000150000001c000000000000000000000000",X"0000001c00000000000000003f0000000000000000000000000000000000000000000000",X"00000015000000000000000041a00000000000150000001a000000000000000000000000",X"0000001a00000000000000003cf5c28f0000000000000000000000000000000000000000",X"0000001b00000000000000003cf5c28f0000000400000000000000000000000000000000",X"000000040000001a0000000040228f5c0000001b00000000000000000000000000000000",X"0000001b0000000000000000461c4000000000040000001a000000000000000000000000",X"0000001500000000000000003edddd6e000000150000001d000000000000000000000000",
  X"0000001d000000000000000040228f5c0000000000000000000000000000000000000000",X"00000015000000000000000041a000000000001500000016000000000000000000000000",X"0000001600000000000000003cf5c28f0000000000000000000000000000000000000000",X"0000001700000000000000003cf5c28f0000000900000000000000000000000000000000",X"00000009000000160000000040228f5c0000001700000000000000000000000000000000",X"000000170000000000000000461c40000000000900000016000000000000000000000000",X"0000000500000000000000003cf5c28f0000000100000000000000000000000000000000",X"0000001100000000000000003cf5c28f0000000100000010000000000000000000000000",
  X"0000000d00000000000000003cf5c28f0000000700000000000000000000000000000000",X"0000000900000000000000003cf5c28f0000000800000000000000000000000000000000",X"0000001300000000000000003cf5c28f0000000800000012000000000000000000000000",X"0000001700000000000000003cf5c28f0000000800000016000000000000000000000000",X"0000001b00000000000000003cf5c28f0000001a00000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",
  X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000",X"000000000000000000000000000000000000000000000000000000000000000000000000"
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