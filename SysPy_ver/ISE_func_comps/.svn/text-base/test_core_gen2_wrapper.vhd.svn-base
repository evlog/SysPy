----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:45:48 03/10/2010 
-- Design Name: 
-- Module Name:    test_core_gen2_wrapper - test_core_gen2_wrapper_struct 
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

entity test_core_gen2_wrapper is
	port (
	x_in: IN std_logic_VECTOR(7 downto 0);
	x_out: OUT std_logic_VECTOR(4 downto 0));
end test_core_gen2_wrapper;

architecture test_core_gen2_wrapper_struct of test_core_gen2_wrapper is

component test_core_gen2
	port (
	x_in: IN std_logic_VECTOR(7 downto 0);
	x_out: OUT std_logic_VECTOR(4 downto 0));
end component;

begin

sqrt_comp : test_core_gen2
		port map (
			x_in => x_in,
			x_out => x_out);

end test_core_gen2_wrapper_struct;

