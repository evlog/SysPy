--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : PE5.vhf
-- /___/   /\     Timestamp : 07/08/2011 14:05:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family virtex5 -flat -suppress -w C:/NOC8/NOC8t/PE5.sch PE5.vhf
--Design Name: PE5
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

entity PE6 is
   port ( ce          : in    std_logic; 
          clk         : in    std_logic; 
          cnst1       : in    std_logic_vector (31 downto 0); 
          cnst05_X3   : in    std_logic_vector (31 downto 0); 
          cnt         : in    std_logic; 
          ebFSMPE22   : in    std_logic; 
          k           : in    std_logic_vector (31 downto 0); 
          op          : in    std_logic_vector (5 downto 0); 
          Qinseed     : in    std_logic_vector (7 downto 0); 
          sclr        : in    std_logic; 
          sclrseed    : in    std_logic; 
          selintdimer : in    std_logic_vector (2 downto 0); 
          X1          : in    std_logic_vector (31 downto 0); 
          X2          : in    std_logic_vector (31 downto 0); 
          zerocnst    : in    std_logic_vector (31 downto 0); 
          rdytime     : out   std_logic; 
          resultime,aj   : out   std_logic_vector (31 downto 0));
end PE6;

architecture BEHAVIORAL of PE6 is
   attribute BOX_TYPE   : string ;
   signal XLXN_6      : std_logic_vector (31 downto 0);
   signal XLXN_9      : std_logic;
   signal XLXN_11     : std_logic_vector (31 downto 0);
   signal XLXN_12     : std_logic;
   signal XLXN_13     : std_logic_vector (31 downto 0);
   signal XLXN_18     : std_logic;
   signal XLXN_19     : std_logic;
   signal XLXN_22     : std_logic_vector (31 downto 0);
   signal XLXN_23     : std_logic;
   signal XLXN_25     : std_logic;
   signal XLXN_26     : std_logic_vector (31 downto 0);
   signal XLXN_27     : std_logic;
   signal XLXN_28     : std_logic_vector (31 downto 0);
   signal XLXN_31     : std_logic_vector (31 downto 0);
   signal XLXN_32     : std_logic_vector (31 downto 0);
   signal XLXN_39     : std_logic;
   signal XLXN_45     : std_logic_vector (31 downto 0);
   signal XLXN_47     : std_logic;
   signal XLXN_48     : std_logic;
   signal XLXN_49     : std_logic;
   signal XLXN_50     : std_logic_vector (31 downto 0);
   signal XLXN_51     : std_logic_vector (31 downto 0);
   signal XLXN_52     : std_logic_vector (31 downto 0);
   signal XLXN_53     : std_logic_vector (31 downto 0);
   signal XLXN_54     : std_logic_vector (31 downto 0);
   signal XLXN_55     : std_logic_vector (31 downto 0);
   signal XLXN_57     : std_logic;
   signal XLXN_60     : std_logic;
   signal XLXN_61     : std_logic;
   signal XLXN_62     : std_logic;
   signal XLXN_64     : std_logic;
   signal XLXN_66     : std_logic;
   signal XLXN_68     : std_logic;
   signal XLXN_69     : std_logic;
   signal XLXN_71,Qmuxint, Qmuxint2,Qmuxint3   : std_logic_vector (31 downto 0);
   signal XLXN_73     : std_logic;
   signal XLXN_75     : std_logic_vector (31 downto 0);
   signal XLXN_81     : std_logic_vector (31 downto 0);
   signal XLXN_86     : std_logic_vector (31 downto 0);
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
   
   component newmultflt
      port ( a      : in    std_logic_vector (31 downto 0); 
             b      : in    std_logic_vector (31 downto 0); 
             sclr   : in    std_logic; 
             ce     : in    std_logic; 
             clk    : in    std_logic; 
             result : out   std_logic_vector (31 downto 0); 
             rdy    : out   std_logic);
   end component;
   
   component patterngen2
      port ( clock   : in    std_logic; 
             en      : in    std_logic; 
             clear   : in    std_logic; 
             count   : in    std_logic; 
             Qinseed : in    std_logic_vector (7 downto 0); 
             Qout    : out   std_logic_vector (31 downto 0));
   end component;
   
   component fixtoflt
      port ( a      : in    std_logic_vector (31 downto 0); 
             sclr   : in    std_logic; 
             ce     : in    std_logic; 
             clk    : in    std_logic; 
             result : out   std_logic_vector (31 downto 0); 
             rdy    : out   std_logic);
   end component;
   
   component lnxfixed
      port ( ce        : in    std_logic; 
             clk       : in    std_logic; 
             sclr      : in    std_logic; 
             op        : in    std_logic_vector (5 downto 0); 
             x         : in    std_logic_vector (31 downto 0); 
             rdylnx    : out   std_logic; 
             resultlnx : out   std_logic_vector (31 downto 0));
   end component;
   
   component minuslnx
      port ( a         : in    std_logic_vector (31 downto 0); 
             b         : in    std_logic_vector (31 downto 0); 
             operation : in    std_logic_vector (5 downto 0); 
             sclr      : in    std_logic; 
             ce        : in    std_logic; 
             clk       : in    std_logic; 
             result    : out   std_logic_vector (31 downto 0); 
             rdy       : out   std_logic);
   end component;
   
   component FSMPE22_3
      port ( clk  : in    std_logic; 
             ce   : in    std_logic; 
             sclr : in    std_logic; 
             en   : out   std_logic);
   end component;
   
   component DFFinternalPE
      port ( Rs    : in    std_logic; 
             en    : in    std_logic; 
             clock : in    std_logic; 
             D     : in    std_logic_vector (31 downto 0); 
             Q     : out   std_logic_vector (31 downto 0));
   end component;
   
   component divflt2
      port ( a      : in    std_logic_vector (31 downto 0); 
             b      : in    std_logic_vector (31 downto 0); 
             sclr   : in    std_logic; 
             ce     : in    std_logic; 
             clk    : in    std_logic; 
             result : out   std_logic_vector (31 downto 0); 
             rdy    : out   std_logic);
   end component;
	
	component  MUX1X2_2 is
