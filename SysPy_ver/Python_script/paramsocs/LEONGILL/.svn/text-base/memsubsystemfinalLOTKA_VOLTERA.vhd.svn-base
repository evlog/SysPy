----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:58:00 09/13/2011 
-- Design Name: 
-- Module Name:    memsubsystemfinalLOTKA_VOLTERA - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity memsubsystemfinalLOTKA_VOLTERA is
 port ( afronminval      : in    std_logic_vector (8 downto 0); 
          afronminval1     : in    std_logic_vector (8 downto 0); 
          afronminval2     : in    std_logic_vector (8 downto 0); 
          afronminval3     : in    std_logic_vector (8 downto 0); 
          afronminval4     : in    std_logic_vector (8 downto 0); 
          ceglobal         : in    std_logic; 
          clk              : in    std_logic; 
			 -------------------------------**********************
			 fifo_write       :in std_logic;
			 Qinsel:in std_logic_vector(7 downto 0);--*************
		    Qoutsel1,Qoutsel2,Qoutsel3,Qoutsel4:out std_logic_vector(7 downto 0);---*************
          enr,enr1,enr2,enr3,rstflagmmu,en5,en4: out   std_logic;
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
          seltr            : out   std_logic;
			 X1address1, X2address2, X3address, X4address,X5address,X6address,X7address,X8address:out std_logic_vector (31 downto 0));
end memsubsystemfinalLOTKA_VOLTERA;

architecture Behavioral of memsubsystemfinalLOTKA_VOLTERA is

   signal apointout7b      : std_logic_vector (31 downto 0);
   signal apointout8b      : std_logic_vector (31 downto 0);
	signal wecsp :std_logic:='0';
   signal XLXN_10,weFRM4c,notsimidi,we1FRM4c,selrrw: std_logic;
	signal Qcopy,Qcopy1,Qcopy2,Qcopy3,Qcopy4,Qcopydi : std_logic_vector (31 downto 0);
	signal Qcopydi1,Qcopydi2,Qcopydi3,Qcopydi4 : std_logic_vector (31 downto 0);
	signal Qsendsp1: std_logic_vector (31 downto 0);
	signal Qsendsp1b,Qsendsp2b,Qsendsp3b,Qsendsp4b: std_logic_vector (31 downto 0);
   signal XLXN_13          : std_logic;
   signal XLXN_15          : std_logic;
   signal XLXN_29          : std_logic;
   signal XLXN_34          : std_logic_vector (31 downto 0);
   signal XLXN_39          : std_logic_vector (31 downto 0);
   signal XLXN_46          : std_logic_vector (31 downto 0);
   signal XLXN_48          : std_logic_vector (31 downto 0);
   signal XLXN_49          : std_logic_vector (31 downto 0);
   signal XLXN_50          : std_logic_vector (31 downto 0);
   signal XLXN_55          : std_logic_vector (31 downto 0);
   signal XLXN_57          : std_logic_vector (31 downto 0);
   signal XLXN_61          : std_logic_vector (31 downto 0);
   signal XLXN_110         : std_logic_vector (31 downto 0);
   signal XLXN_124         : std_logic_vector (31 downto 0);
   signal XLXN_125         : std_logic_vector (31 downto 0);
   signal XLXN_126         : std_logic_vector (31 downto 0);
   signal XLXN_131         : std_logic_vector (31 downto 0);
   signal XLXN_132         : std_logic_vector (31 downto 0);
   signal XLXN_136         : std_logic_vector (31 downto 0);
   signal XLXN_137         : std_logic_vector (31 downto 0);
   signal XLXN_138         : std_logic_vector (31 downto 0);
   signal XLXN_139         : std_logic_vector (31 downto 0);
   signal XLXN_144         : std_logic_vector (31 downto 0);
   signal XLXN_154         : std_logic_vector (31 downto 0);
   signal XLXN_182         : std_logic;
   signal XLXN_186         : std_logic_vector (31 downto 0);
   signal XLXN_188         : std_logic_vector (31 downto 0);
   signal XLXN_190         : std_logic_vector (31 downto 0);
   signal XLXN_191         : std_logic_vector (31 downto 0);
   signal XLXN_193         : std_logic_vector (31 downto 0);
   signal XLXN_194         : std_logic_vector (31 downto 0);
   signal XLXN_201         : std_logic_vector (31 downto 0);
   signal XLXN_202         : std_logic_vector (31 downto 0);
   signal XLXN_206         : std_logic_vector (31 downto 0);
   signal XLXN_211         : std_logic_vector (31 downto 0);
   signal XLXN_212         : std_logic_vector (31 downto 0);
   signal XLXN_215         : std_logic_vector (31 downto 0);
   signal XLXN_230         : std_logic_vector (31 downto 0);
   signal XLXN_231         : std_logic_vector (31 downto 0);
   signal XLXN_232         : std_logic_vector (31 downto 0);
   signal XLXN_234         : std_logic_vector (31 downto 0);
   signal XLXN_236         : std_logic_vector (31 downto 0);
   signal XLXN_239         : std_logic_vector (31 downto 0);
   signal XLXN_242         : std_logic_vector (31 downto 0);
   signal XLXN_243         : std_logic_vector (31 downto 0);
   signal XLXN_246         : std_logic_vector (31 downto 0);
   signal XLXN_250         : std_logic_vector (31 downto 0);
   signal XLXN_251         : std_logic_vector (31 downto 0);
   signal XLXN_253         : std_logic_vector (31 downto 0);
   signal XLXN_255         : std_logic_vector (31 downto 0);
   signal XLXN_257         : std_logic_vector (31 downto 0);
   signal XLXN_267         : std_logic_vector (31 downto 0);
   signal XLXN_268         : std_logic_vector (31 downto 0);
   signal XLXN_269         : std_logic_vector (31 downto 0);
   signal XLXN_273         : std_logic_vector (31 downto 0);
   signal XLXN_274         : std_logic_vector (31 downto 0);
   signal XLXN_275         : std_logic_vector (31 downto 0);
   signal XLXN_276         : std_logic_vector (31 downto 0);
   signal XLXN_277         : std_logic_vector (31 downto 0);
   signal XLXN_278         : std_logic_vector (31 downto 0);
   signal XLXN_279         : std_logic_vector (31 downto 0);
   signal XLXN_280         : std_logic_vector (31 downto 0);
   signal XLXN_282         : std_logic_vector (31 downto 0);
   signal XLXN_283         : std_logic_vector (31 downto 0);
   signal XLXN_284         : std_logic_vector (31 downto 0);
   signal XLXN_285         : std_logic_vector (31 downto 0);
   signal XLXN_287         : std_logic_vector (31 downto 0);
   signal XLXN_288         : std_logic_vector (31 downto 0);
   signal XLXN_289         : std_logic_vector (31 downto 0);
   signal XLXN_292         : std_logic_vector (31 downto 0);
   signal XLXN_293         : std_logic_vector (31 downto 0);
   signal XLXN_294         : std_logic_vector (31 downto 0);
   signal XLXN_296         : std_logic_vector (31 downto 0);
   signal XLXN_297         : std_logic_vector (31 downto 0);
   signal XLXN_298         : std_logic_vector (31 downto 0);
   signal XLXN_302         : std_logic_vector (31 downto 0);
   signal XLXN_303         : std_logic_vector (31 downto 0);
   signal XLXN_304         : std_logic_vector (31 downto 0);
   signal XLXN_306         : std_logic_vector (31 downto 0);
   signal XLXN_307         : std_logic_vector (31 downto 0);
   signal XLXN_317         : std_logic_vector (31 downto 0);
   signal XLXN_318         : std_logic_vector (31 downto 0);
   signal XLXN_319         : std_logic_vector (31 downto 0);
   signal XLXN_320         : std_logic_vector (31 downto 0);
   signal XLXN_321         : std_logic_vector (31 downto 0);
   signal XLXN_330         : std_logic_vector (287 downto 0);
   signal XLXN_331         : std_logic_vector (287 downto 0);
   signal XLXN_332         : std_logic_vector (287 downto 0);
   signal XLXN_333         : std_logic_vector (287 downto 0);
   signal XLXN_335         : std_logic_vector (255 downto 0);
   signal Qst1a_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst1b_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst1c_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst1d_DUMMY      : std_logic_vector (31 downto 0);
   signal ap1_DUMMY        : std_logic_vector (8 downto 0);
   signal ap2_DUMMY        : std_logic_vector (8 downto 0);
   signal Qst7a_DUMMY      : std_logic_vector (31 downto 0);
   signal ap3_DUMMY        : std_logic_vector (8 downto 0);
   signal Qst7b_DUMMY      : std_logic_vector (31 downto 0);
   signal ap4_DUMMY        : std_logic_vector (8 downto 0);
   signal Qst7c_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst7d_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst2a_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst2b_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst2c_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst2d_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst8c_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst8d_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst3a_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst3b_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst3c_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst3d_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst4a_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst4b_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst4c_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst4d_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst5a_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst5b_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst5c_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst5d_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst6a_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst6b_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst6c_DUMMY      : std_logic_vector (31 downto 0);
   signal Qst6d_DUMMY      : std_logic_vector (31 downto 0);
	
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
             switchST,FSMstat,cestat,cetrint, rstflagmmu ,selrww       : out   std_logic; ------------
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
   
   component MUXpointerRam2
      port ( selFSM2       : in    std_logic; 
             clk           : in    std_logic; 
             Qinpointer1   : in    std_logic_vector (31 downto 0); 
             Qinpointer2   : in    std_logic_vector (31 downto 0); 
             QinMUxupdate1 : in    std_logic_vector (31 downto 0); 
             QinMUxupdate2 : in    std_logic_vector (31 downto 0); 
             Qoutaddr1     : out   std_logic_vector (31 downto 0); 
             Qoutaddr2     : out   std_logic_vector (31 downto 0));
   end component;
   
   component RT1
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
	
	component RT2
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
	
	component RT3
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
	
	component RT4
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
	
