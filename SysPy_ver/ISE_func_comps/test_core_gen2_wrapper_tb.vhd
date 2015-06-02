--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:47:50 03/10/2010
-- Design Name:   
-- Module Name:   /media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/test_core_gen2_wrapper_tb.vhd
-- Project Name:  ISE_func_comps
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: test_core_gen2_wrapper
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
 
ENTITY test_core_gen2_wrapper_tb IS
END test_core_gen2_wrapper_tb;
 
ARCHITECTURE behavior OF test_core_gen2_wrapper_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test_core_gen2_wrapper
    PORT(
         x_in : IN  std_logic_vector(7 downto 0);
         x_out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal x_out : std_logic_vector(4 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test_core_gen2_wrapper PORT MAP (
          x_in => x_in,
          x_out => x_out
        );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period := 1ns;
-- 
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      --wait for 100ms;	

      --wait for <clock>_period*10;

      -- insert stimulus here 
		x_in <= "00000000";
		wait for 100ns;
		
		x_in <= "01000000";
		wait for 100ns;

      wait;
   end process;

END;
