----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:54:23 10/15/2011 
-- Design Name: 
-- Module Name:    FRM1XforLEONparam - Behavioral 
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

--	P= number of PEs in the FRM Soc
--	N = # of species of the biomodel
--	M = # of reactions of the biomodel
--	K= # of parallel biomodel simulations (in the range [1,P]) each with a different random generator seed.
--	A= Algorithm to be used (FRMX/NRMX).


entity FRM1XforLEONparam is
 generic (
    M   : integer :=512; --Reactions;The LOTKA_VOLTERA number
    --AL   : integer :=1; --algorithm
    N   : integer := 512;--maximum number of species
	 K   : integer := 0;--= # of parallel biomodel simulations (in the range [1,P]) each with a different random generator seed.
	 RNGseed1: integer := 1;--:  std_logic_vector(7 downto 0) :="00000001";
	 RNGseed2: integer := 1;--:   std_logic_vector(7 downto 0) :="00000001";
	 P   : integer := 1);--= number of PEs in the FRM Soc

port( 
		--sys_clk_p
		send_character,clk,restartDDR2	: in	std_logic;
		--sys_clk_n			: in	std_logic;
		enupdate,ceglobal,sendnext : in    std_logic; 
     --serial_in, 
	  restartUART,choise             : in    std_logic;
	  --Qinsel:in std_logic_vector(7 downto 0);
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
end FRM1XforLEONparam;

architecture Behavioral of FRM1XforLEONparam is
constant species:integer:= 8;
constant tech:integer:= 3;
signal continuetime,statisticsin,simindi,data_strobe,restart,rdyout,flagMMU,mode,continue,simindepentent,gostat,statistics:std_logic:='0';
signal apoint1, apoint2,apoint3,apoint4,apoint5,apoint6,apoint7,apoint8        :     std_logic_vector (31 downto 0); 
--signal apoint1a,apoint2a,apoint3a,apoint4a,apoint5a,apoint6a,apoint7a,apoint8a         : std_logic_vector (31 downto 0); 
signal  Qspeciesupdate1,Qspeciesupdate2,Qspeciesupdate3,Qspeciesupdate4,Qspeciesupdate5,Qspeciesupdate6,Qspeciesupdate7,Qspeciesupdate8,Qspeciesupdate1a,Qspeciesupdate2a,Qspeciesupdate3a,Qspeciesupdate4a,Qspeciesupdate5a,Qspeciesupdate6a,Qspeciesupdate7a,Qspeciesupdate8a,Qspeciesupdate1b,Qspeciesupdate2b,Qspeciesupdate3b,Qspeciesupdate4b,Qspeciesupdate5b,Qspeciesupdate6b,Qspeciesupdate7b,Qspeciesupdate8b,Qspeciesupdate1c,Qspeciesupdate2c,Qspeciesupdate3c,Qspeciesupdate4c,Qspeciesupdate5c,Qspeciesupdate6c,Qspeciesupdate7c,Qspeciesupdate8c   :    std_logic_vector (31 downto 0);
signal  Qinsel: std_logic_vector(7 downto 0);
signal  ena               :    std_logic; 
signal  saddsub      :    std_logic; 
signal  en1          :    std_logic; 
signal  en2          :    std_logic; 
signal  en3          :    std_logic; 
signal  en4               :   std_logic; 
signal  en5               :    std_logic; 
signal enr,enr1,enr2,enr3:    std_logic;----------*******
signal  wep              :    std_logic; 
signal             we                :    std_logic; 
signal             westoichio,westat :    std_logic; 
signal             rstmin            :    std_logic; 
signal             enfromFSM         :    std_logic; 
signal            wechain           :    std_logic; 
signal            selFSM            :    std_logic; 
signal            selFSM2           :    std_logic; 
signal             selFSM3           :    std_logic; 
signal            seltr             :    std_logic; 
signal             cetr,go               :    std_logic; 
signal             rstaddrepeat      :    std_logic; 
signal             switchST,FSMstat,cestat,cetrint, rstflagmmu        :    std_logic; ------------
signal             Qst               :    std_logic_vector (255 downto 0); 
signal            Qoutsp            :    std_logic_vector (31 downto 0); 
signal             Qoutsp1           :    std_logic_vector (31 downto 0); 
signal            Qoutsp2           :    std_logic_vector (31 downto 0); 
signal            Qoutsp3           :    std_logic_vector (31 downto 0); 
signal            Qoutsp4           :    std_logic_vector (31 downto 0); 
signal             Qoutpointers1     :    std_logic_vector (287 downto 0); 
signal            Qoutpointers2     :    std_logic_vector (287 downto 0); 
signal             Qoutpointers3     :    std_logic_vector (287 downto 0); 
signal            Qoutpointers4     :    std_logic_vector (287 downto 0); 
signal             a,Qstopaddress,adim1,adim2,adim3                  :    std_logic_vector (8 downto 0); 
signal            ap1,afromminval,afromminval1, afromminval2,afromminval3,afromminval4             :    std_logic_vector (8 downto 0);
signal            di2 :    std_logic_vector (15 downto 0);
signal            ap2, Qaddrssval              :    std_logic_vector (8 downto 0); 
signal            ap3               :    std_logic_vector (8 downto 0); 
signal            muxintsimindi     :    std_logic_vector (2 downto 0); 
signal            a1,timeshowint                :    std_logic_vector (31 downto 0); 
signal            a2                :    std_logic_vector (31 downto 0); 
signal            a3,Qoutosmem,do,do0,do1,do2,do3,do4,do5,do6,do7,do8               :    std_logic_vector (31 downto 0); 
signal            a4, aoutstat:    std_logic_vector (31 downto 0);
signal Qoutsel1,Qoutsel2,Qoutsel3,Qoutsel4 :std_logic_vector (7 downto 0); 
signal Qinspecies,ainstat        :     std_logic_vector (31 downto 0); 
signal             Qpointers1,di       :     std_logic_vector (287 downto 0); 
signal             Qpointers2       :     std_logic_vector (287 downto 0); 
signal            Qpointers3        :     std_logic_vector (287 downto 0); 
signal            Qpointers4        :     std_logic_vector (287 downto 0); 
signal             Qinstoichiometry :     std_logic_vector (255 downto 0); 
signal  apoint1aa,apoint2aa,apoint3aa,apoint4aa,apoint5aa,apoint6aa,apoint7aa,apoint8aa        :    std_logic_vector (31 downto 0); 
signal  Qspeciesupdate1aa,Qspeciesupdate2aa,Qspeciesupdate3aa,Qspeciesupdate4aa,Qspeciesupdate5aa,Qspeciesupdate6aa,Qspeciesupdate7aa,Qspeciesupdate8aa : std_logic_vector (31 downto 0); 
signal  do1r,do2r,do3r,do4p,do5p,do6p,do7p,do8p:  std_logic_vector(31 downto 0);
signal  do1st,do2st,do3st,do4st,do5st,do6st,do7st,do8st:  std_logic_vector(31 downto 0);
signal  cnst1       :  std_logic_vector (31 downto 0):="00111111100000000000000000000000";
signal  cnt:std_logic:='1';
signal  ebFSMPE22 ,en_16_x_baud,rdy,ce2int,continuestat,dimertoFSm  :    std_logic; 
signal  opsub:  std_logic_vector (5 downto 0):="000001";
signal  Qinseed     :     std_logic_vector (7 downto 0);
signal  selintdimer,selintdimer2,selintdimer3,selintdimer4 :     std_logic_vector (2 downto 0); 
signal zerocnst    :    std_logic_vector (31 downto 0):="00000000000000000000000000000000"; 
signal resultime, Qoutval,mintime   :  std_logic_vector (31 downto 0); 
signal opadd: std_logic_vector (5 downto 0):="000000";
signal dimem1,dimem2,dimem3,dimem4: std_logic_vector(2 downto 0);
signal apoint1a,apoint2a,apoint3a,apoint4a,apoint5a,apoint6a,apoint7a,apoint8a,apoint1b,apoint2b, 
apoint3b, apoint4b, apoint5b, apoint6b, apoint7b, apoint8b,  apoint1c, apoint2c, apoint3c, apoint4c, apoint5c, apoint6c, apoint7c, apoint8c:  std_logic_vector (31 downto 0); 


component UARTDDRFSM
      port ( clk               : in    std_logic; 
             ce                : in    std_logic; 
             restart           : in    std_logic; 
             rdyout            : in    std_logic; 
             flagMMU           : in    std_logic; 
             mode              : in    std_logic; 
             go                : in    std_logic; 
             continue          : in    std_logic; 
             sclrseed          : in    std_logic; 
             simindepentent    : in    std_logic; 
				 gostat,statistics : in    std_logic;----------------
				 fifo_write        : in std_logic;--************
             afromminval       : in    std_logic_vector (8 downto 0); 
             afromminval1      : in    std_logic_vector (8 downto 0); 
             afromminval2      : in    std_logic_vector (8 downto 0); 
             afromminval3      : in    std_logic_vector (8 downto 0); 
             afromminval4      : in    std_logic_vector (8 downto 0); 
				 Qinsel:in std_logic_vector(7 downto 0);--*************
		       Qoutsel1,Qoutsel2,Qoutsel3,Qoutsel4:out std_logic_vector(7 downto 0);---*************
             Qstopaddress      : in    std_logic_vector (8 downto 0); 
             apoint1           : in    std_logic_vector (31 downto 0); 
             apoint2           : in    std_logic_vector (31 downto 0); 
             apoint3           : in    std_logic_vector (31 downto 0); 
             apoint4           : in    std_logic_vector (31 downto 0); 
             apoint5           : in    std_logic_vector (31 downto 0); 
             apoint6           : in    std_logic_vector (31 downto 0); 
             apoint7           : in    std_logic_vector (31 downto 0); 
             apoint8           : in    std_logic_vector (31 downto 0); 
             apoint1a          : in    std_logic_vector (31 downto 0); 
             apoint2a          : in    std_logic_vector (31 downto 0); 
             apoint3a          : in    std_logic_vector (31 downto 0); 
             apoint4a          : in    std_logic_vector (31 downto 0); 
             apoint5a          : in    std_logic_vector (31 downto 0); 
             apoint6a          : in    std_logic_vector (31 downto 0); 
             apoint7a          : in    std_logic_vector (31 downto 0); 
             apoint8a          : in    std_logic_vector (31 downto 0); 
             apoint1b          : in    std_logic_vector (31 downto 0); 
             apoint2b          : in    std_logic_vector (31 downto 0); 
             apoint3b          : in    std_logic_vector (31 downto 0); 
             apoint4b          : in    std_logic_vector (31 downto 0); 
             apoint5b          : in    std_logic_vector (31 downto 0); 
             apoint6b          : in    std_logic_vector (31 downto 0); 
             apoint7b          : in    std_logic_vector (31 downto 0); 
             apoint8b          : in    std_logic_vector (31 downto 0); 
             apoint1c          : in    std_logic_vector (31 downto 0); 
             apoint2c          : in    std_logic_vector (31 downto 0); 
             apoint3c          : in    std_logic_vector (31 downto 0); 
             apoint4c          : in    std_logic_vector (31 downto 0); 
             apoint5c          : in    std_logic_vector (31 downto 0); 
             apoint6c          : in    std_logic_vector (31 downto 0); 
             apoint7c          : in    std_logic_vector (31 downto 0); 
             apoint8c          : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate1   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate2   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate3   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate4   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate5   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate6   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate7   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate8   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate1a  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate2a  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate3a  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate4a  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate5a  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate6a  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate7a  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate8a  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate1b  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate2b  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate3b  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate4b  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate5b  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate6b  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate7b  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate8b  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate1c  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate2c  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate3c  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate4c  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate5c  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate6c  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate7c  : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate8c  : in    std_logic_vector (31 downto 0); 
             Qinspecies,ainstat        : in    std_logic_vector (31 downto 0); 
             Qpointers1        : in    std_logic_vector (287 downto 0); 
             Qpointers2        : in    std_logic_vector (287 downto 0); 
             Qpointers3        : in    std_logic_vector (287 downto 0); 
             Qpointers4        : in    std_logic_vector (287 downto 0); 
             Qinstoichiometry  : in    std_logic_vector (255 downto 0); 
             apoint1aa         : in    std_logic_vector (31 downto 0); 
             apoint2aa         : in    std_logic_vector (31 downto 0); 
             apoint3aa         : in    std_logic_vector (31 downto 0); 
             apoint4aa         : in    std_logic_vector (31 downto 0); 
             apoint5aa         : in    std_logic_vector (31 downto 0); 
             apoint6aa         : in    std_logic_vector (31 downto 0); 
             apoint7aa         : in    std_logic_vector (31 downto 0); 
             apoint8aa         : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate1aa : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate2aa : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate3aa : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate4aa : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate5aa : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate6aa : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate7aa : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate8aa : in    std_logic_vector (31 downto 0); 
             ena               : out   std_logic; 
             saddsub           : out   std_logic; 
             en1               : out   std_logic; 
             en2               : out   std_logic; 
             en3               : out   std_logic; 
             en4               : out   std_logic; 
             en5               : out   std_logic; 
				 enr,enr1,enr2,enr3: out   std_logic;----------*******
             wep               : out   std_logic; 
             we                : out   std_logic; 
             westoichio,westat        : out   std_logic; 
             rstmin            : out   std_logic; 
             enfromFSM         : out   std_logic; 
             wechain           : out   std_logic; 
             selFSM            : out   std_logic; 
             selFSM2           : out   std_logic; 
             selFSM3           : out   std_logic; 
             seltr             : out   std_logic; 
             cetr              : out   std_logic; 
             rstaddrepeat      : out   std_logic; 
             switchST,FSMstat,cestat,cetrint, rstflagmmu        : out   std_logic; ------------
             Qst               : out   std_logic_vector (255 downto 0); 
             Qoutsp            : out   std_logic_vector (31 downto 0); 
             Qoutsp1           : out   std_logic_vector (31 downto 0); 
             Qoutsp2           : out   std_logic_vector (31 downto 0); 
             Qoutsp3           : out   std_logic_vector (31 downto 0); 
             Qoutsp4           : out   std_logic_vector (31 downto 0); 
             Qoutpointers1     : out   std_logic_vector (287 downto 0); 
             Qoutpointers2     : out   std_logic_vector (287 downto 0); 
             Qoutpointers3     : out   std_logic_vector (287 downto 0); 
             Qoutpointers4     : out   std_logic_vector (287 downto 0); 
             a                 : out   std_logic_vector (8 downto 0); 
             ap1               : out   std_logic_vector (8 downto 0); 
             ap2               : out   std_logic_vector (8 downto 0); 
             ap3               : out   std_logic_vector (8 downto 0); 
             muxintsimindi     : out   std_logic_vector (2 downto 0); 
             a1                : out   std_logic_vector (31 downto 0); 
             a2                : out   std_logic_vector (31 downto 0); 
             a3                : out   std_logic_vector (31 downto 0); 
             a4, aoutstat               : out   std_logic_vector (31 downto 0));-------------------
   end component;
	
	component MUXforpointersRama1
      port ( selFSM         : in    std_logic; 
             clk            : in    std_logic; 
             QinaddrFSM     : in    std_logic_vector (31 downto 0); 
             Qinaddrpointer : in    std_logic_vector (31 downto 0); 
             Qoutaddr       : out   std_logic_vector (31 downto 0));
   end component;
	
	component Lotka_VolteraRT
      port ( clk : in    std_logic; 
             we  : in    std_logic; 
             en  : in    std_logic; 
             a   : in    std_logic_vector (8 downto 0); 
             di  : in    std_logic_vector (287 downto 0); 
             do  : out   std_logic_vector (31 downto 0); 
             do0 : out   std_logic_vector (31 downto 0); 
             do1 : out   std_logic_vector (31 downto 0); 
             do2 : out   std_logic_vector (31 downto 0); 
             do3 : out   std_logic_vector (31 downto 0); 
             do4 : out   std_logic_vector (31 downto 0); 
             do5 : out   std_logic_vector (31 downto 0); 
             do6 : out   std_logic_vector (31 downto 0); 
             do7 : out   std_logic_vector (31 downto 0));
   end component;
	
	component Lotka_VolteraparamRT is
generic (
    --fabtech   : integer := CFG_FABTECH;
    memtech   : integer := 511;
     adtech   : integer := 8;
     ditech   : integer := 287;
     dotech   : integer := 31);	-- Enable disassembly to console
   -- dbguart   : integer := CFG_DUART;	-- Print UART on console
    --pclow     : integer := CFG_PCLOW
  
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(adtech downto 0); 
 	di  : in std_logic_vector(ditech downto 0); 
 	do,do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(dotech downto 0));
