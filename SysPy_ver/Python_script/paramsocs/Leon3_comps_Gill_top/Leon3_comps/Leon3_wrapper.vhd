----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:31 02/28/2011 
-- Design Name: 
-- Module Name:    system_wrapper - system_wrapper_struct 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Leon3_wrapper is
Port (
    ctrl           : in  std_ulogic;
    sys_rst_in	    : in  std_ulogic;
    clk_100	    : in  std_ulogic; 	-- 100 MHz main clock
    clk_200_p	    : in  std_ulogic; 	-- 200 MHz 
    clk_200_n	    : in  std_ulogic; 	-- 200 MHz 
    clk_33          : in  std_ulogic;
    sram_flash_addr : out std_logic_vector(23 downto 0);
    sram_flash_data : inout std_logic_vector(31 downto 0);
    sram_cen  	    : out std_logic;
    sram_bw   	    : out std_logic_vector (0 to 3);
    sram_oen        : out std_ulogic;
    sram_flash_we_n : out std_ulogic;
    flash_ce  	    : out std_logic;
    flash_oen 	    : out std_logic;
    flash_adv_n     : out std_logic;
    sram_clk  	    : out std_ulogic;
    sram_clk_fb	    : in  std_ulogic; 
    sram_mode 	    : out std_ulogic;
    sram_adv_ld_n   : out std_ulogic;
--pragma translate_off
    iosn            : out std_ulogic;
--pragma translate_on
    
    ddr_clk  	    : out std_logic_vector(1 downto 0);
    ddr_clkb  	    : out std_logic_vector(1 downto 0);
    ddr_cke  	    : out std_logic_vector(1 downto 0);
    ddr_csb  	    : out std_logic_vector(1 downto 0);
    ddr_odt  	    : out std_logic_vector(1 downto 0);
    ddr_web         : out std_ulogic;                       -- ddr write enable
    ddr_rasb        : out std_ulogic;                       -- ddr ras
    ddr_casb  	    : out std_ulogic;                       -- ddr cas
    ddr_dm   	    : out std_logic_vector (7 downto 0);    -- ddr dm
    ddr_dqsp  	    : inout std_logic_vector (7 downto 0);    -- ddr dqs
    ddr_dqsn  	    : inout std_logic_vector (7 downto 0);    -- ddr dqs
    ddr_ad          : out std_logic_vector (13 downto 0);   -- ddr address
    ddr_ba          : out std_logic_vector (1 downto 0);    -- ddr bank address
    ddr_dq  	    : inout std_logic_vector (63 downto 0); -- ddr data

    txd1   	    : out std_ulogic; 			-- UART1 tx data
    rxd1   	    : in  std_ulogic;  			-- UART1 rx data
    txd2   	    : out std_ulogic; 			-- UART2 tx data
    rxd2   	    : in  std_ulogic;  			-- UART2 rx data

    gpio            : in std_logic_vector(12 downto 0); 	-- I/O port
    gpio1            : in std_logic_vector(12 downto 0); 	-- I/O port
--    gpio            : inout std_logic_vector(12 downto 0); 	-- I/O port
--    gpio1           : inout std_logic_vector(12 downto 0); 	-- I/O port
	 led             : out std_logic_vector(12 downto 0);
    bus_error       : out std_logic_vector(1 downto 0);

    phy_gtx_clk     : out std_logic;
    phy_mii_data    : inout std_logic;		-- ethernet PHY interface
    phy_tx_clk 	    : in std_ulogic;
    phy_rx_clk 	    : in std_ulogic;
    phy_rx_data	    : in std_logic_vector(7 downto 0);   
    phy_dv  	    : in std_ulogic; 
    phy_rx_er	    : in std_ulogic; 
    phy_col 	    : in std_ulogic;
    phy_crs 	    : in std_ulogic;
    phy_tx_data     : out std_logic_vector(7 downto 0);   
    phy_tx_en 	    : out std_ulogic; 
    phy_tx_er 	    : out std_ulogic; 
    phy_mii_clk	    : out std_ulogic;
    phy_rst_n	    : out std_ulogic;

    ps2_keyb_clk    : inout std_logic;
    ps2_keyb_data   : inout std_logic;
    ps2_mouse_clk   : inout std_logic;
    ps2_mouse_data  : inout std_logic;

    usb_csn         : out std_logic;
    usb_rstn        : out std_logic;

    iic_scl_main    : inout std_ulogic;
    iic_sda_main    : inout std_ulogic;

    dvi_iic_scl     : inout std_logic;
    dvi_iic_sda     : inout std_logic;

    tft_lcd_data    : out std_logic_vector(11 downto 0);
    tft_lcd_clk_p   : out std_ulogic;
    tft_lcd_clk_n   : out std_ulogic;
    tft_lcd_hsync   : out std_ulogic;
    tft_lcd_vsync   : out std_ulogic;
    tft_lcd_de      : out std_ulogic;
    tft_lcd_reset_b : out std_ulogic;

    sysace_mpa      : out std_logic_vector(6 downto 0);
    sysace_mpce     : out std_ulogic;
    sysace_mpirq    : in  std_ulogic;
    sysace_mpoe     : out std_ulogic;
    sysace_mpwe     : out std_ulogic;
    sysace_d        : inout std_logic_vector(15 downto 0)
    );
