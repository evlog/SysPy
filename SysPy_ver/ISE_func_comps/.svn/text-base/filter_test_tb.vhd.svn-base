--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:14:12 12/16/2009
-- Design Name:   
-- Module Name:   /media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/filter_test_tb.vhd
-- Project Name:  ISE_func_comps
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: filter_test
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
 
ENTITY filter_test_tb IS
END filter_test_tb;
 
ARCHITECTURE behavior OF filter_test_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT filter_test
    PORT(
         x : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
			rst : IN  std_logic;
         y : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
	signal rst : std_logic := '0';

 	--Outputs
   signal y : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: filter_test PORT MAP (
          x => x,
          clk => clk,
			 rst => rst,
          y => y
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.


      wait for clk_period*0;
		rst <= '1';
		wait for 50ns;
		rst <= '0';
		wait for 50ns;

      -- insert stimulus here 

      x <= "00001010";
      WAIT FOR 100 ns;
		
      x <= "00000010";
      WAIT FOR 100 ns;
		
      x <= "00000000";

      wait;
   end process;

END;
