--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2009 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file test_core_gen.vhd when simulating
-- the core, test_core_gen. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY test_core_gen IS
	port (
	b: IN std_logic_VECTOR(15 downto 0);
	clk: IN std_logic;
	bypass: IN std_logic;
	q: OUT std_logic_VECTOR(15 downto 0));
END test_core_gen;

ARCHITECTURE test_core_gen_a OF test_core_gen IS
-- synthesis translate_off
component wrapped_test_core_gen
	port (
	b: IN std_logic_VECTOR(15 downto 0);
	clk: IN std_logic;
	bypass: IN std_logic;
	q: OUT std_logic_VECTOR(15 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_test_core_gen use entity XilinxCoreLib.c_accum_v11_0(behavioral)
		generic map(
			c_out_width => 16,
			c_add_mode => 0,
			c_b_type => 0,
			c_ce_overrides_sclr => 0,
			c_implementation => 0,
			c_has_sclr => 0,
			c_verbosity => 0,
			c_latency => 1,
			c_has_bypass => 1,
			c_ainit_val => "0",
			c_bypass_low => 0,
			c_has_ce => 0,
			c_sclr_overrides_sset => 1,
			c_scale => 0,
			c_sinit_val => "0",
			c_has_sset => 0,
			c_has_c_in => 0,
			c_has_sinit => 0,
			c_xdevicefamily => "spartan3",
			c_b_width => 16);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_test_core_gen
		port map (
			b => b,
			clk => clk,
			bypass => bypass,
			q => q);
-- synthesis translate_on

END test_core_gen_a;

