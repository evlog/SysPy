--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.MATH_REAL.ALL;

package my_lib is
	function filt_acc_bus(input, taps : integer) return integer;
	
	component mac_u_comp is
		 generic ( n : integer := 8;
					  mac_bus : integer := 8);
		 Port ( I0 : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
				  I1 : in  STD_LOGIC_VECTOR ((mac_bus - 1) downto 0);
				  M : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
				  mac_out : out  STD_LOGIC_VECTOR ((mac_bus - 1) downto 0));
	end component;
	
	component mac_s_comp is
		 generic ( n : integer := 8;
					  mac_bus : integer := 8);
		 Port ( I0 : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
				  I1 : in  STD_LOGIC_VECTOR ((mac_bus - 1) downto 0);
				  M : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
				  mac_out : out  STD_LOGIC_VECTOR ((mac_bus - 1) downto 0));
	end component;

	component d_ff
		 generic ( n : integer := 8);
		 Port ( clk : in  STD_LOGIC;
				  rst : in  STD_LOGIC;
				  d : in  STD_LOGIC_VECTOR ((n - 1) downto 0);
				  q : out  STD_LOGIC_VECTOR ((n - 1) downto 0));
	end component;
end my_lib;

package body my_lib is

	function filt_acc_bus(input, taps : integer) return integer is
	variable filt_bus_size : integer;
	begin		
		filt_bus_size := 2 * input + integer(ceil(log(real(taps)) / log(2.0)));
		return(filt_bus_size);	
	end filt_acc_bus;
 
end my_lib;
