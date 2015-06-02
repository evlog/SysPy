----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:23:25 11/24/2009 
-- Design Name: 
-- Module Name:    filter_test - Behavioral 
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

entity filter_test is
	 Generic (n : integer := 8;
				 m : integer := 4);
    Port ( x : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
           clk : in  STD_LOGIC;
			  rst : in STD_LOGIC;
           y : out  STD_LOGIC_VECTOR ((2*n - 1) downto 0));
end filter_test;

architecture Behavioral of filter_test is

type mat is array (0 to (m - 1)) of integer range 0 to 255;
type mat1 is array (0 to (m - 1)) of std_logic_vector(7 downto 0); 
type mat2 is array (0 to (m - 1)) of std_logic_vector(15 downto 0); 
signal coef : mat := (1, 2, 3, 4);
signal y_int : std_logic_vector((2*n - 1) downto 0) := (others => '0');
signal sri : mat1;
signal temp : mat2;

begin

	process(clk, rst) begin
		if rst = '1' then
			for i in 0 to 3 loop
				sri(i) <= (others => '0');
				temp(i) <= (others => '0');
			end loop;
			y_int <= (others => '0');
		elsif rising_edge(clk) then
			for i in 0 to (m - 2) loop
				sri(i+1) <= sri(i);
			end loop;
			sri(0) <= x;
			
			y_int <= (others => '0');
			
			for i in 0 to 3 loop
				--temp(i) <=  sri(i) * conv_std_logic_vector(coef(i), 8);
				temp(i) <= sri(i) * conv_std_logic_vector(coef(i), 8);
				--+ sri(1) * conv_std_logic_vector(coef(1), 8)
				--+ sri(2) * conv_std_logic_vector(coef(2), 8)
				--+ sri(3) * conv_std_logic_vector(coef(3), 8);
			end loop;
			
			for i in 0 to 3 loop
				--temp(i) <=  sri(i) * conv_std_logic_vector(coef(i), 8);
				y_int <= y_int + temp(i);-- +--conv_std_logic_vector(2, 8);
			end loop;
			y <= y_int;	
		end if;
	end process;
	
	--y <= y_int;
				

end Behavioral;