end component;

component LOTKA_VOLTERA_STOICHIOparam is
generic (
    --fabtech   : integer := CFG_FABTECH;
    memtech   : integer := 511;
     adtech   : integer := 8;
     ditechs   : integer := 255;
     dotech   : integer := 31);
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(adtech downto 0); 
 	di  : in std_logic_vector(ditechs downto 0); 
 	do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(dotech downto 0));
end component;

component speciesTable1 is
generic (
    --fabtech   : integer := CFG_FABTECH;
    memtech   : integer := 511;
     adtech   : integer := 8;
     ditechs   : integer := 31;
     dotech   : integer := 31);
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3,a4,a5,a6,a7 : in std_logic_vector(dotech downto 0); 
 	di  : in std_logic_vector(dotech downto 0); 
 	do1,do2,do3,do4,do5,do6,do7,do8: out std_logic_vector(dotech downto 0));
end component;

component speciesTable2 is
generic (
    --fabtech   : integer := CFG_FABTECH;
    memtech   : integer := 511;
     adtech   : integer := 31;
     ditechs   : integer := 255;
     dotech   : integer := 31);
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,a3a,a4a,a5a,a6a,a7a,ab,a1b,a2b,a3b,a4b,a5b,a6b,a7b,ac,a1c,a2c,a3c,a4c,a5c,a6c,a7c : in std_logic_vector(adtech downto 0); 
 	di1,di2,di3,di4  : in std_logic_vector(dotech downto 0); 
 	do,do1,do2,do3,do4,do5,do6,do7,doa,do1a,do2a,do3a,do4a,do5a,do6a,do7a,dob,do1b,do2b,do3b,do4b,do5b,do6b,do7b,doc,do1c,do2c,do3c,do4c,do5c,do6c,do7c,
	dod,do1d,do2d,do3d,do4d,do5d,do6d,do7d : out std_logic_vector(dotech downto 0));
