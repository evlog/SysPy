----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:05:33 11/01/2011 
-- Design Name: 
-- Module Name:    proc_wrapper4FRMNRM - Behavioral 
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
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

Library UNISIM;
use UNISIM.vcomponents.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity proc_wrapper_NRM4X is
generic (
    M   : integer :=Reactions_value; --Reactions;The LOTKA_VOLTERA number
   -- AL   : integer :=1; --algorithm
    N   : integer := Species_value;--maximum number of species
	 K   : integer := Sim_mode_value;--= # of parallel biomodel simulations (in the range [1,P]) each with a different random generator seed.
	 RNGseed0: integer := RNGseed_val0;--:  std_logic_vector(7 downto 0) :="00000001";
	 RNGseed1: integer := RNGseed_val1;--:   std_logic_vector(7 downto 0) :="00000001";
	 RNGseed2: integer :=RNGseed_val2;
	 RNGseed3:  integer:=RNGseed_val3;
	 P   : integer := Number_of_processors);
	port (
		sys_rst_in: in std_logic;
		ctrl: in std_logic;
		clk_100: in std_logic;
		clk_200_p: in std_logic;
		clk_200_n: in std_logic;
		clk_33: in std_logic;
		sram_clk_fb: in std_logic;
		phy_tx_clk: in std_logic;
		phy_rx_clk: in std_logic;
		phy_dv: in std_logic;
		phy_rx_er: in std_logic;
		phy_col: in std_logic;
		phy_crs: in std_logic;
		sysace_mpirq: in std_logic;
		rxd1: in std_logic;
		rxd2: in std_logic;
		phy_rx_data: in std_logic_vector(7 downto 0);
		--uart_sel:in std_logic;
		gpio: in std_logic_vector(12 downto 0);
		gpio1_in: in std_logic_vector(3 downto 0);
		gpio1_out: out std_logic_vector(3 downto 0);
		sram_cen: out std_logic;
		sram_oen: out std_logic;
		sram_flash_we_n: out std_logic;
		flash_ce: out std_logic;
		flash_oen: out std_logic;
		flash_adv_n: out std_logic;
		sram_clk: out std_logic;
		sram_mode: out std_logic;
		sram_adv_ld_n: out std_logic;
		ddr_web: out std_logic;
		ddr_rasb: out std_logic;
		ddr_casb: out std_logic;
		txd1: out std_logic;
		txd2: out std_logic;
		phy_gtx_clk: out std_logic;
		phy_tx_en: out std_logic;
		phy_tx_er: out std_logic;
		phy_mii_clk: out std_logic;
		phy_rst_n: out std_logic;
		usb_csn: out std_logic;
		usb_rstn: out std_logic;
		tft_lcd_clk_p: out std_logic;
		tft_lcd_clk_n: out std_logic;
		tft_lcd_hsync: out std_logic;
		tft_lcd_vsync: out std_logic;
		tft_lcd_de: out std_logic;
		tft_lcd_reset_b: out std_logic;
		sysace_mpce: out std_logic;
		sysace_mpoe: out std_logic;
		sysace_mpwe: out std_logic;
		sram_flash_addr: out std_logic_vector(23 downto 0);
		ddr_clk: out std_logic_vector(1 downto 0);
		ddr_clkb: out std_logic_vector(1 downto 0);
		ddr_cke: out std_logic_vector(1 downto 0);
		ddr_csb: out std_logic_vector(1 downto 0);
		ddr_odt: out std_logic_vector(1 downto 0);
		ddr_ba: out std_logic_vector(1 downto 0);
		bus_error: out std_logic_vector(1 downto 0);
		sram_bw: out std_logic_vector(0 to 3);
		ddr_dm: out std_logic_vector(7 downto 0);
		phy_tx_data: out std_logic_vector(7 downto 0);
		ddr_ad: out std_logic_vector(13 downto 0);
		led: out std_logic_vector(12 downto 0);
		tft_lcd_data: out std_logic_vector(11 downto 0);
		sysace_mpa: out std_logic_vector(6 downto 0);
		phy_mii_data: inout std_logic;
		ps2_keyb_clk: inout std_logic;
		ps2_keyb_data: inout std_logic;
		ps2_mouse_clk: inout std_logic;
		ps2_mouse_data: inout std_logic;
		iic_scl_main: inout std_logic;
		iic_sda_main: inout std_logic;
		dvi_iic_scl: inout std_logic;
		dvi_iic_sda: inout std_logic;
		sram_flash_data: inout std_logic_vector(31 downto 0);
		ddr_dqsp: inout std_logic_vector(7 downto 0);
		ddr_dqsn: inout std_logic_vector(7 downto 0);
		ddr_dq: inout std_logic_vector(63 downto 0);
		sysace_d: inout std_logic_vector(15 downto 0));
