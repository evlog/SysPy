----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:56 10/16/2011 
-- Design Name: 
-- Module Name:    LEONplusFRM4XNRM4X_2param - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity LEONplusFRM4XNRM4X_2param is

--    Mact   : integer :=316; --Reactions;
--    Mmax   : integer :=512; --Reactions;
--	 N   : integer :=4;
--    tech   : integer :=3; --order of reaction
--	 dotech   : integer := 32;	
--    RNGseed1:  std_logic_vector(7 downto 0) :="00000001";
--	 RNGseed2:   std_logic_vector(7 downto 0) :="00000010";
--	 RNGseed3:  std_logic_vector(7 downto 0) :="00000011";
--	 RNGseed4:   std_logic_vector(7 downto 0) :="00000100";	
--    groupsp:integer :=5; 
--    species   : integer := 8);--maximum number of species
generic (
    M   : integer :=512; --Reactions;The LOTKA_VOLTERA number
    --AL   : integer :=2; --algorithm
    N   : integer := 512;--maximum number of species
	 K   : integer := 1;--= # of parallel biomodel simulations (in the range [1,P]) each with a different random generator seed.
	 RNGseed1: integer := 1;--:  std_logic_vector(7 downto 0) :="00000001";
	 RNGseed2: integer := 1;--:   std_logic_vector(7 downto 0) :="00000001";
	 RNGseed3: integer := 2;--:  std_logic_vector(7 downto 0) :="00000001";
	 RNGseed4: integer := 3;--:
	 P   : integer := 4);--= number of PEs in the FRM Soc
	 
	 port( 
		--sys_clk_p
		send_character,clk,restartDDR2	: in	std_logic;
		--sys_clk_n			: in	std_logic;
		enupdate,ceglobal,sendnext : in    std_logic; 
     serial_in:in std_logic; 
	  restartUART,choise             : in    std_logic;
	 -- Qinsel:in std_logic_vector(7 downto 0);
		-- serial_out           : out    std_logic; 
          --restart          : in    std_logic; 
       sclr , sclrseed        : in    std_logic;
		 ce2out: out    std_logic;
--		clk200_p			: in	std_logic;
--		clk200_n			: in	std_logic;
---------------------------DIKO mOU------------------------------
--	 timeint:in std_logic_vector(31 downto 0);--Qsp1,Qsp2,Qsp3,Qsp4,Qsp5,Qsp6,Qsp7,Qsp8:in std_logic_vector(31 downto 0);
--	 id:in std_logic_vector(8 downto 0);
	 ------------------------------------------------------------------
--		sys_rst_n			: in	std_logic;
--		ddr2_address_fpga	: out	std_logic_vector (12 downto 0);
--		ddr2_ba_fpga		: out	std_logic_vector (1 downto 0);
--		ddr2_cas_n_fpga		: out	std_logic;
--		ddr2_ck_fpga		: out	std_logic_vector(1 downto 0);
--		ddr2_ck_n_fpga		: out	std_logic_vector(1 downto 0);
--		ddr2_cke_fpga		: out	std_logic_vector(0 downto 0);
--		ddr2_cs_n_fpga		: out	std_logic_vector(0 downto 0);
--		ddr2_dm_fpga		: out	std_logic_vector (7 downto 0);
--		ddr2_ras_n_fpga		: out	std_logic;
		--serial_out : out std_logic;
--		ddr2_we_n_fpga		: out	std_logic;
--		ddr2_odt_fpga		: out	std_logic_vector(0 downto 0);
--		ddr2_dq_fpga		: inout	std_logic_vector (63 downto 0);
--		ddr2_dqs_fpga		: inout	std_logic_vector (7 downto 0);
--		ddr2_dqs_n_fpga		: inout	std_logic_vector (7 downto 0);
--		init_done			: out	std_logic;
--		error				: out	std_logic;
id: out std_logic_vector(8 downto 0);
timeint,Qsp1int,Qsp2int,Qsp3int,Qsp4int,Qsp5int,Qsp6int,Qsp7int,Qsp8int:out std_logic_vector(31 downto 0);
		leds				: out	std_logic_vector(7 downto 0));
		
end LEONplusFRM4XNRM4X_2param;

architecture Behavioral of LEONplusFRM4XNRM4X_2param is

component memsubsystemfinalNRMFRM4X_2param is
generic (
    Mact   : integer :=316; --Reactions;
    Mmax   : integer :=512; --Reactions;
	 N   : integer :=4;
    tech   : integer :=3; --order of reaction
	 dotech   : integer := 32;		
    species   : integer := 8);--maximum number of species
   port ( afronminval      : in    std_logic_vector (8 downto 0); 
          afronminval1     : in    std_logic_vector (8 downto 0); 
          afronminval2     : in    std_logic_vector (8 downto 0); 
          afronminval3     : in    std_logic_vector (8 downto 0); 
          afronminval4     : in    std_logic_vector (8 downto 0); 
          ceglobal         : in    std_logic; 
          clk              : in    std_logic; 
			 -------------------------------**********************
			 fifo_write, flagMMU1,flagMMU2,flagMMU3,flagMMU4      :in std_logic;
			 Qinsel:in std_logic_vector(7 downto 0);--*************
		    Qoutsel1,Qoutsel2,Qoutsel3,Qoutsel4:out std_logic_vector(7 downto 0);---*************
          enr,enr1,enr2,enr3,rstflagmmu,en4,en5,NRMsignalout,enFSM7new1,enFSM7new2,enFSM7new3,enFSM7new4: out   std_logic;
			 ---------------------------------------------------------
			 continue         : in    std_logic; 
          flagmmu          : in    std_logic; 
          go               : in    std_logic; 
          modeint          : in    std_logic; 
          muxint           : in    std_logic_vector (2 downto 0); 
          Qinspecies,ainstat      : in    std_logic_vector (31 downto 0); 
          Qinstoichio      : in    std_logic_vector (255 downto 0); 
          Qpointers        : in    std_logic_vector (287 downto 0); 
          Qpointers2       : in    std_logic_vector (287 downto 0); 
          Qpointers3       : in    std_logic_vector (287 downto 0); 
          Qpointers4       : in    std_logic_vector (287 downto 0); 
			 didg,didg2,didg3,didg4  : in std_logic_vector(159 downto 0); 
          Qspeciesupdate1  : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate1a : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate1b : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate1c : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate2  : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate2a : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate2b : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate2c : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate3  : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate3a : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate3b : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate3c : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate4  : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate4a : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate4b : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate4c : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate5  : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate6  : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate7  : in    std_logic_vector (31 downto 0); 
          Qspeciesupdate8  : in    std_logic_vector (31 downto 0); 
          Qspupdate1aa     : in    std_logic_vector (31 downto 0); 
          Qspupdate2aa     : in    std_logic_vector (31 downto 0); 
          Qspupdate3aa     : in    std_logic_vector (31 downto 0); 
          Qspupdate4aa     : in    std_logic_vector (31 downto 0); 
          Qspupdate5a      : in    std_logic_vector (31 downto 0); 
          Qspupdate5aa     : in    std_logic_vector (31 downto 0); 
          Qspupdate5b      : in    std_logic_vector (31 downto 0); 
          Qspupdate5c      : in    std_logic_vector (31 downto 0); 
          Qspupdate6a      : in    std_logic_vector (31 downto 0); 
          Qspupdate6aa     : in    std_logic_vector (31 downto 0); 
          Qspupdate6b      : in    std_logic_vector (31 downto 0); 
          Qspupdate6c      : in    std_logic_vector (31 downto 0); 
          Qspupdate7a      : in    std_logic_vector (31 downto 0); 
          Qspupdate7aa     : in    std_logic_vector (31 downto 0); 
          Qspupdate7b      : in    std_logic_vector (31 downto 0); 
          Qspupdate7c      : in    std_logic_vector (31 downto 0); 
          Qspupdate8a      : in    std_logic_vector (31 downto 0); 
          Qspupdate8aa     : in    std_logic_vector (31 downto 0); 
          Qspupdate8b      : in    std_logic_vector (31 downto 0); 
          Qspupdate8c      : in    std_logic_vector (31 downto 0); 
          Qstopaddress     : in    std_logic_vector (8 downto 0); 
			 dimem1,dimem2,dimem3,dimem4 : in    std_logic_vector (2 downto 0); 
          rdyout,gostat, statistics          : in    std_logic; ------------------
          restart          : in    std_logic; 
          sclrseed         : in    std_logic; 
          simindi          : in    std_logic; 
          XLXN_336         : in    std_logic_vector (1 downto 0); 
          ap1              : out   std_logic_vector (8 downto 0); 
          ap2              : out   std_logic_vector (8 downto 0); 
          ap3              : out   std_logic_vector (8 downto 0); 
          ap4              : out   std_logic_vector (8 downto 0); 
          cetr,FSMstat,cestat,westat,cetrint            : out   std_logic; ------------------------
          ena              : out   std_logic; 
          enFROMFSM        : out   std_logic; 
          en1              : out   std_logic; 
          en2              : out   std_logic; 
          K1               : out   std_logic_vector (31 downto 0); 
          K2               : out   std_logic_vector (31 downto 0); 
          K3               : out   std_logic_vector (31 downto 0); 
          K4               : out   std_logic_vector (31 downto 0); 
          qmux1            : out   std_logic_vector (31 downto 0); 
          qmux2            : out   std_logic_vector (31 downto 0); 
          qmux3            : out   std_logic_vector (31 downto 0); 
          qmux4            : out   std_logic_vector (31 downto 0); 
          qmux5            : out   std_logic_vector (31 downto 0); 
          qmux6            : out   std_logic_vector (31 downto 0); 
          qmux7            : out   std_logic_vector (31 downto 0); 
          qmux8            : out   std_logic_vector (31 downto 0); 
          qmux9            : out   std_logic_vector (31 downto 0); 
          qmux10           : out   std_logic_vector (31 downto 0); 
          qmux11           : out   std_logic_vector (31 downto 0); 
          qmux12           : out   std_logic_vector (31 downto 0); 
          Qsp3a_b          : out   std_logic_vector (31 downto 0); 
          Qsp3b            : out   std_logic_vector (31 downto 0); 
          Qsp3b_b          : out   std_logic_vector (31 downto 0); 
          Qsp3c_b          : out   std_logic_vector (31 downto 0); 
          Qsp4             : out   std_logic_vector (31 downto 0); 
          Qsp4a_b          : out   std_logic_vector (31 downto 0); 
          Qsp4b            : out   std_logic_vector (31 downto 0); 
          Qsp4b_b          : out   std_logic_vector (31 downto 0); 
          Qsp4c_b          : out   std_logic_vector (31 downto 0); 
          Qsp5             : out   std_logic_vector (31 downto 0); 
          Qsp5a_b          : out   std_logic_vector (31 downto 0); 
          Qsp5b            : out   std_logic_vector (31 downto 0); 
          Qsp5b_b          : out   std_logic_vector (31 downto 0); 
          Qsp5c_b          : out   std_logic_vector (31 downto 0); 
          Qsp6             : out   std_logic_vector (31 downto 0); 
          Qsp6a_b          : out   std_logic_vector (31 downto 0); 
          Qsp6b            : out   std_logic_vector (31 downto 0); 
          Qsp6b_b          : out   std_logic_vector (31 downto 0); 
          Qsp6c_b          : out   std_logic_vector (31 downto 0); 
          Qsp7             : out   std_logic_vector (31 downto 0); 
          Qsp7a_b          : out   std_logic_vector (31 downto 0); 
          Qsp7b            : out   std_logic_vector (31 downto 0); 
          Qsp7b_b          : out   std_logic_vector (31 downto 0); 
          Qsp7c_b          : out   std_logic_vector (31 downto 0); 
          Qsp8             : out   std_logic_vector (31 downto 0); 
          Qst1             : out   std_logic_vector (31 downto 0); 
          Qst1a            : out   std_logic_vector (31 downto 0); 
          Qst1b            : out   std_logic_vector (31 downto 0); 
          Qst1c            : out   std_logic_vector (31 downto 0); 
          Qst1d            : out   std_logic_vector (31 downto 0); 
          Qst2             : out   std_logic_vector (31 downto 0); 
          Qst2a            : out   std_logic_vector (31 downto 0); 
          Qst2b            : out   std_logic_vector (31 downto 0); 
          Qst2c            : out   std_logic_vector (31 downto 0); 
          Qst2d            : out   std_logic_vector (31 downto 0); 
          Qst3             : out   std_logic_vector (31 downto 0); 
          Qst3a            : out   std_logic_vector (31 downto 0); 
          Qst3b            : out   std_logic_vector (31 downto 0); 
          Qst3c            : out   std_logic_vector (31 downto 0); 
          Qst3d            : out   std_logic_vector (31 downto 0); 
          Qst4             : out   std_logic_vector (31 downto 0); 
          Qst4a,Qstreal4a           : out   std_logic_vector (31 downto 0); 
          Qst4b            : out   std_logic_vector (31 downto 0); 
          Qst4c            : out   std_logic_vector (31 downto 0); 
          Qst4d            : out   std_logic_vector (31 downto 0); 
          Qst5             : out   std_logic_vector (31 downto 0); 
          Qst5a            : out   std_logic_vector (31 downto 0); 
          Qst5b            : out   std_logic_vector (31 downto 0); 
          Qst5c            : out   std_logic_vector (31 downto 0); 
          Qst5d            : out   std_logic_vector (31 downto 0); 
          Qst6             : out   std_logic_vector (31 downto 0); 
          Qst6a            : out   std_logic_vector (31 downto 0); 
          Qst6b,Qstral6b,aoutstat            : out   std_logic_vector (31 downto 0); ------------------------
          Qst6c            : out   std_logic_vector (31 downto 0); 
          Qst6d            : out   std_logic_vector (31 downto 0); 
          Qst7             : out   std_logic_vector (31 downto 0); 
          Qst7a            : out   std_logic_vector (31 downto 0); 
          Qst7b            : out   std_logic_vector (31 downto 0); 
          Qst7c            : out   std_logic_vector (31 downto 0); 
          Qst7d            : out   std_logic_vector (31 downto 0); 
          Qst8             : out   std_logic_vector (31 downto 0); 
          Qst8c            : out   std_logic_vector (31 downto 0); 
          Qst8d            : out   std_logic_vector (31 downto 0); 
          rstaddrepeat     : out   std_logic; 
          rstmin           : out   std_logic; 
          saddsub          : out   std_logic; 
          selintdimer1     : out   std_logic_vector (2 downto 0); 
          selintdimer2     : out   std_logic_vector (2 downto 0); 
          selintdimer3     : out   std_logic_vector (2 downto 0); 
          selintdimer4     : out   std_logic_vector (2 downto 0); 
          seltr,wedg,selNRM            : out   std_logic;-----------N
			 X1address1, X2address2, X3address, X4address,X5address,X6address,X7address,X8address:out   std_logic_vector (31 downto 0));
end component ;