end component;

	
	component LOTKA_VOLTERA_STOICHIO
      port ( clk : in    std_logic; 
             we  : in    std_logic; 
             en  : in    std_logic; 
             a   : in    std_logic_vector (8 downto 0); 
             di  : in    std_logic_vector (255 downto 0); 
             do0 : out   std_logic_vector (31 downto 0); 
             do1 : out   std_logic_vector (31 downto 0); 
             do2 : out   std_logic_vector (31 downto 0); 
             do3 : out   std_logic_vector (31 downto 0); 
             do4 : out   std_logic_vector (31 downto 0); 
             do5 : out   std_logic_vector (31 downto 0); 
             do6 : out   std_logic_vector (31 downto 0); 
             do7 : out   std_logic_vector (31 downto 0));
   end component;
	
	component memintdimerLOTKA_VOLTERA 
      port ( clk : in    std_logic; 
             we  : in    std_logic; 
             en  : in    std_logic; 
             a   : in    std_logic_vector (8 downto 0); 
             a1  : in    std_logic_vector (8 downto 0); 
             a2  : in    std_logic_vector (8 downto 0); 
             a3  : in    std_logic_vector (8 downto 0); 
             di1,di2,di3,di4  : in    std_logic_vector (2 downto 0); 
             do1 : out   std_logic_vector (2 downto 0); 
             do2 : out   std_logic_vector (2 downto 0); 
             do3 : out   std_logic_vector (2 downto 0); 
             do4 : out   std_logic_vector (2 downto 0));
   end component;
	
