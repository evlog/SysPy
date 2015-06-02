library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RT1 is
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
 	a   : in std_logic_vector(adtech downto 0); 
 	di  : in std_logic_vector(ditech downto 0); 
 	do,do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(dotech downto 0));	  

end RT1;

architecture Behavioral of RT1 is
type ram_type is array(0 to  255) of std_logic_vector(ditech downto 0);
signal RAM:ram_type := (

  X"0000000200000000000000003cf166800000000300000000000000000000000000000000",X"0000000200000000000000003da22a2c0000000100000000000000000000000000000000",X"000000030000000000000000000000000000000400000000000000000000000000000000",X"000000030000000100000000358637bd0000000c00000000000000000000000000000000",X"000000030000002c00000000358637bd0000002800000000000000000000000000000000",X"000000040000000000000000000000000000000300000000000000000000000000000000",X"000000040000000000000000000000000000004c00000000000000000000000000000000",X"000000040000000300000000000000000000000500000000000000000000000000000000",
  X"000000040000002c00000000358637bd0000002900000000000000000000000000000000",X"000000050000000000000000000000000000000400000003000000000000000000000000",X"000000050000000000000000000000000000004b00000000000000000000000000000000",X"000000050000000300000000000000000000000600000000000000000000000000000000",X"000000050000000f00000000000000000000001700000000000000000000000000000000",X"000000060000000000000000000000000000000500000003000000000000000000000000",X"000000060000000000000000000000000000004700000000000000000000000000000000",X"000000060000000300000000000000000000000700000000000000000000000000000000",
  X"000000060000000f00000000000000000000001800000000000000000000000000000000",X"000000070000000000000000000000000000000600000003000000000000000000000000",X"000000070000000000000000000000000000004900000000000000000000000000000000",X"000000070000000300000000000000000000000800000000000000000000000000000000",X"000000070000000f00000000000000000000001900000000000000000000000000000000",X"000000070000002c00000000368637bd0000003a00000000000000000000000000000000",X"000000080000000000000000000000000000000700000003000000000000000000000000",X"000000080000000000000000000000000000004a00000000000000000000000000000000",
  X"000000080000000300000000000000000000000900000000000000000000000000000000",X"000000080000000f00000000000000000000001a00000000000000000000000000000000",X"000000090000000000000000000000000000000800000003000000000000000000000000",X"000000090000000000000000000000000000004800000000000000000000000000000000",X"000000090000000300000000000000000000000a00000000000000000000000000000000",X"000000090000000f00000000000000000000001b00000000000000000000000000000000",X"000000090000002c00000000368637bd0000003c00000000000000000000000000000000",X"0000000a0000000000000000000000000000000900000003000000000000000000000000",
  X"0000000a0000000000000000000000000000003f00000000000000000000000000000000",X"0000000a0000000300000000000000000000000b00000000000000000000000000000000",X"0000000a0000000f00000000000000000000001c00000000000000000000000000000000",X"0000000b0000000000000000000000000000000a00000003000000000000000000000000",X"0000000b0000000f00000000000000000000001d00000000000000000000000000000000",X"0000000b0000002c00000000368637bd0000003e00000000000000000000000000000000",X"0000000100000000000000003bdea8970000002500000000000000000000000000000000",X"0000000c0000000000000000000000000000001000000000000000000000000000000000",
  X"0000000c0000002f00000000000000000000003000000000000000000000000000000000",X"0000000c0000003400000000000000000000003300000000000000000000000000000000",X"0000000c0000003300000000000000000000003600000000000000000000000000000000",X"0000000c0000003600000000000000000000003700000000000000000000000000000000",X"0000000d0000000300000000000000000000000d0000000e000000000000000000000000",X"0000002800000000000000003c23c6430000002c0000002a000000000000000000000000",X"0000002900000000000000003c2311e80000002c0000002b000000000000000000000000",X"0000004700000000000000003dcccccd0000004f00000000000000000000000000000000",
  X"0000003f00000000000000003dcccccd0000005300000000000000000000000000000000",X"0000004b00000000000000003dcccccd0000004e00000000000000000000000000000000",X"0000004c00000000000000003dcccccd0000004d00000000000000000000000000000000",X"0000004800000000000000003dcccccd0000005200000000000000000000000000000000",X"0000004900000000000000003dcccccd0000005000000000000000000000000000000000",X"0000004a00000000000000003dcccccd0000005100000000000000000000000000000000",X"0000000b0000000300000000000000000000000d0000000e000000000000000000000000",X"000000100000000000000000000000000000000c00000000000000000000000000000000",
  X"000000100000000000000000000000000000004600000000000000000000000000000000",X"000000100000000c00000000000000000000001100000000000000000000000000000000",X"00000011000000000000000000000000000000100000000c000000000000000000000000",X"000000110000000000000000000000000000004000000000000000000000000000000000",X"000000110000000c00000000000000000000001200000000000000000000000000000000",X"000000110000000f00000000000000000000001e00000000000000000000000000000000",X"00000012000000000000000000000000000000110000000c000000000000000000000000",X"000000120000000000000000000000000000004100000000000000000000000000000000",
  X"000000120000000c00000000000000000000001300000000000000000000000000000000",X"000000120000000f00000000000000000000001f00000000000000000000000000000000",X"00000013000000000000000000000000000000120000000c000000000000000000000000",X"000000130000000000000000000000000000004500000000000000000000000000000000",X"000000130000000c00000000000000000000001400000000000000000000000000000000",X"000000130000000f00000000000000000000002000000000000000000000000000000000",X"00000014000000000000000000000000000000130000000c000000000000000000000000",X"000000140000000000000000000000000000004400000000000000000000000000000000",
  X"000000140000000c00000000000000000000001500000000000000000000000000000000",X"000000140000000f00000000000000000000002100000000000000000000000000000000",X"00000015000000000000000000000000000000140000000c000000000000000000000000",X"000000150000000000000000000000000000004200000000000000000000000000000000",X"000000150000000c00000000000000000000001600000000000000000000000000000000",X"000000150000000f00000000000000000000002200000000000000000000000000000000",X"00000016000000000000000000000000000000150000000c000000000000000000000000",X"000000160000000000000000000000000000004300000000000000000000000000000000",
  X"000000160000000c00000000000000000000002600000000000000000000000000000000",X"000000160000000f00000000000000000000002300000000000000000000000000000000",X"00000026000000000000000000000000000000160000000c000000000000000000000000",X"000000260000000f00000000000000000000002400000000000000000000000000000000",X"0000002b00000000000000003dcccccd0000002e00000000000000000000000000000000",X"0000002a00000000000000003dcccccd0000002d00000000000000000000000000000000",X"0000003e0000000000000000399f62300000000b0000002c000000000000000000000000",X"000000300000000c00000000000000000000003100000000000000000000000000000000",
  X"000000310000000c00000000000000000000003200000000000000000000000000000000",X"000000320000000c00000000000000000000003500000000000000000000000000000000",X"000000350000000c00000000000000000000003400000000000000000000000000000000",X"000000380000000000000000399f6230000000050000002c000000000000000000000000",X"000000390000000000000000399f6230000000060000002c000000000000000000000000",X"0000003a0000000000000000399f6230000000070000002c000000000000000000000000",X"0000003b0000000000000000399f6230000000080000002c000000000000000000000000",X"0000003c0000000000000000399f6230000000090000002c000000000000000000000000",
  X"0000003d0000000000000000399f62300000000a0000002c000000000000000000000000",X"0000003d0000000a00000000368637bd0000002c00000000000000000000000000000000",X"0000002c0000000500000000368637bd0000003800000000000000000000000000000000",X"0000002c0000000600000000368637bd0000003900000000000000000000000000000000",X"0000002c0000000800000000368637bd0000003b00000000000000000000000000000000",X"0000002c0000000c00000000000000000000002f00000000000000000000000000000000",X"0000004100000000000000003dcccccd0000005700000000000000000000000000000000",X"0000004000000000000000003dcccccd0000005800000000000000000000000000000000",
  X"0000004600000000000000003dcccccd0000005900000000000000000000000000000000",X"0000004500000000000000003dcccccd0000005600000000000000000000000000000000",X"0000004400000000000000003dcccccd0000005500000000000000000000000000000000",X"0000004200000000000000003dcccccd0000005500000000000000000000000000000000",X"0000004300000000000000003dcccccd0000005400000000000000000000000000000000",X"000000030000002800000000000000000000002900000000000000000000000000000000",X"000000030000002900000000000000000000003800000000000000000000000000000000",X"000000030000003800000000000000000000003900000000000000000000000000000000",
  X"000000030000003900000000000000000000003a00000000000000000000000000000000",X"0000003a0000000300000000000000000000003b00000000000000000000000000000000",X"0000003b0000000300000000000000000000003c00000000000000000000000000000000",X"000000030000003c00000000000000000000003d00000000000000000000000000000000",X"000000030000003d00000000000000000000003e00000000000000000000000000000000",X"00000017000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"00000018000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"00000019000000000000000039c1fc8f0000000f00000000000000000000000000000000",
  X"0000001a000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"0000001b000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"0000001c000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"0000001d000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"0000001e000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"0000001f000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"00000020000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"00000021000000000000000039c1fc8f0000000f00000000000000000000000000000000",
  X"00000022000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"00000023000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"00000024000000000000000039c1fc8f0000000f00000000000000000000000000000000",X"0000000d0000000f00000000000000000000002700000000000000000000000000000000",X"000000030000000000000000000000000000005a00000000000000000000000000000000",X"0000000c0000000000000000000000000000005b00000000000000000000000000000000",X"0000005b00000000000000003dcccccd0000005c00000000000000000000000000000000",X"0000005a00000000000000003dcccccd0000005d00000000000000000000000000000000",
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
 process (clk,en,we) 
 begin 
if en='1' then
  if (clk'event and clk = '1') then
 	  --if en='1' then
 	   	if (we = '1') then 
 			RAM(conv_integer(a)) <= di; 
 		else
--		    do(31 downto 0)  <= RAM(conv_integer(a))(287 downto 256);
--			 do0(31 downto 0) <= RAM(conv_integer(a))(255 downto 224);
--		    do1(31 downto 0) <= RAM(conv_integer(a))(223 downto 192);
--		    do2(31 downto 0) <= RAM(conv_integer(a))(191 downto 160);
-- 			 do3(31 downto 0) <= RAM(conv_integer(a))(159 downto 128);
--			 do4(31 downto 0) <= RAM(conv_integer(a))(127 downto 96);
--			 do5(31 downto 0) <= RAM(conv_integer(a))(95 downto 64);
--			 do6(31 downto 0) <= RAM(conv_integer(a))(63 downto 32);
--			 do7(31 downto 0) <= RAM(conv_integer(a))(31 downto 0);
		    do(31 downto 0)  <= RAM(conv_integer(a))((9*dotech+8) downto ((8*dotech)+8));
			 do0(31 downto 0) <= RAM(conv_integer(a))((8*dotech+7) downto ((7*dotech)+7));
		    do1(31 downto 0) <= RAM(conv_integer(a))((7*dotech+6) downto ((6*dotech)+6));
		    do2(31 downto 0) <= RAM(conv_integer(a))((6*dotech+5) downto ((5*dotech)+5));
 			 do3(31 downto 0) <= RAM(conv_integer(a))((5*dotech+4) downto ((4*dotech)+4));
			 do4(31 downto 0) <= RAM(conv_integer(a))((4*dotech+3) downto ((3*dotech)+3));
			 do5(31 downto 0) <= RAM(conv_integer(a))((3*dotech+2) downto ((2*dotech)+2));
			 do6(31 downto 0) <= RAM(conv_integer(a))((2*dotech+1) downto (dotech+1));
			 do7(31 downto 0) <= RAM(conv_integer(a))(dotech downto 0);
 		end if;	  
 	end if; 
  end if;	
 end process; 


end Behavioral;
