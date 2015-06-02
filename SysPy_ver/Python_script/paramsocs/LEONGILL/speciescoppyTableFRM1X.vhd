----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:05:59 11/15/2011 
-- Design Name: 
-- Module Name:    speciescoppyTableFRM1X - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity speciescoppyTableFRM1X is
generic (
    --fabtech   : integer := CFG_FABTECH;
    memtech   : integer := 511;
     adtech   : integer := 8;
     ditechs   : integer := 255;
     dotech   : integer := 31);
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a:in std_logic_vector(31 downto 0);--a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,ab,a1b,a2b,ac,a1c,a2c : in std_logic_vector(31 downto 0); 
 	di  : in std_logic_vector(31 downto 0); 
	do  : out std_logic_vector(31 downto 0)); 

end speciescoppyTableFRM1X;

architecture Behavioral of speciescoppyTableFRM1X is

type ram_type is array(0 to  63) of std_logic_vector(dotech downto 0);
signal RAM:ram_type:= (

  X"00000000",X"00000000",X"00000000",X"00000000",X"3f800000",X"4a8dc64c",X"44a58000",X"41b00000",
  X"00000000",X"48276c00",X"46ef8000",X"42a00000",X"41800000",X"44120000",X"45555000",X"41e80000",
  X"3f800000",X"45e80000",X"40c00000",X"41500000",X"3f800000",X"43820000",X"00000000",X"40400000",
  X"40e00000",X"44150000",X"00000000",X"40400000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
  X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000"
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
 			 do(31 downto 0) <= RAM(conv_integer(a));				 
 		end if;	  
 	end if; 
  end if;	
 end process; 

end Behavioral;


