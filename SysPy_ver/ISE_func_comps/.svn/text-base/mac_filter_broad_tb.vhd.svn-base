--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:39:38 12/21/2009
-- Design Name:   
-- Module Name:   /media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/mac_filter_broad_tb.vhd
-- Project Name:  ISE_func_comps
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mac_filter_broad
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
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY mac_filter_broad_tb IS
END mac_filter_broad_tb;
 
ARCHITECTURE behavior OF mac_filter_broad_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mac_filter_broad
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         filt_in : IN  std_logic_vector(7 downto 0);
			filt_param : in std_logic_vector(39 downto 0);
         filt_out : OUT  std_logic_vector(18 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal filt_in : std_logic_vector(7 downto 0) := (others => '0');
	signal filt_param : std_logic_vector(39 downto 0) := (others => '0');

 	--Outputs
   signal filt_out : std_logic_vector(18 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mac_filter_broad PORT MAP (
          clk => clk,
          rst => rst,
          filt_in => filt_in,
			 filt_param => filt_param,
          filt_out => filt_out
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
      wait for 50ns;	

      wait for clk_period*0;
		filt_param <= conv_std_logic_vector(-10, 8) & conv_std_logic_vector(20, 8) &
		conv_std_logic_vector(12, 8) & conv_std_logic_vector(8, 8) & conv_std_logic_vector(32, 8);

		rst <= '1';
		wait for 50ns;
		rst <= '0';
		wait for 50ns;
		
		filt_in <= conv_std_logic_vector(1, 8);
		wait for 100ns;
		
		filt_in <= conv_std_logic_vector(0, 8);
		wait for 100ns;
		
		filt_in <= conv_std_logic_vector(0, 8);
		wait for 100ns;
      -- insert stimulus here 

      wait;
   end process;

END;
