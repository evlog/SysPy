----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:47:26 01/25/2011 
-- Design Name: 
-- Module Name:    datamem64 - Behavioral 
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

entity PQ is 
 port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a1,a2,a3,a4  : in std_logic_vector(8 downto 0); -----------take from ap1
 	di1t,di2t,di3t,di4t,di1a,di2a,di3a,di4a : in std_logic_vector(31 downto 0); 
 	do1t,do2t,do3t,do4t,do1a,do2a,do3a,do4a  : out std_logic_vector(31 downto 0));
 end entity; 
 
 architecture syn of PQ is 
 
 type ram_type1t is array (511 downto 0) of std_logic_vector (31 downto 0); 
 signal RAM1t : ram_type1t; 
 
 type ram_type2t is array (511 downto 0) of std_logic_vector (31 downto 0); 
 signal RAM2t : ram_type2t; 
 
 type ram_type3t is array (511 downto 0) of std_logic_vector (31 downto 0); 
 signal RAM3t : ram_type3t; 
 
 type ram_type4t is array (511 downto 0) of std_logic_vector (31 downto 0); 
 signal RAM4t : ram_type4t; 
 
 type ram_type1a is array (511 downto 0) of std_logic_vector (31 downto 0); 
 signal RAM1a : ram_type1a; 
 
 type ram_type2a is array (511 downto 0) of std_logic_vector (31 downto 0); 
 signal RAM2a : ram_type2a; 
 
 type ram_type3a is array (511 downto 0) of std_logic_vector (31 downto 0); 
 signal RAM3a : ram_type3a; 
 
 type ram_type4a is array (511 downto 0) of std_logic_vector (31 downto 0); 
 signal RAM4a : ram_type4a; 
  --- 32 X 32 RAM
 begin 
 process (clk,en,we) 
 begin 
if en='1' then
  if (clk'event and clk = '1') then
 	  --if en='1' then
 	   	if (we = '1') then 
 			RAM1t(conv_integer(a1)) <= di1t; 
			RAM2t(conv_integer(a2)) <= di2t; 
			RAM3t(conv_integer(a3)) <= di3t; 
			RAM4t(conv_integer(a4)) <= di4t; 
			
			RAM1a(conv_integer(a1)) <= di1a; 
			RAM2a(conv_integer(a2)) <= di2a; 
			RAM3a(conv_integer(a3)) <= di3a; 
			RAM4a(conv_integer(a4)) <= di4a; 
 		  else
 			 do1t(31 downto 0) <= RAM1t(conv_integer(a1))(31 downto 0);
			 do2t(31 downto 0) <= RAM2t(conv_integer(a2))(31 downto 0);
			 do3t(31 downto 0) <= RAM3t(conv_integer(a3))(31 downto 0);
			 do4t(31 downto 0) <= RAM4t(conv_integer(a4))(31 downto 0);
			 
			 do1a(31 downto 0) <= RAM1a(conv_integer(a1))(31 downto 0);
			 do2a(31 downto 0) <= RAM2a(conv_integer(a2))(31 downto 0);
			 do3a(31 downto 0) <= RAM3a(conv_integer(a3))(31 downto 0);
			 do4a(31 downto 0) <= RAM4a(conv_integer(a4))(31 downto 0);
 		end if;	  
 	end if; 
  end if;	
 end process; 
 

 
 end syn;