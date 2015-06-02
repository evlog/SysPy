----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:31:48 05/03/2011 
-- Design Name: 
-- Module Name:    lnxfixed - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : lnxfixed.vhf
-- /___/   /\     Timestamp : 05/03/2011 19:58:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family virtex5 -flat -suppress -w "C:/Documents and Settings/User/Desktop/NOC8/NOC4/Gill512/almostreadyfor110t/NOC4/NOC/Allmine/Testagain/lnxfixed.sch" lnxfixed.vhf
--Design Name: lnxfixed
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

entity lnxfixed is
   port ( ce        : in    std_logic; 
          clk       : in    std_logic; 
          op        : in    std_logic_vector (5 downto 0); 
          sclr      : in    std_logic; 
          x         : in    std_logic_vector (31 downto 0); 
          rdylnx    : out   std_logic; 
          resultlnx : out   std_logic_vector (31 downto 0));
end lnxfixed;

architecture BEHAVIORAL of lnxfixed is

   signal XLXN_3    : std_logic_vector (31 downto 0);
   signal XLXN_7    : std_logic;
   signal XLXN_12   : std_logic_vector (31 downto 0);
   signal XLXN_13,Qoutb,Qouts   : std_logic_vector (31 downto 0);
	
   component lnxflt
      port ( clk         : in    std_logic; 
             x           : in    std_logic_vector (31 downto 0); 
             cnstmultflt : out   std_logic_vector (31 downto 0); 
             cnstaddflt  : out   std_logic_vector (31 downto 0));
   end component;
   
   component newmultflt
      port ( a      : in    std_logic_vector (31 downto 0); 
             b      : in    std_logic_vector (31 downto 0); 
             sclr   : in    std_logic; 
             ce     : in    std_logic; 
             clk    : in    std_logic; 
             result : out   std_logic_vector (31 downto 0); 
             rdy    : out   std_logic);
   end component;
   
   component subnewflt
      port ( a         : in    std_logic_vector (31 downto 0); 
             b         : in    std_logic_vector (31 downto 0); 
             operation : in    std_logic_vector (5 downto 0); 
             sclr      : in    std_logic; 
             ce        : in    std_logic; 
             clk       : in    std_logic; 
             result    : out   std_logic_vector (31 downto 0); 
             rdy       : out   std_logic);
   end component;
	
	component Compforlnx is
port(clk:in std_logic;
     Qin1,Qin2:in std_logic_vector(31 downto 0);
	  Qoutb,Qouts:out std_logic_vector(31 downto 0));
end component;
   
begin
   XLXI_1 : lnxflt
      port map (clk=>clk,
                x(31 downto 0)=>x(31 downto 0),
                cnstaddflt(31 downto 0)=>XLXN_13(31 downto 0),
                cnstmultflt(31 downto 0)=>XLXN_3(31 downto 0));
   
   XLXI_2 : newmultflt
      port map (a(31 downto 0)=>XLXN_3(31 downto 0),
                b(31 downto 0)=>x(31 downto 0),
                ce=>ce,
                clk=>clk,
                sclr=>sclr,
                rdy=>XLXN_7,
                result(31 downto 0)=>XLXN_12(31 downto 0));
					 
	XLXI_2a: Compforlnx 
port map (clk=>clk,
     Qin1=>XLXN_12(31 downto 0),
	  Qin2=>XLXN_13(31 downto 0),
	  Qoutb=>Qoutb,
	  Qouts=>Qouts);
			 
   
   XLXI_3 : subnewflt
      port map (a(31 downto 0)=>Qouts(31 downto 0),
                b(31 downto 0)=>Qoutb(31 downto 0),
                ce=>XLXN_7,
                clk=>clk,
                operation(5 downto 0)=>op(5 downto 0),
                sclr=>sclr,
                rdy=>rdylnx,
                result(31 downto 0)=>resultlnx(31 downto 0));
   
end BEHAVIORAL;