end proc_wrapper_NRM4X;

architecture Behavioral of proc_wrapper_NRM4X is

-- Internal signals
--------------------------------------------------------------------------
signal gpio_in: std_logic_vector(12 downto 0);
signal gpio_int: std_logic_vector(31 downto 0);
signal gpio_out_int: std_logic_vector(31 downto 0);
signal gpio1_int: std_logic_vector(31 downto 0);
signal gpio1_out_int: std_logic_vector(31 downto 0);
signal gpio2_int: std_logic_vector(31 downto 0);
signal gpio2_out_int: std_logic_vector(31 downto 0);
signal gpio3_int: std_logic_vector(31 downto 0);
signal gpio3_out_int: std_logic_vector(31 downto 0);
signal clk_int,uart_sel: std_logic;
signal PORTA_in:  STD_LOGIC_VECTOR (31 downto 0);
signal PORTA_out: STD_LOGIC_VECTOR (31 downto 0);
signal m_rtr, s_cts, s_tx, m_ack, rst,ce2out: std_logic;
signal serial_in_Gill, serial_in_Leon, serial_out_Gill, serial_out_Leon: std_logic;
--------------------------------------------------------------------------

-- Structural components
--------------------------------------------------------------------------
component leon3mp
	 Port (
		sys_rst_in: in std_logic;
		clk_out: out std_logic;
		clk_100: in std_logic;
		clk_200_p: in std_logic;
		clk_200_n: in std_logic;
		clk_33: in std_logic;
		sram_clk_fb: in std_logic;
		phy_tx_clk: in std_logic;
		phy_rx_clk: in std_logic;
		phy_dv: in std_logic;
		phy_rx_er: in std_logic;
		phy_col: in std_logic;
		phy_crs: in std_logic;
		sysace_mpirq: in std_logic;
		rxd1: in std_logic;
		rxd2: in std_logic;
		phy_rx_data: in std_logic_vector(7 downto 0);
		gpio_in: in std_logic_vector(31 downto 0);
		gpio_out: out std_logic_vector(31 downto 0);
		gpio1_in: in std_logic_vector(31 downto 0);
		gpio1_out: out std_logic_vector(31 downto 0);
		gpio2_in: in std_logic_vector(31 downto 0);
		gpio2_out: out std_logic_vector(31 downto 0);
		gpio3_in: in std_logic_vector(31 downto 0);
		gpio3_out: out std_logic_vector(31 downto 0);
		sram_cen: out std_logic;
		sram_oen: out std_logic;
		sram_flash_we_n: out std_logic;
		flash_ce: out std_logic;
		flash_oen: out std_logic;
		flash_adv_n: out std_logic;
		sram_clk: out std_logic;
		sram_mode: out std_logic;
		sram_adv_ld_n: out std_logic;
		ddr_web: out std_logic;
		ddr_rasb: out std_logic;
		ddr_casb: out std_logic;
		txd1: out std_logic;
		txd2: out std_logic;
		phy_gtx_clk: out std_logic;
		phy_tx_en: out std_logic;
		phy_tx_er: out std_logic;
		phy_mii_clk: out std_logic;
		phy_rst_n: out std_logic;
		usb_csn: out std_logic;
		usb_rstn: out std_logic;
		tft_lcd_clk_p: out std_logic;
		tft_lcd_clk_n: out std_logic;
		tft_lcd_hsync: out std_logic;
		tft_lcd_vsync: out std_logic;
		tft_lcd_de: out std_logic;
		tft_lcd_reset_b: out std_logic;
		sysace_mpce: out std_logic;
		sysace_mpoe: out std_logic;
		sysace_mpwe: out std_logic;
		sram_flash_addr: out std_logic_vector(23 downto 0);
		ddr_clk: out std_logic_vector(1 downto 0);
		ddr_clkb: out std_logic_vector(1 downto 0);
		ddr_cke: out std_logic_vector(1 downto 0);
		ddr_csb: out std_logic_vector(1 downto 0);
		ddr_odt: out std_logic_vector(1 downto 0);
		ddr_ba: out std_logic_vector(1 downto 0);
		bus_error: out std_logic_vector(1 downto 0);
		sram_bw: out std_logic_vector(0 to 3);
		ddr_dm: out std_logic_vector(7 downto 0);
		phy_tx_data: out std_logic_vector(7 downto 0);
		ddr_ad: out std_logic_vector(13 downto 0);
		led: out std_logic_vector(12 downto 0);
		tft_lcd_data: out std_logic_vector(11 downto 0);
		sysace_mpa: out std_logic_vector(6 downto 0);
		phy_mii_data: inout std_logic;
		ps2_keyb_clk: inout std_logic;
		ps2_keyb_data: inout std_logic;
		ps2_mouse_clk: inout std_logic;
		ps2_mouse_data: inout std_logic;
		iic_scl_main: inout std_logic;
		iic_sda_main: inout std_logic;
		dvi_iic_scl: inout std_logic;
		dvi_iic_sda: inout std_logic;
		gpio: inout std_logic_vector(12 downto 0);
		sram_flash_data: inout std_logic_vector(31 downto 0);
		ddr_dqsp: inout std_logic_vector(7 downto 0);
		ddr_dqsn: inout std_logic_vector(7 downto 0);
		ddr_dq: inout std_logic_vector(63 downto 0);
		sysace_d: inout std_logic_vector(15 downto 0));
