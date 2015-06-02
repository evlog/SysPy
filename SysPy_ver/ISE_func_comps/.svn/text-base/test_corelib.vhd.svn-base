----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:19:24 03/08/2010 
-- Design Name: 
-- Module Name:    test_corelib - test_corelib_struct 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library XilinxCoreLib;
use XilinxCoreLib.all;
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_corelib is
    Port (CLK : in  STD_LOGIC;
           ADD : in  STD_LOGIC;
			  SCLR : in STD_LOGIC;
			  B : in STD_LOGIC_VECTOR(7 downto 0);
			  Q : out STD_LOGIC_VECTOR(7 downto 0));
end test_corelib;

architecture test_corelib_struct of test_corelib is

component counter
    Port (CLK : in  STD_LOGIC;
           ADD : in  STD_LOGIC;
			  SCLR : in STD_LOGIC;
			  B : in STD_LOGIC_VECTOR(7 downto 0);
			  Q : out STD_LOGIC_VECTOR(7 downto 0));
end component;

-- FPGA Express Black Box declaration
attribute fpga_dont_touch: string;
attribute fpga_dont_touch of counter: component is "true";


begin

U0: counter port map(CLK => CLK, ADD => ADD, SCLR => SCLR, B => B, Q => Q);

end test_corelib_struct;

-- pragma translate_off
library XilinxCoreLib;
configuration test_corelib_struct_conf of test_corelib is

 --for test_corelib_struct
 for all :
  counter use entity XilinxCoreLib.c_accum_v11_0
generic map (
    C_XDEVICEFAMILY => "no_family",
    C_IMPLEMENTATION => 0,
    C_VERBOSITY => 0,
    C_B_WIDTH => 8,
    C_OUT_WIDTH => 8,
    C_B_TYPE => 1,  -- 0=signed, 1=unsigned;
    C_CE_OVERRIDES_SCLR => 0,  -- 0=SYNC over CE, 1 = CE over SYNC
    C_ADD_MODE => 0,  -- 0=add, 1=sub, 2=addsub;
    C_HAS_C_IN => 0,
    C_HAS_CE => 0,
    C_HAS_BYPASS => 0,
    C_HAS_SCLR => 0,
    C_LATENCY => 1,

    C_SCALE => 0,
    C_AINIT_VAL => "0",
    C_SINIT_VAL => "0",
    C_BYPASS_LOW => 0,
    C_SCLR_OVERRIDES_SSET => 1,  -- 0=set wins, 1=clear wins
    C_HAS_SSET => 0,
    C_HAS_SINIT => 0);

--  port map (
--    B => B,  -- input value
--    CLK => CLK,  -- clock
--    ADD => ADD,
--    C_IN => '0',  -- carry in
--    CE => '1', -- clock enable
--    BYPASS => '0',  -- sync load of b into reg
--    SCLR => SCLR, -- synch init.
--    SSET => '0',  -- synch set.
--    SINIT => '0', -- synch init.
--    Q => Q  -- synch output value
--    );

 end for;
--end for;

end test_corelib_struct_conf;
-- pragma translate_on

