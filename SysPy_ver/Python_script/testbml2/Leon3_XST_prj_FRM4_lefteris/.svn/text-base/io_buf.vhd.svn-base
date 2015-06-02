----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:16:30 03/01/2011 
-- Design Name: 
-- Module Name:    io_buf - io_buf_beh 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity io_buf is
    Port ( gpio0 : out  STD_LOGIC_VECTOR (12 downto 0);
        --   gpio1 : inout  STD_LOGIC_VECTOR (12 downto 0);
			  gpi0 : in  STD_LOGIC_VECTOR (12 downto 0);
			  gpi1 : in  STD_LOGIC_VECTOR (12 downto 0);
           ctrl : in  STD_LOGIC);
end io_buf;

architecture io_buf_beh of io_buf is

begin

	gpio0(0) <= gpi0(0) when ctrl = '1' else
	         'Z';
				
	gpio0(1) <= gpi0(1) when ctrl = '1' else
	         'Z';
				
	gpio0(2) <= gpi0(2) when ctrl = '1' else
	         'Z';
				
	gpio0(3) <= gpi0(3) when ctrl = '1' else
	         'Z';
				
	gpio0(4) <= gpi0(4) when ctrl = '1' else
	         'Z';
				
	gpio0(5) <= gpi0(5) when ctrl = '1' else
	         'Z';
				
	gpio0(6) <= gpi0(6) when ctrl = '1' else
	         'Z';
				
	gpio0(7) <= gpi0(7) when ctrl = '1' else
	         'Z';
				
	gpio0(8) <= gpi0(8) when ctrl = '1' else
	         'Z';
				
	gpio0(9) <= gpi0(9) when ctrl = '1' else
	         'Z';
				
	gpio0(10) <= gpi0(10) when ctrl = '1' else
	         'Z';
				
	gpio0(11) <= gpi0(11) when ctrl = '1' else
	         'Z';
				
	gpio0(12) <= gpi0(12) when ctrl = '1' else
	         'Z';
	--gpio0 <= "0001110001111";			
	--gpio1 <= gpi1 when ctrl = '0' else
	      --   (others => 'Z');

end io_buf_beh;

