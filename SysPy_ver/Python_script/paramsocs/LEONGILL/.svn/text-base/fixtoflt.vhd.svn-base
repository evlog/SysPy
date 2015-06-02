--------------------------------------------------------------------------------
--     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.            --
--                                                                            --
--     This file contains confidential and proprietary information            --
--     of Xilinx, Inc. and is protected under U.S. and                        --
--     international copyright and other intellectual property                --
--     laws.                                                                  --
--                                                                            --
--     DISCLAIMER                                                             --
--     This disclaimer is not a license and does not grant any                --
--     rights to the materials distributed herewith. Except as                --
--     otherwise provided in a valid license issued to you by                 --
--     Xilinx, and to the maximum extent permitted by applicable              --
--     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                --
--     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES            --
--     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING              --
--     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                 --
--     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and               --
--     (2) Xilinx shall not be liable (whether in contract or tort,           --
--     including negligence, or under any other theory of                     --
--     liability) for any loss or damage of any kind or nature                --
--     related to, arising under or in connection with these                  --
--     materials, including for any direct, or any indirect,                  --
--     special, incidental, or consequential loss or damage                   --
--     (including loss of data, profits, goodwill, or any type of             --
--     loss or damage suffered as a result of any action brought              --
--     by a third party) even if such damage or loss was                      --
--     reasonably foreseeable or Xilinx had been advised of the               --
--     possibility of the same.                                               --
--                                                                            --
--     CRITICAL APPLICATIONS                                                  --
--     Xilinx products are not designed or intended to be fail-               --
--     safe, or for use in any application requiring fail-safe                --
--     performance, such as life-support or safety devices or                 --
--     systems, Class III medical devices, nuclear facilities,                --
--     applications related to the deployment of airbags, or any              --
--     other applications that could lead to death, personal                  --
--     injury, or severe property or environmental damage                     --
--     (individually and collectively, "Critical                              --
--     Applications"). Customer assumes the sole risk and                     --
--     liability of any use of Xilinx products in Critical                    --
--     Applications, subject only to applicable laws and                      --
--     regulations governing limitations on product liability.                --
--                                                                            --
--     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS               --
--     PART OF THIS FILE AT ALL TIMES.                                        --
--------------------------------------------------------------------------------
-- You must compile the wrapper file fixtoflt.vhd when simulating
-- the core, fixtoflt. When compiling the wrapper file, be sure to
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
ENTITY fixtoflt IS
	port (
	a: in std_logic_vector(31 downto 0);
	clk: in std_logic;
	sclr: in std_logic;
	ce: in std_logic;
	result: out std_logic_vector(31 downto 0);
	rdy: out std_logic);
END fixtoflt;

ARCHITECTURE fixtoflt_a OF fixtoflt IS
-- synthesis translate_off
component wrapped_fixtoflt
	port (
	a: in std_logic_vector(31 downto 0);
	clk: in std_logic;
	sclr: in std_logic;
	ce: in std_logic;
	result: out std_logic_vector(31 downto 0);
	rdy: out std_logic);
end component;

-- Configuration specification 
	for all : wrapped_fixtoflt use entity XilinxCoreLib.floating_point_v5_0(behavioral)
		generic map(
			c_has_b_nd => 0,
			c_speed => 2,
			c_has_sclr => 1,
			c_has_a_rfd => 0,
			c_b_fraction_width => 16,
			c_has_operation_nd => 0,
			c_has_exception => 0,
			c_a_fraction_width => 16,
			c_has_flt_to_fix => 0,
			c_has_flt_to_flt => 0,
			c_has_fix_to_flt => 1,
			c_has_invalid_op => 0,
			c_latency => 6,
			c_has_divide_by_zero => 0,
			c_has_overflow => 0,
			c_xdevicefamily => "virtex5",
			c_mult_usage => 0,
			c_has_rdy => 1,
			c_result_fraction_width => 24,
			c_has_divide => 0,
			c_has_inexact => 0,
			c_has_underflow => 0,
			c_has_sqrt => 0,
			c_has_add => 0,
			c_has_status => 0,
			c_has_a_negate => 0,
			c_optimization => 1,
			c_has_a_nd => 0,
			c_has_aclr => 0,
			c_has_b_negate => 0,
			c_has_subtract => 0,
			c_compare_operation => 8,
			c_rate => 1,
			c_has_compare => 0,
			c_has_operation_rfd => 0,
			c_has_b_rfd => 0,
			c_result_width => 32,
			c_b_width => 32,
			c_status_early => 0,
			c_a_width => 32,
			c_has_cts => 0,
			c_has_ce => 1,
			c_has_multiply => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_fixtoflt
		port map (
			a => a,
			clk => clk,
			sclr => sclr,
			ce => ce,
			result => result,
			rdy => rdy);
-- synthesis translate_on

END fixtoflt_a;