port(Xsp:in std_logic_vector(31 downto 0);
     selintsp:in std_logic_vector(2 downto 0);
	  clk:in std_logic;
	  Qmuxout:out std_logic_vector(31 downto 0));
end component ;
   
   component MUXPEint3
      port ( clk               : in    std_logic; 
             rdy1              : in    std_logic; 
             rdy2              : in    std_logic; 
             rdy3              : in    std_logic; 
             rdy4              : in    std_logic; 
             rdy5              : in    std_logic; 
             rdy6              : in    std_logic; 
             KX1               : in    std_logic_vector (31 downto 0); 
             KX1X2             : in    std_logic_vector (31 downto 0); 
             KX1X2X3           : in    std_logic_vector (31 downto 0); 
             KX1_1X1K0_5       : in    std_logic_vector (31 downto 0); 
             KX1_1X2X1K0_5     : in    std_logic_vector (31 downto 0); 
             KX1_1X1_2X1K0_166 : in    std_logic_vector (31 downto 0); 
             selint            : in    std_logic_vector (2 downto 0); 
             rdyout            : out   std_logic; 
             Qajxout           : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUXPEintdimer2
      port ( clk         : in    std_logic; 
             selintdimer : in    std_logic_vector (2 downto 0); 
             X2_1        : in    std_logic_vector (31 downto 0); 
             X1_1        : in    std_logic_vector (31 downto 0); 
             X2          : in    std_logic_vector (31 downto 0); 
             X3          : in    std_logic_vector (31 downto 0); 
             k0_5        : in    std_logic_vector (31 downto 0); 
             k_0166      : in    std_logic_vector (31 downto 0); 
             cemul1      : out   std_logic; 
             cemul2      : out   std_logic; 
             cemul3      : out   std_logic; 
             cemul4      : out   std_logic; 
             Qmult2      : out   std_logic_vector (31 downto 0); 
             Qmult3      : out   std_logic_vector (31 downto 0); 
             Qmult4      : out   std_logic_vector (31 downto 0));
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component cnstlatch2_2
      port ( ce    : in    std_logic; 
             Qout1 : out   std_logic_vector (31 downto 0); 
             Qout2 : out   std_logic_vector (31 downto 0); 
             Qtwo  : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : addnewflt
      port map (a(31 downto 0)=>X1(31 downto 0),
                b(31 downto 0)=>cnst1(31 downto 0),
                ce=>ce,
                clk=>clk,
                operation(5 downto 0)=>op(5 downto 0),
                sclr=>sclr,
                rdy=>XLXN_62,
                result(31 downto 0)=>XLXN_45(31 downto 0));
   
   XLXI_2 : addnewflt
      port map (a(31 downto 0)=>X2(31 downto 0),
                b(31 downto 0)=>XLXN_86(31 downto 0),
                ce=>ce,
                clk=>clk,
                operation(5 downto 0)=>op(5 downto 0),
                sclr=>sclr,
                rdy=>XLXN_64,
                result(31 downto 0)=>XLXN_81(31 downto 0));
   
   XLXI_3 : newmultflt
      port map (a(31 downto 0)=>XLXN_54(31 downto 0),
                b(31 downto 0)=>XLXN_55(31 downto 0),
                ce=>XLXN_49,
                clk=>clk,
                sclr=>sclr,
                rdy=>XLXN_66,
                result(31 downto 0)=>XLXN_71(31 downto 0));
   
   XLXI_4 : newmultflt
      port map (a(31 downto 0)=>XLXN_52(31 downto 0),
                b(31 downto 0)=>XLXN_53(31 downto 0),
                ce=>XLXN_48,
                clk=>clk,
                sclr=>sclr,
                rdy=>XLXN_61,
                result(31 downto 0)=>XLXN_54(31 downto 0));
   
   XLXI_5 : newmultflt
      port map (a(31 downto 0)=>XLXN_50(31 downto 0),
                b(31 downto 0)=>XLXN_51(31 downto 0),
                ce=>XLXN_47,
                clk=>clk,
                sclr=>sclr,
                rdy=>XLXN_60,
                result(31 downto 0)=>XLXN_52(31 downto 0));
					 
--	 XLXI_5_1 :  MUX1X2_2 
--port map(Xsp=>X1(31 downto 0),
--     selintsp=>selintdimer(2 downto 0),
--	  clk=>clk,
--	  Qmuxout=>Qmuxint);
				 
   
   XLXI_6 : newmultflt
      port map (a(31 downto 0)=>k(31 downto 0),
                b(31 downto 0)=>X1(31 downto 0),
                ce=>XLXN_39,
                clk=>clk,
                sclr=>sclr,
                rdy=>XLXN_57,
                result(31 downto 0)=>XLXN_50(31 downto 0));
   
   XLXI_7 : patterngen2
      port map (clear=>sclrseed,
                clock=>clk,
                count=>cnt,
                en=>ce,
                Qinseed(7 downto 0)=>Qinseed(7 downto 0),
                Qout(31 downto 0)=>XLXN_6(31 downto 0));
   
   XLXI_8 : fixtoflt
      port map (a(31 downto 0)=>XLXN_6(31 downto 0),
                ce=>ce,
                clk=>clk,
                sclr=>sclr,
                rdy=>XLXN_9,
                result(31 downto 0)=>XLXN_11(31 downto 0));
   
   XLXI_9 : lnxfixed
      port map (ce=>XLXN_9,
                clk=>clk,
                op(5 downto 0)=>op(5 downto 0),
                sclr=>sclr,
                x(31 downto 0)=>XLXN_11(31 downto 0),
                rdylnx=>XLXN_12,
                resultlnx(31 downto 0)=>XLXN_13(31 downto 0));
   
   XLXI_10 : minuslnx
      port map (a(31 downto 0)=>zerocnst(31 downto 0),
                b(31 downto 0)=>XLXN_13(31 downto 0),
                ce=>XLXN_12,
                clk=>clk,
                operation(5 downto 0)=>op(5 downto 0),
                sclr=>sclr,
                rdy=>XLXN_23,
                result(31 downto 0)=>XLXN_22(31 downto 0));
   
   XLXI_11 : FSMPE22_3
      port map (ce=>ebFSMPE22,
                clk=>clk,
                sclr=>XLXN_18,
                en=>XLXN_19);
   
   XLXI_12 : DFFinternalPE
      port map (clock=>clk,
                D(31 downto 0)=>XLXN_22(31 downto 0),
                en=>XLXN_19,
                Rs=>sclr,
                Q(31 downto 0)=>XLXN_26(31 downto 0));
   
   XLXI_13 : newmultflt
      port map (a(31 downto 0)=>XLXN_26(31 downto 0),
                b(31 downto 0)=>XLXN_28(31 downto 0),
                ce=>XLXN_25,
                clk=>clk,
                sclr=>sclr,
                rdy=>rdytime,
                result(31 downto 0)=>resultime(31 downto 0));
   
   XLXI_14 : divflt2
      port map (a(31 downto 0)=>cnst1(31 downto 0),
                b(31 downto 0)=>XLXN_75(31 downto 0),
                ce=>XLXN_73,
                clk=>clk,
                sclr=>sclr,
                rdy=>XLXN_27,
                result(31 downto 0)=>XLXN_28(31 downto 0));
  
                aj<=XLXN_28(31 downto 0);
  
   XLXI_15 : MUXPEint3
      port map (clk=>clk,
                KX1(31 downto 0)=>XLXN_50(31 downto 0),
                KX1X2(31 downto 0)=>XLXN_52(31 downto 0),
                KX1X2X3(31 downto 0)=>XLXN_54(31 downto 0),
                KX1_1X1K0_5(31 downto 0)=>XLXN_54(31 downto 0),
                KX1_1X1_2X1K0_166(31 downto 0)=>XLXN_71(31 downto 0),
                KX1_1X2X1K0_5(31 downto 0)=>XLXN_71(31 downto 0),
                rdy1=>XLXN_57,
                rdy2=>XLXN_60,
                rdy3=>XLXN_61,
                rdy4=>XLXN_68,
                rdy5=>XLXN_69,
                rdy6=>XLXN_69,
                selint(2 downto 0)=>selintdimer(2 downto 0),
                Qajxout(31 downto 0)=>XLXN_75(31 downto 0),
                rdyout=>XLXN_73);
					 
--		 XLXI_15_1 :  MUX1X2_2 
--port map(Xsp=>X2(31 downto 0),
--     selintsp=>selintdimer(2 downto 0),
--	  clk=>clk,
--	  Qmuxout=>Qmuxint2);			 
--	  
--	   XLXI_15_2 :  MUX1X2_2 
--port map(Xsp=>cnst05_X3(31 downto 0),
--     selintsp=>selintdimer(2 downto 0),
--	  clk=>clk,
--	  Qmuxout=>Qmuxint3);		
--					 
   
   XLXI_16 : MUXPEintdimer2
      port map (clk=>clk,
                k_0166(31 downto 0)=>XLXN_32(31 downto 0),
                k0_5(31 downto 0)=>XLXN_31(31 downto 0),
                selintdimer(2 downto 0)=>selintdimer(2 downto 0),
                X1_1(31 downto 0)=>XLXN_45(31 downto 0),
                X2(31 downto 0)=>X2(31 downto 0),
                X2_1(31 downto 0)=>XLXN_81(31 downto 0),
                X3(31 downto 0)=>cnst05_X3(31 downto 0),
                cemul1=>XLXN_39,
                cemul2=>XLXN_47,
                cemul3=>XLXN_48,
                cemul4=>XLXN_49,
                Qmult2(31 downto 0)=>XLXN_51(31 downto 0),
                Qmult3(31 downto 0)=>XLXN_53(31 downto 0),
                Qmult4(31 downto 0)=>XLXN_55(31 downto 0));
   
   XLXI_17 : AND2
      port map (I0=>XLXN_27,
                I1=>XLXN_23,
                O=>XLXN_25);
   
   XLXI_18 : AND2
      port map (I0=>sclrseed,
                I1=>sclr,
                O=>XLXN_18);
   
   XLXI_19 : cnstlatch2_2
      port map (ce=>ce,
                Qout1(31 downto 0)=>XLXN_31(31 downto 0),
                Qout2(31 downto 0)=>XLXN_32(31 downto 0),
                Qtwo(31 downto 0)=>XLXN_86(31 downto 0));
   
   XLXI_20 : AND2
      port map (I0=>XLXN_61,
                I1=>XLXN_62,
                O=>XLXN_68);
   
   XLXI_21 : AND2
      port map (I0=>XLXN_64,
                I1=>XLXN_66,
                O=>XLXN_69);
   
end BEHAVIORAL;


