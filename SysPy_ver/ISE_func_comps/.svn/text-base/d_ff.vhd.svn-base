----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:16 12/22/2009 
-- Design Name: 
-- Module Name:    d_ff - d_ff_beh 
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

entity d_ff is
    generic ( n : integer := 8);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
           q : out  STD_LOGIC_VECTOR ((n - 1) downto 0));
end d_ff;

architecture d_ff_beh of d_ff is

begin

	process(clk, rst) begin
		if rst = '1' then
			q <= (others => '0');
		elsif rising_edge(clk) then
			q <= d;
		end if;
	end process;

end d_ff_beh;

