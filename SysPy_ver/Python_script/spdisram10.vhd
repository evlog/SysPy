----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:51:54 02/21/2011 
-- Design Name: 
-- Module Name:    spdisram7 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


library UNISIM;
use UNISIM.vcomponents.all;

-- Only XST supports RAM inference
-- Infers Single Port Block Ram

entity spdisram10 is 
port (clk : in std_logic; 
 	we  : in std_logic;
	en  : in std_logic;
	ssr : in  std_logic;
	dop : out std_logic_vector (3 downto 0);
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector (31 downto 0); 
 	do  : out std_logic_vector(31 downto 0));
end spdisram10; 

-- 512 x 32 RAM Bank
 
architecture syn of spdisram10 is 
 

 Begin
 
  Rinst : RAMB16_S36 
   generic map (
      INIT => X"000000000",  --  Value of output RAM registers at startup
      SRVAL => X"000000000", --  Ouput value upon SSR assertion
      WRITE_MODE => "WRITE_FIRST", --  WRITE_FIRST, READ_FIRST or NO_CHANGE
      -- The following INIT_xx declarations specify the initial contents of the RAM
    -- Address 0 to 127
	-- INIT_00 => X"000000000000000000000000000000000000000000000000000000000000ffff",                           
      INIT_00 => X"423e0000413e0000425200004170000044c80000455c000041520000415c0000",
      INIT_01 => X"4348c000415c0000425200004370000044d2000040a0000041c8000043480000",
      INIT_02 => X"41c8000042200000412f0000425c000044b40000432000004182000041340000",
      INIT_03 => X"41a00000437000004252000041480000410c00004348000040c8000042520000",
      INIT_04 => X"42c3000040c30000413e0000410c00004296000040c8000042cd0000413e0000",
      INIT_05 => X"44c8000040c800004252000043c8000041a000004044000043480000415c0000",
      INIT_06 => X"45d6000043c8000041b4000043480000417000004448000040c3000042a00000",
      INIT_07 => X"4134000043dc000045c8000046c8000041aa0000435c000042a00000401c0000",
      INIT_08 => X"43f0000041c80000407000004120000043c80000415c000043c8000041820000",
      INIT_09 => X"44c30000454d0000401600004196000043c80000445c0000450c000041520000",
      INIT_0A => X"40b4000041a0000043c8000042b9000041b40000405200004370000041c80000",
      INIT_0B => X"43c8000041b40000422f000041b4000040a0000043c8000041b90000422f0000",
      INIT_0C => X"434800004134000040a0000043c800004220000041c8000043b4000040a00000",
      INIT_0D => X"43c8000041c800004696000045f000004470000043b4000041c8000042a00000",
      INIT_0E => X"42c80000405c000041c8000043b4000041c80000405c000043c8000044b40000",
      INIT_0F => X"41c800004370000041a0000043c8000041b4000046b4000043c8000045c80000",
      -- Address 128 to 255
      INIT_10 => X"48c00000434800004452000041c8000042c8000040b4000043a8000041a00000",
      INIT_11 => X"4348000041c800004118000043400000412000004230000041c8000042200000",
      INIT_12 => X"440200004120000043a000004020000046c80000450c00004448000043c80000",
      INIT_13 => X"4148000043c8000046c8000043fa0000400c00004220000041c8000040c80000",
      INIT_14 => X"41c8000043c80000402000004148000042c8000041c8000043f0000041c80000",
      INIT_15 => X"417000004348000040c8000042c80000432000004148000040c80000435c0000",
      INIT_16 => X"4120000040c8000043b400004120000042c8000040a0000041c8000043520000",
      INIT_17 => X"422f00004148000043c8000041a0000040c800004342000041c80000415c0000",
      INIT_18 => X"442000004148000043c800004148000043a8000042a0000042c8000041c80000",
      INIT_19 => X"42200000434800004ac800004148000044c800004148000045c8000043c80000",
      INIT_1A => X"41c800004348000041c800004048000042c8000043c8000044c80000425c0000",
      INIT_1B => X"434800004448000043c8000040c8000042c800004170000042c80000405c0000",
      INIT_1C => X"41c8000042c8000043c800004148000042c800004312000043c80000435c0000",
      INIT_1D => X"427000004248000042c800004248000042c8000040c8000044c80000415c0000",
      INIT_1E => X"417000004348000041c800004348000042c800004410000043c8000043c80000",
      INIT_1F => X"42c800004248000041c800004348000042c8000042c8000045c80000455c0000",
      -- Address 256 to 383----------------*
      INIT_20 => X"43c800004148000040c8000043c8000042c800004010000042c80000435c0000",
      INIT_21 => X"41c800004348000044c800004548000043c8000044c8000041c80000425c0000",
      INIT_22 => X"44c800004548000041c800004348000042c8000040c8000044c80000425c0000",
      INIT_23 => X"42c800004348000042c800004048000042c8000042c8000041c80000415c0000",
      INIT_24 => X"42c800004148000044c800004348000042c8000041c8000042c80000435c0000",
      INIT_25 => X"43c800004148000041c800004048000042c8000041c8000043c80000425c0000",
      INIT_26 => X"42c800004148000043c800004148000040c8000043c8000042c80000415c0000",
      INIT_27 => X"40c800004348000040c800004248000041c8000043c8000040c80000415c0000",
      INIT_28 => X"41c800004348000041c800004948000041c8000043c8000044c80000425c0000",
      INIT_29 => X"40c800004348000042c800004148000043c8000041c8000040c80000435c0000",
      INIT_2A => X"40c800004348000041c800004148000042c8000042c8000043c80000415c0000",
      INIT_2B => X"41c800004148000043c800004348000041c8000041c8000041c80000425c0000",
      INIT_2C => X"42c800004348000041c800004348000040c8000041c8000042c80000435c0000",
      INIT_2D => X"41c800004348000041c800004148000040c8000043c8000042c80000405c0000",
      INIT_2E => X"44c800004348000041c800004248000040c8000041c8000042c80000435c0000",
      INIT_2F => X"43c800004548000043c800004548000042c8000043c8000042c80000415c0000",
      -- Address 384 to 511
      INIT_30 => X"42c800004048000041c800004348000045c8000044c8000043c80000405c0000",
      INIT_31 => X"41c800004048000043c800004148000042c8000040c8000043c80000415c0000",
      INIT_32 => X"40c800004348000041c800004448000043c8000042c8000041c80000435c0000",
      INIT_33 => X"41c800004248000043c800004148000042c8000043c8000044c80000415c0000",
      INIT_34 => X"41c800004348000044c800004148000043c8000042c8000041c80000434c0000",
      INIT_35 => X"40c800004348000042c800004148000042c8000040c8000043c80000425c0000",
      INIT_36 => X"42c800004048000043c800004148000042c8000043c8000040c80000415c0000",
      INIT_37 => X"43c800004148000042c800004348000042c8000040c8000043c80000425c0000",
      INIT_38 => X"40c800004148000043c800004248000041c8000043c8000044c80000435c0000",
      INIT_39 => X"43c800004148000042c800004348000042c8000040c8000041c80000425c0000",
      INIT_3A => X"41c800004348000043c800004148000040c8000041c8000043c80000415c0000",
      INIT_3B => X"43c800004048000042c800004348000041c8000041c8000042c80000435c0000",
      INIT_3C => X"41c800004048000043c800004148000044c8000043c8000041c80000435c0000",
      INIT_3D => X"43c800004148000042c800004348000041c8000042c8000043c80000405c0000",
      INIT_3E => X"41c800004548000044c800004348000042c8000041c8000045c80000445c0000",
      INIT_3F => X"432800004148000043c800004048000044c8000041c8000043c8000041480000",
      -- The next set of INITP_xx are for the parity bits
      -- Address 0 to 127
	 --INIT_00  =>X"000000000000000000000000000000000000000000000000000000000000ffff",
      INITP_00 =>X"43c800004148000042c800004348000045c8000041c8000044c80000435c0000",
      INITP_01 =>X"41c800004348000040c800004148000044c8000041c8000042c80000435c0000",
      -- Address 128 to 255
      INITP_02 =>X"42c800004048000043c800004148000044c8000042c8000042c80000415c0000",
      INITP_03 =>X"43c800004448000041c800004748000048c8000041c8000044c80000435c0000",
      -- Address 256 to 383
      INITP_04 =>X"40c800004148000041c800004148000044c8000045c8000043c80000415c0000",
      INITP_05 =>X"43c800004448000045c800004048000040c8000040c8000041c80000415c0000",
      -- Address 384 to 511
      INITP_06 =>X"41c800004148000043c800004248000041c8000042c8000042c80000415c0000",
      INITP_07 =>X"47c800004048000041c800004048000042c8000041c8000041c80000435c0000")
   port map (
      DO => do,      
	   DOP => dop,
      ADDR => a,	 
      CLK => clk,    
      DI => di,      
	   DIP => di(7 downto 4),
      EN => en,      
      SSR => ssr,    
      WE =>  we     
   );
 
end syn;