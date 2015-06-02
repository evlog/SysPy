----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:46 03/01/2010 
-- Design Name: 
-- Module Name:    test - Behavioral 
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

library XilinxCoreLib;
use xilinxcorelib.all;
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test is
    Port ( clk : in  STD_LOGIC;
			  x : in STD_LOGIC_VECTOR (0 to 7);
           y : out  STD_LOGIC_VECTOR (7 downto 0);
			  z : out STD_LOGIC_VECTOR (3 downto 0));
end test;

architecture Behavioral of test is



type ROM_TYPE is array(0 to 3)of integer range 0 to 15;
type ROM_TYPE1 is array(0 to 3)of std_logic_vector(7 downto 0);
signal t: ROM_TYPE := (10, 3, 8, 2);
signal t1: ROM_TYPE1 := ("01110001", "00111100", "11111110", "00101100");
--signal y1: std_logic_vector(7 downto 0);
signal k, m, n: integer range -1 to 4;
signal test: std_logic;
begin

	process(clk)
	variable y1: std_logic_vector(7 downto 0);
	variable y2: integer range 0 to 1;
	variable test: std_logic;
	variable i: std_logic;
	--type ROM_TYPE is array(0 to 2)of integer range 0 to 15;
	variable t: ROM_TYPE := (10, 3, 8, 5);
	begin
		--if rising_edge(clk) then
			for j in 0 to 3 loop
			--y <= conv_std_logic_vector(t(i), 4);
				y2 := j;
				y1 := y1 + conv_std_logic_vector(t(j), 4);
			end loop;
		if rising_edge(clk) then
			y <= t1(k)(m downto n);
			z <= conv_std_logic_vector(t(k), 4);
			z <= x(k to 0);
		end if;
		
		test := '1';
		--test <= '1';
	end process;

end Behavioral;

