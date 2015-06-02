----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:53 12/16/2009 
-- Design Name: 
-- Module Name:    test_mul - Behavioral 
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

entity test_mul is
    Port ( x : in  STD_LOGIC_VECTOR (7 downto 0);
           y : in  STD_LOGIC_VECTOR (7 downto 0);
           z : out  STD_LOGIC_VECTOR (15 downto 0));
end test_mul;

architecture Behavioral of test_mul is

begin

	z <= x * y;--conv_std_logic_vector(8, 8);

end Behavioral;

