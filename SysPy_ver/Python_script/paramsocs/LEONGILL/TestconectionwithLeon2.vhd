----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:00:31 09/24/2011 
-- Design Name: 
-- Module Name:    TestconectionwithLeon - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity TestconectionwithLeon2 is
 Port ( clk : in  STD_LOGIC;
  send_character,restartDDR2	: in	std_logic;
	        --sendnext,sendfsmint:out  STD_LOGIC;
	enupdate,ceglobal: in    std_logic; 
     serial_in: in    std_logic;  
	  restartUART,choise             : in    std_logic;
	 -- Qinsel:in std_logic_vector(7 downto 0);
		--serial_out           : out    std_logic; 
          --restart          : in    std_logic; 
       sclr , sclrseed        : in    std_logic;
		 ce2out: out    std_logic; 
			  leds  : out	std_logic_vector(7 downto 0);
			 -- dimem :out STD_LOGIC_VECTOR (31 downto 0);
           PORTA_in: in  STD_LOGIC_VECTOR (31 downto 0);
           PORTA_out: out  STD_LOGIC_VECTOR (31 downto 0);
           PORTB_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTB_out : out  STD_LOGIC_VECTOR (31 downto 0);
           PORTC_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTC_out : out  STD_LOGIC_VECTOR (31 downto 0));
end TestconectionwithLeon2;

architecture Behavioral of TestconectionwithLeon2 is

signal sendnext,sendfsmint,ce2int,rstFSMforsend:  STD_LOGIC;
signal timeint,Qsp1int,Qsp2int,Qsp3int,Qsp4int,Qsp5int,Qsp6int,Qsp7int,Qsp8int: std_logic_vector(31 downto 0);
signal dimem : STD_LOGIC_VECTOR (31 downto 0);
signal id :STD_LOGIC_VECTOR (8 downto 0);

component FRM4XDDR2cntrlLOTKA2leon is
port( 
		--sys_clk_p
		send_character,clk,restartDDR2	: in	std_logic;
		--sys_clk_n			: in	std_logic;
		enupdate,ceglobal,sendnext : in    std_logic; 
      serial_in:in std_logic; 
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
end component;

component Test_myFSM is
    Port ( clk,ce2int : in  STD_LOGIC;
	        sendnext,sendfsmint,rstFSMforsend:out  STD_LOGIC;
			  dimem :in  STD_LOGIC_VECTOR (31 downto 0);
           PORTA_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTA_out : out  STD_LOGIC_VECTOR (31 downto 0);
           PORTB_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTB_out : out  STD_LOGIC_VECTOR (31 downto 0);
           PORTC_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTC_out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component FSMintforsending is
port (clk,sendfsmint,rstFSMforsend:in std_logic;
      id:in  STD_LOGIC_VECTOR (8 downto 0);
      timeint,Qsp1int,Qsp2int,Qsp3int,Qsp4int,Qsp5int,Qsp6int,Qsp7int,Qsp8int:in std_logic_vector(31 downto 0);
      dimem :out  STD_LOGIC_VECTOR (31 downto 0));
end component;

begin

FRM4X: FRM4XDDR2cntrlLOTKA2leon 
port map( 
		--sys_clk_p
		send_character=>send_character,clk=>clk,restartDDR2=>restartDDR2,
		--sys_clk_n			: in	std_logic;
		enupdate=>enupdate,ceglobal=>ceglobal,sendnext =>sendnext,
     serial_in=>serial_in, 
	  restartUART=>restartUART,choise=>choise,
	  --Qinsel=>Qinsel,
		-- serial_out           : out    std_logic; 
          --restart          : in    std_logic; 
       sclr=>sclr , sclrseed      => sclrseed,
		 
		 ce2out=>ce2int,
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
id=> id,
timeint=>timeint,Qsp1int=>Qsp1int,Qsp2int=>Qsp2int,Qsp3int=>Qsp3int,Qsp4int=>Qsp4int,Qsp5int=>Qsp5int,Qsp6int=>Qsp6int,Qsp7int=>Qsp7int,Qsp8int=>Qsp8int,
		leds=>leds);

TestFSM: Test_myFSM 
    Port map( clk=>clk,ce2int=>ce2int,
	        sendnext=>sendnext,sendfsmint=>sendfsmint,
			  rstFSMforsend=>rstFSMforsend,
			  dimem=> dimem,
           PORTA_in =>PORTA_in,
           PORTA_out =>PORTA_out,
           PORTB_in =>PORTB_in,
           PORTB_out => PORTB_out, 
           PORTC_in => PORTC_in,
           PORTC_out => PORTC_out);

FSMintforsend: FSMintforsending 
port map(clk=>clk,sendfsmint=>sendfsmint,
     rstFSMforsend=>rstFSMforsend,
      id=> id,
     timeint=>timeint,Qsp1int=>Qsp1int,Qsp2int=>Qsp2int,Qsp3int=>Qsp3int,Qsp4int=>Qsp4int,Qsp5int=>Qsp5int,Qsp6int=>Qsp6int,Qsp7int=>Qsp7int,Qsp8int=>Qsp8int,
      dimem => dimem);
			  
			  


end Behavioral;