end Leon3_wrapper;

architecture Leon3_wrapper_struct of Leon3_wrapper is

component leon3mp
Port (
	 gpio_in	    : in  std_logic_vector(12 downto 0);
	 gpio1_in	    : in  std_logic_vector(12 downto 0);
	 gpio2_in	    : in  std_logic_vector(12 downto 0);
	 gpio3_in	    : in  std_logic_vector(12 downto 0);
    sys_rst_in	    : in  std_ulogic;
    clk_100	    : in  std_ulogic; 	-- 100 MHz main clock
    clk_200_p	    : in  std_ulogic; 	-- 200 MHz 
    clk_200_n	    : in  std_ulogic; 	-- 200 MHz 
    clk_33          : in  std_ulogic;
    sram_flash_addr : out std_logic_vector(23 downto 0);
    sram_flash_data : inout std_logic_vector(31 downto 0);
    sram_cen  	    : out std_logic;
    sram_bw   	    : out std_logic_vector (0 to 3);
    sram_oen        : out std_ulogic;
    sram_flash_we_n : out std_ulogic;
    flash_ce  	    : out std_logic;
    flash_oen 	    : out std_logic;
    flash_adv_n     : out std_logic;
    sram_clk  	    : out std_ulogic;
    sram_clk_fb	    : in  std_ulogic; 
    sram_mode 	    : out std_ulogic;
    sram_adv_ld_n   : out std_ulogic;
--pragma translate_off
    iosn            : out std_ulogic;
--pragma translate_on
    
    ddr_clk  	    : out std_logic_vector(1 downto 0);
    ddr_clkb  	    : out std_logic_vector(1 downto 0);
    ddr_cke  	    : out std_logic_vector(1 downto 0);
    ddr_csb  	    : out std_logic_vector(1 downto 0);
    ddr_odt  	    : out std_logic_vector(1 downto 0);
    ddr_web         : out std_ulogic;                       -- ddr write enable
    ddr_rasb        : out std_ulogic;                       -- ddr ras
    ddr_casb  	    : out std_ulogic;                       -- ddr cas
    ddr_dm   	    : out std_logic_vector (7 downto 0);    -- ddr dm
    ddr_dqsp  	    : inout std_logic_vector (7 downto 0);    -- ddr dqs
    ddr_dqsn  	    : inout std_logic_vector (7 downto 0);    -- ddr dqs
    ddr_ad          : out std_logic_vector (13 downto 0);   -- ddr address
    ddr_ba          : out std_logic_vector (1 downto 0);    -- ddr bank address
    ddr_dq  	    : inout std_logic_vector (63 downto 0); -- ddr data

    txd1   	    : out std_ulogic; 			-- UART1 tx data
    rxd1   	    : in  std_ulogic;  			-- UART1 rx data
    txd2   	    : out std_ulogic; 			-- UART2 tx data
    rxd2   	    : in  std_ulogic;  			-- UART2 rx data

    gpio            : inout std_logic_vector(12 downto 0); 	-- I/O port
 --   gpio1           : inout std_logic_vector(12 downto 0); 	-- I/O port
	 led             : out std_logic_vector(12 downto 0);
    bus_error       : out std_logic_vector(1 downto 0);

    phy_gtx_clk     : out std_logic;
    phy_mii_data    : inout std_logic;		-- ethernet PHY interface
    phy_tx_clk 	    : in std_ulogic;
    phy_rx_clk 	    : in std_ulogic;
    phy_rx_data	    : in std_logic_vector(7 downto 0);   
    phy_dv  	    : in std_ulogic; 
    phy_rx_er	    : in std_ulogic; 
    phy_col 	    : in std_ulogic;
    phy_crs 	    : in std_ulogic;
    phy_tx_data     : out std_logic_vector(7 downto 0);   
    phy_tx_en 	    : out std_ulogic; 
    phy_tx_er 	    : out std_ulogic; 
    phy_mii_clk	    : out std_ulogic;
    phy_rst_n	    : out std_ulogic;

    ps2_keyb_clk    : inout std_logic;
    ps2_keyb_data   : inout std_logic;
    ps2_mouse_clk   : inout std_logic;
    ps2_mouse_data  : inout std_logic;

    usb_csn         : out std_logic;
    usb_rstn        : out std_logic;

    iic_scl_main    : inout std_ulogic;
    iic_sda_main    : inout std_ulogic;

    dvi_iic_scl     : inout std_logic;
    dvi_iic_sda     : inout std_logic;

    tft_lcd_data    : out std_logic_vector(11 downto 0);
    tft_lcd_clk_p   : out std_ulogic;
    tft_lcd_clk_n   : out std_ulogic;
    tft_lcd_hsync   : out std_ulogic;
    tft_lcd_vsync   : out std_ulogic;
    tft_lcd_de      : out std_ulogic;
    tft_lcd_reset_b : out std_ulogic;

    sysace_mpa      : out std_logic_vector(6 downto 0);
    sysace_mpce     : out std_ulogic;
    sysace_mpirq    : in  std_ulogic;
    sysace_mpoe     : out std_ulogic;
    sysace_mpwe     : out std_ulogic;
    sysace_d        : inout std_logic_vector(15 downto 0)
    );