component datamem189 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector(191 downto 0); 
 	do0,do1,do2,do3,do4,do5  : out std_logic_vector(31 downto 0));
end component;

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

component memintdimerLOTKA_VOLTERAparam is
generic (
    --fabtech   : integer := CFG_FABTECH;
    memtech   : integer := 511;
     adtech   : integer := 8;
     ditechs   : integer := 255;
     dotech   : integer := 2);
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3   : in std_logic_vector(adtech downto 0); 
 	di1,di2,di3,di4  : in std_logic_vector( dotech downto 0); 
 	do1,do2,do3,do4 : out std_logic_vector(dotech downto 0));
end component ;

component FSM6new is
port(clk,ce,sclr,dimertoFSm,en5,en4:in std_logic;
     flagMMU,enfsmpe,endff:out std_logic;
	  selintdimer:in std_logic_vector(2 downto 0);
     Qin:in std_logic_vector(31 downto 0);
     Qaddrss:in std_logic_vector(8 downto 0);
     Qoutval:out std_logic_vector(31 downto 0);
     Qaddrssoutval:out std_logic_vector(8 downto 0));
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

component speciesTableLEON_LotkaVOLTERA is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3,a4,a5,a6,a7 : in std_logic_vector(31 downto 0); 
 	di  : in std_logic_vector(31 downto 0); 
 	do1,do2,do3,do4,do5,do6,do7,do8: out std_logic_vector(31 downto 0));
