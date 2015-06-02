--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:29:35 12/16/2009
-- Design Name:   
-- Module Name:   /media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/test_mul_tb.vhd
-- Project Name:  ISE_func_comps
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: test_mul
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
 
ENTITY test_mul_tb IS
END test_mul_tb;
 
ARCHITECTURE behavior OF test_mul_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test_mul
    PORT(
         x : IN  std_logic_vector(7 downto 0);
         --y : IN  std_logic_vector(7 downto 0);
         z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(7 downto 0) := (others => '0');
   --signal y : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test_mul PORT MAP (
          x => x,
          --y => y,
          z => z
        );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
	
		x <= "00111100";
		--y <= "11000000";	
		wait for 100ns;
		
		x <= "10111100";
		--y <= "11000000";	
		wait for 100ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