component simpleFRM_NRM4X_DSP is
generic (
	 N   : integer :=4;
	RNGseed1: integer :=1;-- std_logic_vector(7 downto 0) :="00000001";
	 RNGseed2: integer :=2;--  std_logic_vector(7 downto 0) :="00000001";
	 RNGseed3: integer :=3;-- std_logic_vector(7 downto 0) :="00000001";
	 RNGseed4: integer :=4);--std_logic_vector(7 downto 0) :="00000001");
   port ( ap1               : in    std_logic_vector (8 downto 0); 
          ap2               : in    std_logic_vector (8 downto 0); 
          ap3               : in    std_logic_vector (8 downto 0); 
          ap4               : in    std_logic_vector (8 downto 0); 
          clk, wedg,selNRM ,ceglobal ,en4,en5, NRMsignalint ,enFSM7new1,enFSM7new2,enFSM7new3,enFSM7new4             : in    std_logic; 
          cnst0_5_X3        : in    std_logic_vector (31 downto 0); 
          cnst0_5_X3_2      : in    std_logic_vector (31 downto 0); 
          cnst0_5_X3_3      : in    std_logic_vector (31 downto 0); 
          cnst0_5_X4_4      : in    std_logic_vector (31 downto 0); 
          cnst1             : in    std_logic_vector (31 downto 0); 
          cnt,rstflagmmu               : in    std_logic; 
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
          rst               : in    std_logic; 
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
          rdyout ,flagMMU1out,flagMMU2out,flagMMU3out,flagMMU4out           : out   std_logic; 
          Tmin1             : out   std_logic_vector (31 downto 0); 
          Tmin2             : out   std_logic_vector (31 downto 0); 
          Tmin3             : out   std_logic_vector (31 downto 0); 
          Tmin4             : out   std_logic_vector (31 downto 0));
end component;

component Comp1new is
port(Qin1,Qin2:in std_logic_vector(31 downto 0);
     Qaddrss1,Qaddrss2:in std_logic_vector(8 downto 0);
     clk,en:in std_logic;
	  muxint:out std_logic_vector(2 downto 0);
	  Qout:out std_logic_vector(31 downto 0);
	  Qaddrss:out std_logic_vector(8 downto 0));
end component;

component Compnew2 is
port(Qin1,Qin2:in std_logic_vector(31 downto 0);
     Qaddrss1,Qaddrss2:in std_logic_vector(8 downto 0);
     clk,en:in std_logic;
	  muxint:out std_logic_vector(2 downto 0);
	  Qout:out std_logic_vector(31 downto 0);
	  Qaddrss:out std_logic_vector(8 downto 0));
end component;

component Compnew3 is
port(Qin1,Qin2:in std_logic_vector(31 downto 0);
     Qaddrss1,Qaddrss2:in std_logic_vector(8 downto 0);
     clk,en:in std_logic;
	  mux1stage1,mux1stage2:in std_logic_vector(2 downto 0);
	  muxint:out std_logic_vector(2 downto 0);
	  Qout:out std_logic_vector(31 downto 0);
	  Qaddrss:out std_logic_vector(8 downto 0));
end component;

component DFF32 is
Generic(N:integer:=31);
port(Rs,en:in std_logic;
D:in std_logic_vector(N downto 0);
clock:in std_logic;
Q:out std_logic_vector(N downto 0));
end component;

component MUXcntX3_05 is
port(X3:in std_logic_vector(31 downto 0);
     selint:in std_logic_vector(1 downto 0);
	  clk:in std_logic;
	  Qcnst0_5x3:out std_logic_vector(31 downto 0));
end component;

component Addrepeatedly is
   port ( ceaddrepeat : in    std_logic; 
          clk         : in    std_logic; 
          opadd_r     : in    std_logic_vector (5 downto 0); 
          Qinnew      : in    std_logic_vector (31 downto 0); 
          sclr        : in    std_logic; 
          selFSM      : in    std_logic; 
          timemin     : in    std_logic_vector (31 downto 0); 
          go          : out   std_logic; 
          rdyr        : out   std_logic; 
          timeshow    : out   std_logic_vector (31 downto 0));
end component;

component statistics is
   port ( clk       : in    std_logic; 
          continue  : in    std_logic; 
          Nstop     : in    std_logic_vector (31 downto 0); 
          opadd     : in    std_logic_vector (5 downto 0); 
          oppsub    : in    std_logic_vector (5 downto 0); 
          Qstop     : in    std_logic_vector (31 downto 0); 
          Qstopaddr : in    std_logic_vector (31 downto 0); 
          sclr      : in    std_logic; 
          value     : in    std_logic_vector (31 downto 0); 
          XLXN_23   : in    std_logic; 
          zerocnst  : in    std_logic_vector (31 downto 0); 
          ast       : out   std_logic_vector (31 downto 0); 
          mean      : out   std_logic_vector (31 downto 0); 
          rdymean, gostat  : out   std_logic; 
          variance  : out   std_logic_vector (31 downto 0));
end component;

component MUXforpointersRama1 is
port(selFSM,clk:in std_logic;
     QinaddrFSM,Qinaddrpointer:in std_logic_vector(31 downto 0);
	  Qoutaddr:out std_logic_vector(31 downto 0));
end component;

component memforstat is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	a   : in std_logic_vector(31 downto 0); 
 	di1  : in std_logic_vector(31 downto 0); 
 	do1 : out std_logic_vector(31 downto 0));
end component;

component repeatadd3 is
   port ( add          : in    std_logic_vector (5 downto 0); 
          ceadd,ceaddp        : in    std_logic; 
          ceaddrep     : in    std_logic; 
          clk          : in    std_logic; 
          continue     : in    std_logic; 
          Qstop1       : in    std_logic_vector (31 downto 0); 
          Qstop2       : in    std_logic_vector (31 downto 0); 
          sclr         : in    std_logic; 
          selFSMaddrep : in    std_logic; 
          val          : in    std_logic_vector (31 downto 0); 
          zerocnst     : in    std_logic_vector (31 downto 0); 
          gotoFSM      : out   std_logic; 
          timeout      : out   std_logic_vector (31 downto 0));
end component;

component kcuart_rx
      port ( serial_in    : in    std_logic; 
             en_16_x_baud : in    std_logic; 
             clk          : in    std_logic; 
             data_strobe  : out   std_logic; 
             data_out     : out   std_logic_vector (7 downto 0));
end component;
   
   
   
   component DFF32_3
      port ( Rs    : in    std_logic; 
             en    : in    std_logic; 
             clock : in    std_logic; 
             D     : in    std_logic_vector (7 downto 0); 
             Q     : out   std_logic_vector (7 downto 0));
   end component;
	
	component UARTforLargemodels is
port    ( ce2            : in    std_logic; 
          ce3            : in    std_logic; 
          clk            : in    std_logic; 
          di1            : in    std_logic_vector (31 downto 0); 
          di2            : in    std_logic_vector (31 downto 0); 
          di3            : in    std_logic_vector (31 downto 0); 
          di4            : in    std_logic_vector (31 downto 0); 
          di5            : in    std_logic_vector (31 downto 0); 
			 di6            : in    std_logic_vector (8 downto 0);
			 di7            : in    std_logic_vector (31 downto 0);
			 di8            : in    std_logic_vector (31 downto 0);
			 di9            : in    std_logic_vector (31 downto 0);
			 di10           : in    std_logic_vector (31 downto 0);
          enfromFSM      : in    std_logic; 
          enupdate       : in    std_logic; 
          pointers_sp    : in    std_logic; 
          restart        : in    std_logic; 
          send_character : in    std_logic; 
          serial_in      : in    std_logic;
          Qstopaddress   : in    std_logic_vector (8 downto 0);			 
          aoutoROMs      : out   std_logic_vector (8 downto 0); 
          QoutRoms       : out   std_logic_vector (31 downto 0); 
          serial_out     : out   std_logic; 
          weRom1         : out   std_logic; 
          weRom2         : out   std_logic; 
          weRom3         : out   std_logic; 
          weRom4         : out   std_logic; 
          weRom5         : out   std_logic);
end component;

component MUXforUart1 is
port (muxint:in std_logic_vector(7 downto 0);
     clk:in std_logic;
Qspeciesupdate1,Qspeciesupdate2,Qspeciesupdate3,Qspeciesupdate4,Qspeciesupdate5,Qspeciesupdate6,Qspeciesupdate7,Qspeciesupdate8,Qtime1:in std_logic_vector(31 downto 0);
afrominval,afrominval1,afrominval2,afrominval3,afrominval4:in std_logic_vector(8 downto 0);
Qspeciesupdate1aa,Qspeciesupdate2aa,Qspeciesupdate3aa,Qspeciesupdate4aa,Qspeciesupdate5aa,Qspeciesupdate6aa,Qspeciesupdate7aa,Qspeciesupdate8aa,Qtime1aa:in std_logic_vector(31 downto 0);
Qspeciesupdate1a,Qspeciesupdate2a,Qspeciesupdate3a,Qspeciesupdate4a,Qspeciesupdate5a,Qspeciesupdate6a,Qspeciesupdate7a,Qspeciesupdate8a,Qtime1a:in std_logic_vector(31 downto 0);
Qspeciesupdate1b,Qspeciesupdate2b,Qspeciesupdate3b,Qspeciesupdate4b,Qspeciesupdate5b,Qspeciesupdate6b,Qspeciesupdate7b,Qspeciesupdate8b,Qtime1b:in std_logic_vector(31 downto 0);
Qspeciesupdate1c,Qspeciesupdate2c,Qspeciesupdate3c,Qspeciesupdate4c,Qspeciesupdate5c,Qspeciesupdate6c,Qspeciesupdate7c,Qspeciesupdate8c,Qtime1c:in std_logic_vector(31 downto 0);
Qspeciesupdateint1,Qspeciesupdateint2,Qspeciesupdateint3,Qspeciesupdateint4,Qspeciesupdateint5,Qspeciesupdateint6,Qspeciesupdateint7,Qspeciesupdateint8,Qtimeout:out std_logic_vector(31 downto 0);
afrominvalout:out std_logic_vector(8 downto 0));
end component;

component UARTDDR2MUXce is
port(Qoutsel4int4,clk,serialout1,serialout2:in std_logic;
     ceUART1,ceUART2,serialout:out std_logic);
end component;

   constant BANK_WIDTH            : integer := 2;      -- # of memory bank addr bits
	constant CKE_WIDTH             : integer := 1;      -- # of memory clock enable outputs
	constant CLK_WIDTH             : integer := 2;      -- # of clock outputs
	constant CLK_TYPE              : string  := "DIFFERENTIAL";       -- # of clock type
	constant COL_WIDTH             : integer := 10;     -- # of memory column bits
	constant CS_NUM                : integer := 1;      -- # of separate memory chip selects
	constant CS_WIDTH              : integer := 1;      -- # of total memory chip selects
	constant CS_BITS               : integer := 0;      -- set to log2(CS_NUM) (rounded up)
	constant DM_WIDTH              : integer := 8;      -- # of data mask bits
	constant DQ_WIDTH              : integer := 64;     -- # of data width
	constant DQ_PER_DQS            : integer := 8;      -- # of DQ data bits per strobe
	constant DQ_BITS               : integer := 6;      -- set to log2(DQS_WIDTH*DQ_PER_DQS)
	constant DQS_WIDTH             : integer := 8;      -- # of DQS strobes
	constant DQS_BITS              : integer := 3;      -- set to log2(DQS_WIDTH)
	constant HIGH_PERFORMANCE_MODE : boolean := TRUE; -- Sets the performance mode for IODELAY elements
	constant ODT_WIDTH             : integer := 1;      -- # of memory on-die term enables
	constant ROW_WIDTH             : integer := 13;     -- # of memory row & # of addr bits
	constant APPDATA_WIDTH         : integer := 128;     -- # of usr read/write data bus bits
	constant ADDITIVE_LAT          : integer := 0;      -- additive write latency
	constant BURST_LEN             : integer := 4;      -- burst length (in double words)
	constant BURST_TYPE            : integer := 0;      -- burst type (=0 seq; =1 interlved)
	constant CAS_LAT               : integer := 4;      -- CAS latency
	constant ECC_ENABLE            : integer := 0;      -- enable ECC (=1 enable)
	constant MULTI_BANK_EN         : integer := 1;      -- enable bank management
	constant TWO_T_TIME_EN         : integer := 1;      -- 2t timing for unbuffered dimms
	constant ODT_TYPE              : integer := 1;      -- ODT (=0(none),=1(75),=2(150),=3(50))
	constant REDUCE_DRV            : integer := 0;      -- reduced strength mem I/O (=1 yes)
	constant REG_ENABLE            : integer := 0;      -- registered addr/ctrl (=1 yes)
	constant TREFI_NS              : integer := 7800;   -- auto refresh interval (ns)
	constant TRAS                  : integer := 40000;  -- active->precharge delay
	constant TRCD                  : integer := 15000;  -- active->read/write delay
	constant TRFC                  : integer := 105000;  -- ref->ref, ref->active delay
	constant TRP                   : integer := 15000;  -- precharge->command delay
	constant TRTP                  : integer := 7500;   -- read->precharge delay
	constant TWR                   : integer := 15000;  -- used to determine wr->prech
	constant TWTR                  : integer := 7500;  -- write->read delay
	constant SIM_ONLY              : integer := 1;      -- = 0 to allow power up delay
	constant DEBUG_EN              : integer := 0;      -- Enable debug signals/controls
	constant RST_ACT_LOW           : integer := 1;      -- =1 for active low reset, =0 for active high
	constant DLL_FREQ_MODE         : string  := "HIGH"; -- DCM Frequency range
	constant CLK_PERIOD            : integer := 5000;   -- Core/Mem clk period (in ps)