component EnzymeRT is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector(287 downto 0); 
 	do,do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(31 downto 0));
end component;


	
	component datamem3to5_V2 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector(287 downto 0); 
 	do,do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(31 downto 0));
end component;

component stoichiomem3to5_V2 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector(255 downto 0); 
 	do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(31 downto 0));
end component;

component speciesTableFRM4_c189 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,a3a,a4a,a5a,a6a,a7a,ab,a1b,a2b,a3b,a4b,a5b,a6b,a7b,ac,a1c,a2c,a3c,a4c,a5c,a6c,a7c : in std_logic_vector(31 downto 0); 
 	di1,di2,di3,di4  : in std_logic_vector(31 downto 0); 
 	do,do1,do2,do3,do4,do5,do6,do7,doa,do1a,do2a,do3a,do4a,do5a,do6a,do7a,dob,do1b,do2b,do3b,do4b,do5b,do6b,do7b,doc,do1c,do2c,do3c,do4c,do5c,do6c,do7c,
	dod,do1d,do2d,do3d,do4d,do5d,do6d,do7d : out std_logic_vector(31 downto 0));
end component;

component speciesTableEnzyme1 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,ab,a1b,a2b,ac,a1c,a2c : in std_logic_vector(31 downto 0); 
 	di  : in std_logic_vector(31 downto 0); 
 	do1,do2,do3,do4,do5,do6,do7,do8,do1a,do2a,do3a,do1b,do2b,do3b,do1c,do2c,do3c,do1d,do2d,do3d: out std_logic_vector(31 downto 0));
end component;

component speciesTableenzyme2 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,a3a,a4a,a5a,a6a,a7a,ab,a1b,a2b,a3b,a4b,a5b,a6b,a7b,ac,a1c,a2c,a3c,a4c,a5c,a6c,a7c : in std_logic_vector(31 downto 0); 
 	di1,di2,di3,di4  : in std_logic_vector(31 downto 0); 
 	do,do1,do2,do3,do4,do5,do6,do7,doa,do1a,do2a,do3a,do4a,do5a,do6a,do7a,dob,do1b,do2b,do3b,do4b,do5b,do6b,do7b,doc,do1c,do2c,do3c,do4c,do5c,do6c,do7c,
	dod,do1d,do2d,do3d,do4d,do5d,do6d,do7d : out std_logic_vector(31 downto 0));
end component;
	
component datamem3to5_189 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector(287 downto 0); 
 	do,do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(31 downto 0));
end  component;

component stoichiomem3to5_189 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector(255 downto 0); 
 	do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(31 downto 0));
end component;

--component speciesTableFRM4_c189 is
--port (clk : in std_logic; 
-- 	we  : in std_logic; 
-- 	en  : in std_logic;
-- 	--ssr : in std_logic;
-- 	a,a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,a3a,a4a,a5a,a6a,a7a,ab,a1b,a2b,a3b,a4b,a5b,a6b,a7b,ac,a1c,a2c,a3c,a4c,a5c,a6c,a7c : in std_logic_vector(31 downto 0); 
-- 	di1,di2,di3,di4  : in std_logic_vector(31 downto 0); 
-- 	do,do1,do2,do3,do4,do5,do6,do7,doa,do1a,do2a,do3a,do4a,do5a,do6a,do7a,dob,do1b,do2b,do3b,do4b,do5b,do6b,do7b,doc,do1c,do2c,do3c,do4c,do5c,do6c,do7c,
--	dod,do1d,do2d,do3d,do4d,do5d,do6d,do7d : out std_logic_vector(31 downto 0));
--end component;

   
   component speciesTable24_1
      port ( clk  : in    std_logic; 
             we   : in    std_logic; 
             en   : in    std_logic; 
             a    : in    std_logic_vector (31 downto 0); 
             a1   : in    std_logic_vector (31 downto 0); 
             a2   : in    std_logic_vector (31 downto 0); 
             a3   : in    std_logic_vector (31 downto 0); 
             a4   : in    std_logic_vector (31 downto 0); 
             a5   : in    std_logic_vector (31 downto 0); 
             a6   : in    std_logic_vector (31 downto 0); 
             a7   : in    std_logic_vector (31 downto 0); 
             aa   : in    std_logic_vector (31 downto 0); 
             a1a  : in    std_logic_vector (31 downto 0); 
             a2a  : in    std_logic_vector (31 downto 0); 
             ab   : in    std_logic_vector (31 downto 0); 
             a1b  : in    std_logic_vector (31 downto 0); 
             a2b  : in    std_logic_vector (31 downto 0); 
             ac   : in    std_logic_vector (31 downto 0); 
             a1c  : in    std_logic_vector (31 downto 0); 
             a2c  : in    std_logic_vector (31 downto 0); 
             di   : in    std_logic_vector (31 downto 0); 
             do1  : out   std_logic_vector (31 downto 0); 
             do2  : out   std_logic_vector (31 downto 0); 
             do3  : out   std_logic_vector (31 downto 0); 
             do4  : out   std_logic_vector (31 downto 0); 
             do5  : out   std_logic_vector (31 downto 0); 
             do6  : out   std_logic_vector (31 downto 0); 
             do7  : out   std_logic_vector (31 downto 0); 
             do8  : out   std_logic_vector (31 downto 0); 
             do1a : out   std_logic_vector (31 downto 0); 
             do2a : out   std_logic_vector (31 downto 0); 
             do3a : out   std_logic_vector (31 downto 0); 
             do1b : out   std_logic_vector (31 downto 0); 
             do2b : out   std_logic_vector (31 downto 0); 
             do3b : out   std_logic_vector (31 downto 0); 
             do1c : out   std_logic_vector (31 downto 0); 
             do2c : out   std_logic_vector (31 downto 0); 
             do3c : out   std_logic_vector (31 downto 0); 
             do1d : out   std_logic_vector (31 downto 0); 
             do2d : out   std_logic_vector (31 downto 0); 
             do3d : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUXforspeciesTableIndi2
      port ( switchST : in    std_logic; 
             clk      : in    std_logic; 
             do       : in    std_logic_vector (31 downto 0); 
             do1      : in    std_logic_vector (31 downto 0); 
             do2      : in    std_logic_vector (31 downto 0); 
             do3      : in    std_logic_vector (31 downto 0); 
             do4      : in    std_logic_vector (31 downto 0); 
             do5      : in    std_logic_vector (31 downto 0); 
             do6      : in    std_logic_vector (31 downto 0); 
             do7      : in    std_logic_vector (31 downto 0); 
             do8      : in    std_logic_vector (31 downto 0); 
             do9      : in    std_logic_vector (31 downto 0); 
             do10     : in    std_logic_vector (31 downto 0); 
             do11     : in    std_logic_vector (31 downto 0); 
             dob      : in    std_logic_vector (31 downto 0); 
             do1b     : in    std_logic_vector (31 downto 0); 
             do2b     : in    std_logic_vector (31 downto 0); 
             do3b     : in    std_logic_vector (31 downto 0); 
             do4b     : in    std_logic_vector (31 downto 0); 
             do5b     : in    std_logic_vector (31 downto 0); 
             do6b     : in    std_logic_vector (31 downto 0); 
             do7b     : in    std_logic_vector (31 downto 0); 
             do8b     : in    std_logic_vector (31 downto 0); 
             do9b     : in    std_logic_vector (31 downto 0); 
             do10b    : in    std_logic_vector (31 downto 0); 
             do11b    : in    std_logic_vector (31 downto 0); 
             qmux1    : out   std_logic_vector (31 downto 0); 
             qmux2    : out   std_logic_vector (31 downto 0); 
             qmux3    : out   std_logic_vector (31 downto 0); 
             qmux4    : out   std_logic_vector (31 downto 0); 
             qmux5    : out   std_logic_vector (31 downto 0); 
             qmux6    : out   std_logic_vector (31 downto 0); 
             qmux7    : out   std_logic_vector (31 downto 0); 
             qmux8    : out   std_logic_vector (31 downto 0); 
             qmux9    : out   std_logic_vector (31 downto 0); 
             qmux10   : out   std_logic_vector (31 downto 0); 
             qmux11   : out   std_logic_vector (31 downto 0); 
             qmux12   : out   std_logic_vector (31 downto 0));
				 
   end component;
   
   component MUXforupdatespecies2_c
      port ( clk                : in    std_logic; 
             muxint             : in    std_logic_vector (2 downto 0); 
             Qspeciesupdate1    : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate2    : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate3    : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate4    : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate5    : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate6    : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate7    : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate8    : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate1a   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate2a   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate3a   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate4a   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate5a   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate6a   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate7a   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate8a   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate1b   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate2b   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate3b   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate4b   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate5b   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate6b   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate7b   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate8b   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate1c   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate2c   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate3c   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate4c   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate5c   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate6c   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate7c   : in    std_logic_vector (31 downto 0); 
             Qspeciesupdate8c   : in    std_logic_vector (31 downto 0); 
             Qstoixio1          : in    std_logic_vector (31 downto 0); 
             Qstoixio2          : in    std_logic_vector (31 downto 0); 
             Qstoixio3          : in    std_logic_vector (31 downto 0); 
             Qstoixio4          : in    std_logic_vector (31 downto 0); 
             Qstoixio5          : in    std_logic_vector (31 downto 0); 
             Qstoixio6          : in    std_logic_vector (31 downto 0); 
             Qstoixio7          : in    std_logic_vector (31 downto 0); 
             Qstoixio8          : in    std_logic_vector (31 downto 0); 
             Qstoixio1a         : in    std_logic_vector (31 downto 0); 
             Qstoixio2a         : in    std_logic_vector (31 downto 0); 
             Qstoixio3a         : in    std_logic_vector (31 downto 0); 
             Qstoixio4a         : in    std_logic_vector (31 downto 0); 
             Qstoixio5a         : in    std_logic_vector (31 downto 0); 
             Qstoixio6a         : in    std_logic_vector (31 downto 0); 
             Qstoixio7a         : in    std_logic_vector (31 downto 0); 
             Qstoixio8a         : in    std_logic_vector (31 downto 0); 
             Qstoixio1b         : in    std_logic_vector (31 downto 0); 
             Qstoixio2b         : in    std_logic_vector (31 downto 0); 
             Qstoixio3b         : in    std_logic_vector (31 downto 0); 
             Qstoixio4b         : in    std_logic_vector (31 downto 0); 
             Qstoixio5b         : in    std_logic_vector (31 downto 0); 
             Qstoixio6b         : in    std_logic_vector (31 downto 0); 
             Qstoixio7b         : in    std_logic_vector (31 downto 0); 
             Qstoixio8b         : in    std_logic_vector (31 downto 0); 
             Qstoixio1c         : in    std_logic_vector (31 downto 0); 
             Qstoixio2c         : in    std_logic_vector (31 downto 0); 
             Qstoixio3c         : in    std_logic_vector (31 downto 0); 
             Qstoixio4c         : in    std_logic_vector (31 downto 0); 
             Qstoixio5c         : in    std_logic_vector (31 downto 0); 
             Qstoixio6c         : in    std_logic_vector (31 downto 0); 
             Qstoixio7c         : in    std_logic_vector (31 downto 0); 
             Qstoixio8c         : in    std_logic_vector (31 downto 0); 
             Qstoixiout1        : out   std_logic_vector (31 downto 0); 
             Qstoixiout2        : out   std_logic_vector (31 downto 0); 
             Qstoixiout3        : out   std_logic_vector (31 downto 0); 
             Qstoixiout4        : out   std_logic_vector (31 downto 0); 
             Qstoixiout5        : out   std_logic_vector (31 downto 0); 
             Qstoixiout6        : out   std_logic_vector (31 downto 0); 
             Qstoixiout7        : out   std_logic_vector (31 downto 0); 
             Qstoixiout8        : out   std_logic_vector (31 downto 0); 
             Qspeciesupdateint1 : out   std_logic_vector (31 downto 0); 
             Qspeciesupdateint2 : out   std_logic_vector (31 downto 0); 
             Qspeciesupdateint3 : out   std_logic_vector (31 downto 0); 
             Qspeciesupdateint4 : out   std_logic_vector (31 downto 0); 
             Qspeciesupdateint5 : out   std_logic_vector (31 downto 0); 
             Qspeciesupdateint6 : out   std_logic_vector (31 downto 0); 
             Qspeciesupdateint7 : out   std_logic_vector (31 downto 0); 
             Qspeciesupdateint8 : out   std_logic_vector (31 downto 0));
   end component;
   
   component datamem3to5_2_316
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
   
   component datamem3to5_3_316
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
   
   component datamem3to5_4_316
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
   
   component LOTKA_VOLTERA_STOICHIOparam
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
	
	component StoichioEnzyme is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a   : in std_logic_vector(8 downto 0); 
 	di  : in std_logic_vector(255 downto 0); 
 	do0,do1,do2,do3,do4,do5,do6,do7  : out std_logic_vector(31 downto 0));