end component;

 component DFF32_3
      port ( Rs    : in    std_logic; 
             en    : in    std_logic; 
             clock : in    std_logic; 
             D     : in    std_logic_vector (7 downto 0); 
             Q     : out   std_logic_vector (7 downto 0));
  end component;
  
  component datamemddr3forLeon is
port (clk : in std_logic; 
 	--we  : in std_logic; 
 	en,restart,enfroFSM,sendnext  : in std_logic;
 	ce2int : out std_logic;
	di2   : in std_logic_vector(15 downto 0);
 	--a: in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector(287 downto 0); 
	doid:out std_logic_vector(8 downto 0);
 	do,do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(31 downto 0));
end component;

component kcuart_rx
      port ( serial_in    : in    std_logic; 
             en_16_x_baud : in    std_logic; 
             clk          : in    std_logic; 
             data_strobe  : out   std_logic; 
             data_out     : out   std_logic_vector (7 downto 0));
end component;

component baud_count is
port(clk:in std_logic;
     en_16_x_baud:out std_logic);
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

begin

--AA:if Al='0' generate
--Qinsel<=conv_std_logic_vector(K,8);

--  if k='0' generate
--   Qinsel<="00000001";	
--end generate
AA0:if K=0 generate
Qinsel<="00000001";
end generate; 

--AA1:if K=1 generate
--Qinsel<="00000010";
--end generate;

   leds(7) <= '0';
	leds(6) <= rdy;
	leds(5)<=ce2int;
	leds(4 downto 0) <= (others => '0');

continuestat<=Qoutsel4(4);
continuetime<=Qoutsel4(5);   
simindi<=Qoutsel4(1);
statisticsin<=Qoutsel4(2);
restart <=Qoutsel4(6);
ce2out<=ce2int;

--  XLXI_1a : kcuart_rx
--      port map( serial_in => serial_in, 
--             en_16_x_baud => en_16_x_baud, 
--             clk          => clk ,
--             data_strobe  => data_strobe, 
--             data_out     =>  Qinsel);
   
--   XLXI_1b : baud_count
--      port map( clk          => clk ,
--             en_16_x_baud => en_16_x_baud);

data_strobe<='1';

Qinseed<=CONV_STD_LOGIC_VECTOR(RNGseed1,8);