end component;

component io_buf
    Port ( gpio0 : out  STD_LOGIC_VECTOR (12 downto 0);
         --  gpio1 : inout  STD_LOGIC_VECTOR (12 downto 0);
			  gpi0 : in  STD_LOGIC_VECTOR (12 downto 0);
			  gpi1 : in  STD_LOGIC_VECTOR (12 downto 0);
           ctrl : in  STD_LOGIC);
end component;

signal gpio_in_int, gpio1_in_int, gpio2_in_int, gpio3_in_int : std_logic_vector(12 downto 0);

begin

leon: leon3mp port map (
    gpio_in => gpio_in_int,
	 gpio1_in => gpio1_in_int,
	 gpio2_in => gpio2_in_int,
	 gpio3_in => gpio3_in_int,
    sys_rst_in	=> sys_rst_in,
    clk_100	=> clk_100,  
    clk_200_p => clk_200_p,	   
    clk_200_n => clk_200_n,	  
    clk_33 => clk_33,        
    sram_flash_addr => sram_flash_addr,
    sram_flash_data => sram_flash_data,
    sram_cen => sram_cen,  	   
    sram_bw => sram_bw,  	   
    sram_oen => sram_oen,   
    sram_flash_we_n => sram_flash_we_n ,
    flash_ce => flash_ce, 
    flash_oen => flash_oen,	  
    flash_adv_n => flash_adv_n,    
    sram_clk => sram_clk, 	   
    sram_clk_fb => sram_clk_fb,	   
    sram_mode => sram_mode,	    
    sram_adv_ld_n => sram_adv_ld_n, 
--pragma translate_off
    iosn => iosn,
--pragma translate_on
    
    ddr_clk => ddr_clk, 	  
    ddr_clkb => ddr_clkb, 	  
    ddr_cke => ddr_cke,  	    
    ddr_csb => ddr_csb, 	  
    ddr_odt => ddr_odt, 	  
    ddr_web => ddr_web,                          
    ddr_rasb => ddr_rasb,                        
    ddr_casb => ddr_casb, 	 
    ddr_dm => ddr_dm,  	    
    ddr_dqsp => ddr_dqsp, 	    
    ddr_dqsn => ddr_dqsn, 	   
    ddr_ad => ddr_ad,         
    ddr_ba => ddr_ba,     
    ddr_dq => ddr_dq, 	   

    txd1 => txd1,  	    
    rxd1 => rxd1,  	    
    txd2 => txd2,  	   
    rxd2 => rxd2,  	    

    gpio => open,           
    --gpio1 => open,         
	 led => led,            
    bus_error => bus_error,     

    phy_gtx_clk => phy_gtx_clk,    
    phy_mii_data => phy_mii_data, 
    phy_tx_clk => phy_tx_clk,	 
    phy_rx_clk => phy_rx_clk,	  
    phy_rx_data => phy_rx_data,	     
    phy_dv => phy_dv, 	   
    phy_rx_er => phy_rx_er,	   
    phy_col => phy_col,	   
    phy_crs => phy_crs,	  
    phy_tx_data => phy_tx_data,      
    phy_tx_en => phy_tx_en,	   
    phy_tx_er => phy_tx_er,	  
    phy_mii_clk => phy_mii_clk,	   
    phy_rst_n=> phy_rst_n,	   

    ps2_keyb_clk => ps2_keyb_clk,   
    ps2_keyb_data => ps2_keyb_data,  
    ps2_mouse_clk => ps2_mouse_clk,  
    ps2_mouse_data => ps2_mouse_data, 

    usb_csn => usb_csn,     
    usb_rstn => usb_rstn,    

    iic_scl_main => iic_scl_main,
    iic_sda_main => iic_sda_main,  

    dvi_iic_scl => dvi_iic_scl,   
    dvi_iic_sda => dvi_iic_sda,  

    tft_lcd_data => tft_lcd_data,   
    tft_lcd_clk_p => tft_lcd_clk_p,  
    tft_lcd_clk_n => tft_lcd_clk_n, 
    tft_lcd_hsync => tft_lcd_hsync,  
    tft_lcd_vsync => tft_lcd_vsync, 
    tft_lcd_de => tft_lcd_de,     
    tft_lcd_reset_b => tft_lcd_reset_b,

    sysace_mpa => sysace_mpa,   
    sysace_mpce => sysace_mpce,   
    sysace_mpirq => sysace_mpirq, 
    sysace_mpoe => sysace_mpoe,   
    sysace_mpwe => sysace_mpwe,   
    sysace_d => sysace_d       
    );

--my_buf : io_buf port map (
--    gpio0 => gpio0_int,
--    --gpio1 => open,
--	 gpi0 => "1010101010101",
--	 gpi1 => "0101010101010",
 --   ctrl => '1');
 
 gpio_in_int <= "1100000011110"; --//181E
 gpio1_in_int <= "1100100011110"; --//191E
 gpio2_in_int <= "1101100011110";  --//1B1E
 gpio3_in_int <= "1110100011110";  --//1D1E
 




end Leon3_wrapper_struct;