component ddr2_ctrl_v5 is
    generic (
      BANK_WIDTH            : integer;
      CKE_WIDTH             : integer;
      CLK_WIDTH             : integer;
      COL_WIDTH             : integer;
      CS_NUM                : integer;
      CS_WIDTH              : integer;
      CS_BITS               : integer;
      DM_WIDTH              : integer;
      DQ_WIDTH              : integer;
      DQ_PER_DQS            : integer;
      DQ_BITS               : integer;
      DQS_WIDTH             : integer;
      DQS_BITS              : integer;
      HIGH_PERFORMANCE_MODE : boolean;
      ODT_WIDTH             : integer;
      ROW_WIDTH             : integer;
      APPDATA_WIDTH         : integer;
      ADDITIVE_LAT          : integer;
      BURST_LEN             : integer;
      BURST_TYPE            : integer;
      CAS_LAT               : integer;
      ECC_ENABLE            : integer;
      MULTI_BANK_EN         : integer;
      ODT_TYPE              : integer;
      REDUCE_DRV            : integer;
      REG_ENABLE            : integer;
      TREFI_NS              : integer;
      TRAS                  : integer;
      TRCD                  : integer;
      TRFC                  : integer;
      TRP                   : integer;
      TRTP                  : integer;
      TWR                   : integer;
      TWTR                  : integer;
      SIM_ONLY              : integer;
      RST_ACT_LOW           : integer;
      CLK_TYPE              : string;
      DLL_FREQ_MODE         : string;
      CLK_PERIOD            : integer
      );
    port (
      sys_rst_n             : in    std_logic;
      sys_clk_p             : in    std_logic;
      sys_clk_n             : in    std_logic;
      clk200_p              : in    std_logic;
      clk200_n              : in    std_logic;
      ddr2_a                : out   std_logic_vector(12 downto 0);
      ddr2_ba               : out   std_logic_vector(1 downto 0);
      ddr2_ras_n            : out   std_logic;
      ddr2_cas_n            : out   std_logic;
      ddr2_we_n             : out   std_logic;
      ddr2_cs_n             : out   std_logic_vector(0 downto 0);
      ddr2_odt              : out   std_logic_vector(0 downto 0);
      ddr2_cke              : out   std_logic_vector(0 downto 0);
      ddr2_ck               : out   std_logic_vector(1 downto 0);
      ddr2_ck_n             : out   std_logic_vector(1 downto 0);
      ddr2_dq               : inout std_logic_vector(63 downto 0);
      ddr2_dqs              : inout std_logic_vector(7 downto 0);
      ddr2_dqs_n            : inout std_logic_vector(7 downto 0);
      ddr2_dm               : out   std_logic_vector(7 downto 0);
      
      clk0_tb               : out   std_logic;
      rst0_tb               : out   std_logic;
      app_af_afull          : out   std_logic;
      app_wdf_afull         : out   std_logic;
      rd_data_valid         : out   std_logic;
      rd_data_fifo_out      : out   std_logic_vector(127 downto 0);
      app_af_wren           : in    std_logic;
      app_af_cmd            : in    std_logic_vector(2 downto 0);
      app_af_addr           : in    std_logic_vector(30 downto 0);
      app_wdf_wren          : in    std_logic;
      app_wdf_data          : in    std_logic_vector(127 downto 0);
      app_wdf_mask_data     : in    std_logic_vector(15 downto 0); --(8 downto 0);
      phy_init_done         : out   std_logic
      );
  end component;
  
  component kcuart_tx is
    Port (        data_in : in std_logic_vector(7 downto 0);
           send_character : in std_logic;
             en_16_x_baud : in std_logic;
               serial_out : out std_logic;
              Tx_complete : out std_logic;
                      clk : in std_logic);
   end component;
	
	component baud_count is
port(clk:in std_logic;
     en_16_x_baud:out std_logic);
end component;

component FSMforUART188_3 is
port(ce,Txcomplete,enupdate,restart,enfromFSM,fifo_write,rd_data_valid:in std_logic;
     Qin1:in std_logic_vector(127 downto 0);
     clk:in std_logic;
	  Qinsel:in std_logic_vector(7 downto 0);
	  Qoutsel:out std_logic_vector(7 downto 0);
	  Qstopaddress:in std_logic_vector(8 downto 0);
	  aout:out std_logic_vector(8 downto 0);
	  Qout:out std_logic_vector(7 downto 0);
	  sendcharacter,we1,we2,we3,we4,enDFF:out std_logic);
end component;

--component datamemddr2 is
--port (clk : in std_logic; 
-- 	--we  : in std_logic; 
-- 	en,restart,enfroFSM  : in std_logic;
-- 	ce2int : out std_logic;
--	di2   : in std_logic_vector(15 downto 0);
-- 	--a: in std_logic_vector(8 downto 0); 
-- 	di  : in std_logic_vector(287 downto 0); 
--	doid:out std_logic_vector(8 downto 0);
-- 	do,do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(31 downto 0));
--end component;
--
--component datamemddr3forLeon is
--port (clk : in std_logic; 
-- 	--we  : in std_logic; 
-- 	en,restart,enfroFSM,sendnext  : in std_logic;
-- 	ce2int : out std_logic;
--	di2   : in std_logic_vector(15 downto 0);
-- 	--a: in std_logic_vector(8 downto 0); 
-- 	di  : in std_logic_vector(287 downto 0); 
--	doid:out std_logic_vector(8 downto 0);
-- 	do,do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(31 downto 0));
--end component;

component datamemddr4forLeon is
port (clk : in std_logic; 
 	--we  : in std_logic; 
 	en,restart,enfroFSM,sendnext  : in std_logic;
 	ce2int,muxgpio : out std_logic;
	di2,dii2   : in std_logic_vector(15 downto 0);
 	--a: in std_logic_vector(8 downto 0); 
 	di,dii  : in std_logic_vector(287 downto 0); 
	doid,dooid:out std_logic_vector(8 downto 0);
 	do,do0,do1,do2,do3,do4,do5,do6,do7,doo,doo0,doo1,doo2,doo3,doo4,doo5,doo6,doo7  : out std_logic_vector(31 downto 0));
end component;

component MUXGPIO is
port(clk,muxgpio:in std_logic;
doid,dooid:in std_logic_vector(8 downto 0);
do,do0,do1,do2,do3,do4,do5,do6,do7,doo,doo0,doo1,doo2,doo3,doo4,doo5,doo6,doo7  : in std_logic_vector(31 downto 0);
doidext:out std_logic_vector(8 downto 0);
doext,doext0,doext1,doext2,doext3,doext4,doext5,doext6,doext7:out std_logic_vector(31 downto 0));
end component;

  component ddr2_test_top is
    generic (
      BANK_WIDTH        : integer;
      COL_WIDTH         : integer;
      DM_WIDTH          : integer;
      DQ_WIDTH          : integer;
      ROW_WIDTH         : integer;
      APPDATA_WIDTH     : integer;
      ECC_ENABLE        : integer;
      BURST_LEN         : integer
      );
    port (
      clk0,enfromFSM              : in  std_logic;
      rst0              : in  std_logic;
      app_af_afull      : in  std_logic;
      app_wdf_afull     : in  std_logic;
      rd_data_valid     : in  std_logic;
      rd_data_fifo_out  : in  std_logic_vector(143 downto 0);--(127 downto 0);
      phy_init_done     : in  std_logic;
      app_af_wren       : out std_logic;
		---------------------------DIKO mOU------------------------------
	 timeint,Qsp1,Qsp2,Qsp3,Qsp4,Qsp5,Qsp6,Qsp7,Qsp8:in std_logic_vector(31 downto 0);
	 id:in std_logic_vector(8 downto 0);
	 ------------------------------------------------------------------
      app_af_cmd        : out std_logic_vector(2 downto 0);
      app_af_addr       : out std_logic_vector(30 downto 0);
      app_wdf_wren      : out std_logic;
      app_wdf_data      : out std_logic_vector(143 downto 0);--(127 downto 0);
      app_wdf_mask_data : out std_logic_vector(17 downto 0);--(15 downto 0);
      error             : out std_logic
      );
  end component;
  
  component datamemddr5forLEON is
port (clk : in std_logic; 
 	--we  : in std_logic; 
 	en,restart,enfroFSM,sendnext  : in std_logic;
 	ce2int : out std_logic;
	muxgpio: out std_logic_vector(1 downto 0);
	di2,dii2,dii3,dii4   : in std_logic_vector(15 downto 0);
 	--a: in std_logic_vector(8 downto 0); 
 	di,dii,diii,diiii  : in std_logic_vector(287 downto 0); 
	doid,dooid,doooid,dooooid:out std_logic_vector(8 downto 0);
 	do,do0,do1,do2,do3,do4,do5,do6,do7,doo,doo0,doo1,doo2,doo3,doo4,doo5,doo6,doo7,dooo,dooo0,dooo1,dooo2,dooo3,dooo4,dooo5,dooo6,dooo7,doooo,doooo0,doooo1,doooo2,doooo3,doooo4,doooo5,doooo6,doooo7  : out std_logic_vector(31 downto 0));
end component;

component MUXGPIO4 is
port(clk:in std_logic;
muxgpio:in std_logic_vector(1 downto 0);
doid,dooid,doooid,dooooid:in std_logic_vector(8 downto 0);
do,do0,do1,do2,do3,do4,do5,do6,do7,doo,doo0,doo1,doo2,doo3,doo4,doo5,doo6,doo7,
dooo,dooo0,dooo1,dooo2,dooo3,dooo4,dooo5,dooo6,dooo7,doooo,doooo0,doooo1,doooo2,doooo3,doooo4,doooo5,doooo6,doooo7 : in std_logic_vector(31 downto 0);
doidext:out std_logic_vector(8 downto 0);
doext,doext0,doext1,doext2,doext3,doext4,doext5,doext6,doext7:out std_logic_vector(31 downto 0));
end component;
  
   --signal sclrseed:std_logic:='0';
   constant dotech   : integer := 32;
   constant groupsp:integer :=5;
   constant  tech   : integer :=3; --order of reaction
   constant  species   : integer := 8;
   signal muxgpioint:std_logic_vector(1 downto 0):="00";
	signal doid,dooid,doooid,dooooid: std_logic_vector(8 downto 0):="000000000";
 	signal do,do0,do1,do2,do3,do4,do5,do6,do7,doo,doo0,doo1,doo2,doo3,doo4,doo5,doo6,doo7,dooo,dooo0,dooo1,dooo2,dooo3,dooo4,dooo5,dooo6,dooo7,doooo,doooo0,doooo1,doooo2,doooo3,doooo4,doooo5,doooo6,doooo7  :  std_logic_vector(31 downto 0):="00000000000000000000000000000000";
   signal di,dii,diii,diiii   :  std_logic_vector(287 downto 0); 
	signal di2,dii2,dii3,dii4  :  std_logic_vector(15 downto 0);
	signal didg,didg2,didg3,didg4 :  std_logic_vector(159 downto 0);
	signal en,ce1: std_logic:='1';
	signal acnt:  std_logic_vector(8 downto 0);
--   signal	 timeint,Qsp1int,Qsp2int,Qsp3int,Qsp4int,Qsp5int,Qsp6int,Qsp7int,Qsp8int: std_logic_vector(31 downto 0);
--   signal	 id: std_logic_vector(8 downto 0);
	signal clk200_p				: std_logic;
	signal clk200_n,Txcomplete,restart,fifo_write,sendcharacter,we1,we2,we3,we4,enDFF: std_logic;
   signal QtoUART:std_logic_vector(127 downto 0);
	signal clk0_tb,flagMMU1,flagMMU2,flagMMU3,flagMMU4				: std_logic;
	signal rst0_tb				: std_logic;
	signal app_af_afull			: std_logic;
	signal app_wdf_afull		: std_logic;
	signal rd_data_valid		: std_logic;
	signal rd_data_fifo_out		: std_logic_vector(143 downto 0);--(127 downto 0);
	signal rd_data_fifo_outint : std_logic_vector(127 downto 0);--(127 downto 0);
	signal app_af_wren			: std_logic;
	signal app_af_cmd			: std_logic_vector(2 downto 0);
	signal app_af_addr			: std_logic_vector(30 downto 0);
	signal app_wdf_wren			: std_logic;
	signal app_wdf_data			: std_logic_vector(143 downto 0);--(127 downto 0);
	signal app_wdf_mask_data	: std_logic_vector(17 downto 0);--(15 downto 0);
	signal phy_init_done		: std_logic;
	signal error_trig,enFSM7new1,enFSM7new2,enFSM7new3,enFSM7new4			: std_logic;
   signal QtoFSM: std_logic_vector(7 downto 0);
	signal Qoutsel: std_logic_vector(7 downto 0);
	--signal Qstopaddress: std_logic_vector(8 downto 0);
	signal aout: std_logic_vector(8 downto 0);
