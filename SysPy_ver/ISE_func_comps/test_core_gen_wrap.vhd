----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:07:07 03/09/2010 
-- Design Name: 
-- Module Name:    test_core_gen_wrap - test_core_gen_wrap_struct 
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

library XilinxCoreLib;

entity test_core_gen_wrap is
	port (
	b: IN std_logic_VECTOR(15 downto 0);
	clk: IN std_logic;
	bypass: IN std_logic;
	q: OUT std_logic_VECTOR(15 downto 0));
end test_core_gen_wrap;

architecture test_core_gen_wrap_struct of test_core_gen_wrap is

component test_core_gen
	port (
	b: IN std_logic_VECTOR(15 downto 0);
	clk: IN std_logic;
	bypass: IN std_logic;
	q: OUT std_logic_VECTOR(15 downto 0));
end component;

begin

core_gen0 : test_core_gen
		port map (
			b => b,
			clk => clk,
			bypass => bypass,
			q => q);


end test_core_gen_wrap_struct;

