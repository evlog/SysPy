--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : DSPUNITFRM4.vhf
-- /___/   /\     Timestamp : 07/01/2011 09:49:00
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family virtex5 -flat -suppress -w C:/NOC8/NOC8t/DSPUNITFRM4.sch DSPUNITFRM4.vhf
--Design Name: DSPUNITFRM4
--Device: virtex5
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FRM4X_2DSP2 is
generic (N   : integer :=4;
	 RNGseed1: integer :=0;  --std_logic_vector(7 downto 0) :="00000001";
	 RNGseed2: integer :=1;  -- std_logic_vector(7 downto 0) :="00000001";
	 RNGseed3: integer :=2;  --std_logic_vector(7 downto 0) :="00000001";
	 RNGseed4: integer :=4); --std_logic_vector(7 downto 0) :="00000001");
   port ( ap1               : in    std_logic_vector (8 downto 0); 
          ap2               : in    std_logic_vector (8 downto 0); 
          ap3               : in    std_logic_vector (8 downto 0); 
          ap4               : in    std_logic_vector (8 downto 0); 
          clk, en5 ,en4             : in    std_logic; 
          cnst0_5_X3        : in    std_logic_vector (31 downto 0); 
          cnst0_5_X3_2      : in    std_logic_vector (31 downto 0); 
          cnst0_5_X3_3      : in    std_logic_vector (31 downto 0); 
          cnst0_5_X4_4      : in    std_logic_vector (31 downto 0); 
          cnst1             : in    std_logic_vector (31 downto 0); 
          cnt               : in    std_logic; 
          ena               : in    std_logic; 
          en1               : in    std_logic; 
          K1                : in    std_logic_vector (31 downto 0); 
          K2                : in    std_logic_vector (31 downto 0); 
          K3                : in    std_logic_vector (31 downto 0); 
          K4                : in    std_logic_vector (31 downto 0); 
          opadd             : in    std_logic_vector (5 downto 0); 
          opsub             : in    std_logic_vector (5 downto 0); 
          Qinseed1          : in    std_logic_vector (7 downto 0); 
          Qinseed2          : in    std_logic_vector (7 downto 0); 
          Qinseed3          : in    std_logic_vector (7 downto 0); 
          Qinseed4          : in    std_logic_vector (7 downto 0); 
          Qsp1              : in    std_logic_vector (31 downto 0); 
          Qsp1a             : in    std_logic_vector (31 downto 0); 
          Qsp1aa            : in    std_logic_vector (31 downto 0); 
          Qsp1b             : in    std_logic_vector (31 downto 0); 
          Qsp1c             : in    std_logic_vector (31 downto 0); 
          Qsp2              : in    std_logic_vector (31 downto 0); 
          Qsp2a             : in    std_logic_vector (31 downto 0); 
          Qsp2aa            : in    std_logic_vector (31 downto 0); 
          Qsp2b             : in    std_logic_vector (31 downto 0); 
          Qsp2c             : in    std_logic_vector (31 downto 0); 
          Qsp3              : in    std_logic_vector (31 downto 0); 
          Qsp3a             : in    std_logic_vector (31 downto 0); 
          Qsp3aa            : in    std_logic_vector (31 downto 0); 
          Qsp3b             : in    std_logic_vector (31 downto 0); 
          Qsp3c             : in    std_logic_vector (31 downto 0); 
          Qsp4              : in    std_logic_vector (31 downto 0); 
          Qsp4a             : in    std_logic_vector (31 downto 0); 
          Qsp4aa            : in    std_logic_vector (31 downto 0); 
          Qsp4b             : in    std_logic_vector (31 downto 0); 
          Qsp4c             : in    std_logic_vector (31 downto 0); 
          Qsp5              : in    std_logic_vector (31 downto 0); 
          Qsp5a             : in    std_logic_vector (31 downto 0); 
          Qsp5aa            : in    std_logic_vector (31 downto 0); 
          Qsp5b             : in    std_logic_vector (31 downto 0); 
          Qsp5c             : in    std_logic_vector (31 downto 0); 
          Qsp6              : in    std_logic_vector (31 downto 0); 
          Qsp6a             : in    std_logic_vector (31 downto 0); 
          Qsp6aa            : in    std_logic_vector (31 downto 0); 
          Qsp6b             : in    std_logic_vector (31 downto 0); 
          Qsp6c             : in    std_logic_vector (31 downto 0); 
          Qsp7              : in    std_logic_vector (31 downto 0); 
          Qsp7a             : in    std_logic_vector (31 downto 0); 
          Qsp7aa            : in    std_logic_vector (31 downto 0); 
          Qsp7b             : in    std_logic_vector (31 downto 0); 
          Qsp7c             : in    std_logic_vector (31 downto 0); 
          Qsp8              : in    std_logic_vector (31 downto 0); 
          Qsp8a             : in    std_logic_vector (31 downto 0); 
          Qsp8aa            : in    std_logic_vector (31 downto 0); 
          Qsp8b             : in    std_logic_vector (31 downto 0); 
          Qsp8c             : in    std_logic_vector (31 downto 0); 
          Qsta              : in    std_logic_vector (31 downto 0); 
          Qst1              : in    std_logic_vector (31 downto 0); 
          Qst1a             : in    std_logic_vector (31 downto 0); 
          Qst1b             : in    std_logic_vector (31 downto 0); 
          Qst1c             : in    std_logic_vector (31 downto 0); 
          Qst1d             : in    std_logic_vector (31 downto 0); 
          Qst2              : in    std_logic_vector (31 downto 0); 
          Qst2a             : in    std_logic_vector (31 downto 0); 
          Qst2b             : in    std_logic_vector (31 downto 0); 
          Qst2c             : in    std_logic_vector (31 downto 0); 
          Qst2d             : in    std_logic_vector (31 downto 0); 
          Qst3              : in    std_logic_vector (31 downto 0); 
          Qst3a             : in    std_logic_vector (31 downto 0); 
          Qst3b             : in    std_logic_vector (31 downto 0); 
          Qst3c             : in    std_logic_vector (31 downto 0); 
          Qst3d             : in    std_logic_vector (31 downto 0); 
          Qst4              : in    std_logic_vector (31 downto 0); 
          Qst4b             : in    std_logic_vector (31 downto 0); 
          Qst4c             : in    std_logic_vector (31 downto 0); 
          Qst4d             : in    std_logic_vector (31 downto 0); 
          Qst5              : in    std_logic_vector (31 downto 0); 
          Qst5a             : in    std_logic_vector (31 downto 0); 
          Qst5b             : in    std_logic_vector (31 downto 0); 
          Qst5c             : in    std_logic_vector (31 downto 0); 
          Qst5d             : in    std_logic_vector (31 downto 0); 
          Qst6              : in    std_logic_vector (31 downto 0); 
          Qst6a             : in    std_logic_vector (31 downto 0); 
          Qst6b             : in    std_logic_vector (31 downto 0); 
          Qst6c             : in    std_logic_vector (31 downto 0); 
          Qst6d             : in    std_logic_vector (31 downto 0); 
          Qst7              : in    std_logic_vector (31 downto 0); 
          Qst7a             : in    std_logic_vector (31 downto 0); 
          Qst7b             : in    std_logic_vector (31 downto 0); 
          Qst7c             : in    std_logic_vector (31 downto 0); 
          Qst7d             : in    std_logic_vector (31 downto 0); 
          Qst8              : in    std_logic_vector (31 downto 0); 
          Qst8a             : in    std_logic_vector (31 downto 0); 
          Qst8b             : in    std_logic_vector (31 downto 0); 
          Qst8c             : in    std_logic_vector (31 downto 0); 
          Qst8d             : in    std_logic_vector (31 downto 0); 
          rst,rstflagmmu               : in    std_logic; 
          rstmin            : in    std_logic; 
          saddsub           : in    std_logic; 
          sclrseed          : in    std_logic; 
          selintdimer1      : in    std_logic_vector (2 downto 0); 
          selintdimer2      : in    std_logic_vector (2 downto 0); 
          selintdimer3      : in    std_logic_vector (2 downto 0); 
          selintdimer4      : in    std_logic_vector (2 downto 0); 
          X1address1        : in    std_logic_vector (31 downto 0); 
          X1sp              : in    std_logic_vector (31 downto 0); 
          X2address2        : in    std_logic_vector (31 downto 0); 
          X2sp              : in    std_logic_vector (31 downto 0); 
          X3addrss          : in    std_logic_vector (31 downto 0); 
          X3sp              : in    std_logic_vector (31 downto 0); 
          X4addrss          : in    std_logic_vector (31 downto 0); 
          X4sp              : in    std_logic_vector (31 downto 0); 
          X5addrss          : in    std_logic_vector (31 downto 0); 
          X5sp              : in    std_logic_vector (31 downto 0); 
          X6addrss          : in    std_logic_vector (31 downto 0); 
          X6sp              : in    std_logic_vector (31 downto 0); 
          X7addrss          : in    std_logic_vector (31 downto 0); 
          X7sp              : in    std_logic_vector (31 downto 0); 
          X8addrss          : in    std_logic_vector (31 downto 0); 
          X8sp              : in    std_logic_vector (31 downto 0); 
          zerocnst          : in    std_logic_vector (31 downto 0); 
          addressmin1       : out   std_logic_vector (8 downto 0); 
          addressmin2       : out   std_logic_vector (8 downto 0); 
          addressmin3       : out   std_logic_vector (8 downto 0); 
          addressmin4       : out   std_logic_vector (8 downto 0); 
          flagMMU           : out   std_logic; 
          Qspeciesupdate1   : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate1a  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate1aa : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate1b  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate1c  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate2   : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate2a  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate2aa : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate2b  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate2c  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate3   : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate3a  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate3aa : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate3b  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate3c  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate4   : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate4a  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate4aa : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate4b  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate4c  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate5   : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate5aa,Qspupdate5a  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate5b  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate5c  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate6   : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate6a  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate6aa : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate6b  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate6c  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate7   : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate7a  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate7aa : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate7b  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate7c  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate8   : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate8a  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate8aa : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate8b  : out   std_logic_vector (31 downto 0); 
          Qspeciesupdate8c  : out   std_logic_vector (31 downto 0); 
          rdyout            : out   std_logic; 
          Tmin1             : out   std_logic_vector (31 downto 0); 
          Tmin2             : out   std_logic_vector (31 downto 0); 
          Tmin3             : out   std_logic_vector (31 downto 0); 
          Tmin4             : out   std_logic_vector (31 downto 0));