signal  rdyr1,rdyr2,rdyr3,rdyr4,rdyout,go,continueint: std_logic;
signal statisticsin, simindi,wedg,selNRM,NRMsignalout          :     std_logic; 
--signal          cnt               :     std_logic; 
signal          modeint          :     std_logic;
signal  afronminval      :     std_logic_vector (8 downto 0); 
signal  afronminval1     :     std_logic_vector (8 downto 0); 
signal  afronminval2     :     std_logic_vector (8 downto 0); 
signal  afronminval3     :     std_logic_vector (8 downto 0); 
signal  afronminval4     :     std_logic_vector (8 downto 0); 
signal  muxint           :     std_logic_vector (2 downto 0);
signal  flagmmu,cetrint,rdyr,rdyouttime,rdymean,rstflagmmu,en4,en5          :     std_logic; 
signal  Qspeciesupdate1,Qtimemin  :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate1a :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate1b :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate1c :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate2  :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate2a :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate2b :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate2c :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate3  :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate3a :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate3b :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate3c :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate4  :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate4a :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate4b :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate4c :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate5  :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate6  :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate7  :     std_logic_vector (31 downto 0); 
signal  Qspeciesupdate8  :     std_logic_vector (31 downto 0):="00000000000000000000000000000000"; 
signal  Qspupdate1aa     :     std_logic_vector (31 downto 0); 
signal  Qspupdate2aa     :     std_logic_vector (31 downto 0); 
signal  Qspupdate3aa     :     std_logic_vector (31 downto 0); 
signal  Qspupdate4aa     :     std_logic_vector (31 downto 0); 
signal  Qspupdate5a      :     std_logic_vector (31 downto 0); 
signal  Qspupdate5aa     :     std_logic_vector (31 downto 0); 
signal  Qspupdate5b      :     std_logic_vector (31 downto 0); 
signal  Qspupdate5c      :     std_logic_vector (31 downto 0); 
signal  Qspupdate6a      :     std_logic_vector (31 downto 0); 
signal  Qspupdate6aa     :     std_logic_vector (31 downto 0); 
signal  Qspupdate6b      :     std_logic_vector (31 downto 0); 
signal  Qspupdate6c      :     std_logic_vector (31 downto 0); 
signal  Qspupdate7a      :     std_logic_vector (31 downto 0); 
signal  Qspupdate7aa     :     std_logic_vector (31 downto 0); 
signal  Qspupdate7b      :     std_logic_vector (31 downto 0); 
signal  Qspupdate7c      :     std_logic_vector (31 downto 0); 
signal  Qspupdate8a      :     std_logic_vector (31 downto 0):="00000000000000000000000000000000";  
signal  Qspupdate8aa     :     std_logic_vector (31 downto 0):="00000000000000000000000000000000"; 
signal  Qspupdate8b      :     std_logic_vector (31 downto 0):="00000000000000000000000000000000"; 
signal  Qspupdate8c      :     std_logic_vector (31 downto 0):="00000000000000000000000000000000"; 
signal  ap1              :    std_logic_vector (8 downto 0); 
signal  ap2              :    std_logic_vector (8 downto 0); 
signal  ap3              :    std_logic_vector (8 downto 0); 
signal  ap4              :    std_logic_vector (8 downto 0); 
signal  cetr             :    std_logic; 
signal   ena             :    std_logic; 
signal  enFROMFSM        :    std_logic; 
signal  en1              :    std_logic; 
signal  en2              :    std_logic; 
signal  K1               :    std_logic_vector (31 downto 0); 
signal  K2               :    std_logic_vector (31 downto 0); 
signal  K3               :    std_logic_vector (31 downto 0); 
signal  K4               :    std_logic_vector (31 downto 0); 
signal  qmux1            :    std_logic_vector (31 downto 0); 
signal  qmux2            :    std_logic_vector (31 downto 0); 
signal         qmux3            :    std_logic_vector (31 downto 0); 
signal         qmux4            :    std_logic_vector (31 downto 0); 
signal        qmux5            :    std_logic_vector (31 downto 0); 
signal         qmux6            :    std_logic_vector (31 downto 0); 
signal         qmux7            :    std_logic_vector (31 downto 0); 
signal         qmux8            :    std_logic_vector (31 downto 0); 
signal        qmux9            :    std_logic_vector (31 downto 0); 
signal        qmux10           :    std_logic_vector (31 downto 0); 
signal      qmux11           :    std_logic_vector (31 downto 0); 
signal    qmux12           :    std_logic_vector (31 downto 0); 
signal         Qsp3a_b          :    std_logic_vector (31 downto 0); 
signal        Qsp3b            :    std_logic_vector (31 downto 0); 
signal        Qsp3b_b          :    std_logic_vector (31 downto 0); 
signal       Qsp3c_b          :    std_logic_vector (31 downto 0); 
signal       Qsp4             :    std_logic_vector (31 downto 0); 
signal        Qsp4a_b          :    std_logic_vector (31 downto 0); 
signal         Qsp4b            :    std_logic_vector (31 downto 0); 
signal         Qsp4b_b          :    std_logic_vector (31 downto 0); 
signal         Qsp4c_b          :    std_logic_vector (31 downto 0); 
signal         Qsp5             :    std_logic_vector (31 downto 0); 
signal         Qsp5a_b          :    std_logic_vector (31 downto 0); 
signal          Qsp5b            :    std_logic_vector (31 downto 0); 
signal         Qsp5b_b          :    std_logic_vector (31 downto 0); 
signal         Qsp5c_b          :    std_logic_vector (31 downto 0); 
signal         Qsp6             :    std_logic_vector (31 downto 0); 
signal         Qsp6a_b          :    std_logic_vector (31 downto 0); 
signal         Qsp6b            :    std_logic_vector (31 downto 0); 
signal         Qsp6b_b          :    std_logic_vector (31 downto 0); 
signal        Qsp6c_b          :    std_logic_vector (31 downto 0); 
signal         Qsp7             :    std_logic_vector (31 downto 0); 
signal         Qsp7a_b          :    std_logic_vector (31 downto 0); 
signal         Qsp7b            :    std_logic_vector (31 downto 0); 
signal         Qsp7b_b          :    std_logic_vector (31 downto 0); 
signal         Qsp7c_b          :    std_logic_vector (31 downto 0); 
signal        Qsp8             :    std_logic_vector (31 downto 0); 
signal        Qst1             :    std_logic_vector (31 downto 0); 
signal         Qst1a            :    std_logic_vector (31 downto 0); 
signal         Qst1b            :    std_logic_vector (31 downto 0); 
signal         Qst1c            :    std_logic_vector (31 downto 0); 
signal         Qst1d            :    std_logic_vector (31 downto 0); 
signal        Qst2             :    std_logic_vector (31 downto 0); 
signal        Qst2a            :    std_logic_vector (31 downto 0); 
signal        Qst2b            :    std_logic_vector (31 downto 0); 
signal         Qst2c            :    std_logic_vector (31 downto 0); 
signal        Qst2d            :    std_logic_vector (31 downto 0); 
signal         Qst3             :    std_logic_vector (31 downto 0); 
signal        Qst3a            :    std_logic_vector (31 downto 0); 
signal         Qst3b            :    std_logic_vector (31 downto 0); 
signal        Qst3c            :    std_logic_vector (31 downto 0); 
signal        Qst3d            :    std_logic_vector (31 downto 0); 
signal        Qst4             :    std_logic_vector (31 downto 0); 
signal        Qst4a,Qstreal4a  :    std_logic_vector (31 downto 0); 
signal        Qst4b            :    std_logic_vector (31 downto 0); 
signal         Qst4c            :    std_logic_vector (31 downto 0); 
signal        Qst4d            :    std_logic_vector (31 downto 0); 
signal         Qst5             :    std_logic_vector (31 downto 0); 
signal        Qst5a            :    std_logic_vector (31 downto 0); 
signal       Qst5b            :    std_logic_vector (31 downto 0); 
signal        Qst5c            :    std_logic_vector (31 downto 0); 
signal        Qst5d            :    std_logic_vector (31 downto 0); 
signal        Qst6             :    std_logic_vector (31 downto 0); 
signal        Qst6a            :    std_logic_vector (31 downto 0); 
signal         Qst6b,Qstral6b   :    std_logic_vector (31 downto 0); 
signal        Qst6c            :    std_logic_vector (31 downto 0); 
signal        Qst6d            :    std_logic_vector (31 downto 0); 
signal         Qst7             :    std_logic_vector (31 downto 0); 
signal        Qst7a            :    std_logic_vector (31 downto 0); 
signal        Qst7b            :    std_logic_vector (31 downto 0); 
signal        Qst7c            :    std_logic_vector (31 downto 0); 
signal        Qst7d             :    std_logic_vector (31 downto 0); 
signal        Qst8            :    std_logic_vector (31 downto 0); 
signal        Qst8c            :    std_logic_vector (31 downto 0); 
signal        Qst8d            :    std_logic_vector (31 downto 0); 
signal        cnst1,qoutstat            :    std_logic_vector (31 downto 0):="00111111100000000000000000000000"; 
signal        Qcnst0_5x3,Qcnst0_5x3_2,Qcnst0_5x3_3,Qcnst0_5x3_4:std_logic_vector (31 downto 0);
signal         rstaddrepeat,gostat,FSMstat,cestat,westat     :    std_logic; -------------------------************************************
signal        rstmin           :    std_logic; 
signal         saddsub         :    std_logic; 
signal         selintdimer1    :    std_logic_vector (2 downto 0); 
signal         selintdimer2    :    std_logic_vector (2 downto 0); 
signal         selintdimer3    :    std_logic_vector (2 downto 0); 
signal        selintdimer4     :    std_logic_vector (2 downto 0); 
signal         seltr           :    std_logic;
signal        opadd            :    std_logic_vector (5 downto 0):="000000"; 
signal        opsub            :    std_logic_vector (5 downto 0):="000001";
signal        zerocnst         :    std_logic_vector (31 downto 0):="00000000000000000000000000000000";
signal        X1address1, X2address2, X3address, X4address,X5address,X6address,X7address,X8address,aoutstat,astat: std_logic_vector (31 downto 0);
signal        addressmin1,addressmin2,addressmin3,addressmin4:std_logic_vector (8 downto 0);
signal  Qspeciesupdate1int,Qspeciesupdate1aint,Qspeciesupdate1aaint,Qspeciesupdate1bint,Qspeciesupdate1cint , 
Qspeciesupdate2int, Qspeciesupdate2aint, Qspeciesupdate2aaint,Qspeciesupdate2bint,Qspeciesupdate2cint,  
Qspeciesupdate3int,Qspeciesupdate3aint, Qspeciesupdate3aaint,Qspeciesupdate3bint,Qspeciesupdate3cint,  
Qspeciesupdate4int,Qspeciesupdate4aint, Qspeciesupdate4aaint, Qspeciesupdate4bint,Qspeciesupdate4cint,
Qspeciesupdate5int,Qspupdate5aint,Qspeciesupdate5aaint,Qspeciesupdate5bint,Qspeciesupdate5cint,Qspeciesupdate6int, 
Qspeciesupdate6aint,Qspeciesupdate6aaint,Qspeciesupdate6bint,Qspeciesupdate6cint,Qspeciesupdate7int, 
Qspeciesupdate7aint,Qspeciesupdate7aaint,Qspeciesupdate7bint,Qspeciesupdate7cint,Qspeciesupdate8int,  
Qspeciesupdate8aint,Qspeciesupdate8aaint,Qspeciesupdate8bint,Qspeciesupdate8cint : std_logic_vector (31 downto 0):="00000000000000000000000000000000"; 
signal Tmin1,Tmin2,Tmin3,Tmin4,Qtimeout,QspeciesupdateintUART1,QspeciesupdateintUART2,QspeciesupdateintUART3,QspeciesupdateintUART4,QspeciesupdateintUART5,QspeciesupdateintUART6,QspeciesupdateintUART7,QspeciesupdateintUART8:   std_logic_vector (31 downto 0):="00000000000000000000000000000000";
signal muxintout1,muxintout2 :std_logic_vector (2 downto 0);
signal Qoutcmp1,Qoutcmp2,Qstop1,Qstop2,Qoutaddrstat,Qstopaddr: std_logic_vector (31 downto 0);
signal Qaddrsscmp1,Qaddrsscmp2,afrominvalout:std_logic_vector (8 downto 0);
signal goint,goint1,goint2,goint3,goint4,goo:std_logic;
signal Qtimeminout1,Qtimeminout2,Qtimeminout3,Qtimeminout4 :std_logic_vector (31 downto 0);
signal Qstopaddress,aoutoROMs,QstopaddressUART :std_logic_vector (8 downto 0); 
signal Qinseed1,Qinseed2,Qinseed3,Qinseed4,data_outUART:std_logic_vector (7 downto 0); 
signal Qinspecies,ainstat,Nstopstat,Qtimeminoutrep,mean,variance  :std_logic_vector (31 downto 0); 
signal en_16_x_baud,data_strobe,gone,pointers_sp:std_logic;
signal Qinsel:std_logic_vector(7 downto 0);--*************
signal Qoutsel1,Qoutsel2,Qoutsel3,Qoutsel4,muxUARTint: std_logic_vector(7 downto 0);---*************
signal enr,enr1,enr2,enr3,enr4:   std_logic;
signal QoutRoms,Qtimeminout,Qvariance,Qmean :std_logic_vector (31 downto 0); 			 
signal Qinstoichio          :std_logic_vector (255 downto 0); 
signal Qpointers            :std_logic_vector (287 downto 0); 
signal Qpointers2            : std_logic_vector (287 downto 0); 
signal Qpointers3            : std_logic_vector (287 downto 0); 
signal Qpointers4            : std_logic_vector (287 downto 0);                 
signal dimem1,dimem2,dimem3,dimem4 :std_logic_vector (2 downto 0);  
signal continuestat,continuetime  : std_logic:='0';               
signal XLXN_336         :    std_logic_vector (1 downto 0);
signal ce2,ce3,ce2int :std_logic;
signal cnt :std_logic:='1';
signal ceUART1,ceUART2:std_logic:='0';
signal serial_out2,serial_out1:std_logic:='0';

begin

--rd_data_fifo_out<=("0000000000000000"&rd_data_fifo_outint);
--
--	init_done <= phy_init_done;
--	error <= error_trig;
--	leds(7) <= phy_init_done;
--	leds(6) <= error_trig;
	ce2out<=ce2int;
--	leds(4 downto 0) <= (others => '0');
--	QtoUART<=rd_data_fifo_out(127 downto 0);
--clk200_p <= sys_clk_p;
--clk200_n <= sys_clk_n;
--
--UARTDDRT_MUXce: UARTDDR2MUXce 
--port map(Qoutsel4int4=>choise,clk=>clk,serialout1=>serial_out1,serialout2=>serial_out2,
--     ceUART1=>ceUART1,ceUART2=>ceUART2,serialout=>serial_out);
--
--	
--	TX: kcuart_tx 
--    Port map(        data_in=> QtoFSM,
--           send_character => send_character,
--             en_16_x_baud =>en_16_x_baud,
--               serial_out => serial_out1,
--              Tx_complete => Txcomplete,
--                      clk => clk);
--   	
--bdcnt: baud_count 
--port map(clk=> clk,
--     en_16_x_baud=>en_16_x_baud);
--
--
--FSM: FSMforUART188_3 
--port map(ce=>ce1,Txcomplete=>Txcomplete,enupdate=>enupdate,restart=>restartUART,enfromFSM=>enfromFSM,fifo_write=>fifo_write,rd_data_valid=>rd_data_valid,
--     Qin1=>QtoUART(127 downto 0),
--     clk=>clk,
--	  Qinsel=>Qinsel(7 downto 0),
--	  Qoutsel=>Qoutsel(7 downto 0),
--	  Qstopaddress=>Qstopaddress(8 downto 0),
--	  aout=>aout(8 downto 0),
--	  Qout=> QtoFSM,
--	  sendcharacter=>sendcharacter,we1=>we1,we2=>we2,we3=>we3,we4=>we4,enDFF=>enDFF);
--
--  
--  u2_ddr2_ctrl : ddr2_ctrl_v5
--    generic map (
--      BANK_WIDTH            => BANK_WIDTH,
--      CKE_WIDTH             => CKE_WIDTH,
--      CLK_WIDTH             => CLK_WIDTH,
--      COL_WIDTH             => COL_WIDTH,
--      CS_NUM                => CS_NUM,
--      CS_WIDTH              => CS_WIDTH,
--      CS_BITS               => CS_BITS,
--      DM_WIDTH              => DM_WIDTH,
--      DQ_WIDTH              => DQ_WIDTH,
--      DQ_PER_DQS            => DQ_PER_DQS,
--      DQ_BITS               => DQ_BITS,
--      DQS_WIDTH             => DQS_WIDTH,
--      DQS_BITS              => DQS_BITS,
--      HIGH_PERFORMANCE_MODE => HIGH_PERFORMANCE_MODE,
--      ODT_WIDTH             => ODT_WIDTH,
--      ROW_WIDTH             => ROW_WIDTH,
--      APPDATA_WIDTH         => APPDATA_WIDTH,
--      ADDITIVE_LAT          => ADDITIVE_LAT,
--      BURST_LEN             => BURST_LEN,
--      BURST_TYPE            => BURST_TYPE,
--      CAS_LAT               => CAS_LAT,
--      ECC_ENABLE            => ECC_ENABLE,
--      MULTI_BANK_EN         => MULTI_BANK_EN,
--      ODT_TYPE              => ODT_TYPE,
--      REDUCE_DRV            => REDUCE_DRV,
--      REG_ENABLE            => REG_ENABLE,
--      TREFI_NS              => TREFI_NS,
--      TRAS                  => TRAS,
--      TRCD                  => TRCD,
--      TRFC                  => TRFC,
--      TRP                   => TRP,
--      TRTP                  => TRTP,
--      TWR                   => TWR,
--      TWTR                  => TWTR,
--      SIM_ONLY              => SIM_ONLY,
--      RST_ACT_LOW           => RST_ACT_LOW,
--      CLK_TYPE              => CLK_TYPE,
--      DLL_FREQ_MODE         => DLL_FREQ_MODE,
--      CLK_PERIOD            => CLK_PERIOD
--      )
--    port map (
--      sys_clk_p         => sys_clk_p,
--      sys_clk_n         => sys_clk_n,
--      clk200_p          => clk200_p,
--      clk200_n          => clk200_n,
--      sys_rst_n         => sys_rst_n,
--      ddr2_ras_n        => ddr2_ras_n_fpga,
--      ddr2_cas_n        => ddr2_cas_n_fpga,
--      ddr2_we_n         => ddr2_we_n_fpga,
--      ddr2_cs_n         => ddr2_cs_n_fpga,
--      ddr2_cke          => ddr2_cke_fpga,
--      ddr2_odt          => ddr2_odt_fpga,
--      ddr2_dm           => ddr2_dm_fpga,
--      ddr2_dq           => ddr2_dq_fpga,
--      ddr2_dqs          => ddr2_dqs_fpga,
--      ddr2_dqs_n        => ddr2_dqs_n_fpga,
--      ddr2_ck           => ddr2_ck_fpga,
--      ddr2_ck_n         => ddr2_ck_n_fpga,
--      ddr2_ba           => ddr2_ba_fpga,
--      ddr2_a            => ddr2_address_fpga,
--      
--      clk0_tb           => clk0_tb,
--      rst0_tb           => rst0_tb,
--      app_af_afull      => app_af_afull,
--      app_wdf_afull     => app_wdf_afull,
--      rd_data_valid     => rd_data_valid,
--      rd_data_fifo_out  => rd_data_fifo_outint(127 downto 0),
--      app_af_wren       => app_af_wren,
--      app_af_cmd        => app_af_cmd,
--      app_af_addr       => app_af_addr,
--      app_wdf_wren      => app_wdf_wren,
--      app_wdf_data      => app_wdf_data(127 downto 0),
--      app_wdf_mask_data => app_wdf_mask_data(15 downto 0),
--      phy_init_done     => phy_init_done
--      );

