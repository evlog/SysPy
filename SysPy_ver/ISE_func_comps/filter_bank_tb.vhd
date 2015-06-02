--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:42:42 01/09/2010
-- Design Name:   
-- Module Name:   H:/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/filter_bank_tb.vhd
-- Project Name:  ISE_func_comps
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: filter_bank
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
USE ieee.std_logic_arith.ALL;
 
ENTITY filter_bank_tb IS
END filter_bank_tb;
 
ARCHITECTURE behavior OF filter_bank_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT filter_bank
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         data_present : IN  std_logic;
         mem_in : IN  std_logic_vector(17 downto 0);
         read_buffer : OUT  std_logic;
			mem_address : out std_logic_vector(9 downto 0);
         filt_out : OUT  std_logic_vector(18 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal data_present : std_logic := '0';
   signal mem_in : std_logic_vector(17 downto 0) := (others => '0');

 	--Outputs
   signal read_buffer : std_logic;
   signal filt_out : std_logic_vector(18 downto 0);
	signal mem_address : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: filter_bank PORT MAP (
          clk => clk,
          rst => rst,
          data_present => data_present,
          mem_in => mem_in,
          read_buffer => read_buffer,
			 mem_address => mem_address,
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

      -- insert stimulus here 
		rst <= '1';
		wait for 50ns;
		rst <= '0';
		wait for 50ns;
		
		data_present <= '0';
		mem_in <= "000000001000000001";
		wait for 100ns;
		
		data_present <= '1';
		mem_in <= "000000001000000001";
		wait for 100ns;
		
		data_present <= '0';
		mem_in <= "000000000000000000";
		wait for 100ns;
		
		data_present <= '1';
		mem_in <= "000000000000000000";
		wait for 100ns;
--		
		data_present <= '0';
		wait for 100ns;
--		
--		data_present <= '0';
--		mem_in <= conv_std_logic_vector(0, 9);
--		wait for 100ns;
      wait;
   end process;

END;
