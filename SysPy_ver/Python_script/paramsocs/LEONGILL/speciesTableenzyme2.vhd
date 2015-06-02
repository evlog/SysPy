----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:30:44 10/28/2011 
-- Design Name: 
-- Module Name:    speciesTableenzyme2 - Behavioral 
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

entity speciesTableenzyme2 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,a3a,a4a,a5a,a6a,a7a,ab,a1b,a2b,a3b,a4b,a5b,a6b,a7b,ac,a1c,a2c,a3c,a4c,a5c,a6c,a7c : in std_logic_vector(31 downto 0); 
 	di1,di2,di3,di4  : in std_logic_vector(31 downto 0); 
 	do,do1,do2,do3,do4,do5,do6,do7,doa,do1a,do2a,do3a,do4a,do5a,do6a,do7a,dob,do1b,do2b,do3b,do4b,do5b,do6b,do7b,doc,do1c,do2c,do3c,do4c,do5c,do6c,do7c,
	dod,do1d,do2d,do3d,do4d,do5d,do6d,do7d : out std_logic_vector(31 downto 0));
end speciesTableenzyme2;

architecture Behavioral of speciesTableenzyme2 is

type ram_type1 is array(0 to 511) of std_logic_vector(31 downto 0);
signal RAM1:ram_type1:= 
(X"43968000", X"42F00000", X"00000000", X"00000000", X"00000000", X"00000000",X"00000000",X"00000000", X"00000000", X"00000000",  
 X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",X"00000000",X"00000000", X"00000000", X"00000000",
 X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",X"00000000",X"00000000", X"00000000", X"43200000",
 X"42D20000", X"4446C000", X"42480000", X"446D8000", X"43960000", X"43200000",X"40A00000",X"00000000", X"00000000", X"41A00000",
 X"00000000", X"41C80000", X"00000000", X"41C80000", X"00000000", X"41F00000",X"00000000",X"41F00000", X"00000000", X"42200000",
 X"41700000", X"42200000", X"41A00000", X"40000000", X"00000000", X"00000000",X"42C80000",X"00000000", X"42C80000", X"00000000",  
 X"42c80000", X"00000000", X"42C80000", X"00000000", X"42c80000", X"00000000",X"42C80000",X"43960000", X"42c80000", X"42c80000",
 X"43480000", X"00000000", X"44960000", X"42A00000", X"00000000", X"3f800000",X"40000000",X"41200000", X"43AF0000", X"45BB8000",
 X"45960000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",X"00000000",X"00000000", X"00000000", X"00000000",  
 X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",X"00000000",X"00000000", X"44BB8000", X"41200000",
 X"444BC000", X"40A00000", X"00000000", X"00000000", X"00000000", X"40A00000",X"41A00000",X"00000000", X"3f800000", X"3f800000",
 X"45B4C800", X"41200000", X"00000000", X"00000000", X"44BB8000", X"43FA0000",X"00000000",X"00000000", X"00000000", X"00000000",
 X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",X"453B8000",X"00000000", X"00000000", X"00000000",
 X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000");
 
 type ram_type2 is array(0 to 511) of std_logic_vector(31 downto 0);
signal RAM2:ram_type2:= 
(X"43968000", X"42F00000", X"00000000", X"00000000", X"00000000", X"43480000",X"00000000",X"00000000", X"00000000", X"3f800000",  
 X"3f800000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",X"00000000",X"40A00000", X"00000000", X"00000000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000");
 
 type ram_type3 is array(0 to 511) of std_logic_vector(31 downto 0);
signal RAM3:ram_type3:= 
(X"43968000", X"42F00000", X"00000000", X"00000000", X"00000000", X"3f800000",X"00000000",X"42c80000", X"00000000", X"00000000",  
 X"3f800000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",X"00000000",X"40A00000", X"00000000", X"00000000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000");
 
 type ram_type4 is array(0 to 511) of std_logic_vector(31 downto 0);
signal RAM4:ram_type4:= 
(X"43968000", X"42F00000", X"00000000", X"00000000", X"00000000", X"43480000",X"00000000",X"00000000", X"00000000", X"3f800000",  
 X"3f800000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",X"00000000",X"40A00000", X"00000000", X"00000000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",  
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000", X"42C80000", X"00000000", X"00000000", X"42480000",X"42C80000",X"00000000", X"00000000", X"42480000",
 X"42480000", X"42480000");

begin 
 process (clk,en,we) 
begin 
if en='1' then
  if (clk'event and clk = '1') then
 	  --if en='1' then
 	   	if (we = '1') then 
 			RAM1(conv_integer(a)) <= di1; 
			RAM2(conv_integer(aa)) <= di2;
			RAM3(conv_integer(ab)) <= di3;
			RAM4(conv_integer(ac)) <= di4;
			
 		else
 			 do(31 downto 0)  <= RAM1(conv_integer(a));
			 do1(31 downto 0) <= RAM1(conv_integer(a1));
			 do2(31 downto 0) <= RAM1(conv_integer(a2));
			 do3(31 downto 0) <= RAM1(conv_integer(a3));
			 do4(31 downto 0) <= RAM1(conv_integer(a4));
			 do5(31 downto 0) <= RAM1(conv_integer(a5));
			 do6(31 downto 0) <= RAM1(conv_integer(a6));
			 do7(31 downto 0) <= RAM1(conv_integer(a7));
			 
			 doa(31 downto 0)  <= RAM2(conv_integer(aa));
			 do1a(31 downto 0) <= RAM2(conv_integer(a1a));
			 do2a(31 downto 0) <= RAM2(conv_integer(a2a));
			 do3a(31 downto 0) <= RAM2(conv_integer(a3a));
			 do4a(31 downto 0) <= RAM2(conv_integer(a4a));
			 do5a(31 downto 0) <= RAM2(conv_integer(a5a));
			 do6a(31 downto 0) <= RAM2(conv_integer(a6a));
			 do7a(31 downto 0) <= RAM2(conv_integer(a7a));
			 
			 dob(31 downto 0)  <= RAM3(conv_integer(ab));
			 do1b(31 downto 0) <= RAM3(conv_integer(a1b));
			 do2b(31 downto 0) <= RAM3(conv_integer(a2b));
			 do3b(31 downto 0) <= RAM3(conv_integer(a3b));
			 do4b(31 downto 0) <= RAM3(conv_integer(a4b));
			 do5b(31 downto 0) <= RAM3(conv_integer(a5b));
			 do6b(31 downto 0) <= RAM3(conv_integer(a6b));
			 do7b(31 downto 0) <= RAM3(conv_integer(a7b));
			 
			 doc(31 downto 0)  <= RAM4(conv_integer(ac));
			 do1c(31 downto 0) <= RAM4(conv_integer(a1c));
			 do2c(31 downto 0) <= RAM4(conv_integer(a2c));
			 do3c(31 downto 0) <= RAM4(conv_integer(a3c));
			 do4c(31 downto 0) <= RAM4(conv_integer(a4c));
			 do5c(31 downto 0) <= RAM4(conv_integer(a5c));
			 do6c(31 downto 0) <= RAM4(conv_integer(a6c));
			 do7c(31 downto 0) <= RAM4(conv_integer(a7c));
			 			 
 		end if;	  
 	end if; 
  end if;	
 end process; 

end Behavioral;