end component;

component TestconnectionwithLEONparamFRM4XNRM4X
generic (
    M   : integer :=512; --Reactions;The LOTKA_VOLTERA number
   -- AL   : integer :=1; --algorithm
    N   : integer := 512;--maximum number of species
	 K   : integer := 1;--= # of parallel biomodel simulations (in the range [1,P]) each with a different random generator seed.
	 RNGseed1: integer := 1;--:  std_logic_vector(7 downto 0) :="00000001";
	 RNGseed2: integer := 2;--:   std_logic_vector(7 downto 0) :="00000001";
	 RNGseed3: integer := 3;--:  std_logic_vector(7 downto 0) :="00000001";
	 RNGseed4: integer := 4;--:
	 P   : integer := 1);
 Port ( clk : in  STD_LOGIC;
  send_character,restartDDR2	: in	std_logic;
	        --sendnext,sendfsmint:out  STD_LOGIC;
	enupdate,ceglobal: in    std_logic; 
     serial_in: in    std_logic;  
	  restartUART,choise             : in    std_logic;
	  --Qinsel:in std_logic_vector(7 downto 0);
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
end component;

component test_FSM
    Port ( clk : in  STD_LOGIC;
           PORTA_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTA_out : out  STD_LOGIC_VECTOR (31 downto 0);
           PORTB_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTB_out : out  STD_LOGIC_VECTOR (31 downto 0);
           PORTC_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTC_out : out  STD_LOGIC_VECTOR (31 downto 0);
           PORTD_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PORTD_out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--------------------------------------------------------------------------

begin

--	m_rtr <= gpio1_out_int(0);
----	PORTB_out(1) <= s_cts;
----	PORTB_out(2) <= s_tx;
--	m_ack <= gpio1_out_int(3);
--	rst <= gpio1_out_int(4);
--
--	process (rst)
--	begin
--		if (rst = '1') then
--			--state <= s0;
--			s_cts <= '0';
--			s_tx <= '0';
--			gpio2_int <= (others => '0');
--		end if;
--	end process;
              
	--	 gpio_int <= "00000000000000000000000000000001" when gpio_out_int = "00000000000000000000000000001110" else
		--				  "00000000000000000000000000000010";
		 
--		 gpio1_int <= "00000000000000000000000000000011" when gpio1_out_int = "00000000000000000000000000001110" else
	--					  "00000000000000000000000000000100";
		 
	--	 gpio2_int <= "00000000000000000000000000001001" when gpio2_out_int = "00000000000000000000000000001110" else
	--					  "00000000000000000000000000001010";
						  
--		 gpio3_int <= "00000000000000000000000000000111" when gpio3_out_int = "00000000000000000000000000001110" else
	--					  "00000000000000000000000000001000";


--
--		fsm: test_FSM port map (
--			  clk => clk_int,
--           PORTA_in => gpio_out_int,
--           PORTA_out => gpio_int,
--           PORTB_in => gpio1_out_int,
--           PORTB_out => gpio1_int,
--           PORTC_in => gpio2_out_int,
--           PORTC_out => gpio2_int,
--           PORTD_in => gpio3_out_int,
--           PORTD_out => gpio3_int);

--UART MUX
--------------------------------------------------------------
--txd1 <= serial_out_Gill when uart_sel = '0' else
--        serial_out_Leon when uart_sel = '1' else
--		  '0';
uart_sel<=gpio(8);
--led(7)<=ce2out;
		  
--serial_in_Gill <= rxd1 when uart_sel = '0' else
  --                '0' when uart_sel = '1' else
		--				'0';
						
--serial_in_Leon <= rxd1 when uart_sel = '1' else
  --                '0' when uart_sel = '0' else
	--					'0';
--------------------------------------------------------------

Gill:  TestconnectionwithLEONparamFRM4XNRM4X
generic map (
    M  =>M,-- : integer :=512; --Reactions;The LOTKA_VOLTERA number
   -- AL   : integer :=1; --algorithm
    N =>N,--  : integer := 512;--maximum number of species
	 K =>K,--  : integer := 0;--= # of parallel biomodel simulations (in the range [1,P]) each with a different random generator seed.
	 RNGseed1=>RNGseed0,--: integer := 1;--:  std_logic_vector(7 downto 0) :="00000001";
	 RNGseed2=>RNGseed1,--: integer := 1;--:   std_logic_vector(7 downto 0) :="00000001";
	 RNGseed3=>RNGseed2,--: integer := 1;--:  std_logic_vector(7 downto 0) :="00000001";
	 RNGseed4=>RNGseed3,
	 P=>P)--   : integer := 1);
 port map (
		clk => clk_int,
      send_character=>gpio(1),
		restartDDR2	=>gpio(3),
	   enupdate=>gpio(2),
	   ceglobal=>gpio(0),
      serial_in => serial_in_Gill,
	   restartUART=>gpio(4),
	   choise =>gpio(5),         
      sclr=>gpio(6), 
		sclrseed=>gpio(7),    
		 ce2out=>ce2out,
		 leds => open,
		 PORTA_in=> gpio_out_int,
       PORTA_out=> gpio_int,
       PORTB_in => gpio1_out_int,
       PORTB_out => gpio1_int,
       PORTC_in => gpio2_out_int,
       PORTC_out => gpio2_int);
						  
       leon3mp_U0: leon3mp port map (
              sys_rst_in  => sys_rst_in,
				  clk_out => clk_int,
              clk_100  => clk_100,
              clk_200_p  => clk_200_p,
              clk_200_n  => clk_200_n,
              clk_33   => clk_33,
              sram_flash_addr  => sram_flash_addr,
              sram_flash_data  => sram_flash_data,
              sram_cen  => sram_cen,
              sram_bw  => sram_bw,
              sram_oen  => sram_oen,
              sram_flash_we_n  => sram_flash_we_n,
              flash_ce  => flash_ce,
              flash_oen  => flash_oen,
              flash_adv_n  => flash_adv_n,
              sram_clk  => sram_clk,
              sram_clk_fb  => sram_clk_fb,
              sram_mode  => sram_mode,
              sram_adv_ld_n  => sram_adv_ld_n,
              ddr_clk  => ddr_clk,
              ddr_clkb  => ddr_clkb,
              ddr_cke  => ddr_cke,
              ddr_csb  => ddr_csb,
              ddr_odt  => ddr_odt,
              ddr_web  => ddr_web,
              ddr_rasb  => ddr_rasb,
              ddr_casb  => ddr_casb,
              ddr_dm  => ddr_dm,
              ddr_dqsp  => ddr_dqsp,
              ddr_dqsn  => ddr_dqsn,
              ddr_ad  => ddr_ad,
              ddr_ba  => ddr_ba,
              ddr_dq  => ddr_dq,
              txd1  => txd1,
              rxd1  => rxd1,--serial_in_Leon,
              txd2  => txd2,
              rxd2  => rxd2,
              gpio_in  => (others => '0'),--gpio_int,
				  gpio_out => open,--gpio_out_int,
              gpio1_in  => gpio1_int,
				  gpio1_out => gpio1_out_int,
              gpio2_in  => gpio2_int,
				  gpio2_out => gpio2_out_int,
              gpio3_in  => gpio3_int,
				  gpio3_out => gpio3_out_int,
              gpio  => gpio_in,
              led  => led,
              bus_error  => bus_error,
              phy_gtx_clk  => phy_gtx_clk,
              phy_mii_data  => phy_mii_data,
              phy_tx_clk  => phy_tx_clk,
              phy_rx_clk  => phy_rx_clk,
              phy_rx_data  => phy_rx_data,
              phy_dv  => phy_dv,
              phy_rx_er  => phy_rx_er,
              phy_col  => phy_col,
              phy_crs  => phy_crs,
              phy_tx_data  => phy_tx_data,
              phy_tx_en  => phy_tx_en,
              phy_tx_er  => phy_tx_er,
              phy_mii_clk  => phy_mii_clk,
              phy_rst_n  => phy_rst_n,
              ps2_keyb_clk  => ps2_keyb_clk,
              ps2_keyb_data  => ps2_keyb_data,
              ps2_mouse_clk  => ps2_mouse_clk,
              ps2_mouse_data  => ps2_mouse_data,
              usb_csn  => usb_csn,
              usb_rstn  => usb_rstn,
              iic_scl_main  => iic_scl_main,
              iic_sda_main  => iic_sda_main,
              dvi_iic_scl  => dvi_iic_scl,
              dvi_iic_sda  => dvi_iic_sda,
              tft_lcd_data  => tft_lcd_data,
              tft_lcd_clk_p  => tft_lcd_clk_p,
              tft_lcd_clk_n  => tft_lcd_clk_n,
              tft_lcd_hsync  => tft_lcd_hsync,
              tft_lcd_vsync  => tft_lcd_vsync,
              tft_lcd_de  => tft_lcd_de,
              tft_lcd_reset_b  => tft_lcd_reset_b,
              sysace_mpa  => sysace_mpa,
              sysace_mpce  => sysace_mpce,
              sysace_mpirq  => sysace_mpirq,
              sysace_mpoe  => sysace_mpoe,
              sysace_mpwe  => sysace_mpwe,
              sysace_d  => sysace_d);

end behavioral;