end FRM4X_2DSP2;

architecture BEHAVIORAL of FRM4X_2DSP2 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1,endff1,endff2,endff3,endff4 : std_logic;
   signal XLXN_3,flagMMU1,flagMMU2,flagMMU3,flagMMU4: std_logic;
	signal Qinseedint1,Qinseedint2,Qinseedint3,Qinseedint4       : std_logic_vector (7 downto 0):="00000000";
   signal XLXN_4                        : std_logic;
   signal XLXN_5                        : std_logic;
   signal XLXN_10                       : std_logic_vector (31 downto 0);
   signal XLXN_11                       : std_logic_vector (31 downto 0);
   signal XLXN_13                       : std_logic;
   signal XLXN_33                       : std_logic_vector (31 downto 0);
   signal XLXN_34                       : std_logic;
   signal XLXN_35                       : std_logic;
   signal XLXN_36                       : std_logic_vector (31 downto 0);
   signal XLXN_37                       : std_logic_vector (31 downto 0);
   signal XLXN_39                       : std_logic;
   signal XLXN_56                       : std_logic_vector (31 downto 0);
   signal XLXN_58                       : std_logic;
   signal XLXN_60                       : std_logic;
   signal XLXN_61                       : std_logic;
   signal XLXN_64                       : std_logic_vector (31 downto 0);
   signal XLXN_66                       : std_logic_vector (31 downto 0);
   signal XLXN_67                       : std_logic_vector (31 downto 0);
   signal XLXN_78                       : std_logic;
   signal XLXN_79                       : std_logic;
   signal XLXN_87                       : std_logic_vector (31 downto 0);
   signal XLXN_88                       : std_logic_vector (31 downto 0);
   signal XLXN_94                       : std_logic;
   signal XLXN_98                       : std_logic;
   signal XLXN_110                      : std_logic_vector (31 downto 0);
   signal XLXN_112                      : std_logic;
   signal XLXN_114                      : std_logic;
   signal XLXN_115                      : std_logic;
   signal XLXN_117                      : std_logic;
   signal XLXN_284                      : std_logic_vector (31 downto 0);
   signal XLXN_288                      : std_logic_vector (8 downto 0);
   signal XLXN_289                      : std_logic_vector (31 downto 0);
   signal XLXN_290                      : std_logic_vector (8 downto 0);
   signal XLXN_292                      : std_logic_vector (31 downto 0);
   signal XLXN_293                      : std_logic_vector (8 downto 0);
   signal XLXN_295                      : std_logic;
   signal XLXN_329                      : std_logic_vector (8 downto 0);
   signal XLXN_330                      : std_logic_vector (31 downto 0);
   signal XLXI_17_dimertoFSm_openSignal : std_logic;
   signal XLXI_18_dimertoFSm_openSignal : std_logic;
   signal XLXI_19_dimertoFSm_openSignal : std_logic;
   signal XLXI_20_dimertoFSm_openSignal : std_logic;
   component PE4
      port ( ce          : in    std_logic; 
             clk         : in    std_logic; 
             cnt         : in    std_logic; 
             ebFSMPE22   : in    std_logic; 
             sclr        : in    std_logic; 
             sclrseed    : in    std_logic; 
             cnst05_X3   : in    std_logic_vector (31 downto 0); 
             cnst1       : in    std_logic_vector (31 downto 0); 
             k           : in    std_logic_vector (31 downto 0); 
             op          : in    std_logic_vector (5 downto 0); 
             Qinseed     : in    std_logic_vector (7 downto 0); 
             selintdimer : in    std_logic_vector (1 downto 0); 
             X1          : in    std_logic_vector (31 downto 0); 
             X2          : in    std_logic_vector (31 downto 0); 
             zerocnst    : in    std_logic_vector (31 downto 0); 
             rdytime     : out   std_logic; 
             resultime   : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUXfordimerisation
      port ( clk        : in    std_logic; 
             rst        : in    std_logic; 
             selint     : out   std_logic; 
             dimertoFSm : out   std_logic; 
             ce3rdmult  : out   std_logic; 
             X1addrss   : in    std_logic_vector (31 downto 0); 
             X2addrss   : in    std_logic_vector (31 downto 0); 
             X1sp       : in    std_logic_vector (31 downto 0); 
             X2sp       : in    std_logic_vector (31 downto 0); 
             selintsp   : out   std_logic; 
             selintsp2  : out   std_logic);
   end component;
   
   component MUX1X2
      port ( selintsp : in    std_logic; 
             clk      : in    std_logic; 
             Xsp      : in    std_logic_vector (31 downto 0); 
             Qmuxout  : out   std_logic_vector (31 downto 0));
   end component;
   
   component FSMstart4
      port ( clk           : in    std_logic; 
             ce            : in    std_logic; 
             sclr          : in    std_logic; 
             dimertoFSm    : in    std_logic; 
             selintdimer   : in    std_logic_vector (1 downto 0); 
             Qin           : in    std_logic_vector (31 downto 0); 
             Qaddrss       : in    std_logic_vector (8 downto 0); 
             flagMMU       : out   std_logic; 
             enfsmpe       : out   std_logic; 
             Qoutval       : out   std_logic_vector (31 downto 0); 
             Qaddrssoutval : out   std_logic_vector (8 downto 0));
   end component;
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
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
	
	component addingnewflt IS
	port (
	a: in std_logic_vector(31 downto 0);
	b: in std_logic_vector(31 downto 0);
	operation: in std_logic_vector(5 downto 0);
	clk: in std_logic;
	sclr: in std_logic;
	ce: in std_logic;
	result: out std_logic_vector(31 downto 0);
	rdy: out std_logic);
END component;
   
   component find8min512
      port ( ENA         : in    std_logic; 
             CLK         : in    std_logic; 
             rst         : in    std_logic; 
             NO_IN       : in    std_logic_vector (31 downto 0); 
             Qaddress    : in    std_logic_vector (8 downto 0); 
             Qaddressout : out   std_logic_vector (8 downto 0); 
             MIN_OUT     : out   std_logic_vector (31 downto 0));
   end component;
	
	component PE5 is
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
          resultime   : out   std_logic_vector (31 downto 0));