FSM:UARTDDRFSM 
      port map ( clk           =>clk,
             ce                =>ceglobal,--
             restart           =>restart ,-- 
             rdyout            =>rdyout, --
             flagMMU           =>flagMMU, --
             mode              =>mode, 
             go                =>go, 
             continue          =>continue, 
             sclrseed          =>sclrseed, 
             simindepentent    =>simindepentent, 
				 gostat=>gostat,
				 statistics =>statistics,
				 fifo_write        => data_strobe,--************
             afromminval       =>afromminval, ---
             afromminval1      =>afromminval1, 
             afromminval2      =>afromminval2, 
             afromminval3      =>afromminval3,  
             afromminval4      =>afromminval4,  
				 Qinsel=>Qinsel,--*************
		       Qoutsel1=>Qoutsel1,Qoutsel2=>Qoutsel2,Qoutsel3=>Qoutsel3,Qoutsel4=>Qoutsel4,---*************
             Qstopaddress     => Qstopaddress,  
             apoint1           => do, --- 
             apoint2          => do0, --- 
             apoint3          => do1, -- 
             apoint4          => do3, 
             apoint5          => do4,
             apoint6          => do5,
             apoint7          => do6, 
             apoint8          => do7, 
             apoint1a          =>apoint1a , 
             apoint2a          =>apoint2a , 
             apoint3a          =>apoint3a , 
             apoint4a          =>apoint4a , 
             apoint5a          =>apoint5a, 
             apoint6a          =>apoint6a, 
             apoint7a          =>apoint7a, 
             apoint8a          =>apoint8a, 
             apoint1b          =>apoint1b, 
             apoint2b          =>apoint2b, 
             apoint3b          =>apoint3b, 
             apoint4b          =>apoint4b, 
             apoint5b          =>apoint5b, 
             apoint6b          =>apoint6b, 
             apoint7b          =>apoint7b, 
             apoint8b          =>apoint8b, 
             apoint1c          =>apoint1c, 
             apoint2c          =>apoint2c, 
             apoint3c          =>apoint3c, 
             apoint4c          =>apoint4c, 
             apoint5c          =>apoint5c, 
             apoint6c          =>apoint6c, 
             apoint7c          =>apoint7c, 
             apoint8c          =>apoint8c, 
             Qspeciesupdate1   => Qspeciesupdate1, 
             Qspeciesupdate2   => Qspeciesupdate2, 
             Qspeciesupdate3   => Qspeciesupdate3, 
             Qspeciesupdate4   => Qspeciesupdate4, 
             Qspeciesupdate5   => Qspeciesupdate5, 
             Qspeciesupdate6   => Qspeciesupdate6, 
             Qspeciesupdate7   => Qspeciesupdate7, 
             Qspeciesupdate8   => Qspeciesupdate8, 
             Qspeciesupdate1a  =>Qspeciesupdate1a, 
             Qspeciesupdate2a  =>Qspeciesupdate2a, 
             Qspeciesupdate3a  =>Qspeciesupdate3a, 
             Qspeciesupdate4a  =>Qspeciesupdate4a, 
             Qspeciesupdate5a  =>Qspeciesupdate5a, 
             Qspeciesupdate6a  =>Qspeciesupdate6a,
             Qspeciesupdate7a  =>Qspeciesupdate7a, 
             Qspeciesupdate8a  =>Qspeciesupdate8a, 
             Qspeciesupdate1b  =>Qspeciesupdate1b, 
             Qspeciesupdate2b  =>Qspeciesupdate2b, 
             Qspeciesupdate3b  =>Qspeciesupdate3b, 
             Qspeciesupdate4b  =>Qspeciesupdate4b, 
             Qspeciesupdate5b  =>Qspeciesupdate5b,
             Qspeciesupdate6b  =>Qspeciesupdate6b, 
             Qspeciesupdate7b  =>Qspeciesupdate7b, 
             Qspeciesupdate8b  =>Qspeciesupdate8b, 
             Qspeciesupdate1c  => Qspeciesupdate1c, 
             Qspeciesupdate2c  => Qspeciesupdate2c, 
             Qspeciesupdate3c  => Qspeciesupdate3c, 
             Qspeciesupdate4c  => Qspeciesupdate4c, 
             Qspeciesupdate5c  => Qspeciesupdate5c, 
             Qspeciesupdate6c  => Qspeciesupdate6c, 
             Qspeciesupdate7c  => Qspeciesupdate7c, 
             Qspeciesupdate8c  => Qspeciesupdate8c,
             Qinspecies=>Qinspecies,ainstat=>ainstat,  
             Qpointers1        => Qpointers1, 
             Qpointers2        => Qpointers2,  
             Qpointers3        => Qpointers3,  
             Qpointers4        => Qpointers4,  
             Qinstoichiometry  => Qinstoichiometry,  
             apoint1aa          => do, --- 
             apoint2aa         => do0, --- 
             apoint3aa          => do1, ---  
             apoint4aa          => do3, --- 
             apoint5aa          => do4, --- 
             apoint6aa         => do5, --- 
             apoint7aa         => do6, ---  
             apoint8aa          => do7, --- --
             Qspeciesupdate1aa => Qspeciesupdate1, 
             Qspeciesupdate2aa =>  Qspeciesupdate2, 
             Qspeciesupdate3aa =>  Qspeciesupdate3, 
             Qspeciesupdate4aa =>  Qspeciesupdate4, 
             Qspeciesupdate5aa =>  Qspeciesupdate5, 
             Qspeciesupdate6aa =>  Qspeciesupdate6, 
             Qspeciesupdate7aa =>  Qspeciesupdate7, 
             Qspeciesupdate8aa =>  Qspeciesupdate8, 
             ena               => ena, 
             saddsub           => saddsub, 
             en1               => en1, 
             en2               => en2, 
             en3               => en3, 
             en4               => en4, 
             en5               => en5, 
				 enr=>enr,enr1=>enr1,enr2=>enr2,enr3=>enr3,----------*******
             wep               => wep, 
             we                => we , 
             westoichio=>westoichio,westat=>westat, 
             rstmin            => rstmin, 
             enfromFSM         => enfromFSM, 
             wechain           => wechain, 
             selFSM            => selFSM, 
             selFSM2           =>  selFSM2, 
             selFSM3           =>  selFSM3, 
             seltr             => seltr, 
             cetr              => cetr, 
             rstaddrepeat      => rstaddrepeat, 
             switchST=>switchST,FSMstat=>FSMstat,cestat=>cestat,cetrint=>cetrint, rstflagmmu=>rstflagmmu, ------------
             Qst               => Qst, 
             Qoutsp            => Qoutsp, 
             Qoutsp1           =>Qoutsp1, 
             Qoutsp2           =>Qoutsp2, 
             Qoutsp3           =>Qoutsp3, 
             Qoutsp4           =>Qoutsp4, 
             Qoutpointers1     => Qoutpointers1, 
             Qoutpointers2     =>open,
             Qoutpointers3     =>open, 
             Qoutpointers4     =>open, 
             a                 => a, 
             ap1               =>open, 
             ap2               =>open, 
             ap3               =>open, 
             muxintsimindi     => muxintsimindi, 
             a1                => a1,
             a2                => a2, 
             a3                => a3, 
             a4=>a4, aoutstat  => aoutstat);-------------------
				 
		MUXRAM: MUXforpointersRama1
      port map ( selFSM         => selFSM, 
             clk            =>clk,
             QinaddrFSM     => a1, 
             Qinaddrpointer => do,  
             Qoutaddr       => Qoutosmem);
   
	
	RT: Lotka_VolteraparamRT
 generic map( memtech  => (N-1) ,
              adtech   => species,
              ditech   => 287,
              dotech   => (4*species-1))
      port map ( clk =>clk, 
             we  => wep, 
             en  =>ceglobal, 
             a   => a,  
             di  => Qoutpointers1, 
             do  => do, 
             do0 => do0, 
             do1 => do1, 
             do2 => do2, 
             do3 => do3, 
             do4 => do4, 
             do5 => do5, 
             do6 => do6, 
             do7 => do7);
   		