end component;
   
   component stoichiomeme3to5_2_316
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
   
   component stoichiomem3to5_3_316
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
   
   component stoichiomem3to5_4_316
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
   
   component speciesTable24_2
      port ( clk  : in    std_logic; 
             we   : in    std_logic; 
             en   : in    std_logic; 
             a    : in    std_logic_vector (31 downto 0); 
             a1   : in    std_logic_vector (31 downto 0); 
             a2   : in    std_logic_vector (31 downto 0); 
             a3   : in    std_logic_vector (31 downto 0); 
             a4   : in    std_logic_vector (31 downto 0); 
             a5   : in    std_logic_vector (31 downto 0); 
             a6   : in    std_logic_vector (31 downto 0); 
             a7   : in    std_logic_vector (31 downto 0); 
             aa   : in    std_logic_vector (31 downto 0); 
             a1a  : in    std_logic_vector (31 downto 0); 
             a2a  : in    std_logic_vector (31 downto 0); 
             a3a  : in    std_logic_vector (31 downto 0); 
             a4a  : in    std_logic_vector (31 downto 0); 
             a5a  : in    std_logic_vector (31 downto 0); 
             a6a  : in    std_logic_vector (31 downto 0); 
             a7a  : in    std_logic_vector (31 downto 0); 
             ab   : in    std_logic_vector (31 downto 0); 
             a1b  : in    std_logic_vector (31 downto 0); 
             a2b  : in    std_logic_vector (31 downto 0); 
             a3b  : in    std_logic_vector (31 downto 0); 
             a4b  : in    std_logic_vector (31 downto 0); 
             a5b  : in    std_logic_vector (31 downto 0); 
             a6b  : in    std_logic_vector (31 downto 0); 
             a7b  : in    std_logic_vector (31 downto 0); 
             ac   : in    std_logic_vector (31 downto 0); 
             a1c  : in    std_logic_vector (31 downto 0); 
             a2c  : in    std_logic_vector (31 downto 0); 
             a3c  : in    std_logic_vector (31 downto 0); 
             a4c  : in    std_logic_vector (31 downto 0); 
             a5c  : in    std_logic_vector (31 downto 0); 
             a6c  : in    std_logic_vector (31 downto 0); 
             a7c  : in    std_logic_vector (31 downto 0); 
             di1  : in    std_logic_vector (31 downto 0); 
             di2  : in    std_logic_vector (31 downto 0); 
             di3  : in    std_logic_vector (31 downto 0); 
             di4  : in    std_logic_vector (31 downto 0); 
             do   : out   std_logic_vector (31 downto 0); 
             do1  : out   std_logic_vector (31 downto 0); 
             do2  : out   std_logic_vector (31 downto 0); 
             do3  : out   std_logic_vector (31 downto 0); 
             do4  : out   std_logic_vector (31 downto 0); 
             do5  : out   std_logic_vector (31 downto 0); 
             do6  : out   std_logic_vector (31 downto 0); 
             do7  : out   std_logic_vector (31 downto 0); 
             doa  : out   std_logic_vector (31 downto 0); 
             do1a : out   std_logic_vector (31 downto 0); 
             do2a : out   std_logic_vector (31 downto 0); 
             do3a : out   std_logic_vector (31 downto 0); 
             do4a : out   std_logic_vector (31 downto 0); 
             do5a : out   std_logic_vector (31 downto 0); 
             do6a : out   std_logic_vector (31 downto 0); 
             do7a : out   std_logic_vector (31 downto 0); 
             dob  : out   std_logic_vector (31 downto 0); 
             do1b : out   std_logic_vector (31 downto 0); 
             do2b : out   std_logic_vector (31 downto 0); 
             do3b : out   std_logic_vector (31 downto 0); 
             do4b : out   std_logic_vector (31 downto 0); 
             do5b : out   std_logic_vector (31 downto 0); 
             do6b : out   std_logic_vector (31 downto 0); 
             do7b : out   std_logic_vector (31 downto 0); 
             doc  : out   std_logic_vector (31 downto 0); 
             do1c : out   std_logic_vector (31 downto 0); 
             do2c : out   std_logic_vector (31 downto 0); 
             do3c : out   std_logic_vector (31 downto 0); 
             do4c : out   std_logic_vector (31 downto 0); 
             do5c : out   std_logic_vector (31 downto 0); 
             do6c : out   std_logic_vector (31 downto 0); 
             do7c : out   std_logic_vector (31 downto 0); 
             dod  : out   std_logic_vector (31 downto 0); 
             do1d : out   std_logic_vector (31 downto 0); 
             do2d : out   std_logic_vector (31 downto 0); 
             do3d : out   std_logic_vector (31 downto 0); 
             do4d : out   std_logic_vector (31 downto 0); 
             do5d : out   std_logic_vector (31 downto 0); 
             do6d : out   std_logic_vector (31 downto 0); 
             do7d : out   std_logic_vector (31 downto 0));
   end component;
   
   component memintdimerLOTKA_VOLTERAparam 
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
	
	component MUXforspeciesTable is
port(clk,rrw:in std_logic;
     di1,di2:in std_logic_vector(31 downto 0);
	  do:out std_logic_vector(31 downto 0));
end component;

component MUXforspeciesTable2 is
port(clk,rrw:in std_logic;
di1,di2,di3,di4:in std_logic_vector(31 downto 0);
dii1,dii2,dii3,dii4:in std_logic_vector(31 downto 0);
doout,do1out,do2out,do3out:out std_logic_vector(31 downto 0));
end component;