end component;

component FSM6new is
port(clk,ce,sclr,dimertoFSm,en5,en4:in std_logic;
     flagMMU,enfsmpe,endff:out std_logic;
	  selintdimer:in std_logic_vector(2 downto 0);
     Qin:in std_logic_vector(31 downto 0);
     Qaddrss:in std_logic_vector(8 downto 0);
     Qoutval:out std_logic_vector(31 downto 0);
     Qaddrssoutval:out std_logic_vector(8 downto 0));
end component;

component DFFsignal is
port(Rs,en:in std_logic;
D:in std_logic;
clock:in std_logic;
Q:out std_logic);
end component;

   
begin

Qinseedint1<=conv_std_logic_vector(RNGseed1,8);
Qinseedint2<=conv_std_logic_vector(RNGseed2,8);
Qinseedint3<=conv_std_logic_vector(RNGseed3,8);
Qinseedint4<=conv_std_logic_vector(RNGseed4,8);



   XLXI_1 : PE5
      port map (ce=>en1,
                clk=>clk,
                cnst1(31 downto 0)=>cnst1(31 downto 0),
                cnst05_X3(31 downto 0)=>cnst0_5_X3(31 downto 0),
                cnt=>cnt,
                ebFSMPE22=>XLXN_13,
                k(31 downto 0)=>K1(31 downto 0),
                op(5 downto 0)=>opsub(5 downto 0),
                Qinseed(7 downto 0)=>Qinseedint1(7 downto 0),
                sclr=>rst,
                sclrseed=>sclrseed,
                selintdimer(2 downto 0)=>selintdimer1(2 downto 0),
                X1(31 downto 0)=>X1sp(31 downto 0),
                X2(31 downto 0)=>X2sp(31 downto 0),
                zerocnst(31 downto 0)=>zerocnst(31 downto 0),
                rdytime=>XLXN_35,
                resultime(31 downto 0)=>XLXN_33(31 downto 0));
   