--process(clk,acnt)
-- begin
--  if clk'event and clk='1' then
--   if acnt="111111111" then
--	   acnt<="000000000";
--	 else
--     acnt<=acnt+1;
--	 end if;
--   end if;
--end process;	

--di(31 downto 0)<=Qtimeout;
--di(63 downto 32)<=QspeciesupdateintUART1; 
--di(95 downto 64)<=QspeciesupdateintUART2;
--di(127 downto 96)<=QspeciesupdateintUART3;
--di(159 downto 128)<=QspeciesupdateintUART4;
--di(191 downto 160)<=QspeciesupdateintUART5;
--di(223 downto 192)<=QspeciesupdateintUART6;
----di(255 downto 224)<=QspeciesupdateintUART7;
----di(287 downto 256)<=QspeciesupdateintUART7;
--di(255 downto 224)<="00000000000000000000000000000000";--QspeciesupdateintUART7;
--di(287 downto 256)<="00000000000000000000000000000000";--QspeciesupdateintUART7;
--
--di2<=("0000000"&afrominvalout);
--
--dii(31 downto 0)<=Qtimeout;
--dii(63 downto 32)<=QspeciesupdateintUART1; 
--dii(95 downto 64)<=QspeciesupdateintUART2;
--dii(127 downto 96)<=QspeciesupdateintUART3;
--dii(159 downto 128)<=QspeciesupdateintUART4;
--dii(191 downto 160)<=QspeciesupdateintUART5;
--dii(223 downto 192)<=QspeciesupdateintUART6;
--di(255 downto 224)<=QspeciesupdateintUART7;
--di(287 downto 256)<=QspeciesupdateintUART7;
--dii(255 downto 224)<="00000000000000000000000000000000";--QspeciesupdateintUART7;
--dii(287 downto 256)<="00000000000000000000000000000000";--QspeciesupdateintUART7;
--
--dii2<=("0000000"&afrominvalout);
--		
--fifoddr2: datamemddr2 
--port map(clk => clk, 
-- 	--we  : in std_logic; 
-- 	en=>en,restart=>restartDDR2,enfroFSM=>enfromFSM,
-- 	ce2int => ce2int,
--	di2   => di2,
-- 	--a: in std_logic_vector(8 downto 0); 
-- 	di  =>di,
--	doid=>id,
-- 	do=>Qsp8int,do0=>Qsp1int,do1=>Qsp2int,do2=>Qsp3int,do3=>Qsp4int,do4=>Qsp5int,do5=>Qsp6int,do6=>Qsp7int,do7=>timeint);

--fifoext:datamemddr3forLeon
--port map (clk => clk, 
-- 	--we  : in std_logic; 
-- 	en=> ceglobal,restart=>restartDDR2,enfroFSM =>enfromFSM,
--	sendnext=>sendnext,
-- 	ce2int =>ce2int,
--	di2    =>di2,
-- 	--a: in std_logic_vector(8 downto 0); 
-- 	di  =>di,
--	doid=>id,
-- 	do=>Qsp8int,do0=>Qsp1int,do1=>Qsp2int,do2=>Qsp3int,do3=>Qsp4int,do4=>Qsp5int,do5=>Qsp6int,do6=>Qsp7int,do7=>timeint);
AA:if Al=1 generate
di(31 downto 0)<=Qtimeout;
di(63 downto 32)<=Qspeciesupdate1; 
di(95 downto 64)<=Qspeciesupdate2;
di(127 downto 96)<=Qspeciesupdate3;
di(159 downto 128)<=Qspeciesupdate4;
di(191 downto 160)<=Qspeciesupdate5;
di(223 downto 192)<=Qspeciesupdate6;
di(255 downto 224)<=Qspeciesupdate7;
di(287 downto 256)<=Qspeciesupdate8;
--id<=afrominvalout;
di2<=("0000000"&afronminval);

dii(31 downto 0)<=Qtimeout;
dii(63 downto 32)<=Qspeciesupdate1; 
dii(95 downto 64)<=Qspeciesupdate2;
dii(127 downto 96)<=Qspeciesupdate3;
dii(159 downto 128)<=Qspeciesupdate4;
dii(191 downto 160)<=Qspeciesupdate5;
dii(223 downto 192)<=Qspeciesupdate6;
dii(255 downto 224)<=Qspeciesupdate7;
dii(287 downto 256)<=Qspeciesupdate8;
--id<=afrominvalout;
dii2<=("0000000"&afronminval);

diii(31 downto 0)<=Qtimeout;
diii(63 downto 32)<=Qspeciesupdate1; 
diii(95 downto 64)<=Qspeciesupdate2;
diii(127 downto 96)<=Qspeciesupdate3;
diii(159 downto 128)<=Qspeciesupdate4;
diii(191 downto 160)<=Qspeciesupdate5;
diii(223 downto 192)<=Qspeciesupdate6;
diii(255 downto 224)<=Qspeciesupdate7;
diii(287 downto 256)<=Qspeciesupdate8;
--id<=afrominvalout;
dii3<=("0000000"&afronminval);

diiii(31 downto 0)<=Qtimeout;
diiii(63 downto 32)<=Qspeciesupdate1; 
diiii(95 downto 64)<=Qspeciesupdate2;
diiii(127 downto 96)<=Qspeciesupdate3;
diiii(159 downto 128)<=Qspeciesupdate4;
diiii(191 downto 160)<=Qspeciesupdate5;
diiii(223 downto 192)<=Qspeciesupdate6;
diiii(255 downto 224)<=Qspeciesupdate7;
diiii(287 downto 256)<=Qspeciesupdate8;
--id<=afrominvalout;
dii4<=("0000000"&afronminval);
end generate;

AAA:if Al=2 generate
di(31 downto 0)<=Qtimeout;
di(63 downto 32)<=Qspupdate1aa; 
di(95 downto 64)<=Qspupdate2aa;
di(127 downto 96)<=Qspupdate3aa;
di(159 downto 128)<=Qspupdate4aa;
di(191 downto 160)<=Qspupdate5aa;
di(223 downto 192)<=Qspupdate6aa;
di(255 downto 224)<="00000000000000000000000000000000";
di(287 downto 256)<="00000000000000000000000000000000";
--id<=afrominvalout;
di2<=("0000000"&afronminval1);

dii(31 downto 0)<=Qtimeout;
dii(63 downto 32)<=Qspeciesupdate1a; 
dii(95 downto 64)<=Qspeciesupdate2a;
dii(127 downto 96)<=Qspeciesupdate3a;
dii(159 downto 128)<=Qspeciesupdate4a;
dii(191 downto 160)<=Qspupdate5a;
dii(223 downto 192)<=Qspupdate6a;
dii(255 downto 224)<="00000000000000000000000000000000";
dii(287 downto 256)<="00000000000000000000000000000000";
--id<=afrominvalout;
dii2<=("0000000"&afronminval2);

diii(31 downto 0)<=Qtimeout;
diii(63 downto 32)<=Qspeciesupdate1b; 
diii(95 downto 64)<=Qspeciesupdate2b;
diii(127 downto 96)<=Qspeciesupdate3b;
diii(159 downto 128)<=Qspeciesupdate4b;
diii(191 downto 160)<=Qspupdate5b;
diii(223 downto 192)<=Qspupdate6b;
diii(255 downto 224)<="00000000000000000000000000000000";
diii(287 downto 256)<="00000000000000000000000000000000";
--id<=afrominvalout;
dii3<=("0000000"&afronminval3);

diiii(31 downto 0)<=Qtimeout;
diiii(63 downto 32)<=Qspeciesupdate1c; 
diiii(95 downto 64)<=Qspeciesupdate2c;
diiii(127 downto 96)<=Qspeciesupdate3c;
diiii(159 downto 128)<=Qspeciesupdate4c;
diiii(191 downto 160)<=Qspupdate5c;
diiii(223 downto 192)<=Qspupdate6c;
diiii(255 downto 224)<="00000000000000000000000000000000";--QspeciesupdateintUART7;
diiii(287 downto 256)<="00000000000000000000000000000000";--QspeciesupdateintUART7;

dii4<=("0000000"&afronminval4);
end generate;

fifoext: datamemddr5forLEON 
port map(clk => clk, 
 	--we  : in std_logic; 
 	en=> ceglobal,restart=>restartDDR2,enfroFSM=>enfromFSM,sendnext =>sendnext,
 	ce2int =>ce2int,
	muxgpio=>muxgpioint,
	di2=>di2,dii2=>dii2,dii3=>dii3,dii4=>dii4,
 	--a: in std_logic_vector(8 downto 0); 
 	di=>di,dii=>dii,diii=>diii,diiii=>diiii,
	doid=>doid,dooid=>dooid,doooid=>doooid,dooooid=>dooooid,
 	do=>do,do0=>do0,do1=>do1,do2=>do2,do3=>do3,do4=>do4,do5=>do5,do6=>do6,do7=>do7,doo=>doo,doo0=>doo0,doo1=>doo1,doo2=>doo2,doo3=>doo3,doo4=>doo4,doo5=>doo5,doo6=>doo6,doo7=>doo7,dooo=>doo0,dooo0=>dooo0,dooo1=>dooo1,dooo2=>dooo2,dooo3=>dooo3,dooo4=>dooo4,dooo5=>dooo5,dooo6=>dooo6,dooo7=>dooo7,doooo=>doooo,doooo0=>doooo0,doooo1=>doooo1,doooo2=>doooo2,doooo3=>doooo3,doooo4=>doooo4,doooo5=>doooo5,doooo6=>doooo6,doooo7=>doooo7);

MUXforGPIO: MUXGPIO4 
port map(clk=> clk,
muxgpio=>muxgpioint,
doid=>doid,dooid=>dooid,doooid=>doooid,dooooid=>dooooid,
do=>do,do0=>do0,do1=>do1,do2=>do2,do3=>do3,do4=>do4,do5=>do5,do6=>do6,do7=>do7,doo=>doo,doo0=>doo0,doo1=>doo1,doo2=>doo2,doo3=>doo3,doo4=>doo4,doo5=>doo5,doo6=>doo6,doo7=>doo7,dooo=>doo0,dooo0=>dooo0,dooo1=>dooo1,dooo2=>dooo2,dooo3=>dooo3,dooo4=>dooo4,dooo5=>dooo5,dooo6=>dooo6,dooo7=>dooo7,doooo=>doooo,doooo0=>doooo0,doooo1=>doooo1,doooo2=>doooo2,doooo3=>doooo3,doooo4=>doooo4,doooo5=>doooo5,doooo6=>doooo6,doooo7=>doooo7,
doidext=>id,
doext=>Qsp8int,doext0=>Qsp1int,doext1=>Qsp2int,doext2=>Qsp3int,doext3=>Qsp4int,doext4=>Qsp5int,doext5=>Qsp6int,doext6=>Qsp7int,doext7=>Qsp8int);
--fifoext2:datamemddr4forLeon
--port map (clk => clk,  
-- 	en=> ceglobal,restart=>restartDDR2,enfroFSM =>enfromFSM,
--	sendnext=>sendnext,
-- 	ce2int =>ce2int,
--	muxgpio=>muxgpioint,
--	di2    =>di2,
--	dii2   =>dii2, 
-- 	di  =>di,
--	dii =>dii,
--	doid=>doid,
--	dooid=>dooid,
-- 	do=>do,do0=>do0,do1=>do1,do2=>do2,do3=>do3,do4=>do4,do5=>do5,do6=>do6,do7=>do7,
--   doo=>doo,doo0=>doo0,doo1=>doo1,doo2=>doo2,doo3=>doo3,doo4=>doo4,doo5=>doo5,doo6=>doo6,doo7=>doo7);
--
--MUXforGPIO: MUXGPIO 
--port map (clk=> clk,muxgpio=>muxgpioint,
--doid=>doid,dooid=>dooid,
--do=>do,do0=>do0,do1=>do1,do2=>do2,do3=>do3,do4=>do4,do5=>do5,do6=>do6,do7=>do7,
--doo=>doo,doo0=>doo0,doo1=>doo1,doo2=>doo2,doo3=>doo3,doo4=>doo4,doo5=>doo5,doo6=>doo6,doo7=>doo7,
--doidext=>id,
--doext=>Qsp8int,doext0=>Qsp1int,doext1=>Qsp2int,doext2=>Qsp3int,doext3=>Qsp4int,doext4=>Qsp5int,doext5=>Qsp6int,doext6=>Qsp7int,doext7=>timeint);
 
--	u_test_top : ddr2_test_top
--    generic map (
--      BANK_WIDTH    => BANK_WIDTH,
--      COL_WIDTH     => COL_WIDTH,
--      DM_WIDTH      => DM_WIDTH,
--      DQ_WIDTH      => DQ_WIDTH,
--      ROW_WIDTH     => ROW_WIDTH,
--      APPDATA_WIDTH => 144,
--      ECC_ENABLE    => ECC_ENABLE,
--      BURST_LEN     => BURST_LEN
--      )
--    port map (
--      clk0              => clk0_tb,
--		enfromFSM         => ce2int,
--      rst0              => rst0_tb,
--      app_af_afull      => app_af_afull,
--      app_wdf_afull     => app_wdf_afull,
--      rd_data_valid     => rd_data_valid,
--      rd_data_fifo_out  => rd_data_fifo_out,
--      phy_init_done     => phy_init_done,
--      app_af_wren       => app_af_wren,
--	timeint=>timeint,Qsp1=>Qsp1int,Qsp2=>Qsp2int,Qsp3=>Qsp3int,Qsp4=>Qsp4int,Qsp5=>Qsp5int,Qsp6=>Qsp6int,Qsp7=>Qsp7int,Qsp8=>Qsp8int,
--	 id=>id,
--      app_af_cmd        => app_af_cmd,
--      app_af_addr       => app_af_addr,
--      app_wdf_wren      => app_wdf_wren,
--      app_wdf_data      => app_wdf_data,
--      app_wdf_mask_data => app_wdf_mask_data,
--      error             => error_trig
--      );
		