component speciescoppyTable1 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a:in std_logic_vector(31 downto 0);--a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,ab,a1b,a2b,ac,a1c,a2c : in std_logic_vector(31 downto 0); 
 	di  : in std_logic_vector(31 downto 0); 
	do  : out std_logic_vector(31 downto 0)); 
 	--do1,do2,do3,do4,do5,do6,do7,do8,do1a,do2a,do3a,do1b,do2b,do3b,do1c,do2c,do3c,do1d,do2d,do3d: out std_logic_vector(31 downto 0));
end component;
	
component speciesTablecopy2 is
port (clk : in std_logic; 
 	we  : in std_logic; 
 	en  : in std_logic;
 	--ssr : in std_logic;
 	a,a1,a2,a3 : in std_logic_vector(31 downto 0); 
 	di1,di2,di3,di4  : in std_logic_vector(31 downto 0); 
 	do,do1,do2,do3 : out std_logic_vector(31 downto 0));
 	--do1,do2,do3,do4,do5,do6,do7,do8,do1a,do2a,do3a,do1b,do2b,do3b,do1c,do2c,do3c,do1d,do2d,do3d: out std_logic_vector(31 downto 0));
end component;	
	
   
begin
   ap1(8 downto 0) <= ap1_DUMMY(8 downto 0);
   ap2(8 downto 0) <= ap2_DUMMY(8 downto 0);
   ap3(8 downto 0) <= ap3_DUMMY(8 downto 0);
   ap4(8 downto 0) <= ap4_DUMMY(8 downto 0);
	
	Qstreal4a<=XLXN_144(31 downto 0);
	Qstral6b<=XLXN_154(31 downto 0);
   Qst1a(31 downto 0) <= Qst1a_DUMMY(31 downto 0);
   Qst1b(31 downto 0) <= Qst1b_DUMMY(31 downto 0);
   Qst1c(31 downto 0) <= Qst1c_DUMMY(31 downto 0);
   Qst1d(31 downto 0) <= Qst1d_DUMMY(31 downto 0);
   Qst2a(31 downto 0) <= Qst2a_DUMMY(31 downto 0);
   Qst2b(31 downto 0) <= Qst2b_DUMMY(31 downto 0);
   Qst2c(31 downto 0) <= Qst2c_DUMMY(31 downto 0);
   Qst2d(31 downto 0) <= Qst2d_DUMMY(31 downto 0);
   Qst3a(31 downto 0) <= Qst3a_DUMMY(31 downto 0);
   Qst3b(31 downto 0) <= Qst3b_DUMMY(31 downto 0);
   Qst3c(31 downto 0) <= Qst3c_DUMMY(31 downto 0);
   Qst3d(31 downto 0) <= Qst3d_DUMMY(31 downto 0);
   Qst4a(31 downto 0) <= Qst4a_DUMMY(31 downto 0);
   Qst4b(31 downto 0) <= Qst4b_DUMMY(31 downto 0);
   Qst4c(31 downto 0) <= Qst4c_DUMMY(31 downto 0);
   Qst4d(31 downto 0) <= Qst4d_DUMMY(31 downto 0);
   Qst5a(31 downto 0) <= Qst5a_DUMMY(31 downto 0);
   Qst5b(31 downto 0) <= Qst5b_DUMMY(31 downto 0);
   Qst5c(31 downto 0) <= Qst5c_DUMMY(31 downto 0);
   Qst5d(31 downto 0) <= Qst5d_DUMMY(31 downto 0);
   Qst6a(31 downto 0) <= Qst6a_DUMMY(31 downto 0);
   Qst6b(31 downto 0) <= Qst6b_DUMMY(31 downto 0);
   Qst6c(31 downto 0) <= Qst6c_DUMMY(31 downto 0);
   Qst6d(31 downto 0) <= Qst6d_DUMMY(31 downto 0);
   Qst7a(31 downto 0) <= Qst7a_DUMMY(31 downto 0);
   Qst7b(31 downto 0) <= Qst7b_DUMMY(31 downto 0);
   Qst7c(31 downto 0) <= Qst7c_DUMMY(31 downto 0);
   Qst7d(31 downto 0) <= Qst7d_DUMMY(31 downto 0);
   Qst8c(31 downto 0) <= Qst8c_DUMMY(31 downto 0);
   Qst8d(31 downto 0) <= Qst8d_DUMMY(31 downto 0);
	
	
   XLXI_1 : UARTDDRFSM
      port map (afromminval(8 downto 0)=>afronminval(8 downto 0),
                afromminval1(8 downto 0)=>afronminval1(8 downto 0),
                afromminval2(8 downto 0)=>afronminval2(8 downto 0),
                afromminval3(8 downto 0)=>afronminval3(8 downto 0),
                afromminval4(8 downto 0)=>afronminval4(8 downto 0),
					 Qinsel=>Qinsel(7 downto 0),
		          Qoutsel1=>Qoutsel1,
					 Qoutsel2=>Qoutsel2,
					 Qoutsel3=>Qoutsel3,
					 Qoutsel4=>Qoutsel4,
                apoint1(31 downto 0)=>XLXN_317(31 downto 0),
                apoint1a(31 downto 0)=>XLXN_230(31 downto 0),
                apoint1aa(31 downto 0)=>XLXN_317(31 downto 0),
                apoint1b(31 downto 0)=>XLXN_306(31 downto 0),
                apoint1c(31 downto 0)=>XLXN_236(31 downto 0),
                apoint2(31 downto 0)=>XLXN_46(31 downto 0),
                apoint2a(31 downto 0)=>XLXN_110(31 downto 0),
                apoint2aa(31 downto 0)=>XLXN_46(31 downto 0),
                apoint2b(31 downto 0)=>XLXN_307(31 downto 0),
                apoint2c(31 downto 0)=>XLXN_131(31 downto 0),
                apoint3(31 downto 0)=>XLXN_318(31 downto 0),
                apoint3a(31 downto 0)=>XLXN_302(31 downto 0),
                apoint3aa(31 downto 0)=>XLXN_318(31 downto 0),
                apoint3b(31 downto 0)=>XLXN_215(31 downto 0),
                apoint3c(31 downto 0)=>XLXN_132(31 downto 0),
                apoint4(31 downto 0)=>XLXN_319(31 downto 0),
                apoint4a(31 downto 0)=>XLXN_206(31 downto 0),
                apoint4aa(31 downto 0)=>XLXN_319(31 downto 0),
                apoint4b(31 downto 0)=>XLXN_124(31 downto 0),
                apoint4c(31 downto 0)=>XLXN_246(31 downto 0),
                apoint5(31 downto 0)=>XLXN_320(31 downto 0),
                apoint5a(31 downto 0)=>XLXN_303(31 downto 0),
                apoint5aa(31 downto 0)=>XLXN_320(31 downto 0),
                apoint5b(31 downto 0)=>XLXN_125(31 downto 0),
                apoint5c(31 downto 0)=>XLXN_136(31 downto 0),
                apoint6(31 downto 0)=>XLXN_201(31 downto 0),
                apoint6a(31 downto 0)=>XLXN_304(31 downto 0),
                apoint6aa(31 downto 0)=>XLXN_201(31 downto 0),
                apoint6b(31 downto 0)=>XLXN_126(31 downto 0),
                apoint6c(31 downto 0)=>XLXN_137(31 downto 0),
                apoint7(31 downto 0)=>XLXN_321(31 downto 0),
                apoint7a(31 downto 0)=>XLXN_211(31 downto 0),
                apoint7aa(31 downto 0)=>XLXN_321(31 downto 0),
                apoint7b(31 downto 0)=>apointout7b(31 downto 0),
                apoint7c(31 downto 0)=>XLXN_138(31 downto 0),
                apoint8(31 downto 0)=>XLXN_202(31 downto 0),
                apoint8a(31 downto 0)=>XLXN_212(31 downto 0),
                apoint8aa(31 downto 0)=>XLXN_202(31 downto 0),
                apoint8b(31 downto 0)=>apointout8b(31 downto 0),
                apoint8c(31 downto 0)=>XLXN_139(31 downto 0),
                ce=>ceglobal,
                clk=>clk,
                continue=>continue,
                flagMMU=>flagmmu,
                go=>go,
                mode=>modeint,
                Qinspecies(31 downto 0)=>Qinspecies(31 downto 0),
					 ainstat=>ainstat,
                Qinstoichiometry(255 downto 0)=>Qinstoichio(255 downto 0),
                Qpointers1(287 downto 0)=>Qpointers(287 downto 0),
                Qpointers2(287 downto 0)=>Qpointers2(287 downto 0),
                Qpointers3(287 downto 0)=>Qpointers3(287 downto 0),
                Qpointers4(287 downto 0)=>Qpointers4(287 downto 0),
                Qspeciesupdate1(31 downto 0)=>Qspeciesupdate1(31 downto 0),
                Qspeciesupdate1a(31 downto 0)=>Qspeciesupdate1a(31 downto 0),
                Qspeciesupdate1aa(31 downto 0)=>Qspupdate1aa(31 downto 0),
                Qspeciesupdate1b(31 downto 0)=>Qspeciesupdate1b(31 downto 0),
                Qspeciesupdate1c(31 downto 0)=>Qspeciesupdate1c(31 downto 0),
                Qspeciesupdate2(31 downto 0)=>Qspeciesupdate2(31 downto 0),
                Qspeciesupdate2a(31 downto 0)=>Qspeciesupdate2a(31 downto 0),
                Qspeciesupdate2aa(31 downto 0)=>Qspupdate2aa(31 downto 0),
                Qspeciesupdate2b(31 downto 0)=>Qspeciesupdate2b(31 downto 0),
                Qspeciesupdate2c(31 downto 0)=>Qspeciesupdate2c(31 downto 0),
                Qspeciesupdate3(31 downto 0)=>Qspeciesupdate3(31 downto 0),
                Qspeciesupdate3a(31 downto 0)=>Qspeciesupdate3a(31 downto 0),
                Qspeciesupdate3aa(31 downto 0)=>Qspupdate3aa(31 downto 0),
                Qspeciesupdate3b(31 downto 0)=>Qspeciesupdate3b(31 downto 0),
                Qspeciesupdate3c(31 downto 0)=>Qspeciesupdate3c(31 downto 0),
                Qspeciesupdate4(31 downto 0)=>Qspeciesupdate4(31 downto 0),
                Qspeciesupdate4a(31 downto 0)=>Qspeciesupdate4a(31 downto 0),
                Qspeciesupdate4aa(31 downto 0)=>Qspupdate4aa(31 downto 0),
                Qspeciesupdate4b(31 downto 0)=>Qspeciesupdate4b(31 downto 0),
                Qspeciesupdate4c(31 downto 0)=>Qspeciesupdate4c(31 downto 0),
                Qspeciesupdate5(31 downto 0)=>Qspeciesupdate5(31 downto 0),
                Qspeciesupdate5a(31 downto 0)=>Qspupdate5a(31 downto 0),
                Qspeciesupdate5aa(31 downto 0)=>Qspupdate5aa(31 downto 0),
                Qspeciesupdate5b(31 downto 0)=>Qspupdate5b(31 downto 0),
                Qspeciesupdate5c(31 downto 0)=>Qspupdate5c(31 downto 0),
                Qspeciesupdate6(31 downto 0)=>Qspeciesupdate6(31 downto 0),
                Qspeciesupdate6a(31 downto 0)=>Qspupdate6a(31 downto 0),
                Qspeciesupdate6aa(31 downto 0)=>Qspupdate6aa(31 downto 0),
                Qspeciesupdate6b(31 downto 0)=>Qspupdate6b(31 downto 0),
                Qspeciesupdate6c(31 downto 0)=>Qspupdate6c(31 downto 0),
                Qspeciesupdate7(31 downto 0)=>Qspeciesupdate7(31 downto 0),
                Qspeciesupdate7a(31 downto 0)=>Qspupdate7a(31 downto 0),
                Qspeciesupdate7aa(31 downto 0)=>Qspupdate7aa(31 downto 0),
                Qspeciesupdate7b(31 downto 0)=>Qspupdate7b(31 downto 0),
                Qspeciesupdate7c(31 downto 0)=>Qspupdate7c(31 downto 0),
                Qspeciesupdate8(31 downto 0)=>Qspeciesupdate8(31 downto 0),
                Qspeciesupdate8a(31 downto 0)=>Qspupdate8a(31 downto 0),
                Qspeciesupdate8aa(31 downto 0)=>Qspupdate8aa(31 downto 0),
                Qspeciesupdate8b(31 downto 0)=>Qspupdate8b(31 downto 0),
                Qspeciesupdate8c(31 downto 0)=>Qspupdate8c(31 downto 0),
                Qstopaddress(8 downto 0)=>Qstopaddress(8 downto 0),
                rdyout=>rdyout,
                restart=>restart,
                sclrseed=>sclrseed,
                simindepentent=>simindi,
					 gostat=>gostat,
					 statistics=>statistics,
					 fifo_write=>fifo_write,
                a(8 downto 0)=>ap1_DUMMY(8 downto 0),
                ap1(8 downto 0)=>ap2_DUMMY(8 downto 0),
                ap2(8 downto 0)=>ap3_DUMMY(8 downto 0),
                ap3(8 downto 0)=>ap4_DUMMY(8 downto 0),
                a1(31 downto 0)=>XLXN_34(31 downto 0),
                a2(31 downto 0)=>XLXN_231(31 downto 0),
                a3(31 downto 0)=>XLXN_234(31 downto 0),
                a4(31 downto 0)=>XLXN_239(31 downto 0),
					 aoutstat=>aoutstat,
                cetr=>cetr,
                ena=>ena,
                enfromFSM=>enFROMFSM,
                en1=>en1,
                en2=>en2,
                en3=>open,
                en4=>en4,
                en5=>en5,
					 enr=>enr,
					 enr1=>enr1,
					 enr2=>enr2,
					 enr3=>enr3,
                muxintsimindi=>open,
                Qoutpointers1(287 downto 0)=>XLXN_330(287 downto 0),
                Qoutpointers2(287 downto 0)=>XLXN_331(287 downto 0),
                Qoutpointers3(287 downto 0)=>XLXN_332(287 downto 0),
                Qoutpointers4(287 downto 0)=>XLXN_333(287 downto 0),
                Qoutsp(31 downto 0)=>XLXN_257(31 downto 0),
                Qoutsp1(31 downto 0)=>XLXN_250(31 downto 0),
                Qoutsp2(31 downto 0)=>XLXN_251(31 downto 0),
                Qoutsp3(31 downto 0)=>XLXN_253(31 downto 0),
                Qoutsp4(31 downto 0)=>XLXN_255(31 downto 0),
                Qst(255 downto 0)=>XLXN_335(255 downto 0),
                rstaddrepeat=>rstaddrepeat,
                rstmin=>rstmin,
                saddsub=>saddsub,
                selFSM=>XLXN_182,
                selFSM2=>XLXN_10,
                selFSM3=>open,
                seltr=>seltr,
                switchST=>open,
					 FSMstat=>FSMstat,
					 cestat=>cestat,
					 cetrint=>cetrint,
					 rstflagmmu=>rstflagmmu,
					 selrww=>selrrw,
                we=>XLXN_29,
					 westat=>westat,
                wechain=>open,
                wep=>XLXN_13,
                westoichio=>XLXN_15);
   
   XLXI_2 : MUXforpointersRama1
      port map (clk=>clk,
                QinaddrFSM(31 downto 0)=>XLXN_34(31 downto 0),
                Qinaddrpointer(31 downto 0)=>XLXN_317(31 downto 0),
                selFSM=>XLXN_182,
                Qoutaddr(31 downto 0)=>XLXN_39(31 downto 0));
   
   XLXI_4 : MUXpointerRam2
      port map (clk=>clk,
                QinMUxupdate1(31 downto 0)=>XLXN_48(31 downto 0),
                QinMUxupdate2(31 downto 0)=>XLXN_49(31 downto 0),
                Qinpointer1(31 downto 0)=>XLXN_39(31 downto 0),
                Qinpointer2(31 downto 0)=>XLXN_46(31 downto 0),
                selFSM2=>XLXN_10,
                Qoutaddr1(31 downto 0)=>XLXN_55(31 downto 0),
                Qoutaddr2(31 downto 0)=>XLXN_57(31 downto 0));
					 
					 X1address1<=XLXN_317(31 downto 0);
					 X2address2<=XLXN_46(31 downto 0);
					 
					 
   
   XLXI_9 : RT1
      port map (a(8 downto 0)=>ap1_DUMMY(8 downto 0),
                clk=>clk,
                di(287 downto 0)=>XLXN_330(287 downto 0),
                en=>ceglobal,
                we=>XLXN_13,
                do(31 downto 0)=>XLXN_317(31 downto 0),
                do0(31 downto 0)=>XLXN_46(31 downto 0),
                do1(31 downto 0)=>XLXN_318(31 downto 0),
                do2(31 downto 0)=>K1(31 downto 0),
                do3(31 downto 0)=>XLXN_319(31 downto 0),
                do4(31 downto 0)=>XLXN_320(31 downto 0),
                do5(31 downto 0)=>XLXN_201(31 downto 0),
                do6(31 downto 0)=>XLXN_321(31 downto 0),
                do7(31 downto 0)=>XLXN_202(31 downto 0));
	
