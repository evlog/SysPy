--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : testmaximumval.vhf
-- /___/   /\     Timestamp : 10/26/2011 08:01:49
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family virtex5 -flat -suppress -w C:/NOC11/TestswithLeon4/LEONGILL/testmaximumval.sch testmaximumval.vhf
--Design Name: testmaximumval
--Device: virtex5
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity testmaximumval is
   port ( XLXN_1 : in    std_logic_vector (31 downto 0); 
          XLXN_2 : in    std_logic_vector (31 downto 0); 
          XLXN_3 : in    std_logic_vector (5 downto 0); 
          XLXN_4 : in    std_logic; 
          XLXN_5 : in    std_logic; 
          XLXN_6 : in    std_logic; 
          XLXN_7 : out   std_logic_vector (31 downto 0); 
          XLXN_8 : out   std_logic);
end testmaximumval;

architecture BEHAVIORAL of testmaximumval is
   component addnewflt
      port ( a         : in    std_logic_vector (31 downto 0); 
             b         : in    std_logic_vector (31 downto 0); 
             operation : in    std_logic_vector (5 downto 0); 
             sclr      : in    std_logic; 
             ce        : in    std_logic; 
             clk       : in    std_logic; 
             result    : out   std_logic_vector (31 downto 0); 
             rdy       : out   std_logic);
   end component;
   
begin
   XLXI_1 : addnewflt
      port map (a(31 downto 0)=>XLXN_1(31 downto 0),
                b(31 downto 0)=>XLXN_2(31 downto 0),
                ce=>XLXN_5,
                clk=>XLXN_6,
                operation(5 downto 0)=>XLXN_3(5 downto 0),
                sclr=>XLXN_4,
                rdy=>XLXN_8,
                result(31 downto 0)=>XLXN_7(31 downto 0));
   
end BEHAVIORAL;