ST: speciesTable1
 generic map(
    --fabtech   : integer := CFG_FABTECH;
    memtech   => (N-1),
     adtech   => species,
     ditechs  => ((4*species-1)),
     dotech   => ((4*species-1)))
port map(clk =>clk, 
 	      we  => we,
 	      en  => ceglobal,
 	--ssr : in std_logic;
 	a=> Qoutosmem,a1=> do0,a2=> do1,a3=> do3,a4=> do4,a5=> do5,a6=> do6,a7 => do7, 
 	di  => Qoutsp, 
 	do1=>do1r,do2=>do2r,do3=>do3r,do4=>do4p,do5=>do5p,do6=>do6p,do7=>do7p,do8=>do8p);
	
VT: LOTKA_VOLTERA_STOICHIOparam
 generic map(memtech   => (N-1) ,
     adtech   => species,
     ditechs   => ((32*species)-1),
     dotech   =>((4*species-1)) )
      port map ( clk =>clk,
             we  =>westoichio, 
             en  => ceglobal, 
             a   => a,  
             di  => Qst, 
             do0 => do1st, 
             do1 => do2st, 
             do2 => do3st, 
             do3 => do4st,
             do4 => do5st,
             do5 => do6st,
             do6 => do7st,
             do7 => do8st);
				 
DFF1:	DFF32_3
      port map( Rs => sclr, 
             en    => enr2,
             clock => clk,  
             D     => Qoutsel3, 
             Q     => Qinseed);		 
				 
				 
memintdimer:  memintdimerLOTKA_VOLTERAparam 
generic map(
    --fabtech   : integer := CFG_FABTECH;
    memtech   => (N-1),
     adtech   => species,
     ditechs  => ((32*species)-1),
     dotech   => (tech-1))
      port map (a(8 downto 0)=> a,
                a1(8 downto 0)=>adim1,
                a2(8 downto 0)=>adim2,
                a3(8 downto 0)=>adim3,
                clk=>clk,
                di1(2 downto 0)=>dimem1(2 downto 0),
					 di2=>dimem2(2 downto 0),
					 di3=>dimem3(2 downto 0),
					 di4=>dimem4(2 downto 0),
                en=>ceglobal,
                we=>westoichio, 
                do1(2 downto 0)=>selintdimer(2 downto 0),
                do2(2 downto 0)=>selintdimer2(2 downto 0),
                do3(2 downto 0)=>selintdimer3(2 downto 0),
                do4(2 downto 0)=>selintdimer4(2 downto 0));				 
				 
   				 