--   XLXI_2 : MUXfordimerisation
--      port map (clk=>clk,
--                rst=>rst,
--                X1addrss(31 downto 0)=>X1address1(31 downto 0),
--                X1sp(31 downto 0)=>X1sp(31 downto 0),
--                X2addrss(31 downto 0)=>X2address2(31 downto 0),
--                X2sp(31 downto 0)=>X2sp(31 downto 0),
--                ce3rdmult=>open,
--                dimertoFSm=>open,
--                selint=>open,
--                selintsp=>XLXN_1,
--                selintsp2=>XLXN_3);
   
   XLXI_3 : PE5
      port map (ce=>en1,
                clk=>clk,
                cnst1(31 downto 0)=>cnst1(31 downto 0),
                cnst05_X3(31 downto 0)=>cnst0_5_X3_2(31 downto 0),
                cnt=>cnt,
                ebFSMPE22=>XLXN_39,
                k(31 downto 0)=>K2(31 downto 0),
                op(5 downto 0)=>opsub(5 downto 0),
                Qinseed(7 downto 0)=>Qinseedint2(7 downto 0),
                sclr=>rst,
                sclrseed=>sclrseed,
                selintdimer(2 downto 0)=>selintdimer2(2 downto 0),
                X1(31 downto 0)=>X3sp(31 downto 0),
                X2(31 downto 0)=>X4sp(31 downto 0),
                zerocnst(31 downto 0)=>zerocnst(31 downto 0),
                rdytime=>XLXN_60,
                resultime(31 downto 0)=>XLXN_56(31 downto 0));
   
   XLXI_4 : PE5
      port map (ce=>en1,
                clk=>clk,
                cnst1(31 downto 0)=>cnst1(31 downto 0),
                cnst05_X3(31 downto 0)=>cnst0_5_X3_3(31 downto 0),
                cnt=>cnt,
                ebFSMPE22=>XLXN_61,
                k(31 downto 0)=>K3(31 downto 0),
                op(5 downto 0)=>opsub(5 downto 0),
                Qinseed(7 downto 0)=>Qinseedint3(7 downto 0),
                sclr=>rst,
                sclrseed=>sclrseed,
                selintdimer(2 downto 0)=>selintdimer3(2 downto 0),
                X1(31 downto 0)=>X5sp(31 downto 0),
                X2(31 downto 0)=>X6sp(31 downto 0),
                zerocnst(31 downto 0)=>zerocnst(31 downto 0),
                rdytime=>XLXN_115,
                resultime(31 downto 0)=>XLXN_64(31 downto 0));
   
   XLXI_5 : PE5
      port map (ce=>en1,
                clk=>clk,
                cnst1(31 downto 0)=>cnst1(31 downto 0),
                cnst05_X3(31 downto 0)=>cnst0_5_X4_4(31 downto 0),
                cnt=>cnt,
                ebFSMPE22=>XLXN_94,
                k(31 downto 0)=>K4(31 downto 0),
                op(5 downto 0)=>opsub(5 downto 0),
                Qinseed(7 downto 0)=>Qinseedint4(7 downto 0),
                sclr=>rst,
                sclrseed=>sclrseed,
                selintdimer(2 downto 0)=>selintdimer4(2 downto 0),
                X1(31 downto 0)=>X7sp(31 downto 0),
                X2(31 downto 0)=>X8sp(31 downto 0),
                zerocnst(31 downto 0)=>zerocnst(31 downto 0),
                rdytime=>XLXN_117,
                resultime(31 downto 0)=>XLXN_110(31 downto 0));
   