notsimidi<=not (simindi);
	
	XLXI_9_b:	 AND2
      port map (I0=>XLXN_29,
                I1=>notsimidi,
                O=>we1FRM4c);	
					 
XLXI_10a: speciescoppyTable1 
port map(clk =>clk,
 	we  =>wecsp, 
 	en  =>ceglobal,
 	--ssr : in std_logic;
 	a=>XLXN_55(31 downto 0),--a1,a2,a3,a4,a5,a6,a7,aa,a1a,a2a,ab,a1b,a2b,ac,a1c,a2c : in std_logic_vector(31 downto 0); 
 	di  =>Qcopydi, 
	do  =>Qcopy); 
 	--do1,do2,do3,do4,do5,do6,do7,do8,do1a,do2a,do3a,do1b,do2b,do3b,do1c,do2c,do3c,do1d,do2d,do3d: out std_logic_vector(31 downto 0));
					 
					 

XLXI_10b: MUXforspeciesTable 
port map(clk=>clk,rrw=>selrrw,
     di1=>XLXN_257(31 downto 0),di2=>Qcopy,
	  do=>Qsendsp1);					 
					 
   
   XLXI_10 : speciesTable24_1   -----
      port map (a(31 downto 0)=>XLXN_55(31 downto 0),
                aa(31 downto 0)=>XLXN_230(31 downto 0),
                ab(31 downto 0)=>XLXN_306(31 downto 0),
                ac(31 downto 0)=>XLXN_236(31 downto 0),
                a1(31 downto 0)=>XLXN_57(31 downto 0),
                a1a(31 downto 0)=>XLXN_110(31 downto 0),
                a1b(31 downto 0)=>XLXN_307(31 downto 0),
                a1c(31 downto 0)=>XLXN_131(31 downto 0),
                a2(31 downto 0)=>XLXN_61(31 downto 0),
                a2a(31 downto 0)=>XLXN_302(31 downto 0),
                a2b(31 downto 0)=>XLXN_215(31 downto 0),
                a2c(31 downto 0)=>XLXN_132(31 downto 0),
                a3(31 downto 0)=>XLXN_188(31 downto 0),
                a4(31 downto 0)=>XLXN_190(31 downto 0),
                a5(31 downto 0)=>XLXN_191(31 downto 0),
                a6(31 downto 0)=>XLXN_193(31 downto 0),
                a7(31 downto 0)=>XLXN_194(31 downto 0),
                clk=>clk,
                --di(31 downto 0)=>XLXN_257(31 downto 0),
					 di=>Qsendsp1,
                en=>ceglobal,
                we=>we1FRM4c,
                do1(31 downto 0)=>XLXN_267(31 downto 0),
                do1a(31 downto 0)=>XLXN_273(31 downto 0),
                do1b(31 downto 0)=>XLXN_276(31 downto 0),
                do1c(31 downto 0)=>XLXN_279(31 downto 0),
                do1d=>open,
                do2(31 downto 0)=>XLXN_268(31 downto 0),
                do2a(31 downto 0)=>XLXN_274(31 downto 0),
                do2b(31 downto 0)=>XLXN_277(31 downto 0),
                do2c(31 downto 0)=>XLXN_280(31 downto 0),
                do2d=>open,
                do3(31 downto 0)=>XLXN_269(31 downto 0),
                do3a(31 downto 0)=>XLXN_275(31 downto 0),
                do3b(31 downto 0)=>XLXN_278(31 downto 0),
                do3c(31 downto 0)=>XLXN_282(31 downto 0),
                do3d=>open,
                do4(31 downto 0)=>Qsp4(31 downto 0),
                do5(31 downto 0)=>Qsp5(31 downto 0),
                do6(31 downto 0)=>Qsp6(31 downto 0),
                do7(31 downto 0)=>Qsp7(31 downto 0),
                do8(31 downto 0)=>Qsp8(31 downto 0));
   
   XLXI_12 : MUXforspeciesTableIndi2
      port map (clk=>clk,
                do(31 downto 0)=>XLXN_267(31 downto 0),
                dob(31 downto 0)=>XLXN_283(31 downto 0),
                do1(31 downto 0)=>XLXN_268(31 downto 0),
                do1b(31 downto 0)=>XLXN_284(31 downto 0),
                do2(31 downto 0)=>XLXN_269(31 downto 0),
                do2b(31 downto 0)=>XLXN_285(31 downto 0),
                do3(31 downto 0)=>XLXN_273(31 downto 0),
                do3b(31 downto 0)=>XLXN_287(31 downto 0),
                do4(31 downto 0)=>XLXN_274(31 downto 0),
                do4b(31 downto 0)=>XLXN_288(31 downto 0),
                do5(31 downto 0)=>XLXN_275(31 downto 0),
                do5b(31 downto 0)=>XLXN_289(31 downto 0),
                do6(31 downto 0)=>XLXN_276(31 downto 0),
                do6b(31 downto 0)=>XLXN_292(31 downto 0),
                do7(31 downto 0)=>XLXN_277(31 downto 0),
                do7b(31 downto 0)=>XLXN_293(31 downto 0),
                do8(31 downto 0)=>XLXN_278(31 downto 0),
                do8b(31 downto 0)=>XLXN_294(31 downto 0),
                do9(31 downto 0)=>XLXN_279(31 downto 0),
                do9b(31 downto 0)=>XLXN_296(31 downto 0),
                do10(31 downto 0)=>XLXN_280(31 downto 0),
                do10b(31 downto 0)=>XLXN_297(31 downto 0),
                do11(31 downto 0)=>XLXN_282(31 downto 0),
                do11b(31 downto 0)=>XLXN_298(31 downto 0),
                switchST=>simindi,
                qmux1(31 downto 0)=>qmux1(31 downto 0),
                qmux2(31 downto 0)=>qmux2(31 downto 0),
                qmux3(31 downto 0)=>qmux3(31 downto 0),
                qmux4(31 downto 0)=>qmux4(31 downto 0),
                qmux5(31 downto 0)=>qmux5(31 downto 0),
                qmux6(31 downto 0)=>qmux6(31 downto 0),
                qmux7(31 downto 0)=>qmux7(31 downto 0),
                qmux8(31 downto 0)=>qmux8(31 downto 0),
                qmux9(31 downto 0)=>qmux9(31 downto 0),
                qmux10(31 downto 0)=>qmux10(31 downto 0),
                qmux11(31 downto 0)=>qmux11(31 downto 0),
                qmux12(31 downto 0)=>qmux12(31 downto 0));
   
   XLXI_13 : MUXforupdatespecies2_c
      port map (clk=>clk,
                muxint(2 downto 0)=>muxint(2 downto 0),
                Qspeciesupdate1(31 downto 0)=>XLXN_317(31 downto 0),
                Qspeciesupdate1a(31 downto 0)=>XLXN_230(31 downto 0),
                Qspeciesupdate1b(31 downto 0)=>XLXN_306(31 downto 0),
                Qspeciesupdate1c(31 downto 0)=>XLXN_236(31 downto 0),
                Qspeciesupdate2(31 downto 0)=>XLXN_46(31 downto 0),
                Qspeciesupdate2a(31 downto 0)=>XLXN_110(31 downto 0),
                Qspeciesupdate2b(31 downto 0)=>XLXN_307(31 downto 0),
                Qspeciesupdate2c(31 downto 0)=>XLXN_131(31 downto 0),
                Qspeciesupdate3(31 downto 0)=>XLXN_318(31 downto 0),
                Qspeciesupdate3a(31 downto 0)=>XLXN_302(31 downto 0),
                Qspeciesupdate3b(31 downto 0)=>XLXN_215(31 downto 0),
                Qspeciesupdate3c(31 downto 0)=>XLXN_132(31 downto 0),
                Qspeciesupdate4(31 downto 0)=>XLXN_319(31 downto 0),
                Qspeciesupdate4a(31 downto 0)=>XLXN_206(31 downto 0),
                Qspeciesupdate4b(31 downto 0)=>XLXN_124(31 downto 0),
                Qspeciesupdate4c(31 downto 0)=>XLXN_246(31 downto 0),
                Qspeciesupdate5(31 downto 0)=>XLXN_320(31 downto 0),
                Qspeciesupdate5a(31 downto 0)=>XLXN_303(31 downto 0),
                Qspeciesupdate5b(31 downto 0)=>XLXN_125(31 downto 0),
                Qspeciesupdate5c(31 downto 0)=>XLXN_136(31 downto 0),
                Qspeciesupdate6(31 downto 0)=>XLXN_201(31 downto 0),
                Qspeciesupdate6a(31 downto 0)=>XLXN_304(31 downto 0),
                Qspeciesupdate6b(31 downto 0)=>XLXN_126(31 downto 0),
                Qspeciesupdate6c(31 downto 0)=>XLXN_137(31 downto 0),
                Qspeciesupdate7(31 downto 0)=>XLXN_321(31 downto 0),
                Qspeciesupdate7a(31 downto 0)=>XLXN_211(31 downto 0),
                Qspeciesupdate7b(31 downto 0)=>apointout7b(31 downto 0),
                Qspeciesupdate7c(31 downto 0)=>XLXN_138(31 downto 0),
                Qspeciesupdate8(31 downto 0)=>XLXN_202(31 downto 0),
                Qspeciesupdate8a(31 downto 0)=>XLXN_212(31 downto 0),
                Qspeciesupdate8b(31 downto 0)=>apointout8b(31 downto 0),
                Qspeciesupdate8c(31 downto 0)=>XLXN_139(31 downto 0),
                Qstoixio1(31 downto 0)=>Qst1a_DUMMY(31 downto 0),
                Qstoixio1a(31 downto 0)=>Qst1b_DUMMY(31 downto 0),
                Qstoixio1b(31 downto 0)=>Qst1c_DUMMY(31 downto 0),
                Qstoixio1c(31 downto 0)=>Qst1d_DUMMY(31 downto 0),
                Qstoixio2(31 downto 0)=>Qst2a_DUMMY(31 downto 0),
                Qstoixio2a(31 downto 0)=>Qst2b_DUMMY(31 downto 0),
                Qstoixio2b(31 downto 0)=>Qst2c_DUMMY(31 downto 0),
                Qstoixio2c(31 downto 0)=>Qst2d_DUMMY(31 downto 0),
                Qstoixio3(31 downto 0)=>Qst3a_DUMMY(31 downto 0),
                Qstoixio3a(31 downto 0)=>Qst3b_DUMMY(31 downto 0),
                Qstoixio3b(31 downto 0)=>Qst3c_DUMMY(31 downto 0),
                Qstoixio3c(31 downto 0)=>Qst3d_DUMMY(31 downto 0),
                Qstoixio4(31 downto 0)=>Qst4a_DUMMY(31 downto 0),
                Qstoixio4a(31 downto 0)=>Qst4b_DUMMY(31 downto 0),
                Qstoixio4b(31 downto 0)=>Qst4c_DUMMY(31 downto 0),
                Qstoixio4c(31 downto 0)=>Qst4d_DUMMY(31 downto 0),
                Qstoixio5(31 downto 0)=>XLXN_144(31 downto 0),
                Qstoixio5a(31 downto 0)=>Qst5b_DUMMY(31 downto 0),
                Qstoixio5b(31 downto 0)=>Qst5c_DUMMY(31 downto 0),
                Qstoixio5c(31 downto 0)=>Qst5d_DUMMY(31 downto 0),
                Qstoixio6(31 downto 0)=>Qst5a_DUMMY(31 downto 0),
                Qstoixio6a(31 downto 0)=>Qst6b_DUMMY(31 downto 0),
                Qstoixio6b(31 downto 0)=>Qst6c_DUMMY(31 downto 0),
                Qstoixio6c(31 downto 0)=>Qst6d_DUMMY(31 downto 0),
                Qstoixio7(31 downto 0)=>Qst6a_DUMMY(31 downto 0),
                Qstoixio7a(31 downto 0)=>XLXN_154(31 downto 0),
                Qstoixio7b(31 downto 0)=>Qst7c_DUMMY(31 downto 0),
                Qstoixio7c(31 downto 0)=>Qst7d_DUMMY(31 downto 0),
                Qstoixio8(31 downto 0)=>Qst7a_DUMMY(31 downto 0),
                Qstoixio8a(31 downto 0)=>Qst7b_DUMMY(31 downto 0),
                Qstoixio8b(31 downto 0)=>Qst8c_DUMMY(31 downto 0),
                Qstoixio8c(31 downto 0)=>Qst8d_DUMMY(31 downto 0),
                Qspeciesupdateint1(31 downto 0)=>XLXN_48(31 downto 0),
                Qspeciesupdateint2(31 downto 0)=>XLXN_49(31 downto 0),
                Qspeciesupdateint3(31 downto 0)=>XLXN_50(31 downto 0),
                Qspeciesupdateint4(31 downto 0)=>XLXN_188(31 downto 0),
                Qspeciesupdateint5(31 downto 0)=>XLXN_190(31 downto 0),
                Qspeciesupdateint6(31 downto 0)=>XLXN_191(31 downto 0),
                Qspeciesupdateint7(31 downto 0)=>XLXN_193(31 downto 0),
                Qspeciesupdateint8(31 downto 0)=>XLXN_194(31 downto 0),
                Qstoixiout1(31 downto 0)=>Qst1(31 downto 0),
                Qstoixiout2(31 downto 0)=>Qst2(31 downto 0),
                Qstoixiout3(31 downto 0)=>Qst3(31 downto 0),
                Qstoixiout4(31 downto 0)=>Qst4(31 downto 0),
                Qstoixiout5(31 downto 0)=>Qst5(31 downto 0),
                Qstoixiout6(31 downto 0)=>Qst6(31 downto 0),
                Qstoixiout7(31 downto 0)=>Qst7(31 downto 0),
                Qstoixiout8(31 downto 0)=>Qst8(31 downto 0));
   
   XLXI_14 : RT2
      port map (a(8 downto 0)=>ap2_DUMMY(8 downto 0),
                clk=>clk,
                di(287 downto 0)=>XLXN_331(287 downto 0),
                en=>ceglobal,
                we=>XLXN_13,
                do(31 downto 0)=>XLXN_230(31 downto 0),
                do0(31 downto 0)=>XLXN_110(31 downto 0),
                do1(31 downto 0)=>XLXN_302(31 downto 0),
                do2(31 downto 0)=>K2(31 downto 0),
                do3(31 downto 0)=>XLXN_206(31 downto 0),
                do4(31 downto 0)=>XLXN_303(31 downto 0),
                do5(31 downto 0)=>XLXN_304(31 downto 0),
                do6(31 downto 0)=>XLXN_211(31 downto 0),
                do7(31 downto 0)=>XLXN_212(31 downto 0));
   
	             X3address<=XLXN_230(31 downto 0);
					 X4address<=XLXN_110(31 downto 0);
					 
   XLXI_15 : RT3
      port map (a(8 downto 0)=>ap3_DUMMY(8 downto 0),
                clk=>clk,
                di(287 downto 0)=>XLXN_332(287 downto 0),
                en=>ceglobal,
                we=>XLXN_13,
                do(31 downto 0)=>XLXN_306(31 downto 0),
                do0(31 downto 0)=>XLXN_307(31 downto 0),
                do1(31 downto 0)=>XLXN_215(31 downto 0),
                do2(31 downto 0)=>K3(31 downto 0),
                do3(31 downto 0)=>XLXN_124(31 downto 0),
                do4(31 downto 0)=>XLXN_125(31 downto 0),
                do5(31 downto 0)=>XLXN_126(31 downto 0),
                do6(31 downto 0)=>apointout7b(31 downto 0),
                do7(31 downto 0)=>apointout8b(31 downto 0));
					 
					 X5address<=XLXN_306(31 downto 0);
					 X6address<=XLXN_307(31 downto 0);
   
   XLXI_16 : RT4
      port map (a(8 downto 0)=>ap4_DUMMY(8 downto 0),
                clk=>clk,
                di(287 downto 0)=>XLXN_333(287 downto 0),
                en=>ceglobal,
                we=>XLXN_13,
                do(31 downto 0)=>XLXN_236(31 downto 0),
                do0(31 downto 0)=>XLXN_131(31 downto 0),
                do1(31 downto 0)=>XLXN_132(31 downto 0),
                do2(31 downto 0)=>K4(31 downto 0),
                do3(31 downto 0)=>XLXN_246(31 downto 0),
                do4(31 downto 0)=>XLXN_136(31 downto 0),
                do5(31 downto 0)=>XLXN_137(31 downto 0),
                do6(31 downto 0)=>XLXN_138(31 downto 0),
                do7(31 downto 0)=>XLXN_139(31 downto 0));
					 
					 X7address<=XLXN_236(31 downto 0);
					 X8address<=XLXN_131(31 downto 0);
   
   XLXI_17 : MUXforpointersRama1
      port map (clk=>clk,
                QinaddrFSM(31 downto 0)=>XLXN_318(31 downto 0),
                Qinaddrpointer(31 downto 0)=>XLXN_50(31 downto 0),
                selFSM=>XLXN_10,
                Qoutaddr(31 downto 0)=>XLXN_61(31 downto 0));
   
   XLXI_18 : LOTKA_VOLTERA_STOICHIOparam
      port map (a(8 downto 0)=>ap1_DUMMY(8 downto 0),
                clk=>clk,
                di(255 downto 0)=>XLXN_335(255 downto 0),
                en=>ceglobal,
                we=>XLXN_15,
                do0(31 downto 0)=>Qst1a_DUMMY(31 downto 0),
                do1(31 downto 0)=>Qst2a_DUMMY(31 downto 0),
                do2(31 downto 0)=>Qst3a_DUMMY(31 downto 0),
                do3(31 downto 0)=>Qst4a_DUMMY(31 downto 0),
                do4(31 downto 0)=>XLXN_144(31 downto 0),
                do5(31 downto 0)=>Qst5a_DUMMY(31 downto 0),
                do6(31 downto 0)=>Qst6a_DUMMY(31 downto 0),
                do7(31 downto 0)=>Qst7a_DUMMY(31 downto 0));
   
   XLXI_19 : LOTKA_VOLTERA_STOICHIOparam
      port map (a(8 downto 0)=>ap2_DUMMY(8 downto 0),
                clk=>clk,
                di(255 downto 0)=>XLXN_335(255 downto 0),
                en=>ceglobal,
                we=>XLXN_15,
                do0(31 downto 0)=>Qst1b_DUMMY(31 downto 0),
                do1(31 downto 0)=>Qst2b_DUMMY(31 downto 0),
                do2(31 downto 0)=>Qst3b_DUMMY(31 downto 0),
                do3(31 downto 0)=>Qst4b_DUMMY(31 downto 0),
                do4(31 downto 0)=>Qst5b_DUMMY(31 downto 0),
                do5(31 downto 0)=>Qst6b_DUMMY(31 downto 0),
                do6(31 downto 0)=>XLXN_154(31 downto 0),
                do7(31 downto 0)=>Qst7b_DUMMY(31 downto 0));
   
   XLXI_20 : LOTKA_VOLTERA_STOICHIOparam
      port map (a(8 downto 0)=>ap3_DUMMY(8 downto 0),
                clk=>clk,
                di(255 downto 0)=>XLXN_335(255 downto 0),
                en=>ceglobal,
                we=>XLXN_15,
                do0(31 downto 0)=>Qst1c_DUMMY(31 downto 0),
                do1(31 downto 0)=>Qst2c_DUMMY(31 downto 0),
                do2(31 downto 0)=>Qst3c_DUMMY(31 downto 0),
                do3(31 downto 0)=>Qst4c_DUMMY(31 downto 0),
                do4(31 downto 0)=>Qst5c_DUMMY(31 downto 0),
                do5(31 downto 0)=>Qst6c_DUMMY(31 downto 0),
                do6(31 downto 0)=>Qst7c_DUMMY(31 downto 0),
                do7(31 downto 0)=>Qst8c_DUMMY(31 downto 0));
   
   XLXI_21 : LOTKA_VOLTERA_STOICHIOparam
      port map (a(8 downto 0)=>ap4_DUMMY(8 downto 0),
                clk=>clk,
                di(255 downto 0)=>XLXN_335(255 downto 0),
                en=>ceglobal,
                we=>XLXN_15,
                do0(31 downto 0)=>Qst1d_DUMMY(31 downto 0),
                do1(31 downto 0)=>Qst2d_DUMMY(31 downto 0),
                do2(31 downto 0)=>Qst3d_DUMMY(31 downto 0),
                do3(31 downto 0)=>Qst4d_DUMMY(31 downto 0),
                do4(31 downto 0)=>Qst5d_DUMMY(31 downto 0),
                do5(31 downto 0)=>Qst6d_DUMMY(31 downto 0),
                do6(31 downto 0)=>Qst7d_DUMMY(31 downto 0),
                do7(31 downto 0)=>Qst8d_DUMMY(31 downto 0));
					 