ainstat<="00000000000000000000000000000001";
--Nstopstat<="01000100000000000000000000000000";
 
--  XLXI_1a : kcuart_rx
--      port map( serial_in => serial_in, 
--             en_16_x_baud => en_16_x_baud, 
--             clk          => clk ,
--             data_strobe  => data_strobe, 
--             data_out     =>  Qinsel);
   
--   XLXI_1b : baud_count
--      port map( clk          => clk ,
--             en_16_x_baud => en_16_x_baud);
				 
continuestat<=Qoutsel4(4);
continuetime<=Qoutsel4(5);   
simindi<=Qoutsel4(1);
statisticsin<=Qoutsel4(2);

 data_strobe<='1';
 
 --Qinsel<="10000010";
 --Qinsel<=conv_std_logic_vector(K,8);
AA0:if K=0 generate
Qinsel<="00000001";
end generate; 

AA1:if K=1 generate
Qinsel<="00000010";
end generate;
 
 XLXI_1 : memsubsystemfinalNRMFRM4X_2param 
generic map(
    Mact      => M,--Reactions;
    Mmax      => M,--Reactions;
	 N         =>P,
    tech      =>tech, --order of reaction
	 dotech    =>dotech,		
    species   => species)--maximum number of species
	 
 port map ( afronminval    => afronminval, 
          afronminval1     => afronminval1,
          afronminval2     => afronminval2,
          afronminval3     => afronminval3, 
          afronminval4     => afronminval4,
          ceglobal         => ceglobal, 
          clk              => clk, 
			 fifo_write       => data_strobe,
			 flagMMU1=>flagMMU1,flagMMU2=>flagMMU2,flagMMU3=>flagMMU3,flagMMU4=>flagMMU4,
			 Qinsel           =>  Qinsel,--*************
		    Qoutsel1=>Qoutsel1,
			 Qoutsel2=>Qoutsel2,
			 Qoutsel3=>Qoutsel3,---*************
			 Qoutsel4=>Qoutsel4,
          enr=>enr,
			 enr1=>enr1,
			 enr2=>enr2,
			 enr3=>enr3,
			-- enr4=>enr4,
          continue         => continueint ,
          flagmmu          => flagmmu, 
          go               => go, 
          modeint          => modeint, 
          muxint           => muxint, 
          Qinspecies       => Qinspecies(31 downto 0), 
			 ainstat=>ainstat,
          Qinstoichio      => Qinstoichio(255 downto 0), 
          Qpointers        => Qpointers (287 downto 0), 
          Qpointers2       => Qpointers2(287 downto 0), 
          Qpointers3       => Qpointers3 (287 downto 0), 
          Qpointers4       => Qpointers4(287 downto 0), 
			 didg =>didg,
			 didg2=>didg2,
			 didg3=>didg3,
			 didg4=>didg4,
          Qspeciesupdate1  => Qspeciesupdate1 (31 downto 0), 
          Qspeciesupdate1a => Qspeciesupdate1a(31 downto 0), 
          Qspeciesupdate1b => Qspeciesupdate1b (31 downto 0), 
          Qspeciesupdate1c => Qspeciesupdate1c (31 downto 0), 
          Qspeciesupdate2  => Qspeciesupdate2 (31 downto 0), 
          Qspeciesupdate2a => Qspeciesupdate2a (31 downto 0), 
          Qspeciesupdate2b => Qspeciesupdate2b (31 downto 0), 
          Qspeciesupdate2c => Qspeciesupdate2c (31 downto 0), 
          Qspeciesupdate3  => Qspeciesupdate3(31 downto 0), 
          Qspeciesupdate3a => Qspeciesupdate3a (31 downto 0), 
          Qspeciesupdate3b => Qspeciesupdate3b (31 downto 0), 
          Qspeciesupdate3c => Qspeciesupdate3c (31 downto 0), 
          Qspeciesupdate4  => Qspeciesupdate4 (31 downto 0),
          Qspeciesupdate4a => Qspeciesupdate4a(31 downto 0), 
          Qspeciesupdate4b => Qspeciesupdate4b (31 downto 0), 
          Qspeciesupdate4c => Qspeciesupdate4c (31 downto 0), 
          Qspeciesupdate5  => Qspeciesupdate5(31 downto 0),
          Qspeciesupdate6  => Qspeciesupdate6 (31 downto 0), 
          Qspeciesupdate7  => Qspeciesupdate7 (31 downto 0), 
          Qspeciesupdate8  => Qspeciesupdate8 (31 downto 0), 
          Qspupdate1aa     => Qspupdate1aa (31 downto 0),
          Qspupdate2aa     => Qspupdate2aa (31 downto 0), 
          Qspupdate3aa     => Qspupdate3aa(31 downto 0),
          Qspupdate4aa     => Qspupdate4aa  (31 downto 0), 
          Qspupdate5a      => Qspupdate5a  (31 downto 0),
          Qspupdate5aa     => Qspupdate5aa (31 downto 0), 
          Qspupdate5b      => Qspupdate5b (31 downto 0),
          Qspupdate5c      => Qspupdate5c (31 downto 0), 
          Qspupdate6a      => Qspupdate6a(31 downto 0),
          Qspupdate6aa     => Qspupdate6aa (31 downto 0), 
          Qspupdate6b      => Qspupdate6b (31 downto 0),
          Qspupdate6c      => Qspupdate6c (31 downto 0), 
          Qspupdate7a      => Qspupdate7a (31 downto 0), 
          Qspupdate7aa     => Qspupdate7aa (31 downto 0), 
          Qspupdate7b      => Qspupdate7b(31 downto 0),
          Qspupdate7c      => Qspupdate7c (31 downto 0), 
          Qspupdate8a      => Qspupdate8a (31 downto 0), 
          Qspupdate8aa     => Qspupdate8aa(31 downto 0), 
          Qspupdate8b      => Qspupdate8b (31 downto 0), 
          Qspupdate8c      => Qspupdate8c (31 downto 0), 
          Qstopaddress     => Qstopaddress (8 downto 0), 
			            dimem1=>dimem1,
			            dimem2=>dimem1,
			            dimem3=>dimem1,
			            dimem4=>dimem4, 
          rdyout           => rdyout, 
			 gostat=>gostat, 
			 statistics=>statisticsin,
          restart          => restart, 
          sclrseed         => sclrseed, 
          simindi          => simindi , 
          XLXN_336         => XLXN_336 (1 downto 0), 
          ap1              => ap1 (8 downto 0), 
          ap2              => ap2 (8 downto 0), 
          ap3              => ap3 (8 downto 0), 
          ap4              => ap4 (8 downto 0), 
          cetr             => cetr, 
			 FSMstat          =>FSMstat,
			 cestat=>cestat,
			 westat=>westat, 
			 cetrint=>cetrint,
			rstflagmmu=>rstflagmmu,
			en4=>en4,
			en5=>en5,
			NRMsignalout=>NRMsignalout,
			enFSM7new1=>enFSM7new1,enFSM7new2=>enFSM7new2,enFSM7new3=>enFSM7new3,enFSM7new4=>enFSM7new4,
          ena              => ena,  
          enFROMFSM        => enFROMFSM,  
          en1              => en1, 
          en2              => en2, 
          K1               => K1 (31 downto 0), 
          K2               => K2 (31 downto 0), 
          K3               => K3 (31 downto 0), 
          K4               => K4 (31 downto 0), 
          qmux1            => qmux1 (31 downto 0), 
          qmux2            => qmux2 (31 downto 0), 
          qmux3            => qmux3 (31 downto 0), 
          qmux4            => qmux4 (31 downto 0), 
          qmux5            => qmux5 (31 downto 0), 
          qmux6            => qmux6 (31 downto 0), 
          qmux7            => qmux7 (31 downto 0), 
          qmux8            => qmux8 (31 downto 0), 
          qmux9            => qmux9 (31 downto 0), 
          qmux10           => qmux10 (31 downto 0), 
          qmux11           => qmux11 (31 downto 0), 
          qmux12           => qmux12 (31 downto 0), 
          Qsp3a_b          => Qsp3a_b(31 downto 0), 
          Qsp3b            => Qsp3b  (31 downto 0), 
          Qsp3b_b          => Qsp3b_b(31 downto 0), 
          Qsp3c_b          => Qsp3c_b(31 downto 0), 
          Qsp4             => Qsp4   (31 downto 0), 
          Qsp4a_b          => Qsp4a_b(31 downto 0), 
          Qsp4b            => Qsp4b  (31 downto 0), 
          Qsp4b_b          => Qsp4b_b (31 downto 0), 
          Qsp4c_b          => Qsp4c_b (31 downto 0), 
          Qsp5             => Qsp5 (31 downto 0), 
          Qsp5a_b          => Qsp5a_b (31 downto 0), 
          Qsp5b            => Qsp5b (31 downto 0), 
          Qsp5b_b          => Qsp5b_b(31 downto 0), 
          Qsp5c_b          => Qsp5c_b (31 downto 0), 
          Qsp6             => Qsp6 (31 downto 0), 
          Qsp6a_b          => Qsp6a_b (31 downto 0), 
          Qsp6b            => Qsp6b (31 downto 0), 
          Qsp6b_b          => Qsp6b_b (31 downto 0), 
          Qsp6c_b          => Qsp6c_b (31 downto 0), 
          Qsp7             => Qsp7 (31 downto 0), 
          Qsp7a_b          => Qsp7a_b(31 downto 0), 
          Qsp7b            => Qsp7b  (31 downto 0), 
          Qsp7b_b          => Qsp7b_b  (31 downto 0), 
          Qsp7c_b          => Qsp7c_b (31 downto 0), 
          Qsp8             => Qsp8 (31 downto 0), 
          Qst1             => Qst1 (31 downto 0), 
          Qst1a            => Qst1a (31 downto 0), 
          Qst1b            => Qst1b (31 downto 0), 
          Qst1c            => Qst1c(31 downto 0), 
          Qst1d            => Qst1d(31 downto 0), 
          Qst2             => Qst2 (31 downto 0), 
          Qst2a            => Qst2a (31 downto 0), 
          Qst2b            => Qst2b (31 downto 0), 
          Qst2c            => Qst2c (31 downto 0), 
          Qst2d            => Qst2d (31 downto 0), 
          Qst3             => Qst3 (31 downto 0), 
          Qst3a            => Qst3a(31 downto 0), 
          Qst3b            => Qst3b (31 downto 0), 
          Qst3c            => Qst3c  (31 downto 0), 
          Qst3d            => Qst3d  (31 downto 0), 
          Qst4             => Qst4 (31 downto 0), 
          Qst4a             => Qst4a (31 downto 0), 
			 Qstreal4a        => Qstreal4a,
          Qst4b            => Qst4b, 
          Qst4c            => Qst4c, 
          Qst4d            => Qst4d(31 downto 0), 
          Qst5             => Qst5, 
          Qst5a            => Qst5a(31 downto 0), 
          Qst5b            => Qst5b (31 downto 0), 
          Qst5c            => Qst5c (31 downto 0), 
          Qst5d            => Qst5d (31 downto 0), 
          Qst6             => Qst6  (31 downto 0), 
          Qst6a            => Qst6a (31 downto 0), 
          Qst6b            => Qst6b (31 downto 0),
			 Qstral6b         => Qstral6b (31 downto 0), 
			 aoutstat =>aoutstat, 
          Qst6c            => Qst6c  (31 downto 0), 
          Qst6d            => Qst6d(31 downto 0), 
          Qst7             => Qst7 (31 downto 0), 
          Qst7a            => Qst7a  (31 downto 0), 
          Qst7b            => Qst7b  (31 downto 0), 
          Qst7c            => Qst7c (31 downto 0), 
          Qst7d            => Qst7d  (31 downto 0), 
          Qst8             => Qst8(31 downto 0), 
          Qst8c            => Qst8c(31 downto 0), 
          Qst8d            => Qst8d(31 downto 0), 
          rstaddrepeat     => rstaddrepeat, 
          rstmin           => rstmin, 
          saddsub          => saddsub, 
          selintdimer1     => selintdimer1 (2 downto 0), 
          selintdimer2     => selintdimer2(2 downto 0), 
          selintdimer3     => selintdimer3(2 downto 0), 
          selintdimer4     => selintdimer4 (2 downto 0), 
          seltr            => seltr,
			 wedg=>wedg,
			 selNRM=>selNRM,
			 X1address1=>X1address1, X2address2=>X2address2, X3address=>X3address, X4address=>X4address,X5address=>X5address,X6address=>X6address,X7address=>X7address,X8address=>X8address);

--XLXI_1c: DFF32_3
--      port map( Rs => sclr, 
--             en    => enr2,
--             clock => clk,  
--             D     => Qoutsel3, 
--             Q     => Qinseed1);
				 
--XLXI_1d: DFF32_3
--      port map( Rs => sclr, 
--             en    => enr,
--             clock => clk,  
--             D     => Qoutsel1, 
--             Q     => muxUARTint);

Qinseed1<="00000001";

A1:if groupsp = 5 generate 
--if groupsp=5 then
muxUARTint<="00000101";
end generate;

A2:if groupsp = 1 generate 	
--elsif groupsp=1 then	
muxUARTint<="00000001";	
end generate;

A3:if groupsp = 2 generate 
muxUARTint<="00000010";
end generate;	 

A4:if groupsp = 3 generate 
--if groupsp=5 then
muxUARTint<="00000011";
end generate;

A5:if groupsp = 4 generate 	
--elsif groupsp=1 then	
muxUARTint<="00000100";	
end generate;
--muxUARTint<="00000101";				 
 			 

Qstop1<="11111111111111111111111111111100";
--Qstop1<="00000000000000000000000111111111";
Qstop2<="01000010010010000000000000000000";--50
--Qstopaddr<="00000000000000000000000111111111";
Qstopaddr<="00000000000000000000000111111111";
Nstopstat<="01000100000000000000000000000000";--512
--Nstopstat<="01010001100111111111000000000000"; 81604378548