--   XLXI_6 : MUXfordimerisation
--      port map (clk=>clk,
--                rst=>rst,
--                X1addrss(31 downto 0)=>X3addrss(31 downto 0),
--                X1sp(31 downto 0)=>X3sp(31 downto 0),
--                X2addrss(31 downto 0)=>X4addrss(31 downto 0),
--                X2sp(31 downto 0)=>X4sp(31 downto 0),
--                ce3rdmult=>open,
--                dimertoFSm=>open,
--                selint=>open,
--                selintsp=>XLXN_4,
--                selintsp2=>XLXN_5);
--   
--   XLXI_7 : MUXfordimerisation
--      port map (clk=>clk,
--                rst=>rst,
--                X1addrss(31 downto 0)=>X5addrss(31 downto 0),
--                X1sp(31 downto 0)=>X5sp(31 downto 0),
--                X2addrss(31 downto 0)=>X6addrss(31 downto 0),
--                X2sp(31 downto 0)=>X6sp(31 downto 0),
--                ce3rdmult=>open,
--                dimertoFSm=>open,
--                selint=>open,
--                selintsp=>XLXN_78,
--                selintsp2=>XLXN_79);
--   
--   XLXI_8 : MUXfordimerisation
--      port map (clk=>clk,
--                rst=>rst,
--                X1addrss(31 downto 0)=>X7addrss(31 downto 0),
--                X1sp(31 downto 0)=>X7sp(31 downto 0),
--                X2addrss(31 downto 0)=>X8addrss(31 downto 0),
--                X2sp(31 downto 0)=>X8sp(31 downto 0),
--                ce3rdmult=>open,
--                dimertoFSm=>open,
--                selint=>open,
--                selintsp=>XLXN_295,
--                selintsp2=>XLXN_98);
--   
--   XLXI_9 : MUX1X2
--      port map (clk=>clk,
--                selintsp=>XLXN_1,
--                Xsp(31 downto 0)=>X1sp(31 downto 0),
--                Qmuxout(31 downto 0)=>XLXN_10(31 downto 0));
--   
--   XLXI_10 : MUX1X2
--      port map (clk=>clk,
--                selintsp=>XLXN_3,
--                Xsp(31 downto 0)=>X2sp(31 downto 0),
--                Qmuxout(31 downto 0)=>XLXN_11(31 downto 0));
--   
--   XLXI_11 : MUX1X2
--      port map (clk=>clk,
--                selintsp=>XLXN_4,
--                Xsp(31 downto 0)=>X3sp(31 downto 0),
--                Qmuxout(31 downto 0)=>XLXN_36(31 downto 0));
--   
--   XLXI_12 : MUX1X2
--      port map (clk=>clk,
--                selintsp=>XLXN_5,
--                Xsp(31 downto 0)=>X4sp(31 downto 0),
--                Qmuxout(31 downto 0)=>XLXN_37(31 downto 0));
--   
--   XLXI_13 : MUX1X2
--      port map (clk=>clk,
--                selintsp=>XLXN_78,
--                Xsp(31 downto 0)=>X5sp(31 downto 0),
--                Qmuxout(31 downto 0)=>XLXN_66(31 downto 0));
--   
--   XLXI_14 : MUX1X2
--      port map (clk=>clk,
--                selintsp=>XLXN_79,
--                Xsp(31 downto 0)=>X6sp(31 downto 0),
--                Qmuxout(31 downto 0)=>XLXN_67(31 downto 0));
--   
--   XLXI_15 : MUX1X2
--      port map (clk=>clk,
--                selintsp=>XLXN_295,
--                Xsp(31 downto 0)=>X7sp(31 downto 0),
--                Qmuxout(31 downto 0)=>XLXN_87(31 downto 0));
--   
--   XLXI_16 : MUX1X2
--      port map (clk=>clk,
--                selintsp=>XLXN_98,
--                Xsp(31 downto 0)=>X8sp(31 downto 0),
--                Qmuxout(31 downto 0)=>XLXN_88(31 downto 0));
   
   XLXI_17 : FSM6new
      port map (ce=>en1,
                clk=>clk,
                dimertoFSm=>XLXI_17_dimertoFSm_openSignal,
					 en5=>en5,
					 en4=>en4,
                Qaddrss(8 downto 0)=>ap1(8 downto 0),
                Qin(31 downto 0)=>XLXN_33(31 downto 0),
                sclr=>sclrseed,
                selintdimer(2 downto 0)=>selintdimer1(2 downto 0),
                enfsmpe=>XLXN_13,
					 endff=>endff1,
                flagMMU=>XLXN_34,
                Qaddrssoutval(8 downto 0)=>XLXN_288(8 downto 0),
                Qoutval(31 downto 0)=>XLXN_284(31 downto 0));
   
   XLXI_18 : FSM6new
      port map (ce=>en1,
                clk=>clk,
                dimertoFSm=>XLXI_18_dimertoFSm_openSignal,
					 en5=>en5,
					 en4=>en4,
                Qaddrss(8 downto 0)=>ap2(8 downto 0),
                Qin(31 downto 0)=>XLXN_56(31 downto 0),
                sclr=>sclrseed,
                selintdimer(2 downto 0)=>selintdimer2(2 downto 0),
                enfsmpe=>XLXN_39,
					 endff=>endff2,
                flagMMU=>XLXN_58,
                Qaddrssoutval(8 downto 0)=>XLXN_290(8 downto 0),
                Qoutval(31 downto 0)=>XLXN_289(31 downto 0));
   
   XLXI_19 : FSM6new
      port map (ce=>en1,
                clk=>clk,
                dimertoFSm=>XLXI_19_dimertoFSm_openSignal,
					 en5=>en5,
					 en4=>en4,
                Qaddrss(8 downto 0)=>ap3(8 downto 0),
                Qin(31 downto 0)=>XLXN_64(31 downto 0),
                sclr=>sclrseed,
                selintdimer(2 downto 0)=>selintdimer3(2 downto 0),
                enfsmpe=>XLXN_61,
					 endff=>endff3,
                flagMMU=>XLXN_112,
                Qaddrssoutval(8 downto 0)=>XLXN_293(8 downto 0),
                Qoutval(31 downto 0)=>XLXN_292(31 downto 0));
   
   XLXI_20 : FSM6new
      port map (ce=>en1,
                clk=>clk,
                dimertoFSm=>XLXI_20_dimertoFSm_openSignal,
					 en5=>en5,
					 en4=>en4,
                Qaddrss(8 downto 0)=>ap4(8 downto 0),
                Qin(31 downto 0)=>XLXN_110(31 downto 0),
                sclr=>sclrseed,
                selintdimer(2 downto 0)=>selintdimer4(2 downto 0),
                enfsmpe=>XLXN_94,
					 endff=>endff4,
                flagMMU=>XLXN_114,
                Qaddrssoutval(8 downto 0)=>XLXN_329(8 downto 0),
                Qoutval(31 downto 0)=>XLXN_330(31 downto 0));
					 
 XLXI_20a : DFFsignal 