PE: PE5 
   port map( ce       => en1, 
          clk         =>clk, 
          cnst1       =>cnst1, 
          cnst05_X3   => do3r, 
          cnt         => cnt,  
          ebFSMPE22   => ebFSMPE22, 
          k           => do2,
          op          => opsub, 
          Qinseed     => Qinseed, 
          sclr        => sclr, 
          sclrseed    =>sclrseed,
          selintdimer =>selintdimer,
          X1          =>do1r, 
          X2          =>do2r, 
          zerocnst    =>zerocnst, 
          rdytime     =>rdyout, 
          resultime   =>resultime);


FSMpe: FSM6new 
port map(clk=>clk,ce=> en1,  sclr=>sclrseed,dimertoFSm=>dimertoFSm,en5=>en5,en4=>en4,
     flagMMU=>flagMMU,enfsmpe=> ebFSMPE22,endff=>open,
	  selintdimer=>selintdimer,
     Qin =>resultime,
     Qaddrss=> a,
     Qoutval=> Qoutval,
     Qaddrssoutval=>Qaddrssval);
	  
min: find8min512
      port map( ENA      =>ena, 
             CLK         =>clk, 
             rst         => rstmin, 
             NO_IN       => Qoutval, 
             Qaddress    =>Qaddrssval, 
             Qaddressout =>afromminval,
             MIN_OUT     => mintime (31 downto 0));
				 
ADD1: addingnewflt port map 
               (a(31 downto 0)=>do1r,
                b(31 downto 0)=> do1st, 
                ce=> saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>sclr,
                rdy=>open,
                result(31 downto 0)=> Qspeciesupdate1);	
					 
ADD2: addingnewflt port map 
               (a(31 downto 0)=>do2r,
                b(31 downto 0)=> do2st, 
                ce=> saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>sclr,
                rdy=>open,
                result(31 downto 0)=> Qspeciesupdate2);							 
  	  
ADD3: addingnewflt port map 
               (a(31 downto 0)=>do3r,
                b(31 downto 0)=> do3st, 
                ce=> saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>sclr,
                rdy=>open,
                result(31 downto 0)=> Qspeciesupdate3);
					 
ADD4: addingnewflt port map 
               (a(31 downto 0)=>do4p,
                b(31 downto 0)=> do4st, 
                ce=> saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>sclr,
                rdy=>open,
                result(31 downto 0)=> Qspeciesupdate4);	
					 
ADD5: addingnewflt port map 
               (a(31 downto 0)=>do5p,
                b(31 downto 0)=> do5st, 
                ce=> saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>sclr,
                rdy=>open,
                result(31 downto 0)=> Qspeciesupdate5);		

ADD6: addingnewflt port map 
               (a(31 downto 0)=>do6p,
                b(31 downto 0)=> do6st, 
                ce=> saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>sclr,
                rdy=>open,
                result(31 downto 0)=> Qspeciesupdate6);

ADD7: addingnewflt port map 
               (a(31 downto 0)=>do7p,
                b(31 downto 0)=> do7st, 
                ce=> saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>sclr,
                rdy=>open,
                result(31 downto 0)=> Qspeciesupdate7);		

ADD8: addingnewflt port map 
               (a(31 downto 0)=>do8p,
                b(31 downto 0)=> do8st, 
                ce=> saddsub,
                clk=>clk,
                operation(5 downto 0)=>opadd(5 downto 0),
                sclr=>sclr,
                rdy=>open,
                result(31 downto 0)=> Qspeciesupdate8);	
					 
ADDTIME: Addrepeatedly 
   port map( ceaddrepeat => cetr,  
          clk            => clk,
          opadd_r        => opadd,
          Qinnew         => zerocnst  (31 downto 0), 
          sclr           => rstaddrepeat,
          selFSM         => seltr,
          timemin     =>  mintime (31 downto 0), 
          go          => go, 
          rdyr        =>  rdy, 
          timeshow    =>  timeshowint(31 downto 0));	
			 
			 di2<=("0000000"&afromminval);
			 
			 
di(31 downto 0)<= timeshowint;
di(63 downto 32)<=Qspeciesupdate1; 
di(95 downto 64)<=Qspeciesupdate2;
di(127 downto 96)<=Qspeciesupdate3;
di(159 downto 128)<=Qspeciesupdate4;
di(191 downto 160)<=Qspeciesupdate5;
di(223 downto 192)<=Qspeciesupdate6;
di(255 downto 224)<=Qspeciesupdate7;
di(287 downto 256)<=Qspeciesupdate7;	


fifoext:datamemddr3forLeon
port map (clk => clk, 
 	--we  : in std_logic; 
 	en=> ceglobal,restart=>restartDDR2,enfroFSM =>enfromFSM,
	sendnext=>sendnext,
 	ce2int =>ce2int,
	di2    =>di2,
 	--a: in std_logic_vector(8 downto 0); 
 	di  =>di,
	doid=>id,
 	do=>Qsp8int,do0=>Qsp1int,do1=>Qsp2int,do2=>Qsp3int,do3=>Qsp4int,do4=>Qsp5int,do5=>Qsp6int,do6=>Qsp7int,do7=>timeint);


end Behavioral;
