
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:30:26 11/14/2011
-- Design Name:   patterngen2
-- Module Name:   C:/NOC11/TestswithLeon4/LEONGILL/simrng.vhd
-- Project Name:  LEONGILL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: patterngen2
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY simrng_vhd IS
END simrng_vhd;

ARCHITECTURE behavior OF simrng_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT patterngen2
	PORT(
		clock : IN std_logic;
		en : IN std_logic;
		clear : IN std_logic;
		count : IN std_logic;
		Qinseed : IN std_logic_vector(7 downto 0);          
		Qout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL clock :  std_logic := '0';
	SIGNAL en :  std_logic := '0';
	SIGNAL clear :  std_logic := '0';
	SIGNAL count :  std_logic := '0';
	SIGNAL Qinseed :  std_logic_vector(7 downto 0) := (others=>'0');

	--Outputs
	SIGNAL Qout :  std_logic_vector(31 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: patterngen2 PORT MAP(
		clock => clock,
		en => en,
		clear => clear,
		count => count,
		Qinseed => Qinseed,
		Qout => Qout
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