port map(Rs=>rstflagmmu,
         en=>endff1,
          D=>XLXN_34,
      clock=>clk,
          Q=>flagMMU1);
					 
XLXI_20b : DFFsignal 
port map(Rs=>rstflagmmu,
         en=>endff2,
          D=>XLXN_58,
      clock=>clk,
          Q=>flagMMU2);	
			 
XLXI_20c : DFFsignal 
port map(Rs=>rstflagmmu,
         en=>endff3,
          D=>XLXN_112,
      clock=>clk,
          Q=>flagMMU3);				 
			 
XLXI_20d : DFFsignal 
port map(Rs=>rstflagmmu,
         en=>endff4,
          D=>XLXN_114,
      clock=>clk,
          Q=>flagMMU4);					 
   
   XLXI_21 : AND4
      port map (I0=>flagMMU1,
                I1=>flagMMU2,
                I2=>flagMMU3,
                I3=>flagMMU4,
                O=>flagMMU);
   
   XLXI_22 : AND4
      port map (I0=>XLXN_117,
                I1=>XLXN_115,
                I2=>XLXN_60,
                I3=>XLXN_35,
                O=>rdyout);
   
   XLXI_23 : addnewflt
      port map (a(31 downto 0)=>Qsp1aa(31 downto 0),
                b(31 downto 0)=>Qst1a(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate1aa(31 downto 0));
   
   XLXI_24 : addnewflt
      port map (a(31 downto 0)=>Qsp2aa(31 downto 0),
                b(31 downto 0)=>Qst2a(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate2aa(31 downto 0));
   
   XLXI_25 : addnewflt
      port map (a(31 downto 0)=>Qsp3aa(31 downto 0),
                b(31 downto 0)=>Qst3a(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate3aa(31 downto 0));
   
   XLXI_26 : addnewflt
      port map (a(31 downto 0)=>Qsp4aa(31 downto 0),
                b(31 downto 0)=>Qsta(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate4aa(31 downto 0));
   
   XLXI_27 : addnewflt
      port map (a(31 downto 0)=>Qsp5aa(31 downto 0),
                b(31 downto 0)=>Qst5a(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate5aa(31 downto 0));
   
   XLXI_28 : addnewflt
      port map (a(31 downto 0)=>Qsp6aa(31 downto 0),
                b(31 downto 0)=>Qst6a(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate6aa(31 downto 0));
   
   XLXI_29 : addnewflt
      port map (a(31 downto 0)=>Qsp7aa(31 downto 0),
                b(31 downto 0)=>Qst7a(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate7aa(31 downto 0));
   
   XLXI_30 : addnewflt
      port map (a(31 downto 0)=>Qsp8aa(31 downto 0),
                b(31 downto 0)=>Qst8a(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate8aa(31 downto 0));
   
   XLXI_31 : addingnewflt
      port map (a(31 downto 0)=>Qsp1a(31 downto 0),
                b(31 downto 0)=>Qst1b(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate1a(31 downto 0));
   
   XLXI_32 : addingnewflt
      port map (a(31 downto 0)=>Qsp2a(31 downto 0),
                b(31 downto 0)=>Qst2b(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate2a(31 downto 0));
   
   XLXI_33 : addingnewflt
      port map (a(31 downto 0)=>Qsp3a(31 downto 0),
                b(31 downto 0)=>Qst3b(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate3a(31 downto 0));
   
   XLXI_34 : addingnewflt
      port map (a(31 downto 0)=>Qsp4a(31 downto 0),
                b(31 downto 0)=>Qst4b(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate4a(31 downto 0));
   
   XLXI_35 : addingnewflt
      port map (a(31 downto 0)=>Qsp5a(31 downto 0),
                b(31 downto 0)=>Qst5b(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspupdate5a(31 downto 0));
   
   XLXI_36 : addingnewflt
      port map (a(31 downto 0)=>Qsp6a(31 downto 0),
                b(31 downto 0)=>Qst6b(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate6a(31 downto 0));
   
   XLXI_37 : addingnewflt
      port map (a(31 downto 0)=>Qsp7a(31 downto 0),
                b(31 downto 0)=>Qst7b(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result=>Qspeciesupdate7a(31 downto 0));
   
   XLXI_38 : addingnewflt
      port map (a(31 downto 0)=>Qsp8a(31 downto 0),
                b(31 downto 0)=>Qst8b(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate8a(31 downto 0));
   
   XLXI_39 : addingnewflt
      port map (a(31 downto 0)=>Qsp1b(31 downto 0),
                b(31 downto 0)=>Qst1c(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate1b(31 downto 0));
   
   XLXI_40 : addingnewflt
      port map (a(31 downto 0)=>Qsp2b(31 downto 0),
                b(31 downto 0)=>Qst2c(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate2b(31 downto 0));
   
   XLXI_41 : addingnewflt
      port map (a(31 downto 0)=>Qsp3b(31 downto 0),
                b(31 downto 0)=>Qst3c(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate3b(31 downto 0));
   
   XLXI_42 : addingnewflt
      port map (a(31 downto 0)=>Qsp4b(31 downto 0),
                b(31 downto 0)=>Qst4c(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate4b(31 downto 0));
   
   XLXI_43 : addingnewflt
      port map (a(31 downto 0)=>Qsp5b(31 downto 0),
                b(31 downto 0)=>Qst5c(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate5b(31 downto 0));
   
   XLXI_44 : addingnewflt
      port map (a(31 downto 0)=>Qsp6b(31 downto 0),
                b(31 downto 0)=>Qst6c(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate6b(31 downto 0));
   
   XLXI_45 : addingnewflt
      port map (a(31 downto 0)=>Qsp7b(31 downto 0),
                b(31 downto 0)=>Qst7c(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate7b(31 downto 0));
   
   XLXI_46 : addingnewflt
      port map (a(31 downto 0)=>Qsp8b(31 downto 0),
                b(31 downto 0)=>Qst8c(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate8b(31 downto 0));
   
   XLXI_47 : addingnewflt
      port map (a(31 downto 0)=>Qsp1c(31 downto 0),
                b(31 downto 0)=>Qst1d(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate1c(31 downto 0));
   
   XLXI_48 : addingnewflt
      port map (a(31 downto 0)=>Qsp2c(31 downto 0),
                b(31 downto 0)=>Qst2d(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate2c(31 downto 0));
   
   XLXI_49 : addingnewflt
      port map (a(31 downto 0)=>Qsp3c(31 downto 0),
                b(31 downto 0)=>Qst3d(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate3c(31 downto 0));
   
   XLXI_50 : addingnewflt
      port map (a(31 downto 0)=>Qsp4c(31 downto 0),
                b(31 downto 0)=>Qst4d(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate4c(31 downto 0));
   
   XLXI_51 : addingnewflt
      port map (a(31 downto 0)=>Qsp5c(31 downto 0),
                b(31 downto 0)=>Qst5d(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate5c(31 downto 0));
   
   XLXI_52 : addingnewflt
      port map (a(31 downto 0)=>Qsp6c(31 downto 0),
                b(31 downto 0)=>Qst6d(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate6c(31 downto 0));
   
   XLXI_53 : addingnewflt
      port map (a(31 downto 0)=>Qsp7c(31 downto 0),
                b(31 downto 0)=>Qst7d(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate7c(31 downto 0));
   
   XLXI_54 : addingnewflt
      port map (a(31 downto 0)=>Qsp8c(31 downto 0),
                b(31 downto 0)=>Qst8d(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate8c(31 downto 0));
   
   XLXI_70 : addnewflt
      port map (a(31 downto 0)=>Qsp1(31 downto 0),
                b(31 downto 0)=>Qst1(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate1(31 downto 0));
   
   XLXI_71 : addnewflt
      port map (a(31 downto 0)=>Qsp2(31 downto 0),
                b(31 downto 0)=>Qst2(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate2(31 downto 0));
   
   XLXI_72 : addnewflt
      port map (a(31 downto 0)=>Qsp3(31 downto 0),
                b(31 downto 0)=>Qst3(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate3(31 downto 0));
   
   XLXI_73 : addnewflt
      port map (a(31 downto 0)=>Qsp4(31 downto 0),
                b(31 downto 0)=>Qst4(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate4(31 downto 0));
   
   XLXI_74 : addnewflt
      port map (a(31 downto 0)=>Qsp5(31 downto 0),
                b(31 downto 0)=>Qst5(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate5(31 downto 0));
   
   XLXI_75 : addnewflt
      port map (a(31 downto 0)=>Qsp6(31 downto 0),
                b(31 downto 0)=>Qst6(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate6(31 downto 0));
   
   XLXI_76 : addnewflt
      port map (a(31 downto 0)=>Qsp7(31 downto 0),
                b(31 downto 0)=>Qst7(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate7(31 downto 0));
   
   XLXI_77 : addnewflt
      port map (a(31 downto 0)=>Qsp8(31 downto 0),
                b(31 downto 0)=>Qst8(31 downto 0),
                ce=>saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>rst,
                rdy=>open,
                result(31 downto 0)=>Qspeciesupdate8(31 downto 0));
   
   XLXI_78 : find8min512
      port map (CLK=>clk,
                ENA=>ena,
                NO_IN(31 downto 0)=>XLXN_284(31 downto 0),
                Qaddress(8 downto 0)=>XLXN_288(8 downto 0),
                rst=>rstmin,
                MIN_OUT(31 downto 0)=>Tmin1(31 downto 0),
                Qaddressout(8 downto 0)=>addressmin1(8 downto 0));
   
   XLXI_79 : find8min512
      port map (CLK=>clk,
                ENA=>ena,
                NO_IN(31 downto 0)=>XLXN_289(31 downto 0),
                Qaddress(8 downto 0)=>XLXN_290(8 downto 0),
                rst=>rstmin,
                MIN_OUT(31 downto 0)=>Tmin2(31 downto 0),
                Qaddressout(8 downto 0)=>addressmin2(8 downto 0));
   
   XLXI_80 : find8min512
      port map (CLK=>clk,
                ENA=>ena,
                NO_IN(31 downto 0)=>XLXN_292(31 downto 0),
                Qaddress(8 downto 0)=>XLXN_293(8 downto 0),
                rst=>rstmin,
                MIN_OUT(31 downto 0)=>Tmin3(31 downto 0),
                Qaddressout(8 downto 0)=>addressmin3(8 downto 0));
   
   XLXI_81 : find8min512
      port map (CLK=>clk,
                ENA=>ena,
                NO_IN(31 downto 0)=>XLXN_330(31 downto 0),
                Qaddress(8 downto 0)=>XLXN_329(8 downto 0),
                rst=>rstmin,
                MIN_OUT(31 downto 0)=>Tmin4(31 downto 0),
                Qaddressout(8 downto 0)=>addressmin4(8 downto 0));
   
end BEHAVIORAL;


