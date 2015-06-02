----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:20 12/22/2009 
-- Design Name: 
-- Module Name:    mac_filter_wrapper - mac_filter_wrapper_struct 
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

library work;
use work.my_lib.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mac_filter_wrapper is
	 generic ( n : integer := 8;
				  m : integer := 5);
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           filt_in : in  STD_LOGIC_VECTOR((n - 1) downto 0);
			  filt_param : in STD_LOGIC_VECTOR(((m * n) - 1) downto 0);
           filt_out : out  STD_LOGIC_VECTOR ((filt_acc_bus(n, m) - 1) downto 0));
end mac_filter_wrapper;

architecture mac_filter_wrapper_struct of mac_filter_wrapper is

--component mac_filter is
--	 generic ( n : integer := 8;
--				  m : integer := 5);
--    Port ( clk : in  STD_LOGIC;
--           rst : in  STD_LOGIC;
--           filt_in : in  STD_LOGIC_VECTOR((n - 1) downto 0);
--			  filt_param : in STD_LOGIC_VECTOR(((m * n) - 1) downto 0);
--           filt_out : out  STD_LOGIC_VECTOR ((filt_acc_bus(n, m) - 1) downto 0));
--end component;

begin

	U0: mac_filter generic map(n,m)
	port map (
	clk => clk,
	rst => rst,
	filt_in => filt_in,
	filt_param => filt_param,
	filt_out => filt_out);

end mac_filter_wrapper_struct;