--XLXI_stat1: MUXforpointersRama1 
--port map(selFSM=>FSMstat,
--         clk=>clk,
--     QinaddrFSM=> astat,
--	  Qinaddrpointer=>aoutstat,
--	  Qoutaddr=>Qoutaddrstat);
--
--
--XLXI_stat2: memforstat 
--port map(clk =>clk, 
-- 	we  => westat, 
-- 	a   => Qoutaddrstat, 
-- 	di1  => qmux1 (31 downto 0),
-- 	do1 => qoutstat);
--
--XLXI_stat: statistics 
--   port map( clk      =>clk, 
--          continue  => continuestat, 
--          Nstop     => Nstopstat, 
--          opadd     => opadd, 
--          oppsub    => opsub,
--          Qstop     => Qstop1, 
--          Qstopaddr => Qstopaddr, 
--          sclr      => sclr, 
--          value     => qoutstat (31 downto 0),
--          XLXN_23   =>cestat, 
--          zerocnst  => zerocnst, 
--          ast       => astat,
--          mean      => mean, 
--          rdymean=>rdymean, 
--			 gostat  =>gostat, 
--          variance  => variance);
--			 
--XLXI_stat3: DFF32 
--port map (Rs=>sclr,
--          en=>enr4,
--           D=> mean,
--       clock=>clk,
--           Q=>Qmean);	
--
--XLXI_stat4: DFF32 
--port map (Rs=>sclr,
--          en=>enr4,
--           D=> variance,
--       clock=>clk,
--           Q=>Qvariance);			  

			 	 	
XLXI_6 : simpleFRM_NRM4X_DSP
generic map(
	 N   =>P,
	 RNGseed1=>RNGseed1,
	 RNGseed2=>RNGseed2,
	 RNGseed3=>RNGseed3,
	 RNGseed4=>RNGseed4)
   port map( ap1            =>  ap1 (8 downto 0), 
          ap2               =>  ap2 (8 downto 0), 
          ap3               =>  ap3 (8 downto 0), 
          ap4               =>  ap4 (8 downto 0), 
          clk               =>  clk ,
			 wedg=>wedg,
			 selNRM=>selNRM,
			 ceglobal=>ceglobal, 
			 en4=>en4,
			 en5=>en5,
			 NRMsignalint =>NRMsignalout,
			 enFSM7new1=>enFSM7new1,enFSM7new2=>enFSM7new2,enFSM7new3=>enFSM7new3,enFSM7new4=>enFSM7new4,
          cnst0_5_X3        =>  qmux3(31 downto 0), 
          cnst0_5_X3_2      =>  qmux6 (31 downto 0), 
          cnst0_5_X3_3      =>  qmux9(31 downto 0), 
          cnst0_5_X4_4      =>  qmux12(31 downto 0), 
          cnst1             =>  cnst1,  
          cnt               =>  cnt, 
          ena               =>  ena, 
          en1               =>  en1, 
          K1                =>  K1 (31 downto 0), 
          K2                =>  K2 (31 downto 0), 
          K3                =>  K3 (31 downto 0), 
          K4                =>  K4 (31 downto 0), 
          opadd             =>  opadd(5 downto 0), 
          opsub             =>  opsub (5 downto 0), 
          Qinseed1          =>  Qinseed1 (7 downto 0), 
          Qinseed2          =>  Qinseed1 (7 downto 0), 
          Qinseed3          =>  Qinseed1 (7 downto 0),
          Qinseed4          =>  Qinseed1 (7 downto 0), 
          Qsp1              =>  qmux1 (31 downto 0),
          Qsp1a             =>  qmux4 (31 downto 0), 
          Qsp1aa            =>  qmux1(31 downto 0), 
          Qsp1b             =>  qmux7 (31 downto 0), 
          Qsp1c             =>  qmux10 (31 downto 0), 
          Qsp2              =>  qmux2 (31 downto 0), 
          Qsp2a             =>  qmux5(31 downto 0), 
          Qsp2aa            =>  qmux2 (31 downto 0), 
          Qsp2b             =>  qmux8 (31 downto 0), 
          Qsp2c             =>  qmux11 (31 downto 0), 
          Qsp3              =>  qmux3 (31 downto 0), 
          Qsp3a             =>  qmux6 (31 downto 0), 
          Qsp3aa            =>  qmux3(31 downto 0), 
          Qsp3b             =>  qmux9 (31 downto 0), 
          Qsp3c             =>  qmux12(31 downto 0), 
          Qsp4              =>  Qsp4 (31 downto 0), 
          Qsp4a             =>  Qsp3b(31 downto 0), 
          Qsp4aa            =>  Qsp3a_b (31 downto 0), 
          Qsp4b             =>  Qsp3b_b (31 downto 0), 
          Qsp4c             =>  Qsp3c_b (31 downto 0), 
          Qsp5              =>  Qsp5 (31 downto 0), 
          Qsp5a             =>  Qsp4b(31 downto 0), 
          Qsp5aa            =>  Qsp4a_b (31 downto 0), 
          Qsp5b             =>  Qsp4b_b (31 downto 0), 
          Qsp5c             =>  Qsp4c_b (31 downto 0),
          Qsp6              =>  Qsp6 (31 downto 0), 
          Qsp6a             =>  Qsp5b(31 downto 0), 
          Qsp6aa            =>  Qsp5a_b (31 downto 0), 
          Qsp6b             =>  Qsp5b_b (31 downto 0), 
          Qsp6c             =>  Qsp5c_b (31 downto 0), 
          Qsp7              =>  Qsp7 (31 downto 0), 
          Qsp7a             =>  Qsp6b (31 downto 0), 
          Qsp7aa            =>  Qsp6a_b (31 downto 0), 
          Qsp7b             =>  Qsp6b_b (31 downto 0), 
          Qsp7c             =>  Qsp6c_b (31 downto 0), 
          Qsp8              =>  Qsp8 (31 downto 0), 
          Qsp8a             =>  Qsp7b (31 downto 0), 
          Qsp8aa            =>  Qsp7a_b (31 downto 0), 
          Qsp8b             =>  Qsp7b_b (31 downto 0), 
          Qsp8c             =>  Qsp7c_b (31 downto 0), 
          Qsta              =>  Qst4a(31 downto 0), 
          Qst1              =>  Qst1 (31 downto 0), 
          Qst1a             =>  Qst1a (31 downto 0), 
          Qst1b             =>  Qst1b (31 downto 0), 
          Qst1c             =>  Qst1c (31 downto 0), 
          Qst1d             =>  Qst1d  (31 downto 0), 
          Qst2              =>  Qst2 (31 downto 0), 
          Qst2a             =>  Qst2a (31 downto 0), 
          Qst2b             =>  Qst2b (31 downto 0), 
          Qst2c             =>  Qst2c (31 downto 0), 
          Qst2d             =>  Qst2d (31 downto 0), 
          Qst3              =>  Qst3 (31 downto 0), 
          Qst3a             =>  Qst3a (31 downto 0), 
          Qst3b             =>  Qst3b (31 downto 0), 
          Qst3c             =>  Qst3c (31 downto 0), 
          Qst3d             =>  Qst3d (31 downto 0), 
          Qst4              =>  Qst4a (31 downto 0), 
          Qst4b             =>  Qst4b (31 downto 0), 
          Qst4c             =>  Qst4c (31 downto 0), 
          Qst4d             =>  Qst4d (31 downto 0), 
          Qst5              =>  Qst5 (31 downto 0), 
          Qst5a             =>  Qstreal4a (31 downto 0), 
          Qst5b             =>  Qst5b  (31 downto 0), 
          Qst5c             =>  Qst5c (31 downto 0), 
          Qst5d             =>  Qst5d  (31 downto 0), 
          Qst6              =>  Qst6 (31 downto 0), 
          Qst6a             =>  Qst5a (31 downto 0), 
          Qst6b             =>  Qst6b (31 downto 0), 
          Qst6c             =>  Qst6c (31 downto 0), 
          Qst6d             =>  Qst6d (31 downto 0), 
          Qst7              =>  Qst7 (31 downto 0), 
          Qst7a             =>  Qst6a (31 downto 0), 
          Qst7b             =>  Qstral6b (31 downto 0), 
          Qst7c             =>  Qst7c  (31 downto 0), 
          Qst7d             =>  Qst7d (31 downto 0), 
          Qst8              =>  Qst8 (31 downto 0), 
          Qst8a             =>  Qst7a(31 downto 0), 
          Qst8b             =>  Qst7b (31 downto 0), 
          Qst8c             =>  Qst8c (31 downto 0), 
          Qst8d             =>  Qst8d(31 downto 0), 
          rst               =>  sclr, 
			 rstflagmmu        =>  rstflagmmu,
          rstmin            => rstmin, 
          saddsub           => saddsub, 
          sclrseed          => sclrseed,
          selintdimer1      => selintdimer1(2 downto 0), 
          selintdimer2      => selintdimer2(2 downto 0), 
          selintdimer3      => selintdimer3(2 downto 0), 
          selintdimer4      => selintdimer4(2 downto 0), 
          X1address1        => X1address1 (31 downto 0), 
          X1sp              => qmux1 (31 downto 0), 
          X2address2        => X2address2 (31 downto 0), 
          X2sp              => qmux2 (31 downto 0), 
          X3addrss          => X3address (31 downto 0), 
          X3sp              => qmux4 (31 downto 0), 
          X4addrss          => X4address (31 downto 0), 
          X4sp              => qmux5 (31 downto 0), 
          X5addrss          => X5address (31 downto 0), 
          X5sp              => qmux7 (31 downto 0), 
          X6addrss          => X6address (31 downto 0), 
          X6sp              => qmux8 (31 downto 0), 
          X7addrss          => X7address (31 downto 0), 
          X7sp              => qmux10 (31 downto 0), 
          X8addrss          => X8address (31 downto 0), 
          X8sp              => qmux11 (31 downto 0), 
          zerocnst          => zerocnst (31 downto 0), 
          addressmin1       => afronminval1  (8 downto 0), 
          addressmin2       => afronminval2 (8 downto 0), 
          addressmin3       => afronminval3 (8 downto 0), 
          addressmin4       => afronminval4(8 downto 0), 
          flagMMU           =>  flagMMU, 
          Qspeciesupdate1   => Qspeciesupdate1int (31 downto 0), 
          Qspeciesupdate1a  => Qspeciesupdate1aint (31 downto 0), 
          Qspeciesupdate1aa => Qspeciesupdate1aaint (31 downto 0), 
          Qspeciesupdate1b  =>  Qspeciesupdate1bint (31 downto 0), 
          Qspeciesupdate1c  => Qspeciesupdate1cint (31 downto 0), 
          Qspeciesupdate2   => Qspeciesupdate2int (31 downto 0),
          Qspeciesupdate2a  => Qspeciesupdate2aint (31 downto 0), 
          Qspeciesupdate2aa => Qspeciesupdate2aaint (31 downto 0), 
          Qspeciesupdate2b  => Qspeciesupdate2bint (31 downto 0), 
          Qspeciesupdate2c  => Qspeciesupdate2cint (31 downto 0), 
          Qspeciesupdate3   => Qspeciesupdate3int (31 downto 0),
          Qspeciesupdate3a  => Qspeciesupdate3aint  (31 downto 0), 
          Qspeciesupdate3aa => Qspeciesupdate3aaint  (31 downto 0), 
          Qspeciesupdate3b  => Qspeciesupdate3bint (31 downto 0),
          Qspeciesupdate3c  => Qspeciesupdate3cint (31 downto 0), 
          Qspeciesupdate4   => Qspeciesupdate4int (31 downto 0), 
          Qspeciesupdate4a  => Qspeciesupdate4aint (31 downto 0),
          Qspeciesupdate4aa => Qspeciesupdate4aaint (31 downto 0), 
          Qspeciesupdate4b  => Qspeciesupdate4bint (31 downto 0), 
          Qspeciesupdate4c  => Qspeciesupdate4cint(31 downto 0), 
          Qspeciesupdate5   => Qspeciesupdate5int (31 downto 0), 
          Qspeciesupdate5aa => Qspeciesupdate5aaint (31 downto 0),
          Qspupdate5a 	=>	Qspupdate5aint,--------------------- 	 
          Qspeciesupdate5b  => Qspeciesupdate5bint (31 downto 0), 
          Qspeciesupdate5c  => Qspeciesupdate5cint (31 downto 0), 
          Qspeciesupdate6   => Qspeciesupdate6int (31 downto 0),
          Qspeciesupdate6a  => Qspeciesupdate6aint (31 downto 0), 
          Qspeciesupdate6aa => Qspeciesupdate6aaint (31 downto 0), 
          Qspeciesupdate6b  => Qspeciesupdate6bint (31 downto 0),
          Qspeciesupdate6c  => Qspeciesupdate6cint (31 downto 0), 
          Qspeciesupdate7   => Qspeciesupdate7int (31 downto 0),
          Qspeciesupdate7a  => Qspeciesupdate7aint (31 downto 0), 
          Qspeciesupdate7aa => Qspeciesupdate7aaint (31 downto 0), 
          Qspeciesupdate7b  => Qspeciesupdate7bint (31 downto 0),
          Qspeciesupdate7c  => Qspeciesupdate7cint (31 downto 0), 
          Qspeciesupdate8   => Qspeciesupdate8int (31 downto 0),
          Qspeciesupdate8a  => Qspeciesupdate8aint (31 downto 0), 
          Qspeciesupdate8aa => Qspeciesupdate8aaint (31 downto 0), 
          Qspeciesupdate8b  => Qspeciesupdate8bint (31 downto 0),
          Qspeciesupdate8c  => Qspeciesupdate8cint (31 downto 0), 
          rdyout            => rdyout ,
			 flagMMU1out=>flagMMU1,flagMMU2out=>flagMMU2,flagMMU3out=>flagMMU3,flagMMU4out=>flagMMU4,
          Tmin1             => Tmin1 (31 downto 0),
          Tmin2             => Tmin2 (31 downto 0), 
          Tmin3             => Tmin3 (31 downto 0), 
          Tmin4             => Tmin4 (31 downto 0));


XLXI_7_1: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate1int,
       clock=>clk,
           Q=>Qspeciesupdate1);
XLXI_7_2: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate1aint,
       clock=>clk,
           Q=>Qspeciesupdate1a);
XLXI_7_3: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate1aaint,
       clock=>clk,
           Q=>Qspupdate1aa);
XLXI_7_4: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate1bint,
       clock=>clk,
           Q=>Qspeciesupdate1b);	
XLXI_7_5: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate1cint,
       clock=>clk,
           Q=>Qspeciesupdate1c);		
-----------------------------------------------------------------------
XLXI_7_6: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate2int,
       clock=>clk,
           Q=>Qspeciesupdate2);
XLXI_7_7: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate2aint,
       clock=>clk,
           Q=>Qspeciesupdate2a);
			  
XLXI_7_8: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate2aaint,
       clock=>clk,
           Q=>Qspupdate2aa);

XLXI_7_9: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate2bint,
       clock=>clk,
           Q=>Qspeciesupdate2b);	
			  
XLXI_7_10: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate2cint,
       clock=>clk,
           Q=>Qspeciesupdate2c);	
----------------------------------------------------------------------------------			  
XLXI_7_11: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate3int,
       clock=>clk,
           Q=>Qspeciesupdate3);
			  
XLXI_7_12: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate3aint,
       clock=>clk,
           Q=>Qspeciesupdate3a);
			  
XLXI_7_13: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate3aaint,
       clock=>clk,
           Q=>Qspupdate3aa);

XLXI_7_14: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate3bint,
       clock=>clk,
           Q=>Qspeciesupdate3b);	
			  
