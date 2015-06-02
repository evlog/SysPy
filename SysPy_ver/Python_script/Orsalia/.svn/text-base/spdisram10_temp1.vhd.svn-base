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
 
   -- RAMB16_S36: Spartan-3/3E 512 x 32 + 4 Parity bits Single-Port RAM
   RAMB16_S36_inst : RAMB16_S36
   generic map (
      INIT => X"000000000",  --  Value of output RAM registers at startup
      SRVAL => X"000000000", --  Ouput value upon SSR assertion
      WRITE_MODE => "WRITE_FIRST", --  WRITE_FIRST, READ_FIRST or NO_CHANGE
      -- The following INIT_xx declarations specify the initial contents of the RAM