XLXI_22_b:	 AND2
      port map (I0=>XLXN_29,
                I1=>simindi,
                O=>weFRM4c);				

XLXI_22a:speciesTablecopy2
port map(clk =>clk,
 	we  =>wecsp, 
 	en  =>ceglobal,
 	--ssr : in std_logic;
 	a=>XLXN_186,a1=>XLXN_232,a2=>XLXN_242,a3=>XLXN_243,
 	di1=>Qcopydi1,di2=>Qcopydi2,di3=>Qcopydi3,di4 =>Qcopydi4,
 	do=>Qcopy1,do1=>Qcopy2,do2=>Qcopy3,do3=>Qcopy4);
			


XLXI_22b: MUXforspeciesTable2 
port map(clk=>clk,rrw=>selrrw,
di1=>XLXN_250,di2=>XLXN_251,di3=>XLXN_253,di4=>XLXN_255,
dii1=>Qcopy1,dii2=>Qcopy2,dii3=>Qcopy3,dii4=>Qcopy4,
doout=>Qsendsp1b,do1out=>Qsendsp2b,do2out=>Qsendsp3b,do3out=>Qsendsp4b);					 
					 
   
   XLXI_22 : speciesTable24_2
      port map (a(31 downto 0)=>XLXN_186(31 downto 0),
                aa(31 downto 0)=>XLXN_232(31 downto 0),
                ab(31 downto 0)=>XLXN_242(31 downto 0),
                ac(31 downto 0)=>XLXN_243(31 downto 0),
                a1(31 downto 0)=>XLXN_46(31 downto 0),
                a1a(31 downto 0)=>XLXN_110(31 downto 0),
                a1b(31 downto 0)=>XLXN_307(31 downto 0),
                a1c(31 downto 0)=>XLXN_131(31 downto 0),
                a2(31 downto 0)=>XLXN_318(31 downto 0),
                a2a(31 downto 0)=>XLXN_302(31 downto 0),
                a2b(31 downto 0)=>XLXN_215(31 downto 0),
                a2c(31 downto 0)=>XLXN_132(31 downto 0),
                a3(31 downto 0)=>XLXN_319(31 downto 0),
                a3a(31 downto 0)=>XLXN_206(31 downto 0),
                a3b(31 downto 0)=>XLXN_124(31 downto 0),
                a3c(31 downto 0)=>XLXN_246(31 downto 0),
                a4(31 downto 0)=>XLXN_320(31 downto 0),
                a4a(31 downto 0)=>XLXN_303(31 downto 0),
                a4b(31 downto 0)=>XLXN_125(31 downto 0),
                a4c(31 downto 0)=>XLXN_136(31 downto 0),
                a5(31 downto 0)=>XLXN_201(31 downto 0),
                a5a(31 downto 0)=>XLXN_304(31 downto 0),
                a5b(31 downto 0)=>XLXN_126(31 downto 0),
                a5c(31 downto 0)=>XLXN_137(31 downto 0),
                a6(31 downto 0)=>XLXN_321(31 downto 0),
                a6a(31 downto 0)=>XLXN_211(31 downto 0),
                a6b(31 downto 0)=>apointout7b(31 downto 0),
                a6c(31 downto 0)=>XLXN_138(31 downto 0),
                a7(31 downto 0)=>XLXN_202(31 downto 0),
                a7a(31 downto 0)=>XLXN_212(31 downto 0),
                a7b(31 downto 0)=>apointout8b(31 downto 0),
                a7c(31 downto 0)=>XLXN_139(31 downto 0),
                clk=>clk,
--                di1(31 downto 0)=>XLXN_250(31 downto 0),
--                di2(31 downto 0)=>XLXN_251(31 downto 0),
--                di3(31 downto 0)=>XLXN_253(31 downto 0),
--                di4(31 downto 0)=>XLXN_255(31 downto 0),
               di1(31 downto 0)=>Qsendsp1b,
               di2(31 downto 0)=>Qsendsp2b,
               di3(31 downto 0)=>Qsendsp3b,
               di4(31 downto 0)=>Qsendsp4b,

                en=>ceglobal,
                we=>weFRM4c,
                do(31 downto 0)=>XLXN_283(31 downto 0),
                doa(31 downto 0)=>XLXN_287(31 downto 0),
                dob(31 downto 0)=>XLXN_292(31 downto 0),
                doc(31 downto 0)=>XLXN_296(31 downto 0),
                dod=>open,
                do1(31 downto 0)=>XLXN_284(31 downto 0),
                do1a(31 downto 0)=>XLXN_288(31 downto 0),
                do1b(31 downto 0)=>XLXN_293(31 downto 0),
                do1c(31 downto 0)=>XLXN_297(31 downto 0),
                do1d=>open,
                do2(31 downto 0)=>XLXN_285(31 downto 0),
                do2a(31 downto 0)=>XLXN_289(31 downto 0),
                do2b(31 downto 0)=>XLXN_294(31 downto 0),
                do2c(31 downto 0)=>XLXN_298(31 downto 0),
                do2d=>open,
                do3(31 downto 0)=>Qsp3b(31 downto 0),
                do3a(31 downto 0)=>Qsp3a_b(31 downto 0),
                do3b(31 downto 0)=>Qsp3b_b(31 downto 0),
                do3c(31 downto 0)=>Qsp3c_b(31 downto 0),
                do3d=>open,
                do4(31 downto 0)=>Qsp4b(31 downto 0),
                do4a(31 downto 0)=>Qsp4a_b(31 downto 0),
                do4b(31 downto 0)=>Qsp4b_b(31 downto 0),
                do4c(31 downto 0)=>Qsp4c_b(31 downto 0),
                do4d=>open,
                do5(31 downto 0)=>Qsp5b(31 downto 0),
                do5a(31 downto 0)=>Qsp5a_b(31 downto 0),
                do5b(31 downto 0)=>Qsp5b_b(31 downto 0),
                do5c(31 downto 0)=>Qsp5c_b(31 downto 0),
                do5d=>open,
                do6(31 downto 0)=>Qsp6b(31 downto 0),
                do6a(31 downto 0)=>Qsp6a_b(31 downto 0),
                do6b(31 downto 0)=>Qsp6b_b(31 downto 0),
                do6c(31 downto 0)=>Qsp6c_b(31 downto 0),
                do6d=>open,
                do7(31 downto 0)=>Qsp7b(31 downto 0),
                do7a(31 downto 0)=>Qsp7a_b(31 downto 0),
                do7b(31 downto 0)=>Qsp7b_b(31 downto 0),
                do7c(31 downto 0)=>Qsp7c_b(31 downto 0),
                do7d=>open);
   
   XLXI_23 : MUXforpointersRama1
      port map (clk=>clk,
                QinaddrFSM(31 downto 0)=>XLXN_34(31 downto 0),
                Qinaddrpointer(31 downto 0)=>XLXN_317(31 downto 0),
                selFSM=>XLXN_182,
                Qoutaddr(31 downto 0)=>XLXN_186(31 downto 0));
   
   XLXI_24 : MUXforpointersRama1
      port map (clk=>clk,
                QinaddrFSM(31 downto 0)=>XLXN_234(31 downto 0),
                Qinaddrpointer(31 downto 0)=>XLXN_306(31 downto 0),
                selFSM=>XLXN_182,
                Qoutaddr(31 downto 0)=>XLXN_242(31 downto 0));
   
   XLXI_25 : MUXforpointersRama1
      port map (clk=>clk,
                QinaddrFSM(31 downto 0)=>XLXN_231(31 downto 0),
                Qinaddrpointer(31 downto 0)=>XLXN_230(31 downto 0),
                selFSM=>XLXN_182,
                Qoutaddr(31 downto 0)=>XLXN_232(31 downto 0));
   
   XLXI_26 : MUXforpointersRama1
      port map (clk=>clk,
                QinaddrFSM(31 downto 0)=>XLXN_239(31 downto 0),
                Qinaddrpointer(31 downto 0)=>XLXN_236(31 downto 0),
                selFSM=>XLXN_182,
                Qoutaddr(31 downto 0)=>XLXN_243(31 downto 0));
   
   XLXI_27 : memintdimerLOTKA_VOLTERAparam 
      port map (a(8 downto 0)=>ap1_DUMMY(8 downto 0),
                a1(8 downto 0)=>ap2_DUMMY(8 downto 0),
                a2(8 downto 0)=>ap3_DUMMY(8 downto 0),
                a3(8 downto 0)=>ap4_DUMMY(8 downto 0),
                clk=>clk,
                di1(2 downto 0)=>dimem1(2 downto 0),
					 di2=>dimem2(2 downto 0),
					 di3=>dimem3(2 downto 0),
					 di4=>dimem4(2 downto 0),
                en=>ceglobal,
                we=>XLXN_15,
                do1(2 downto 0)=>selintdimer1(2 downto 0),
                do2(2 downto 0)=>selintdimer2(2 downto 0),
                do3(2 downto 0)=>selintdimer3(2 downto 0),
                do4(2 downto 0)=>selintdimer4(2 downto 0));
   
end BEHAVIORAL;


