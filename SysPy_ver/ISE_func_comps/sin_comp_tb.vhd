--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:05:02 01/11/2010
-- Design Name:   
-- Module Name:   /media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/sin_comp_tb.vhd
-- Project Name:  ISE_func_comps
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sin_comp
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
 
ENTITY sin_comp_tb IS
END sin_comp_tb;
 
ARCHITECTURE behavior OF sin_comp_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sin_comp
    PORT(
			clk : IN std_logic;
         ang_in : IN  std_logic_vector(9 downto 0);
         sin_out : OUT  std_logic_vector(17 downto 0)
        );
    END COMPONENT;
    

   --Inputs
	signal clk : std_logic := '0';
   signal ang_in : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal sin_out : std_logic_vector(17 downto 0);
 
	constant clk_period : time := 100ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sin_comp PORT MAP (
			 clk => clk,
          ang_in => ang_in,
          sin_out => sin_out
        );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
   clk_process: process
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
      wait for 48ns;	

      --wait for clk_period * 1;

      -- insert stimulus here
ang_in <= "0000000000";
wait for 100ns;

ang_in <= "0000001010";
wait for 100ns;

ang_in <= "0000010100";
wait for 100ns;

ang_in <= "0000011110";
wait for 100ns;

ang_in <= "0000101000";
wait for 100ns;

ang_in <= "0000110010";
wait for 100ns;

ang_in <= "0000111100";
wait for 100ns;

ang_in <= "0001000110";
wait for 100ns;

ang_in <= "0001010000";
wait for 100ns;

ang_in <= "0001011010";
wait for 100ns;

ang_in <= "0001100100";
wait for 100ns;

ang_in <= "0001101110";
wait for 100ns;

ang_in <= "0001111000";
wait for 100ns;

ang_in <= "0010000010";
wait for 100ns;

ang_in <= "0010001100";
wait for 100ns;

ang_in <= "0010010110";
wait for 100ns;

ang_in <= "0010100000";
wait for 100ns;

ang_in <= "0010101010";
wait for 100ns;

ang_in <= "0010110100";
wait for 100ns;

ang_in <= "0010111110";
wait for 100ns;

ang_in <= "0011001000";
wait for 100ns;

ang_in <= "0011010010";
wait for 100ns;

ang_in <= "0011011100";
wait for 100ns;

ang_in <= "0011100110";
wait for 100ns;

ang_in <= "0011110000";
wait for 100ns;

ang_in <= "0011111010";
wait for 100ns;

ang_in <= "0100000100";
wait for 100ns;

ang_in <= "0100001110";
wait for 100ns;

ang_in <= "0100011000";
wait for 100ns;

ang_in <= "0100100010";
wait for 100ns;

ang_in <= "0100101100";
wait for 100ns;

ang_in <= "0100110110";
wait for 100ns;

ang_in <= "0101000000";
wait for 100ns;

ang_in <= "0101001010";
wait for 100ns;

ang_in <= "0101010100";
wait for 100ns;

ang_in <= "0101011110";
wait for 100ns;

ang_in <= "0101101000";
wait for 100ns;

ang_in <= "0101110010";
wait for 100ns;

ang_in <= "0101111100";
wait for 100ns;

ang_in <= "0110000110";
wait for 100ns;

ang_in <= "0110010000";
wait for 100ns;

ang_in <= "0110011010";
wait for 100ns;

ang_in <= "0110100100";
wait for 100ns;

ang_in <= "0110101110";
wait for 100ns;

ang_in <= "0110111000";
wait for 100ns;

ang_in <= "0111000010";
wait for 100ns;

ang_in <= "0111001100";
wait for 100ns;

ang_in <= "0111010110";
wait for 100ns;

ang_in <= "0111100000";
wait for 100ns;

ang_in <= "0111101010";
wait for 100ns;

ang_in <= "0111110100";
wait for 100ns;

ang_in <= "0111111110";
wait for 100ns;

ang_in <= "1000001000";
wait for 100ns;

ang_in <= "1000010010";
wait for 100ns;

ang_in <= "1000011100";
wait for 100ns;

ang_in <= "1000100110";
wait for 100ns;

ang_in <= "1000110000";
wait for 100ns;

ang_in <= "1000111010";
wait for 100ns;

ang_in <= "1001000100";
wait for 100ns;

ang_in <= "1001001110";
wait for 100ns;

ang_in <= "1001011000";
wait for 100ns;

ang_in <= "1001100010";
wait for 100ns;

ang_in <= "1001101100";
wait for 100ns;

ang_in <= "1001110110";
wait for 100ns;

ang_in <= "1010000000";
wait for 100ns;

ang_in <= "1010001010";
wait for 100ns;

ang_in <= "1010010100";
wait for 100ns;

ang_in <= "1010011110";
wait for 100ns;

ang_in <= "1010101000";
wait for 100ns;

ang_in <= "1010110010";
wait for 100ns;

ang_in <= "1010111100";
wait for 100ns;

ang_in <= "1011000110";
wait for 100ns;

ang_in <= "1011010000";
wait for 100ns;

ang_in <= "1011011010";
wait for 100ns;

ang_in <= "1011100100";
wait for 100ns;

ang_in <= "1011101110";
wait for 100ns;

ang_in <= "1011111000";
wait for 100ns;

ang_in <= "1100000010";
wait for 100ns;

ang_in <= "1100001100";
wait for 100ns;

ang_in <= "1100010110";
wait for 100ns;

ang_in <= "1100100000";
wait for 100ns;

ang_in <= "1100101010";
wait for 100ns;

ang_in <= "1100110100";
wait for 100ns;

ang_in <= "1100111110";
wait for 100ns;

ang_in <= "1101001000";
wait for 100ns;

ang_in <= "1101010010";
wait for 100ns;

ang_in <= "1101011100";
wait for 100ns;

ang_in <= "1101100110";
wait for 100ns;

ang_in <= "1101110000";
wait for 100ns;

ang_in <= "1101111010";
wait for 100ns;

ang_in <= "1110000100";
wait for 100ns;

ang_in <= "1110001110";
wait for 100ns;

ang_in <= "1110011000";
wait for 100ns;

ang_in <= "1110100010";
wait for 100ns;

ang_in <= "1110101100";
wait for 100ns;

ang_in <= "1110110110";
wait for 100ns;

ang_in <= "1111000000";
wait for 100ns;

ang_in <= "1111001010";
wait for 100ns;

ang_in <= "1111010100";
wait for 100ns;

ang_in <= "1111011110";
wait for 100ns;

ang_in <= "1111101000";
wait for 100ns;


      wait;
   end process;

END;