XLXI_7_14_b: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate3cint,
       clock=>clk,
           Q=>Qspeciesupdate3c);	
-------------------------------------------------------------------------------			  
XLXI_7_15: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate4int,
       clock=>clk,
           Q=>Qspeciesupdate4);
			  
XLXI_7_16: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate4aint,
       clock=>clk,
           Q=>Qspeciesupdate4a);
			  
XLXI_7_17: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate4aaint,
       clock=>clk,
           Q=>Qspupdate4aa);

XLXI_7_18: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate4bint,
       clock=>clk,
           Q=>Qspeciesupdate4b);	
			  
XLXI_7_19: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate4cint,
       clock=>clk,
           Q=>Qspeciesupdate4c);	
-------------------------------------------------------------------------------	
XLXI_7_20: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate5int,
       clock=>clk,
           Q=>Qspeciesupdate5);
			  
XLXI_7_21: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspupdate5aint,
       clock=>clk,
           Q=>Qspupdate5a);
			  
XLXI_7_22: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate5aaint,
       clock=>clk,
           Q=>Qspupdate5aa);

XLXI_7_23: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate5bint,
       clock=>clk,
           Q=>Qspupdate5b);	
			  
XLXI_7_24: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate5cint,
       clock=>clk,
           Q=>Qspupdate5c);	
------------------------------------------------------------------------------------------			  
XLXI_7_25: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate6int,
       clock=>clk,
           Q=>Qspeciesupdate6);
			  
XLXI_7_26: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate6aint,
       clock=>clk,
           Q=>Qspupdate6a);
			  
XLXI_7_27: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate6aaint,
       clock=>clk,
           Q=>Qspupdate6aa);

XLXI_7_28: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate6bint,
       clock=>clk,
           Q=>Qspupdate6b);	
			  
XLXI_7_29: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate6cint,
       clock=>clk,
           Q=>Qspupdate6c);	
------------------------------------------------------------------------------------
	XLXI_7_30: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate7int,
       clock=>clk,
           Q=>Qspeciesupdate7);
			  
XLXI_7_31: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate7aint,
       clock=>clk,
           Q=>Qspupdate7a);
			  
XLXI_7_32: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate7aaint,
       clock=>clk,
           Q=>Qspupdate7aa);

XLXI_7_33: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate7bint,
       clock=>clk,
           Q=>Qspupdate7b);	
			  
XLXI_7_34: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate7cint,
       clock=>clk,
           Q=>Qspupdate7c);	
-------------------------------------------------------------------------------
XLXI_7_35: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate8int,
       clock=>clk,
           Q=>Qspeciesupdate8);
			  
XLXI_7_36: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate8aint,
       clock=>clk,
           Q=>Qspupdate8a);
			  
XLXI_7_37: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate8aaint,
       clock=>clk,
           Q=>Qspupdate8aa);

XLXI_7_38: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate8bint,
       clock=>clk,
           Q=>Qspupdate8b);	
			  
XLXI_7_39: DFF32 
port map (Rs=>sclr,
          en=>en2,
           D=>Qspeciesupdate8cint,
       clock=>clk,
           Q=>Qspupdate8c);		
------------------------------------------------------------------------------------			  
XLXI_7_40: Comp1new 
port map(Qin1=>Tmin1,
         Qin2=>Tmin2,
     Qaddrss1=>afronminval1,
	  Qaddrss2=>afronminval2,
          clk=>clk,
	        en=>ceglobal,
	    muxint=>muxintout1,
	      Qout=>Qoutcmp1,
	      Qaddrss=>Qaddrsscmp1);


XLXI_7_41: Compnew2 
port map(Qin1=>Tmin3,
         Qin2=>Tmin4,
     Qaddrss1=>afronminval3,
	  Qaddrss2=>afronminval4,
          clk=>clk,
	        en=>ceglobal,
	    muxint=>muxintout2,
	      Qout=>Qoutcmp2,
	      Qaddrss=>Qaddrsscmp2);


XLXI_7_42: Compnew3 
port map(Qin1=>Qoutcmp1,
     Qin2=>Qoutcmp2,
     Qaddrss1=>Qaddrsscmp1,
	  Qaddrss2=>Qaddrsscmp2,
          clk=>clk,
	        en=>ceglobal,
	  mux1stage1=>muxintout1,
	  mux1stage2=>muxintout2,
	      muxint=>muxint,
	        Qout=>Qtimemin,
	     Qaddrss=>afronminval);


XLXI_7_43: Addrepeatedly 
   port map( ceaddrepeat => cetr,  
          clk            => clk,
          opadd_r        => opadd,
          Qinnew         => zerocnst  (31 downto 0), 
          sclr           => rstaddrepeat,
          selFSM         => seltr,
          timemin     => Qtimemin (31 downto 0), 
          go          => goint, 
          rdyr        =>  rdyouttime, 
          timeshow    => Qtimeminout(31 downto 0));
			 
--XLXI_7_43:repeatadd3 
--   port map( add        => opadd, 
--          ceadd         => cetr,
--			 ceaddp        => cetrint, 
--          ceaddrep      => ceglobal, 
--          clk           => clk, 
--          continue      => continuetime, 
--          Qstop1        => Qstop1, 
--          Qstop2        => Qstop2, 
--          sclr          => rstaddrepeat, 
--          selFSMaddrep  => seltr,
--          val           => Qtimemin (31 downto 0),  
--          zerocnst      => zerocnst, 
--          gotoFSM       => goint,  
--          timeout       => Qtimeminout(31 downto 0));			 
			 
XLXI_7_43b: Addrepeatedly 
   port map( ceaddrepeat => cetr,  
          clk            => clk,
          opadd_r        => opadd,
          Qinnew         => zerocnst  (31 downto 0), 
          sclr           => rstaddrepeat,
          selFSM         => seltr,
          timemin     => Tmin1 (31 downto 0), 
          go          => goint1, 
          rdyr        =>  rdyr1, 
          timeshow    => Qtimeminoutrep(31 downto 0));

--XLXI_7_44:repeatadd3 
--   port map( add        => opadd, 
--          ceadd         => cetr,
--			 ceaddp        => cetrint, 
--          ceaddrep      => ceglobal, 
--          clk           => clk, 
--          continue      => continuetime, 
--          Qstop1        => Qstop1, 
--          Qstop2        => Qstop2, 
--          sclr          => rstaddrepeat, 
--          selFSMaddrep  => seltr,
--          val           => Tmin1 (31 downto 0),  
--          zerocnst      => zerocnst, 
--          gotoFSM       => goint1,  
--          timeout       => Qtimeminout1(31 downto 0));	
			 
XLXI_7_45: Addrepeatedly 
   port map( ceaddrepeat => cetr,  
          clk            => clk,
          opadd_r        => opadd,
          Qinnew         => zerocnst  (31 downto 0), 
          sclr           => rstaddrepeat,
          selFSM         => seltr,
          timemin     => Tmin2 (31 downto 0), 
          go          => goint2, 
          rdyr        =>  rdyr2, 
          timeshow    => Qtimeminout2(31 downto 0));

--XLXI_7_45:repeatadd3 
--   port map( add        => opadd, 
--          ceadd         => cetr,
--			 ceaddp        => cetrint, 
--          ceaddrep      => ceglobal, 
--          clk           => clk, 
--          continue      => continuetime, 
--          Qstop1        => Qstop1, 
--          Qstop2        => Qstop2, 
--          sclr          => rstaddrepeat, 
--          selFSMaddrep  => seltr,
--          val           => Tmin2 (31 downto 0),  
--          zerocnst      => zerocnst, 
--          gotoFSM       => goint2,  
--          timeout       => Qtimeminout2(31 downto 0));	

XLXI_7_46: Addrepeatedly 
   port map( ceaddrepeat => cetr,  
          clk            => clk,
          opadd_r        => opadd,
          Qinnew         => zerocnst  (31 downto 0), 
          sclr           => rstaddrepeat,
          selFSM         => seltr,
          timemin     => Tmin3 (31 downto 0), 
          go          => goint3, 
          rdyr        =>  rdyr3, 
          timeshow    => Qtimeminout3(31 downto 0));

--XLXI_7_46:repeatadd3 
--   port map( add        => opadd, 
--          ceadd         => cetr,
--			 ceaddp        => cetrint, 
--          ceaddrep      => ceglobal, 
--          clk           => clk, 
--          continue      => continuetime, 
--          Qstop1        => Qstop1, 
--          Qstop2        => Qstop2, 
--          sclr          => rstaddrepeat, 
--          selFSMaddrep  => seltr,
--          val           => Tmin3 (31 downto 0),  
--          zerocnst      => zerocnst, 
--          gotoFSM       => goint3,  
--          timeout       => Qtimeminout3(31 downto 0));	

--			 
XLXI_7_47: Addrepeatedly 
   port map( ceaddrepeat => cetr,  
          clk            => clk,
          opadd_r        => opadd,
          Qinnew         => zerocnst  (31 downto 0), 
          sclr           => rstaddrepeat,
          selFSM         => seltr,
          timemin     => Tmin4 (31 downto 0), 
          go          => goint4, 
          rdyr        =>  rdyr4, 
          timeshow    => Qtimeminout4(31 downto 0));		
			 
--XLXI_7_47:repeatadd3 
--   port map( add        => opadd, 
--          ceadd         => cetr,
--			 ceaddp        => cetrint, 
--          ceaddrep      => ceglobal, 
--          clk           => clk, 
--          continue      => continuetime, 
--          Qstop1        => Qstop1, 
--          Qstop2        => Qstop2, 
--          sclr          => rstaddrepeat, 
--          selFSMaddrep  => seltr,
--          val           => Tmin4 (31 downto 0),  
--          zerocnst      => zerocnst, 
--          gotoFSM       => goint4,  
--          timeout       => Qtimeminout4(31 downto 0));	
			 
			 
			 
XLXI_comm:MUXforUart1 
port map(muxint=> muxUARTint,
     clk=> clk, 
Qspeciesupdate1=>Qspeciesupdate1,Qspeciesupdate2=>Qspeciesupdate2,Qspeciesupdate3=>Qspeciesupdate3,Qspeciesupdate4=>Qspeciesupdate4,Qspeciesupdate5=>Qspeciesupdate5,Qspeciesupdate6=>Qspeciesupdate6,Qspeciesupdate7=>Qspeciesupdate7,Qspeciesupdate8=>Qspeciesupdate8,Qtime1=>Qtimeminout,
afrominval=>afronminval,afrominval1=>afronminval1,afrominval2=>afronminval2,afrominval3=>afronminval3,afrominval4=>afronminval4,
Qspeciesupdate1aa=>Qspupdate1aa,Qspeciesupdate2aa=>Qspupdate2aa,Qspeciesupdate3aa=>Qspupdate3aa,Qspeciesupdate4aa=>Qspupdate4aa,Qspeciesupdate5aa=>Qspupdate5aa,Qspeciesupdate6aa=>Qspupdate6aa,Qspeciesupdate7aa=>Qspupdate7aa,Qspeciesupdate8aa=>Qspupdate8aa,Qtime1aa=>Qtimeminoutrep,
Qspeciesupdate1a=>Qspeciesupdate1a,Qspeciesupdate2a=>Qspeciesupdate2a,Qspeciesupdate3a=>Qspeciesupdate3a,Qspeciesupdate4a=>Qspeciesupdate4a,Qspeciesupdate5a=>Qspupdate5a,Qspeciesupdate6a=>Qspupdate6a,Qspeciesupdate7a=>Qspupdate7a,Qspeciesupdate8a=>Qspupdate8a,Qtime1a=>Qtimeminout2,
Qspeciesupdate1b=>Qspeciesupdate1b,Qspeciesupdate2b=>Qspeciesupdate2b,Qspeciesupdate3b=>Qspeciesupdate3b,Qspeciesupdate4b=>Qspeciesupdate4b,Qspeciesupdate5b=>Qspupdate5b,Qspeciesupdate6b=>Qspupdate6b,Qspeciesupdate7b=>Qspupdate7b,Qspeciesupdate8b=>Qspupdate8b,Qtime1b=>Qtimeminout3,
Qspeciesupdate1c=>Qspeciesupdate1c,Qspeciesupdate2c=>Qspeciesupdate2c,Qspeciesupdate3c=>Qspeciesupdate3c,Qspeciesupdate4c=>Qspeciesupdate4c,Qspeciesupdate5c=>Qspupdate5c,Qspeciesupdate6c=>Qspupdate6c,Qspeciesupdate7c=>Qspupdate7c,Qspeciesupdate8c=>Qspupdate8c,Qtime1c=>Qtimeminout4,
Qspeciesupdateint1=>QspeciesupdateintUART1,Qspeciesupdateint2=>QspeciesupdateintUART2,Qspeciesupdateint3=>QspeciesupdateintUART3,Qspeciesupdateint4=>QspeciesupdateintUART4,Qspeciesupdateint5=>QspeciesupdateintUART5,Qspeciesupdateint6=>QspeciesupdateintUART6,Qspeciesupdateint7=>QspeciesupdateintUART7,Qspeciesupdateint8=>QspeciesupdateintUART8,Qtimeout=>Qtimeout,
afrominvalout=>afrominvalout);	

--ce2<='1';		 

--	XLXI_comm1: UARTforLargemodels 
--port map ( --ce2           => ce2, 
--          ce2=>choise,
--          ce3            => ce3, 
--          clk            => clk,  
--          di1            => Qtimeout (31 downto 0), 
--          di2            => QspeciesupdateintUART1 (31 downto 0), 
--          di3            => QspeciesupdateintUART2 (31 downto 0), 
--          di4            => QspeciesupdateintUART3 (31 downto 0), 
--          di5            => QspeciesupdateintUART4 (31 downto 0), 
--			 di6            => afrominvalout (8 downto 0),
--			 di7            => QspeciesupdateintUART5 (31 downto 0),
--			 di8            => QspeciesupdateintUART6 (31 downto 0),
--			 di9            => QspeciesupdateintUART7 (31 downto 0),
--			 di10           => QspeciesupdateintUART8 (31 downto 0),
--          enfromFSM      => enFROMFSM,  
--          enupdate       => enupdate,
--          pointers_sp    => pointers_sp, 
--          restart        => restartUART, 
--          send_character => send_character, 
--          serial_in      =>  serial_in, 
--          Qstopaddress   => QstopaddressUART,			 
--          aoutoROMs      => aoutoROMs (8 downto 0), 
--          QoutRoms       => QoutRoms  (31 downto 0), 
--          serial_out     => serial_out2, 
--          weRom1         => open, 
--          weRom2         => open, 
--          weRom3         => open, 
--          weRom4         => open, 
--          weRom5         => open);
			 

XLXI_7_48:	 AND4
      port map (I0=>goint1,
                I1=>goint2,
                I2=>goint3,
                I3=>goint4,
                O=>goo);
					 
XLXI_7_49:	 OR2
      port map (I0=>goo,
                I1=>goint,
                O=>go);					 

end Behavioral;
