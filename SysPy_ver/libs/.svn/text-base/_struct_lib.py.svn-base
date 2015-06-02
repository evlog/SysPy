"""
Structural CompLibrary             
       - CompLibrary containing structural component definitions.
"""

def mux_2_1_4():
       CompLib = False
       generics = False
       signals = [{'D': 'i', 'T': 'b', 'L': [3, 0],'N': ["I0", "I1"]},
                       {'D': 'i', 'T': 'b', 'L': 1, 'N': 'sel'},
                       {'D': 'o', 'T': 'b', 'L': [3, 0], 'N': "O"},
                         [CompLib, generics, "mux_2_1_4"]]

       return(signals)

def and2(n, m):
       CompLib = "custom"
       generics = [True, 'n', 'm']
       signals = [{'D': 'i', 'T': 'b', 'L': ["(n - 1)", 0],'N': ["I0", "I1"]},
                       {'D': 'i', 'T': 'b', 'L': 1,'N': 'c'},
                       {'D': 'o', 'T': 'b', 'L': ["(m - 1)", 0], 'N': 'O'},
                         [CompLib, generics, "and2"]]

       return(signals)

def and3():
       CompLib = "unisim_VCOMP"
       generics = [False]
       signals = [{'D': 'i', 'T': 'b', 'L': [3, 0],'N': ["I0", "I1"]},
                       {'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'O'},
                         [CompLib, generics, "and3"]]

       return(signals)

def XCoreLib_sqrt48():
       CompLib = "XCompLib"
       generics = False
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["nd", "clk", "sclr"]},
                       {'D': 'i', 'T': 'b', 'L': [47, 0],'N': "x_in"},
                       {'D': 'o', 'T': 'b', 'L': [24, 0], 'N': 'x_out'},
                       {'D': 'o', 'T': 'b', 'L': 1, 'N': 'rdy'},
                       [CompLib, generics, "XCoreLib_sqrt48"]]

       return(signals)

def FRM1XforLEONparam2v(M, N, Tsim, K, RNGseed1, P):
       CompLib = "custom"
       generics = [True, 'M', 'N', "Tsim", 'K', "RNGseed1", 'P']
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["send_character", "clk", "restartDDR2", "enupdate", "ceglobal", "sendnext", "restartUART", "choise", "sclr", "sclrseed"]},
                       {'D': 'o', 'T': 'b', 'L': 1,'N': "ce2out"},
                       {'D': 'o', 'T': 'b', 'L': [7, 0], 'N': "leds"},
                       {'D': 'o', 'T': 'b', 'L': [8, 0], 'N': "id"},
                       {'D': 'o', 'T': 'b', 'L': [31, 0], 'N': ["timeint", "Qsp1int", "Qsp2int", "Qsp3int", "Qsp4int", "Qsp5int", "Qsp6int", "Qsp7int", "Qsp8int"]},
                       [CompLib, generics, "FRM1XforLEONparam2v"]]
                       
       return(signals)

def FRM4XQuatroConnect(M, N, Tsim, K, RNGseed1, RNGseed2, RNGseed3, RNGseed4, P):
       CompLib = "custom"
       generics = [True, 'M', 'N', "Tsim", 'K', "RNGseed1", "RNGseed2", "RNGseed3", "RNGseed4", 'P']
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["send_character", "clk", "restartDDR2", "enupdate", "ceglobal", "sendnext", "restartUART", "choise", "sclr", "sclrseed"]},
                       {'D': 'o', 'T': 'b', 'L': 1,'N': "ce2out"},
                       {'D': 'o', 'T': 'b', 'L': [7, 0], 'N': "leds"},
                       {'D': 'o', 'T': 'b', 'L': [8, 0], 'N': "id"},
                       {'D': 'o', 'T': 'b', 'L': [31, 0], 'N': ["timeint", "Qsp1int", "Qsp2int", "Qsp3int", "Qsp4int", "Qsp5int", "Qsp6int", "Qsp7int", "Qsp8int"]},
                       [CompLib, generics, "FRM4XQuatroConnect"]]
                       
       return(signals)

def FRM4X_comp(M, N, Tsim, K, RNGseed1, RNGseed2, RNGseed3, RNGseed4, P):
       CompLib = "custom"
       generics = [True, 'M', 'N', "Tsim", 'K', "RNGseed1", "RNGseed2", "RNGseed3", "RNGseed4", 'P']
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["clk", "sendfsmint", "sendnext", "rstFSMforsend"]},
                       {'D': 'o', 'T': 'b', 'L': 1,'N': "ce2out"},
                       {'D': 'o', 'T': 'b', 'L': [31, 0], 'N': "dimem"},
                       [CompLib, generics, "FRM4X_comp"]]
                       
       return(signals)

def HAL_FSM(bus_size):
       CompLib = "custom"
       generics = [True, "bus_size"]
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["clk", "ce2int"]},
                       {'D': 'i', 'T': 'b', 'L': [31, 0], 'N': ["PORTA_in", "PORTB_in", "PORTC_in", "dimem"]},
                       {'D': 'o', 'T': 'b', 'L': 1, 'N': ["sendnext", "sendfsmint", "rstFSMforsend"]},
                       {'D': 'o', 'T': 'b', 'L': [31, 0], 'N': ["PORTA_out", "PORTB_out", "PORTC_out"]},
                       [CompLib, generics, "HAL_FSM"]]

       return(signals)

def FSMintforsending():
       CompLib = "custom"
       generics = [False]
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["clk", "sendfsmint", "rstFSMforsend"]},
                       {'D': 'i', 'T': 'b', 'L': [8, 0], 'N': "id"},
                       {'D': 'i', 'T': 'b', 'L': [31, 0], 'N': ["timeint", "Qsp1int", "Qsp2int", "Qsp3int", "Qsp4int", "Qsp5int", "Qsp6int", "Qsp7int", "Qsp8int"]},
                       {'D': 'o', 'T': 'b', 'L': [31, 0], 'N': "dimem"},
                       [CompLib, generics, "FSMintforsending"]]
                       
       return(signals)

def leon3mp():
       CompLib = "custom"
       generics = [False]
       signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': ["sys_rst_in", "clk_100", "clk_200_p", "clk_200_n", "clk_33", "sram_clk_fb", "phy_tx_clk"]},
                  {'D': 'i', 'T': 'b', 'L': 1, 'N': ["phy_rx_clk", "phy_dv", "phy_rx_er", "phy_col", "phy_crs", "sysace_mpirq", "rxd1", "rxd2"]},
                  {'D': 'i', 'T': 'b', 'L': [7, 0], 'N': "phy_rx_data"},
                  {'D': 'i', 'T': 'b', 'L': [31, 0], 'N': ["gpio_in", "gpio1_in", "gpio2_in", "gpio3_in"]},
                  {'D': 'io', 'T': 'b', 'L': [12, 0], 'N': "gpio"},
                  {'D': 'io', 'T': 'b', 'L': 1, 'N': ["phy_mii_data", "ps2_keyb_clk", "ps2_keyb_data", "ps2_mouse_clk", "ps2_mouse_data"]},
                  {'D': 'io', 'T': 'b', 'L': 1, 'N': ["iic_scl_main", "iic_sda_main", "dvi_iic_scl", "dvi_iic_sda"]},
                  {'D': 'io', 'T': 'b', 'L': [31, 0], 'N': "sram_flash_data"},
                  {'D': 'io', 'T': 'b', 'L': [7, 0], 'N': ["ddr_dqsp", "ddr_dqsn"]},
                  {'D': 'io', 'T': 'b', 'L': [63, 0], 'N': "ddr_dq"},
                  {'D': 'io', 'T': 'b', 'L': [15, 0], 'N': "sysace_d"},
                  {'D': 'o', 'T': 'b', 'L': 1, 'N': ["clk_out", "sram_cen", "sram_oen", "sram_flash_we_n", "flash_ce", "flash_oen"]},
                  {'D': 'o', 'T': 'b', 'L': 1, 'N': ["flash_adv_n", "sram_clk", "sram_mode", "sram_adv_ld_n", "ddr_web", "ddr_rasb", "ddr_casb"]},
                  {'D': 'o', 'T': 'b', 'L': 1, 'N': ["txd1", "txd2", "phy_gtx_clk", "phy_tx_en", "phy_tx_er", "phy_mii_clk", "phy_rst_n"]},
                  {'D': 'o', 'T': 'b', 'L': 1, 'N': ["usb_csn", "usb_rstn", "tft_lcd_clk_p", "tft_lcd_clk_n", "tft_lcd_hsync", "tft_lcd_vsync"]},
                  {'D': 'o', 'T': 'b', 'L': 1, 'N': ["tft_lcd_de", "tft_lcd_reset_b", "sysace_mpce", "sysace_mpoe", "sysace_mpwe"]},
                  {'D': 'o', 'T': 'b', 'L': [23, 0], 'N': "sram_flash_addr"},
                  {'D': 'o', 'T': 'b', 'L': [1, 0], 'N': ["ddr_clk", "ddr_clkb", "ddr_cke", "ddr_csb", "ddr_odt", "ddr_ba", "bus_error"]},
                  {'D': 'o', 'T': 'b', 'L': [0, 3], 'N': "sram_bw"},
                  {'D': 'o', 'T': 'b', 'L': [7, 0], 'N': ["ddr_dm", "phy_tx_data"]},
                  {'D': 'o', 'T': 'b', 'L': [13, 0], 'N': "ddr_ad"},
                  {'D': 'o', 'T': 'b', 'L': [12, 0], 'N': "led"},
		    {'D': 'o', 'T': 'b', 'L': [31, 0], 'N': ["gpio_out", "gpio1_out", "gpio2_out", "gpio3_out"]},
                  {'D': 'o', 'T': 'b', 'L': [11, 0], 'N': "tft_lcd_data"},
                  {'D': 'o', 'T': 'b', 'L': [6, 0], 'N': "sysace_mpa"},
                  [CompLib, generics, "leon3mp"]]
       
       return(signals)

def leon3mp_2():
       CompLib = "custom"
       generics = [False]
       signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': ["sys_rst_in", "ctrl", "clk_100", "clk_200_p", "clk_200_n", "clk_33", "sram_clk_fb", "phy_tx_clk"]},
                  {'D': 'i', 'T': 'b', 'L': 1, 'N': ["phy_rx_clk", "phy_dv", "phy_rx_er", "phy_col", "phy_crs", "sysace_mpirq", "rxd1", "rxd2"]},
                  {'D': 'i', 'T': 'b', 'L': [7, 0], 'N': "phy_rx_data"},
                  {'D': 'i', 'T': 'b', 'L': [12, 0], 'N': ["gpio", "gpio1"]},
                  {'D': 'io', 'T': 'b', 'L': 1, 'N': ["phy_mii_data", "ps2_keyb_clk", "ps2_keyb_data", "ps2_mouse_clk", "ps2_mouse_data"]},
                  {'D': 'io', 'T': 'b', 'L': 1, 'N': ["iic_scl_main", "iic_sda_main", "dvi_iic_scl", "dvi_iic_sda"]},
                  {'D': 'io', 'T': 'b', 'L': [31, 0], 'N': "sram_flash_data"},
                  {'D': 'io', 'T': 'b', 'L': [7, 0], 'N': ["ddr_dqsp", "ddr_dqsn"]},
                  {'D': 'io', 'T': 'b', 'L': [63, 0], 'N': "ddr_dq"},
                  {'D': 'io', 'T': 'b', 'L': [15, 0], 'N': "sysace_d"},
                  {'D': 'o', 'T': 'b', 'L': 1, 'N': ["sram_cen", "sram_oen", "sram_flash_we_n", "flash_ce", "flash_oen"]},
                  {'D': 'o', 'T': 'b', 'L': 1, 'N': ["flash_adv_n", "sram_clk", "sram_mode", "sram_adv_ld_n", "ddr_web", "ddr_rasb", "ddr_casb"]},
                  {'D': 'o', 'T': 'b', 'L': 1, 'N': ["txd1", "txd2", "phy_gtx_clk", "phy_tx_en", "phy_tx_er", "phy_mii_clk", "phy_rst_n"]},
                  {'D': 'o', 'T': 'b', 'L': 1, 'N': ["usb_csn", "usb_rstn", "tft_lcd_clk_p", "tft_lcd_clk_n", "tft_lcd_hsync", "tft_lcd_vsync"]},
                  {'D': 'o', 'T': 'b', 'L': 1, 'N': ["tft_lcd_de", "tft_lcd_reset_b", "sysace_mpce", "sysace_mpoe", "sysace_mpwe"]},
                  {'D': 'o', 'T': 'b', 'L': [23, 0], 'N': "sram_flash_addr"},
                  {'D': 'o', 'T': 'b', 'L': [1, 0], 'N': ["ddr_clk", "ddr_clkb", "ddr_cke", "ddr_csb", "ddr_odt", "ddr_ba", "bus_error"]},
                  {'D': 'o', 'T': 'b', 'L': [0, 3], 'N': "sram_bw"},
                  {'D': 'o', 'T': 'b', 'L': [7, 0], 'N': ["ddr_dm", "phy_tx_data"]},
                  {'D': 'o', 'T': 'b', 'L': [13, 0], 'N': "ddr_ad"},
                  {'D': 'o', 'T': 'b', 'L': [12, 0], 'N': "led"},
                  {'D': 'o', 'T': 'b', 'L': [11, 0], 'N': "tft_lcd_data"},
                  {'D': 'o', 'T': 'b', 'L': [6, 0], 'N': "sysace_mpa"},
                  [CompLib, generics, "leon3mp_2"]]
       
       return(signals)

def top_avr_core_v8():
       CompLib = "custom"
       generics = [False]
       signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': ["nrst", "clk", "rxd", "TMS", "TCK", "TDI", "TRSTn", "man_rst"]},
                       {'D': 'o', 'T': 'b', 'L': 1, 'N': ["txd", "TDO"]},
                       {'D': 'i', 'T': 'b', 'L': [7, 0], 'N': "INTx"},
                       {'D': 'io', 'T': 'b', 'L': [7, 0], 'N': ["porta", "portb", "portc", "portd", "porte"]},
                       {'D': 'o', 'T': 'b', 'L': [7, 0], 'N': ["ddrareg_out", "ddrbreg_out"]},
                       {'D': 'o', 'T': 'b', 'L': [7, 0], 'N': ["ddrcreg_out", "ddrdreg_out", "ddrereg_out"]},
                         [CompLib, generics, "top_avr_core_v8"]]

       return(signals)

def sobel():
       CompLib = "custom"
       generics = [False]
       signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': ["rst", "clk", "t_cts", "t_dpr"]},
                       {'D': 'o', 'T': 'b', 'L': 1, 'N': ["t_write", "t_read"]},
                       {'D': 'i', 'T': 'b', 'L': [7, 0], 'N': "data_in"},
                       {'D': 'o', 'T': 'b', 'L': [7, 0], 'N': "data_out"},
                         [CompLib, generics, "sobel"]]

       return(signals)

def bridge(n):
       CompLib = "custom"
       generics = [True, 'n']
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["rst", "clk", "h_write", "t_write", "h_read", "t_read"]},
                       {'D': 'o', 'T': 'b', 'L': 1, 'N': ["h_cts", "t_cts", "h_dpr", "t_dpr"]},
                       {'D': 'i', 'T': 'b', 'L': ["(n - 1)", 0], 'N': ["h_data_in", "t_data_in"]},
                       {'D': 'o', 'T': 'b', 'L': ["(n - 1)", 0], 'N': ["h_data_out", "t_data_out"]},
                         [CompLib, generics, "bridge"]]

       return(signals)

def clk_div():
       CompLib = "custom"
       generics = [False]
       signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': ["rst", "clk"]},
                       {'D': 'o', 'T': 'b', 'L': 1, 'N': "clk_div_25MHz"}, 
                         [CompLib, generics, "clk_div"]]

       return(signals)

def fir_filt_u_comp(n, m, filt_param):
       CompLib = "custom"
       generics = [True, 'n', 'm', "filt_param"]
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["clk", "rst"]},
                       {'D': 'i', 'T': 'b', 'L': ["(n - 1)", 0],'N': "filt_in"},
                       {'D': 'o', 'T': 'b', 'L': ["(filt_acc_bus(n, m) - 1)", 0], 'N': "filt_out"},
                         [CompLib, generics, "fir_filt_u_comp"]]

       return(signals)

def fir_filt_s_comp(n, m, filt_param):
       CompLib = "custom"
       generics = [True, 'n', 'm', "filt_param"]
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["clk", "rst"]},
                       {'D': 'i', 'T': 'b', 'L': ["(n - 1)", 0],'N': "filt_in"},
                       {'D': 'o', 'T': 'b', 'L': ["(filt_acc_bus(n, m) - 1)", 0], 'N': "filt_out"},
                         [CompLib, generics, "fir_filt_s_comp"]]

       return(signals)
       
##############################################################################################

def AND2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "AND2"]]

	return(signals)

def AND2B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "AND2B1"]]

	return(signals)

def AND2B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "AND2B2"]]

	return(signals)

def AND3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "AND3"]]

	return(signals)

def AND3B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "AND3B1"]]

	return(signals)

def AND3B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "AND3B2"]]

	return(signals)

def AND3B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "AND3B3"]]

	return(signals)

def AND4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "AND4"]]

	return(signals)

def AND4B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "AND4B1"]]

	return(signals)

def AND4B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "AND4B2"]]

	return(signals)

def AND4B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "AND4B3"]]

	return(signals)

def AND4B4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "AND4B4"]]

	return(signals)

def AND5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "AND5"]]

	return(signals)

def AND5B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "AND5B1"]]

	return(signals)

def AND5B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "AND5B2"]]

	return(signals)

def AND5B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "AND5B3"]]

	return(signals)

def AND5B4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "AND5B4"]]

	return(signals)

def AND5B5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "AND5B5"]]

	return(signals)

def AND6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I5'},
			[CompLib, generics, "AND6"]]

	return(signals)

def AND7():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I6'},
			[CompLib, generics, "AND7"]]

	return(signals)

def AND8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I7'},
			[CompLib, generics, "AND8"]]

	return(signals)

def BSCAN_FPGACORE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CAPTURE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRCK1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRCK2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SEL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SEL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TDI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'UPDATE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDO1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDO2'},
			[CompLib, generics, "BSCAN_FPGACORE"]]

	return(signals)

def BSCAN_SPARTAN3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CAPTURE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRCK1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRCK2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SEL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SEL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TDI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'UPDATE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDO1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDO2'},
			[CompLib, generics, "BSCAN_SPARTAN3"]]

	return(signals)

def BSCAN_SPARTAN3A():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CAPTURE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRCK1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRCK2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SEL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SEL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TCK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TDI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TMS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'UPDATE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDO1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDO2'},
			[CompLib, generics, "BSCAN_SPARTAN3A"]]

	return(signals)

def BSCAN_VIRTEX4(JTAG_CHAIN):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'JTAG_CHAIN'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CAPTURE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRCK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SEL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TDI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'UPDATE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDO'},
			[CompLib, generics, "BSCAN_VIRTEX4"]]

	return(signals)

def BSCAN_VIRTEX5(JTAG_CHAIN):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'JTAG_CHAIN'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CAPTURE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRCK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SEL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TDI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'UPDATE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDO'},
			[CompLib, generics, "BSCAN_VIRTEX5"]]

	return(signals)

def BUF():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUF"]]

	return(signals)

def BUFCF():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFCF"]]

	return(signals)

def BUFE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'E'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFE"]]

	return(signals)

def BUFFOE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFFOE"]]

	return(signals)

def BUFG():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFG"]]

	return(signals)

def BUFGCE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFGCE"]]

	return(signals)

def BUFGCE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFGCE_1"]]

	return(signals)

def BUFGCTRL(INIT_OUT, PRESELECT_I0, PRESELECT_I1,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'INIT_OUT'},
			{'T': 'b', 'N': 'PRESELECT_I0'},
			{'T': 'b', 'N': 'PRESELECT_I1'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IGNORE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IGNORE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S1'},
			[CompLib, generics, "BUFGCTRL"]]

	return(signals)

def BUFGDLL(DUTY_CYCLE_CORRECTION):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'DUTY_CYCLE_CORRECTION'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFGDLL"]]

	return(signals)

def BUFGMUX():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "BUFGMUX"]]

	return(signals)

def BUFGMUX_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "BUFGMUX_1"]]

	return(signals)

def BUFGMUX_CTRL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "BUFGMUX_CTRL"]]

	return(signals)

def BUFGMUX_VIRTEX4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "BUFGMUX_VIRTEX4"]]

	return(signals)

def BUFGP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFGP"]]

	return(signals)

def BUFGSR():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFGSR"]]

	return(signals)

def BUFGTS():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFGTS"]]

	return(signals)

def BUFIO():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFIO"]]

	return(signals)

def BUFR(BUFR_DIVIDE, SIM_DEVICE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'BUFR_DIVIDE'},
			{'T': 's', 'N': 'SIM_DEVICE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "BUFR"]]

	return(signals)

def BUFT():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "BUFT"]]

	return(signals)

def CAPTURE_FPGACORE(ONESHOT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'ONESHOT'}]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CAP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			[CompLib, generics, "CAPTURE_FPGACORE"]]

	return(signals)

def CAPTURE_SPARTAN3(ONESHOT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'ONESHOT'}]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CAP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			[CompLib, generics, "CAPTURE_SPARTAN3"]]

	return(signals)

def CAPTURE_SPARTAN3A(ONESHOT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'ONESHOT'}]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CAP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			[CompLib, generics, "CAPTURE_SPARTAN3A"]]

	return(signals)

def CAPTURE_VIRTEX4(ONESHOT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'ONESHOT'}]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CAP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			[CompLib, generics, "CAPTURE_VIRTEX4"]]

	return(signals)

def CAPTURE_VIRTEX5(ONESHOT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'ONESHOT'}]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CAP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			[CompLib, generics, "CAPTURE_VIRTEX5"]]

	return(signals)

def CARRY4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'CO'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CYINIT'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'S'},
			[CompLib, generics, "CARRY4"]]

	return(signals)

def CFGLUT5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CDO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CDI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "CFGLUT5"]]

	return(signals)

def CLKDLL(DUTY_CYCLE_CORRECTION, STARTUP_WAIT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'DUTY_CYCLE_CORRECTION'},
			{'T': 'b', 'N': 'STARTUP_WAIT'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK270'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK90'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKFB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "CLKDLL"]]

	return(signals)

def CLKDLLE(DUTY_CYCLE_CORRECTION, STARTUP_WAIT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'DUTY_CYCLE_CORRECTION'},
			{'T': 'b', 'N': 'STARTUP_WAIT'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK270'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK90'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKFB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "CLKDLLE"]]

	return(signals)

def CLKDLLHF(DUTY_CYCLE_CORRECTION, STARTUP_WAIT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'DUTY_CYCLE_CORRECTION'},
			{'T': 'b', 'N': 'STARTUP_WAIT'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKFB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "CLKDLLHF"]]

	return(signals)

def CLK_DIV10():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV10"]]

	return(signals)

def CLK_DIV10R():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV10R"]]

	return(signals)

def CLK_DIV10RSD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV10RSD"]]

	return(signals)

def CLK_DIV10SD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV10SD"]]

	return(signals)

def CLK_DIV12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV12"]]

	return(signals)

def CLK_DIV12R():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV12R"]]

	return(signals)

def CLK_DIV12RSD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV12RSD"]]

	return(signals)

def CLK_DIV12SD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV12SD"]]

	return(signals)

def CLK_DIV14():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV14"]]

	return(signals)

def CLK_DIV14R():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV14R"]]

	return(signals)

def CLK_DIV14RSD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV14RSD"]]

	return(signals)

def CLK_DIV14SD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV14SD"]]

	return(signals)

def CLK_DIV16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV16"]]

	return(signals)

def CLK_DIV16R():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV16R"]]

	return(signals)

def CLK_DIV16RSD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV16RSD"]]

	return(signals)

def CLK_DIV16SD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV16SD"]]

	return(signals)

def CLK_DIV2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV2"]]

	return(signals)

def CLK_DIV2R():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV2R"]]

	return(signals)

def CLK_DIV2RSD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV2RSD"]]

	return(signals)

def CLK_DIV2SD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV2SD"]]

	return(signals)

def CLK_DIV4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV4"]]

	return(signals)

def CLK_DIV4R():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV4R"]]

	return(signals)

def CLK_DIV4RSD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV4RSD"]]

	return(signals)

def CLK_DIV4SD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV4SD"]]

	return(signals)

def CLK_DIV6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV6"]]

	return(signals)

def CLK_DIV6R():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV6R"]]

	return(signals)

def CLK_DIV6RSD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV6RSD"]]

	return(signals)

def CLK_DIV6SD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV6SD"]]

	return(signals)

def CLK_DIV8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV8"]]

	return(signals)

def CLK_DIV8R():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV8R"]]

	return(signals)

def CLK_DIV8RSD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CDRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV8RSD"]]

	return(signals)

def CLK_DIV8SD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			[CompLib, generics, "CLK_DIV8SD"]]

	return(signals)

def CONFIG():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [[CompLib, generics, "CONFIG"]]

	return(signals)

def CRC32():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'CRCOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRCCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRCDATAVALID'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'CRCDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'CRCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRCRESET'},
			[CompLib, generics, "CRC32"]]

	return(signals)

def CRC64():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'CRCOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRCCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRCDATAVALID'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'CRCDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'CRCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRCRESET'},
			[CompLib, generics, "CRC64"]]

	return(signals)

def DCIRESET():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "DCIRESET"]]

	return(signals)

def DCM(CLKFX_DIVIDE, CLKFX_MULTIPLY, CLKIN_DIVIDE_BY_2,
			CLKOUT_PHASE_SHIFT, CLK_FEEDBACK, DESKEW_ADJUST,
			DFS_FREQUENCY_MODE, DLL_FREQUENCY_MODE, DSS_MODE,
			DUTY_CYCLE_CORRECTION, PHASE_SHIFT, SIM_MODE,
			STARTUP_WAIT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'CLKFX_DIVIDE'},
			{'T': 'i', 'N': 'CLKFX_MULTIPLY'},
			{'T': 'b', 'N': 'CLKIN_DIVIDE_BY_2'},
			{'T': 's', 'N': 'CLKOUT_PHASE_SHIFT'},
			{'T': 's', 'N': 'CLK_FEEDBACK'},
			{'T': 's', 'N': 'DESKEW_ADJUST'},
			{'T': 's', 'N': 'DFS_FREQUENCY_MODE'},
			{'T': 's', 'N': 'DLL_FREQUENCY_MODE'},
			{'T': 's', 'N': 'DSS_MODE'},
			{'T': 'b', 'N': 'DUTY_CYCLE_CORRECTION'},
			{'T': 'i', 'N': 'PHASE_SHIFT'},
			{'T': 's', 'N': 'SIM_MODE'},
			{'T': 'b', 'N': 'STARTUP_WAIT'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK270'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK90'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFX'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFX180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PSDONE'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'STATUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKFB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DSSEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSINCDEC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "DCM"]]

	return(signals)

def DCM_ADV(CLKFX_DIVIDE, CLKFX_MULTIPLY, CLKIN_DIVIDE_BY_2,
			CLKOUT_PHASE_SHIFT, CLK_FEEDBACK, DCM_AUTOCALIBRATION,
			DCM_PERFORMANCE_MODE, DESKEW_ADJUST, DFS_FREQUENCY_MODE,
			DLL_FREQUENCY_MODE, DUTY_CYCLE_CORRECTION, PHASE_SHIFT,
			SIM_DEVICE, STARTUP_WAIT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'CLKFX_DIVIDE'},
			{'T': 'i', 'N': 'CLKFX_MULTIPLY'},
			{'T': 'b', 'N': 'CLKIN_DIVIDE_BY_2'},
			{'T': 's', 'N': 'CLKOUT_PHASE_SHIFT'},
			{'T': 's', 'N': 'CLK_FEEDBACK'},
			{'T': 'b', 'N': 'DCM_AUTOCALIBRATION'},
			{'T': 's', 'N': 'DCM_PERFORMANCE_MODE'},
			{'T': 's', 'N': 'DESKEW_ADJUST'},
			{'T': 's', 'N': 'DFS_FREQUENCY_MODE'},
			{'T': 's', 'N': 'DLL_FREQUENCY_MODE'},
			{'T': 'b', 'N': 'DUTY_CYCLE_CORRECTION'},
			{'T': 'i', 'N': 'PHASE_SHIFT'},
			{'T': 's', 'N': 'SIM_DEVICE'},
			{'T': 'b', 'N': 'STARTUP_WAIT'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK270'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK90'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFX'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFX180'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRDY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PSDONE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKFB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'DADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DEN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DWE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSINCDEC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "DCM_ADV"]]

	return(signals)

def DCM_BASE(CLKFX_DIVIDE, CLKFX_MULTIPLY, CLKIN_DIVIDE_BY_2,
			CLKOUT_PHASE_SHIFT, CLK_FEEDBACK, DCM_AUTOCALIBRATION,
			DCM_PERFORMANCE_MODE, DESKEW_ADJUST, DFS_FREQUENCY_MODE,
			DLL_FREQUENCY_MODE, DUTY_CYCLE_CORRECTION, PHASE_SHIFT,
			STARTUP_WAIT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'CLKFX_DIVIDE'},
			{'T': 'i', 'N': 'CLKFX_MULTIPLY'},
			{'T': 'b', 'N': 'CLKIN_DIVIDE_BY_2'},
			{'T': 's', 'N': 'CLKOUT_PHASE_SHIFT'},
			{'T': 's', 'N': 'CLK_FEEDBACK'},
			{'T': 'b', 'N': 'DCM_AUTOCALIBRATION'},
			{'T': 's', 'N': 'DCM_PERFORMANCE_MODE'},
			{'T': 's', 'N': 'DESKEW_ADJUST'},
			{'T': 's', 'N': 'DFS_FREQUENCY_MODE'},
			{'T': 's', 'N': 'DLL_FREQUENCY_MODE'},
			{'T': 'b', 'N': 'DUTY_CYCLE_CORRECTION'},
			{'T': 'i', 'N': 'PHASE_SHIFT'},
			{'T': 'b', 'N': 'STARTUP_WAIT'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK270'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK90'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFX'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFX180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKFB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "DCM_BASE"]]

	return(signals)

def DCM_PS(CLKFX_DIVIDE, CLKFX_MULTIPLY, CLKIN_DIVIDE_BY_2,
			CLKOUT_PHASE_SHIFT, CLK_FEEDBACK, DCM_AUTOCALIBRATION,
			DCM_PERFORMANCE_MODE, DESKEW_ADJUST, DFS_FREQUENCY_MODE,
			DLL_FREQUENCY_MODE, DUTY_CYCLE_CORRECTION, PHASE_SHIFT,
			STARTUP_WAIT):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'CLKFX_DIVIDE'},
			{'T': 'i', 'N': 'CLKFX_MULTIPLY'},
			{'T': 'b', 'N': 'CLKIN_DIVIDE_BY_2'},
			{'T': 's', 'N': 'CLKOUT_PHASE_SHIFT'},
			{'T': 's', 'N': 'CLK_FEEDBACK'},
			{'T': 'b', 'N': 'DCM_AUTOCALIBRATION'},
			{'T': 's', 'N': 'DCM_PERFORMANCE_MODE'},
			{'T': 's', 'N': 'DESKEW_ADJUST'},
			{'T': 's', 'N': 'DFS_FREQUENCY_MODE'},
			{'T': 's', 'N': 'DLL_FREQUENCY_MODE'},
			{'T': 'b', 'N': 'DUTY_CYCLE_CORRECTION'},
			{'T': 'i', 'N': 'PHASE_SHIFT'},
			{'T': 'b', 'N': 'STARTUP_WAIT'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK270'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK90'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFX'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFX180'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PSDONE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKFB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSINCDEC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "DCM_PS"]]

	return(signals)

def DCM_SP(CLKFX_DIVIDE, CLKFX_MULTIPLY, CLKIN_DIVIDE_BY_2,
			CLKOUT_PHASE_SHIFT, CLK_FEEDBACK, DESKEW_ADJUST,
			DFS_FREQUENCY_MODE, DLL_FREQUENCY_MODE, DSS_MODE,
			DUTY_CYCLE_CORRECTION, PHASE_SHIFT, STARTUP_WAIT,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'CLKFX_DIVIDE'},
			{'T': 'i', 'N': 'CLKFX_MULTIPLY'},
			{'T': 'b', 'N': 'CLKIN_DIVIDE_BY_2'},
			{'T': 's', 'N': 'CLKOUT_PHASE_SHIFT'},
			{'T': 's', 'N': 'CLK_FEEDBACK'},
			{'T': 's', 'N': 'DESKEW_ADJUST'},
			{'T': 's', 'N': 'DFS_FREQUENCY_MODE'},
			{'T': 's', 'N': 'DLL_FREQUENCY_MODE'},
			{'T': 's', 'N': 'DSS_MODE'},
			{'T': 'b', 'N': 'DUTY_CYCLE_CORRECTION'},
			{'T': 'i', 'N': 'PHASE_SHIFT'},
			{'T': 'b', 'N': 'STARTUP_WAIT'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK270'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK2X180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK90'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKDV'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFX'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFX180'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PSDONE'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'STATUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKFB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DSSEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PSINCDEC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "DCM_SP"]]

	return(signals)

def DNA_PORT():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'READ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SHIFT'},
			[CompLib, generics, "DNA_PORT"]]

	return(signals)

def DSP48(AREG, BREG, B_INPUT,
			CARRYINREG, CARRYINSELREG, CREG,
			LEGACY_MODE, MREG, OPMODEREG,
			PREG, SUBTRACTREG):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'AREG'},
			{'T': 'i', 'N': 'BREG'},
			{'T': 's', 'N': 'B_INPUT'},
			{'T': 'i', 'N': 'CARRYINREG'},
			{'T': 'i', 'N': 'CARRYINSELREG'},
			{'T': 'i', 'N': 'CREG'},
			{'T': 's', 'N': 'LEGACY_MODE'},
			{'T': 'i', 'N': 'MREG'},
			{'T': 'i', 'N': 'OPMODEREG'},
			{'T': 'i', 'N': 'PREG'},
			{'T': 'i', 'N': 'SUBTRACTREG'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [17, 0], 'N': 'BCOUT'},
			{'D': 'o', 'T': 'b', 'L': [47, 0], 'N': 'P'},
			{'D': 'o', 'T': 'b', 'L': [47, 0], 'N': 'PCOUT'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'A'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'B'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'BCIN'},
			{'D': 'i', 'T': 'b', 'L': [47, 0], 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CARRYIN'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'CARRYINSEL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CECARRYIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CECINSUB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CECTRL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'OPMODE'},
			{'D': 'i', 'T': 'b', 'L': [47, 0], 'N': 'PCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTCARRYIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTCTRL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SUBTRACT'},
			[CompLib, generics, "DSP48"]]

	return(signals)

def DSP48A(A0REG, A1REG, B0REG,
			B1REG, CARRYINREG, CARRYINSEL,
			CREG, DREG, MREG,
			OPMODEREG, PREG, RSTTYPE,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'A0REG'},
			{'T': 'i', 'N': 'A1REG'},
			{'T': 'i', 'N': 'B0REG'},
			{'T': 'i', 'N': 'B1REG'},
			{'T': 'i', 'N': 'CARRYINREG'},
			{'T': 's', 'N': 'CARRYINSEL'},
			{'T': 'i', 'N': 'CREG'},
			{'T': 'i', 'N': 'DREG'},
			{'T': 'i', 'N': 'MREG'},
			{'T': 'i', 'N': 'OPMODEREG'},
			{'T': 'i', 'N': 'PREG'},
			{'T': 's', 'N': 'RSTTYPE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [17, 0], 'N': 'BCOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CARRYOUT'},
			{'D': 'o', 'T': 'b', 'L': [47, 0], 'N': 'P'},
			{'D': 'o', 'T': 'b', 'L': [47, 0], 'N': 'PCOUT'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'A'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'B'},
			{'D': 'i', 'T': 'b', 'L': [47, 0], 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CARRYIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CECARRYIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEOPMODE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'OPMODE'},
			{'D': 'i', 'T': 'b', 'L': [47, 0], 'N': 'PCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTCARRYIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTOPMODE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTP'},
			[CompLib, generics, "DSP48A"]]

	return(signals)

def DSP48E(ACASCREG, ALUMODEREG, AREG,
			AUTORESET_PATTERN_DETECT, AUTORESET_PATTERN_DETECT_OPTINV, A_INPUT,
			BCASCREG, BREG, B_INPUT,
			CARRYINREG, CARRYINSELREG, CREG,
			MREG, MULTCARRYINREG, OPMODEREG,
			PREG, SEL_MASK, SEL_PATTERN,
			SEL_ROUNDING_MASK, SIM_MODE, USE_MULT,
			USE_PATTERN_DETECT, USE_SIMD):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'ACASCREG'},
			{'T': 'i', 'N': 'ALUMODEREG'},
			{'T': 'i', 'N': 'AREG'},
			{'T': 'b', 'N': 'AUTORESET_PATTERN_DETECT'},
			{'T': 's', 'N': 'AUTORESET_PATTERN_DETECT_OPTINV'},
			{'T': 's', 'N': 'A_INPUT'},
			{'T': 'i', 'N': 'BCASCREG'},
			{'T': 'i', 'N': 'BREG'},
			{'T': 's', 'N': 'B_INPUT'},
			{'T': 'i', 'N': 'CARRYINREG'},
			{'T': 'i', 'N': 'CARRYINSELREG'},
			{'T': 'i', 'N': 'CREG'},
			{'T': 'i', 'N': 'MREG'},
			{'T': 'i', 'N': 'MULTCARRYINREG'},
			{'T': 'i', 'N': 'OPMODEREG'},
			{'T': 'i', 'N': 'PREG'},
			{'T': 's', 'N': 'SEL_MASK'},
			{'T': 's', 'N': 'SEL_PATTERN'},
			{'T': 's', 'N': 'SEL_ROUNDING_MASK'},
			{'T': 's', 'N': 'SIM_MODE'},
			{'T': 's', 'N': 'USE_MULT'},
			{'T': 's', 'N': 'USE_PATTERN_DETECT'},
			{'T': 's', 'N': 'USE_SIMD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [29, 0], 'N': 'ACOUT'},
			{'D': 'o', 'T': 'b', 'L': [17, 0], 'N': 'BCOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CARRYCASCOUT'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'CARRYOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MULTSIGNOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OVERFLOW'},
			{'D': 'o', 'T': 'b', 'L': [47, 0], 'N': 'P'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PATTERNBDETECT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PATTERNDETECT'},
			{'D': 'o', 'T': 'b', 'L': [47, 0], 'N': 'PCOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'UNDERFLOW'},
			{'D': 'i', 'T': 'b', 'L': [29, 0], 'N': 'A'},
			{'D': 'i', 'T': 'b', 'L': [29, 0], 'N': 'ACIN'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'ALUMODE'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'B'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'BCIN'},
			{'D': 'i', 'T': 'b', 'L': [47, 0], 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CARRYCASCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CARRYIN'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'CARRYINSEL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEA1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEA2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEALUMODE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEB1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEB2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CECARRYIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CECTRL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEMULTCARRYIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MULTSIGNIN'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'OPMODE'},
			{'D': 'i', 'T': 'b', 'L': [47, 0], 'N': 'PCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTALLCARRYIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTALUMODE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTCTRL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTP'},
			[CompLib, generics, "DSP48E"]]

	return(signals)

def EMAC():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DCRHOSTDONEIR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTANINTERRUPT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXBADFRAME'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXCLIENTCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'EMAC0CLIENTRXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXDVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXDVLDMSW'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXDVREG6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXFRAMEDROP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXGOODFRAME'},
			{'D': 'o', 'T': 'b', 'L': [6, 0], 'N': 'EMAC0CLIENTRXSTATS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXSTATSBYTEVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXSTATSVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXCLIENTCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXCOLLISION'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXGMIIMIICLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXRETRANSMIT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXSTATS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXSTATSBYTEVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXSTATSVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYENCOMMAALIGN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYLOOPBACKMSB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYMCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYMDOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYMDTRI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYMGTRXRESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYMGTTXRESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYPOWERDOWN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYSYNCACQSTATUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXCHARDISPMODE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXCHARDISPVAL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXCHARISK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXCLK'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'EMAC0PHYTXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXER'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTANINTERRUPT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXBADFRAME'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXCLIENTCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'EMAC1CLIENTRXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXDVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXDVLDMSW'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXDVREG6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXFRAMEDROP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXGOODFRAME'},
			{'D': 'o', 'T': 'b', 'L': [6, 0], 'N': 'EMAC1CLIENTRXSTATS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXSTATSBYTEVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXSTATSVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXCLIENTCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXCOLLISION'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXGMIIMIICLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXRETRANSMIT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXSTATS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXSTATSBYTEVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXSTATSVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYENCOMMAALIGN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYLOOPBACKMSB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYMCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYMDOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYMDTRI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYMGTRXRESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYMGTTXRESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYPOWERDOWN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYSYNCACQSTATUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXCHARDISPMODE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXCHARDISPVAL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXCHARISK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXCLK'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'EMAC1PHYTXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXER'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMACDCRACK'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'EMACDCRDBUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'HOSTMIIMRDY'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'HOSTRDDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0DCMLOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0PAUSEREQ'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'CLIENTEMAC0PAUSEVAL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0RXCLIENTCLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXCLIENTCLKIN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'CLIENTEMAC0TXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXDVLD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXDVLDMSW'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXFIRSTBYTE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXGMIIMIICLKIN'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'CLIENTEMAC0TXIFGDELAY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXUNDERRUN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1DCMLOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1PAUSEREQ'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'CLIENTEMAC1PAUSEVAL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1RXCLIENTCLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXCLIENTCLKIN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'CLIENTEMAC1TXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXDVLD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXDVLDMSW'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXFIRSTBYTE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXGMIIMIICLKIN'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'CLIENTEMAC1TXIFGDELAY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXUNDERRUN'},
			{'D': 'i', 'T': 'b', 'L': [8, 9], 'N': 'DCREMACABUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCREMACCLK'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'DCREMACDBUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCREMACENABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCREMACREAD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCREMACWRITE'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'HOSTADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'HOSTCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'HOSTEMAC1SEL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'HOSTMIIMSEL'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'HOSTOPCODE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'HOSTREQ'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'HOSTWRDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0COL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0CRS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0GTXCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0MCLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0MDIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0MIITXCLK'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'PHYEMAC0PHYAD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXBUFERR'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'PHYEMAC0RXBUFSTATUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXCHARISCOMMA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXCHARISK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXCHECKINGCRC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXCLK'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PHYEMAC0RXCLKCORCNT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXCOMMADET'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PHYEMAC0RXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXDISPERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXER'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'PHYEMAC0RXLOSSOFSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXNOTINTABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXRUNDISP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0SIGNALDET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0TXBUFERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1COL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1CRS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1GTXCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1MCLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1MDIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1MIITXCLK'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'PHYEMAC1PHYAD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXBUFERR'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'PHYEMAC1RXBUFSTATUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXCHARISCOMMA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXCHARISK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXCHECKINGCRC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXCLK'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PHYEMAC1RXCLKCORCNT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXCOMMADET'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PHYEMAC1RXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXDISPERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXER'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'PHYEMAC1RXLOSSOFSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXNOTINTABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXRUNDISP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1SIGNALDET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1TXBUFERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RESET'},
			{'D': 'i', 'T': 'b', 'L': [79, 0], 'N': 'TIEEMAC0CONFIGVEC'},
			{'D': 'i', 'T': 'b', 'L': [47, 0], 'N': 'TIEEMAC0UNICASTADDR'},
			{'D': 'i', 'T': 'b', 'L': [79, 0], 'N': 'TIEEMAC1CONFIGVEC'},
			{'D': 'i', 'T': 'b', 'L': [47, 0], 'N': 'TIEEMAC1UNICASTADDR'},
			[CompLib, generics, "EMAC"]]

	return(signals)

def FD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FD"]]

	return(signals)

def FDC():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FDC"]]

	return(signals)

def FDCE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FDCE"]]

	return(signals)

def FDCE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FDCE_1"]]

	return(signals)

def FDCP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDCP"]]

	return(signals)

def FDCPE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDCPE"]]

	return(signals)

def FDCPE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDCPE_1"]]

	return(signals)

def FDCP_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDCP_1"]]

	return(signals)

def FDC_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FDC_1"]]

	return(signals)

def FDD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FDD"]]

	return(signals)

def FDDC():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FDDC"]]

	return(signals)

def FDDCE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FDDCE"]]

	return(signals)

def FDDCP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDDCP"]]

	return(signals)

def FDDCPE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDDCPE"]]

	return(signals)

def FDDP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDDP"]]

	return(signals)

def FDDPE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDDPE"]]

	return(signals)

def FDDRCPE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDDRCPE"]]

	return(signals)

def FDDRRSE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "FDDRRSE"]]

	return(signals)

def FDE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FDE"]]

	return(signals)

def FDE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FDE_1"]]

	return(signals)

def FDP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDP"]]

	return(signals)

def FDPE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDPE"]]

	return(signals)

def FDPE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDPE_1"]]

	return(signals)

def FDP_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "FDP_1"]]

	return(signals)

def FDR():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			[CompLib, generics, "FDR"]]

	return(signals)

def FDRE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			[CompLib, generics, "FDRE"]]

	return(signals)

def FDRE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			[CompLib, generics, "FDRE_1"]]

	return(signals)

def FDRS():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "FDRS"]]

	return(signals)

def FDRSE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "FDRSE"]]

	return(signals)

def FDRSE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "FDRSE_1"]]

	return(signals)

def FDRS_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "FDRS_1"]]

	return(signals)

def FDR_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'R'},
			[CompLib, generics, "FDR_1"]]

	return(signals)

def FDS():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "FDS"]]

	return(signals)

def FDSE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "FDSE"]]

	return(signals)

def FDSE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "FDSE_1"]]

	return(signals)

def FDS_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "FDS_1"]]

	return(signals)

def FD_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "FD_1"]]

	return(signals)

def FIFO16(DATA_WIDTH, FIRST_WORD_FALL_THROUGH):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DATA_WIDTH'},
			{'T': 'b', 'N': 'FIRST_WORD_FALL_THROUGH'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTEMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTFULL'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'FULL'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'RDCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RDERR'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'WRCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WRERR'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WREN'},
			[CompLib, generics, "FIFO16"]]

	return(signals)

def FIFO18(DATA_WIDTH, DO_REG, EN_SYN,
			FIRST_WORD_FALL_THROUGH, SIM_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DATA_WIDTH'},
			{'T': 'i', 'N': 'DO_REG'},
			{'T': 'b', 'N': 'EN_SYN'},
			{'T': 'b', 'N': 'FIRST_WORD_FALL_THROUGH'},
			{'T': 's', 'N': 'SIM_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTEMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTFULL'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'FULL'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'RDCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RDERR'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'WRCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WRERR'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WREN'},
			[CompLib, generics, "FIFO18"]]

	return(signals)

def FIFO18_36(DO_REG, EN_SYN, FIRST_WORD_FALL_THROUGH,
			SIM_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DO_REG'},
			{'T': 'b', 'N': 'EN_SYN'},
			{'T': 'b', 'N': 'FIRST_WORD_FALL_THROUGH'},
			{'T': 's', 'N': 'SIM_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTEMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTFULL'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'FULL'},
			{'D': 'o', 'T': 'b', 'L': [8, 0], 'N': 'RDCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RDERR'},
			{'D': 'o', 'T': 'b', 'L': [8, 0], 'N': 'WRCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WRERR'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WREN'},
			[CompLib, generics, "FIFO18_36"]]

	return(signals)

def FIFO36(DATA_WIDTH, DO_REG, EN_SYN,
			FIRST_WORD_FALL_THROUGH, SIM_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DATA_WIDTH'},
			{'T': 'i', 'N': 'DO_REG'},
			{'T': 'b', 'N': 'EN_SYN'},
			{'T': 'b', 'N': 'FIRST_WORD_FALL_THROUGH'},
			{'T': 's', 'N': 'SIM_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTEMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTFULL'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'FULL'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'RDCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RDERR'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'WRCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WRERR'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WREN'},
			[CompLib, generics, "FIFO36"]]

	return(signals)

def FIFO36_72(DO_REG, EN_ECC_READ, EN_ECC_WRITE,
			EN_SYN, FIRST_WORD_FALL_THROUGH, SIM_MODE,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DO_REG'},
			{'T': 'b', 'N': 'EN_ECC_READ'},
			{'T': 'b', 'N': 'EN_ECC_WRITE'},
			{'T': 'b', 'N': 'EN_SYN'},
			{'T': 'b', 'N': 'FIRST_WORD_FALL_THROUGH'},
			{'T': 's', 'N': 'SIM_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTEMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTFULL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DBITERR'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'ECCPARITY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'FULL'},
			{'D': 'o', 'T': 'b', 'L': [8, 0], 'N': 'RDCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RDERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SBITERR'},
			{'D': 'o', 'T': 'b', 'L': [8, 0], 'N': 'WRCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WRERR'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WREN'},
			[CompLib, generics, "FIFO36_72"]]

	return(signals)

def FIFO36_72_EXP(DO_REG, EN_ECC_READ, EN_ECC_WRITE,
			EN_SYN, FIRST_WORD_FALL_THROUGH, SIM_MODE,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DO_REG'},
			{'T': 'b', 'N': 'EN_ECC_READ'},
			{'T': 'b', 'N': 'EN_ECC_WRITE'},
			{'T': 'b', 'N': 'EN_SYN'},
			{'T': 'b', 'N': 'FIRST_WORD_FALL_THROUGH'},
			{'T': 's', 'N': 'SIM_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTEMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTFULL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DBITERR'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'ECCPARITY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'FULL'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'RDCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RDERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SBITERR'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'WRCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WRERR'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLKL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLKU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDRCLKL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDRCLKU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLKL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLKU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WREN'},
			[CompLib, generics, "FIFO36_72_EXP"]]

	return(signals)

def FIFO36_EXP(DATA_WIDTH, DO_REG, EN_SYN,
			FIRST_WORD_FALL_THROUGH, SIM_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DATA_WIDTH'},
			{'T': 'i', 'N': 'DO_REG'},
			{'T': 'b', 'N': 'EN_SYN'},
			{'T': 'b', 'N': 'FIRST_WORD_FALL_THROUGH'},
			{'T': 's', 'N': 'SIM_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTEMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ALMOSTFULL'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMPTY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'FULL'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'RDCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RDERR'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'WRCOUNT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WRERR'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLKL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLKU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDRCLKL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDRCLKU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLKL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLKU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WREN'},
			[CompLib, generics, "FIFO36_EXP"]]

	return(signals)

def FMAP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'O'},
			[CompLib, generics, "FMAP"]]

	return(signals)

def FRAME_ECC_VIRTEX4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ERROR'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'SYNDROME'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SYNDROMEVALID'},
			[CompLib, generics, "FRAME_ECC_VIRTEX4"]]

	return(signals)

def FRAME_ECC_VIRTEX5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CRCERROR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ECCERROR'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'SYNDROME'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SYNDROMEVALID'},
			[CompLib, generics, "FRAME_ECC_VIRTEX5"]]

	return(signals)

def FTC():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "FTC"]]

	return(signals)

def FTCP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "FTCP"]]

	return(signals)

def FTP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "FTP"]]

	return(signals)

def GND():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'G'},
			[CompLib, generics, "GND"]]

	return(signals)

def GT11(ALIGN_COMMA_WORD, BANDGAPSEL, BIASRESSEL,
			CCCB_ARBITRATOR_DISABLE, CHAN_BOND_LIMIT, CHAN_BOND_MODE,
			CHAN_BOND_ONE_SHOT, CHAN_BOND_SEQ_2_USE, CHAN_BOND_SEQ_LEN,
			CLK_CORRECT_USE, CLK_COR_8B10B_DE, CLK_COR_MAX_LAT,
			CLK_COR_MIN_LAT, CLK_COR_SEQ_2_USE, CLK_COR_SEQ_DROP,
			CLK_COR_SEQ_LEN, COMMA32, DEC_MCOMMA_DETECT,
			DEC_PCOMMA_DETECT, DEC_VALID_COMMA_ONLY, DIGRX_SYNC_MODE,
			ENABLE_DCDR, GT11_MODE, MCOMMA_DETECT,
			OPPOSITE_SELECT, PCOMMA_DETECT, PCS_BIT_SLIP,
			PMACLKENABLE, PMACOREPWRENABLE, PMA_BIT_SLIP,
			POWER_ENABLE, REPEATER, RXACTST,
			RXAFEPD, RXAFETST, RXAPD,
			RXBY_32, RXCLK0_FORCE_PMACLK, RXCPSEL,
			RXCPTST, RXCRCCLOCKDOUBLE, RXCRCENABLE,
			RXCRCINVERTGEN, RXCRCSAMECLOCK, RXDCCOUPLE,
			RXDIGRESET, RXDIGRX, RXFDCAL_CLOCK_DIVIDE,
			RXLB, RXLKAPD, RXOUTDIV2SEL,
			RXPD, RXPDDTST, RXPLLNDIVSEL,
			RXPMACLKSEL, RXRCPPD, RXRECCLK1_USE_SYNC,
			RXRPDPD, RXRSDPD, RXUSRDIVISOR,
			RXVCO_CTRL_ENABLE, RX_BUFFER_USE, SAMPLE_8X,
			SH_CNT_MAX, SH_INVALID_CNT_MAX, TXABPMACLKSEL,
			TXAPD, TXAREFBIASSEL, TXCLK0_FORCE_PMACLK,
			TXCPSEL, TXCRCCLOCKDOUBLE, TXCRCENABLE,
			TXCRCINVERTGEN, TXCRCSAMECLOCK, TXDIGPD,
			TXFDCAL_CLOCK_DIVIDE, TXHIGHSIGNALEN, TXLVLSHFTPD,
			TXOUTCLK1_USE_SYNC, TXOUTDIV2SEL, TXPD,
			TXPHASESEL, TXPLLNDIVSEL, TXPOST_TAP_PD,
			TXPRE_TAP_PD, TXSLEWRATE, TX_BUFFER_USE,
			VCO_CTRL_ENABLE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'ALIGN_COMMA_WORD'},
			{'T': 'b', 'N': 'BANDGAPSEL'},
			{'T': 'b', 'N': 'BIASRESSEL'},
			{'T': 'b', 'N': 'CCCB_ARBITRATOR_DISABLE'},
			{'T': 'i', 'N': 'CHAN_BOND_LIMIT'},
			{'T': 's', 'N': 'CHAN_BOND_MODE'},
			{'T': 'b', 'N': 'CHAN_BOND_ONE_SHOT'},
			{'T': 'b', 'N': 'CHAN_BOND_SEQ_2_USE'},
			{'T': 'i', 'N': 'CHAN_BOND_SEQ_LEN'},
			{'T': 'b', 'N': 'CLK_CORRECT_USE'},
			{'T': 'b', 'N': 'CLK_COR_8B10B_DE'},
			{'T': 'i', 'N': 'CLK_COR_MAX_LAT'},
			{'T': 'i', 'N': 'CLK_COR_MIN_LAT'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_2_USE'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_DROP'},
			{'T': 'i', 'N': 'CLK_COR_SEQ_LEN'},
			{'T': 'b', 'N': 'COMMA32'},
			{'T': 'b', 'N': 'DEC_MCOMMA_DETECT'},
			{'T': 'b', 'N': 'DEC_PCOMMA_DETECT'},
			{'T': 'b', 'N': 'DEC_VALID_COMMA_ONLY'},
			{'T': 'b', 'N': 'DIGRX_SYNC_MODE'},
			{'T': 'b', 'N': 'ENABLE_DCDR'},
			{'T': 's', 'N': 'GT11_MODE'},
			{'T': 'b', 'N': 'MCOMMA_DETECT'},
			{'T': 'b', 'N': 'OPPOSITE_SELECT'},
			{'T': 'b', 'N': 'PCOMMA_DETECT'},
			{'T': 'b', 'N': 'PCS_BIT_SLIP'},
			{'T': 'b', 'N': 'PMACLKENABLE'},
			{'T': 'b', 'N': 'PMACOREPWRENABLE'},
			{'T': 'b', 'N': 'PMA_BIT_SLIP'},
			{'T': 'b', 'N': 'POWER_ENABLE'},
			{'T': 'b', 'N': 'REPEATER'},
			{'T': 'b', 'N': 'RXACTST'},
			{'T': 'b', 'N': 'RXAFEPD'},
			{'T': 'b', 'N': 'RXAFETST'},
			{'T': 'b', 'N': 'RXAPD'},
			{'T': 'b', 'N': 'RXBY_32'},
			{'T': 'b', 'N': 'RXCLK0_FORCE_PMACLK'},
			{'T': 'b', 'N': 'RXCPSEL'},
			{'T': 'b', 'N': 'RXCPTST'},
			{'T': 'b', 'N': 'RXCRCCLOCKDOUBLE'},
			{'T': 'b', 'N': 'RXCRCENABLE'},
			{'T': 'b', 'N': 'RXCRCINVERTGEN'},
			{'T': 'b', 'N': 'RXCRCSAMECLOCK'},
			{'T': 'b', 'N': 'RXDCCOUPLE'},
			{'T': 'b', 'N': 'RXDIGRESET'},
			{'T': 'b', 'N': 'RXDIGRX'},
			{'T': 's', 'N': 'RXFDCAL_CLOCK_DIVIDE'},
			{'T': 'b', 'N': 'RXLB'},
			{'T': 'b', 'N': 'RXLKAPD'},
			{'T': 'i', 'N': 'RXOUTDIV2SEL'},
			{'T': 'b', 'N': 'RXPD'},
			{'T': 'b', 'N': 'RXPDDTST'},
			{'T': 'i', 'N': 'RXPLLNDIVSEL'},
			{'T': 's', 'N': 'RXPMACLKSEL'},
			{'T': 'b', 'N': 'RXRCPPD'},
			{'T': 'b', 'N': 'RXRECCLK1_USE_SYNC'},
			{'T': 'b', 'N': 'RXRPDPD'},
			{'T': 'b', 'N': 'RXRSDPD'},
			{'T': 'i', 'N': 'RXUSRDIVISOR'},
			{'T': 'b', 'N': 'RXVCO_CTRL_ENABLE'},
			{'T': 'b', 'N': 'RX_BUFFER_USE'},
			{'T': 'b', 'N': 'SAMPLE_8X'},
			{'T': 'i', 'N': 'SH_CNT_MAX'},
			{'T': 'i', 'N': 'SH_INVALID_CNT_MAX'},
			{'T': 's', 'N': 'TXABPMACLKSEL'},
			{'T': 'b', 'N': 'TXAPD'},
			{'T': 'b', 'N': 'TXAREFBIASSEL'},
			{'T': 'b', 'N': 'TXCLK0_FORCE_PMACLK'},
			{'T': 'b', 'N': 'TXCPSEL'},
			{'T': 'b', 'N': 'TXCRCCLOCKDOUBLE'},
			{'T': 'b', 'N': 'TXCRCENABLE'},
			{'T': 'b', 'N': 'TXCRCINVERTGEN'},
			{'T': 'b', 'N': 'TXCRCSAMECLOCK'},
			{'T': 'b', 'N': 'TXDIGPD'},
			{'T': 's', 'N': 'TXFDCAL_CLOCK_DIVIDE'},
			{'T': 'b', 'N': 'TXHIGHSIGNALEN'},
			{'T': 'b', 'N': 'TXLVLSHFTPD'},
			{'T': 'b', 'N': 'TXOUTCLK1_USE_SYNC'},
			{'T': 'i', 'N': 'TXOUTDIV2SEL'},
			{'T': 'b', 'N': 'TXPD'},
			{'T': 'b', 'N': 'TXPHASESEL'},
			{'T': 'i', 'N': 'TXPLLNDIVSEL'},
			{'T': 'b', 'N': 'TXPOST_TAP_PD'},
			{'T': 'b', 'N': 'TXPRE_TAP_PD'},
			{'T': 'b', 'N': 'TXSLEWRATE'},
			{'T': 'b', 'N': 'TX_BUFFER_USE'},
			{'T': 'b', 'N': 'VCO_CTRL_ENABLE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'CHBONDO'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'COMBUSOUT'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRDY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBUFERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCALFAIL'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXCHARISCOMMA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXCHARISK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCOMMADET'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'RXCRCOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCYCLELIMIT'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'RXDATA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXDISPERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXLOCK'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXLOSSOFSYNC'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXMCLK'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXNOTINTABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXPCSHCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXREALIGN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK2'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXRUNDISP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXSIGDET'},
			{'D': 'o', 'T': 'b', 'L': [5, 0], 'N': 'RXSTATUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TX1N'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TX1P'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXBUFERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXCALFAIL'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'TXCRCOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXCYCLELIMIT'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'TXKERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXLOCK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXPCSHCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'TXRUNDISP'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'CHBONDI'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'COMBUSIN'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DEN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DWE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENCHANSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENMCOMMAALIGN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENPCOMMAALIGN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GREFCLK'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'LOOPBACK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'POWERDOWN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLK1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLK2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RX1N'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RX1P'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXBLOCKSYNC64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCLKSTABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCOMMADETUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCDATAVALID'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'RXCRCDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'RXCRCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCINIT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCINTCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCPD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCRESET'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC8B10BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDESCRAM64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXIGNOREBTF'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXINTDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPMARESET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPOLARITY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXRESET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSLIDE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK2'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXBYPASS8B10B'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARDISPMODE'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARDISPVAL'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARISK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCLKSTABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCDATAVALID'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXCRCDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'TXCRCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCINIT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCINTCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCPD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCRESET'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'TXDATA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC8B10BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENOOB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXGEARBOX64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXINHIBIT'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXINTDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPMARESET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPOLARITY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXRESET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXSCRAM64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK2'},
			[CompLib, generics, "GT11"]]

	return(signals)

def GT11CLK(REFCLKSEL, SYNCLK1OUTEN, SYNCLK2OUTEN,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'REFCLKSEL'},
			{'T': 's', 'N': 'SYNCLK1OUTEN'},
			{'T': 's', 'N': 'SYNCLK2OUTEN'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SYNCLK1OUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SYNCLK2OUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MGTCLKN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MGTCLKP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXBCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SYNCLK1IN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SYNCLK2IN'},
			[CompLib, generics, "GT11CLK"]]

	return(signals)

def GT11CLK_MGT(SYNCLK1OUTEN, SYNCLK2OUTEN):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SYNCLK1OUTEN'},
			{'T': 's', 'N': 'SYNCLK2OUTEN'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SYNCLK1OUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SYNCLK2OUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MGTCLKN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MGTCLKP'},
			[CompLib, generics, "GT11CLK_MGT"]]

	return(signals)

def GT11_CUSTOM(ALIGN_COMMA_WORD, BANDGAPSEL, BIASRESSEL,
			CCCB_ARBITRATOR_DISABLE, CHAN_BOND_LIMIT, CHAN_BOND_MODE,
			CHAN_BOND_ONE_SHOT, CHAN_BOND_SEQ_2_USE, CHAN_BOND_SEQ_LEN,
			CLK_CORRECT_USE, CLK_COR_8B10B_DE, CLK_COR_MAX_LAT,
			CLK_COR_MIN_LAT, CLK_COR_SEQ_2_USE, CLK_COR_SEQ_DROP,
			CLK_COR_SEQ_LEN, COMMA32, DEC_MCOMMA_DETECT,
			DEC_PCOMMA_DETECT, DEC_VALID_COMMA_ONLY, DIGRX_SYNC_MODE,
			ENABLE_DCDR, MCOMMA_DETECT, OPPOSITE_SELECT,
			PCOMMA_DETECT, PCS_BIT_SLIP, PMACLKENABLE,
			PMACOREPWRENABLE, PMA_BIT_SLIP, POWER_ENABLE,
			REPEATER, RXACTST, RXAFEPD,
			RXAFETST, RXAPD, RXBY_32,
			RXCLK0_FORCE_PMACLK, RXCPSEL, RXCPTST,
			RXCRCCLOCKDOUBLE, RXCRCENABLE, RXCRCINVERTGEN,
			RXCRCSAMECLOCK, RXDCCOUPLE, RXDIGRESET,
			RXDIGRX, RXFDCAL_CLOCK_DIVIDE, RXLB,
			RXLKAPD, RXOUTDIV2SEL, RXPD,
			RXPDDTST, RXPLLNDIVSEL, RXPMACLKSEL,
			RXRCPPD, RXRECCLK1_USE_SYNC, RXRPDPD,
			RXRSDPD, RXUSRDIVISOR, RXVCO_CTRL_ENABLE,
			RX_BUFFER_USE, SAMPLE_8X, SH_CNT_MAX,
			SH_INVALID_CNT_MAX, TXABPMACLKSEL, TXAPD,
			TXAREFBIASSEL, TXCLK0_FORCE_PMACLK, TXCPSEL,
			TXCRCCLOCKDOUBLE, TXCRCENABLE, TXCRCINVERTGEN,
			TXCRCSAMECLOCK, TXDIGPD, TXFDCAL_CLOCK_DIVIDE,
			TXHIGHSIGNALEN, TXLVLSHFTPD, TXOUTCLK1_USE_SYNC,
			TXOUTDIV2SEL, TXPD, TXPHASESEL,
			TXPLLNDIVSEL, TXPOST_TAP_PD, TXPRE_TAP_PD,
			TXSLEWRATE, TX_BUFFER_USE, VCO_CTRL_ENABLE,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'ALIGN_COMMA_WORD'},
			{'T': 'b', 'N': 'BANDGAPSEL'},
			{'T': 'b', 'N': 'BIASRESSEL'},
			{'T': 'b', 'N': 'CCCB_ARBITRATOR_DISABLE'},
			{'T': 'i', 'N': 'CHAN_BOND_LIMIT'},
			{'T': 's', 'N': 'CHAN_BOND_MODE'},
			{'T': 'b', 'N': 'CHAN_BOND_ONE_SHOT'},
			{'T': 'b', 'N': 'CHAN_BOND_SEQ_2_USE'},
			{'T': 'i', 'N': 'CHAN_BOND_SEQ_LEN'},
			{'T': 'b', 'N': 'CLK_CORRECT_USE'},
			{'T': 'b', 'N': 'CLK_COR_8B10B_DE'},
			{'T': 'i', 'N': 'CLK_COR_MAX_LAT'},
			{'T': 'i', 'N': 'CLK_COR_MIN_LAT'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_2_USE'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_DROP'},
			{'T': 'i', 'N': 'CLK_COR_SEQ_LEN'},
			{'T': 'b', 'N': 'COMMA32'},
			{'T': 'b', 'N': 'DEC_MCOMMA_DETECT'},
			{'T': 'b', 'N': 'DEC_PCOMMA_DETECT'},
			{'T': 'b', 'N': 'DEC_VALID_COMMA_ONLY'},
			{'T': 'b', 'N': 'DIGRX_SYNC_MODE'},
			{'T': 'b', 'N': 'ENABLE_DCDR'},
			{'T': 'b', 'N': 'MCOMMA_DETECT'},
			{'T': 'b', 'N': 'OPPOSITE_SELECT'},
			{'T': 'b', 'N': 'PCOMMA_DETECT'},
			{'T': 'b', 'N': 'PCS_BIT_SLIP'},
			{'T': 'b', 'N': 'PMACLKENABLE'},
			{'T': 'b', 'N': 'PMACOREPWRENABLE'},
			{'T': 'b', 'N': 'PMA_BIT_SLIP'},
			{'T': 'b', 'N': 'POWER_ENABLE'},
			{'T': 'b', 'N': 'REPEATER'},
			{'T': 'b', 'N': 'RXACTST'},
			{'T': 'b', 'N': 'RXAFEPD'},
			{'T': 'b', 'N': 'RXAFETST'},
			{'T': 'b', 'N': 'RXAPD'},
			{'T': 'b', 'N': 'RXBY_32'},
			{'T': 'b', 'N': 'RXCLK0_FORCE_PMACLK'},
			{'T': 'b', 'N': 'RXCPSEL'},
			{'T': 'b', 'N': 'RXCPTST'},
			{'T': 'b', 'N': 'RXCRCCLOCKDOUBLE'},
			{'T': 'b', 'N': 'RXCRCENABLE'},
			{'T': 'b', 'N': 'RXCRCINVERTGEN'},
			{'T': 'b', 'N': 'RXCRCSAMECLOCK'},
			{'T': 'b', 'N': 'RXDCCOUPLE'},
			{'T': 'b', 'N': 'RXDIGRESET'},
			{'T': 'b', 'N': 'RXDIGRX'},
			{'T': 's', 'N': 'RXFDCAL_CLOCK_DIVIDE'},
			{'T': 'b', 'N': 'RXLB'},
			{'T': 'b', 'N': 'RXLKAPD'},
			{'T': 'i', 'N': 'RXOUTDIV2SEL'},
			{'T': 'b', 'N': 'RXPD'},
			{'T': 'b', 'N': 'RXPDDTST'},
			{'T': 'i', 'N': 'RXPLLNDIVSEL'},
			{'T': 's', 'N': 'RXPMACLKSEL'},
			{'T': 'b', 'N': 'RXRCPPD'},
			{'T': 'b', 'N': 'RXRECCLK1_USE_SYNC'},
			{'T': 'b', 'N': 'RXRPDPD'},
			{'T': 'b', 'N': 'RXRSDPD'},
			{'T': 'i', 'N': 'RXUSRDIVISOR'},
			{'T': 'b', 'N': 'RXVCO_CTRL_ENABLE'},
			{'T': 'b', 'N': 'RX_BUFFER_USE'},
			{'T': 'b', 'N': 'SAMPLE_8X'},
			{'T': 'i', 'N': 'SH_CNT_MAX'},
			{'T': 'i', 'N': 'SH_INVALID_CNT_MAX'},
			{'T': 's', 'N': 'TXABPMACLKSEL'},
			{'T': 'b', 'N': 'TXAPD'},
			{'T': 'b', 'N': 'TXAREFBIASSEL'},
			{'T': 'b', 'N': 'TXCLK0_FORCE_PMACLK'},
			{'T': 'b', 'N': 'TXCPSEL'},
			{'T': 'b', 'N': 'TXCRCCLOCKDOUBLE'},
			{'T': 'b', 'N': 'TXCRCENABLE'},
			{'T': 'b', 'N': 'TXCRCINVERTGEN'},
			{'T': 'b', 'N': 'TXCRCSAMECLOCK'},
			{'T': 'b', 'N': 'TXDIGPD'},
			{'T': 's', 'N': 'TXFDCAL_CLOCK_DIVIDE'},
			{'T': 'b', 'N': 'TXHIGHSIGNALEN'},
			{'T': 'b', 'N': 'TXLVLSHFTPD'},
			{'T': 'b', 'N': 'TXOUTCLK1_USE_SYNC'},
			{'T': 'i', 'N': 'TXOUTDIV2SEL'},
			{'T': 'b', 'N': 'TXPD'},
			{'T': 'b', 'N': 'TXPHASESEL'},
			{'T': 'i', 'N': 'TXPLLNDIVSEL'},
			{'T': 'b', 'N': 'TXPOST_TAP_PD'},
			{'T': 'b', 'N': 'TXPRE_TAP_PD'},
			{'T': 'b', 'N': 'TXSLEWRATE'},
			{'T': 'b', 'N': 'TX_BUFFER_USE'},
			{'T': 'b', 'N': 'VCO_CTRL_ENABLE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'CHBONDO'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRDY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBUFERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCALFAIL'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXCHARISCOMMA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXCHARISK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCOMMADET'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'RXCRCOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCYCLELIMIT'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'RXDATA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXDISPERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXLOCK'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXLOSSOFSYNC'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXMCLK'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXNOTINTABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXPCSHCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXREALIGN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK2'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXRUNDISP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXSIGDET'},
			{'D': 'o', 'T': 'b', 'L': [5, 0], 'N': 'RXSTATUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TX1N'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TX1P'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXBUFERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXCALFAIL'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'TXCRCOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXCYCLELIMIT'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'TXKERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXLOCK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXPCSHCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'TXRUNDISP'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'CHBONDI'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DEN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DWE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENCHANSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENMCOMMAALIGN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENPCOMMAALIGN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GREFCLK'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'LOOPBACK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'POWERDOWN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLK1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLK2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RX1N'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RX1P'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXBLOCKSYNC64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCLKSTABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCOMMADETUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCDATAVALID'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'RXCRCDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'RXCRCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCINIT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCINTCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCPD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCRESET'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC8B10BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDESCRAM64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXIGNOREBTF'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXINTDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPMARESET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPOLARITY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXRESET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSLIDE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK2'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXBYPASS8B10B'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARDISPMODE'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARDISPVAL'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARISK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCLKSTABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCDATAVALID'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXCRCDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'TXCRCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCINIT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCINTCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCPD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCRESET'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'TXDATA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC8B10BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENOOB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXGEARBOX64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXINHIBIT'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXINTDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPMARESET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPOLARITY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXRESET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXSCRAM64B66BUSE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK2'},
			[CompLib, generics, "GT11_CUSTOM"]]

	return(signals)

def GT11_DUAL(ALIGN_COMMA_WORD_A, ALIGN_COMMA_WORD_B, BANDGAPSEL_A,
			BANDGAPSEL_B, BIASRESSEL_A, BIASRESSEL_B,
			CCCB_ARBITRATOR_DISABLE_A, CCCB_ARBITRATOR_DISABLE_B, CHAN_BOND_LIMIT_A,
			CHAN_BOND_LIMIT_B, CHAN_BOND_MODE_A, CHAN_BOND_MODE_B,
			CHAN_BOND_ONE_SHOT_A, CHAN_BOND_ONE_SHOT_B, CHAN_BOND_SEQ_2_USE_A,
			CHAN_BOND_SEQ_2_USE_B, CHAN_BOND_SEQ_LEN_A, CHAN_BOND_SEQ_LEN_B,
			CLK_CORRECT_USE_A, CLK_CORRECT_USE_B, CLK_COR_8B10B_DE_A,
			CLK_COR_8B10B_DE_B, CLK_COR_MAX_LAT_A, CLK_COR_MAX_LAT_B,
			CLK_COR_MIN_LAT_A, CLK_COR_MIN_LAT_B, CLK_COR_SEQ_2_USE_A,
			CLK_COR_SEQ_2_USE_B, CLK_COR_SEQ_DROP_A, CLK_COR_SEQ_DROP_B,
			CLK_COR_SEQ_LEN_A, CLK_COR_SEQ_LEN_B, COMMA32_A,
			COMMA32_B, DEC_MCOMMA_DETECT_A, DEC_MCOMMA_DETECT_B,
			DEC_PCOMMA_DETECT_A, DEC_PCOMMA_DETECT_B, DEC_VALID_COMMA_ONLY_A,
			DEC_VALID_COMMA_ONLY_B, DIGRX_SYNC_MODE_A, DIGRX_SYNC_MODE_B,
			ENABLE_DCDR_A, ENABLE_DCDR_B, MCOMMA_DETECT_A,
			MCOMMA_DETECT_B, OPPOSITE_SELECT_A, OPPOSITE_SELECT_B,
			PCOMMA_DETECT_A, PCOMMA_DETECT_B, PCS_BIT_SLIP_A,
			PCS_BIT_SLIP_B, PMACLKENABLE_A, PMACLKENABLE_B,
			PMACOREPWRENABLE_A, PMACOREPWRENABLE_B, PMA_BIT_SLIP_A,
			PMA_BIT_SLIP_B, POWER_ENABLE_A, POWER_ENABLE_B,
			REPEATER_A, REPEATER_B, RXACTST_A,
			RXACTST_B, RXAFEPD_A, RXAFEPD_B,
			RXAFETST_A, RXAFETST_B, RXAPD_A,
			RXAPD_B, RXBY_32_A, RXBY_32_B,
			RXCLK0_FORCE_PMACLK_A, RXCLK0_FORCE_PMACLK_B, RXCPSEL_A,
			RXCPSEL_B, RXCPTST_A, RXCPTST_B,
			RXCRCCLOCKDOUBLE_A, RXCRCCLOCKDOUBLE_B, RXCRCENABLE_A,
			RXCRCENABLE_B, RXCRCINVERTGEN_A, RXCRCINVERTGEN_B,
			RXCRCSAMECLOCK_A, RXCRCSAMECLOCK_B, RXDCCOUPLE_A,
			RXDCCOUPLE_B, RXDIGRESET_A, RXDIGRESET_B,
			RXDIGRX_A, RXDIGRX_B, RXFDCAL_CLOCK_DIVIDE_A,
			RXFDCAL_CLOCK_DIVIDE_B, RXLB_A, RXLB_B,
			RXLKAPD_A, RXLKAPD_B, RXOUTDIV2SEL_A,
			RXOUTDIV2SEL_B, RXPDDTST_A, RXPDDTST_B,
			RXPD_A, RXPD_B, RXPLLNDIVSEL_A,
			RXPLLNDIVSEL_B, RXPMACLKSEL_A, RXPMACLKSEL_B,
			RXRCPPD_A, RXRCPPD_B, RXRECCLK1_USE_SYNC_A,
			RXRECCLK1_USE_SYNC_B, RXRPDPD_A, RXRPDPD_B,
			RXRSDPD_A, RXRSDPD_B, RXUSRDIVISOR_A,
			RXUSRDIVISOR_B, RXVCO_CTRL_ENABLE_A, RXVCO_CTRL_ENABLE_B,
			RX_BUFFER_USE_A, RX_BUFFER_USE_B, SAMPLE_8X_A,
			SAMPLE_8X_B, SH_CNT_MAX_A, SH_CNT_MAX_B,
			SH_INVALID_CNT_MAX_A, SH_INVALID_CNT_MAX_B, TXABPMACLKSEL_A,
			TXABPMACLKSEL_B, TXAPD_A, TXAPD_B,
			TXAREFBIASSEL_A, TXAREFBIASSEL_B, TXCLK0_FORCE_PMACLK_A,
			TXCLK0_FORCE_PMACLK_B, TXCPSEL_A, TXCPSEL_B,
			TXCRCCLOCKDOUBLE_A, TXCRCCLOCKDOUBLE_B, TXCRCENABLE_A,
			TXCRCENABLE_B, TXCRCINVERTGEN_A, TXCRCINVERTGEN_B,
			TXCRCSAMECLOCK_A, TXCRCSAMECLOCK_B, TXDIGPD_A,
			TXDIGPD_B, TXFDCAL_CLOCK_DIVIDE_A, TXFDCAL_CLOCK_DIVIDE_B,
			TXHIGHSIGNALEN_A, TXHIGHSIGNALEN_B, TXLVLSHFTPD_A,
			TXLVLSHFTPD_B, TXOUTCLK1_USE_SYNC_A, TXOUTCLK1_USE_SYNC_B,
			TXOUTDIV2SEL_A, TXOUTDIV2SEL_B, TXPD_A,
			TXPD_B, TXPHASESEL_A, TXPHASESEL_B,
			TXPLLNDIVSEL_A, TXPLLNDIVSEL_B, TXPOST_TAP_PD_A,
			TXPOST_TAP_PD_B, TXPRE_TAP_PD_A, TXPRE_TAP_PD_B,
			TXSLEWRATE_A, TXSLEWRATE_B, TX_BUFFER_USE_A,
			TX_BUFFER_USE_B, VCO_CTRL_ENABLE_A, VCO_CTRL_ENABLE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'ALIGN_COMMA_WORD_A'},
			{'T': 'i', 'N': 'ALIGN_COMMA_WORD_B'},
			{'T': 'b', 'N': 'BANDGAPSEL_A'},
			{'T': 'b', 'N': 'BANDGAPSEL_B'},
			{'T': 'b', 'N': 'BIASRESSEL_A'},
			{'T': 'b', 'N': 'BIASRESSEL_B'},
			{'T': 'b', 'N': 'CCCB_ARBITRATOR_DISABLE_A'},
			{'T': 'b', 'N': 'CCCB_ARBITRATOR_DISABLE_B'},
			{'T': 'i', 'N': 'CHAN_BOND_LIMIT_A'},
			{'T': 'i', 'N': 'CHAN_BOND_LIMIT_B'},
			{'T': 's', 'N': 'CHAN_BOND_MODE_A'},
			{'T': 's', 'N': 'CHAN_BOND_MODE_B'},
			{'T': 'b', 'N': 'CHAN_BOND_ONE_SHOT_A'},
			{'T': 'b', 'N': 'CHAN_BOND_ONE_SHOT_B'},
			{'T': 'b', 'N': 'CHAN_BOND_SEQ_2_USE_A'},
			{'T': 'b', 'N': 'CHAN_BOND_SEQ_2_USE_B'},
			{'T': 'i', 'N': 'CHAN_BOND_SEQ_LEN_A'},
			{'T': 'i', 'N': 'CHAN_BOND_SEQ_LEN_B'},
			{'T': 'b', 'N': 'CLK_CORRECT_USE_A'},
			{'T': 'b', 'N': 'CLK_CORRECT_USE_B'},
			{'T': 'b', 'N': 'CLK_COR_8B10B_DE_A'},
			{'T': 'b', 'N': 'CLK_COR_8B10B_DE_B'},
			{'T': 'i', 'N': 'CLK_COR_MAX_LAT_A'},
			{'T': 'i', 'N': 'CLK_COR_MAX_LAT_B'},
			{'T': 'i', 'N': 'CLK_COR_MIN_LAT_A'},
			{'T': 'i', 'N': 'CLK_COR_MIN_LAT_B'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_2_USE_A'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_2_USE_B'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_DROP_A'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_DROP_B'},
			{'T': 'i', 'N': 'CLK_COR_SEQ_LEN_A'},
			{'T': 'i', 'N': 'CLK_COR_SEQ_LEN_B'},
			{'T': 'b', 'N': 'COMMA32_A'},
			{'T': 'b', 'N': 'COMMA32_B'},
			{'T': 'b', 'N': 'DEC_MCOMMA_DETECT_A'},
			{'T': 'b', 'N': 'DEC_MCOMMA_DETECT_B'},
			{'T': 'b', 'N': 'DEC_PCOMMA_DETECT_A'},
			{'T': 'b', 'N': 'DEC_PCOMMA_DETECT_B'},
			{'T': 'b', 'N': 'DEC_VALID_COMMA_ONLY_A'},
			{'T': 'b', 'N': 'DEC_VALID_COMMA_ONLY_B'},
			{'T': 'b', 'N': 'DIGRX_SYNC_MODE_A'},
			{'T': 'b', 'N': 'DIGRX_SYNC_MODE_B'},
			{'T': 'b', 'N': 'ENABLE_DCDR_A'},
			{'T': 'b', 'N': 'ENABLE_DCDR_B'},
			{'T': 'b', 'N': 'MCOMMA_DETECT_A'},
			{'T': 'b', 'N': 'MCOMMA_DETECT_B'},
			{'T': 'b', 'N': 'OPPOSITE_SELECT_A'},
			{'T': 'b', 'N': 'OPPOSITE_SELECT_B'},
			{'T': 'b', 'N': 'PCOMMA_DETECT_A'},
			{'T': 'b', 'N': 'PCOMMA_DETECT_B'},
			{'T': 'b', 'N': 'PCS_BIT_SLIP_A'},
			{'T': 'b', 'N': 'PCS_BIT_SLIP_B'},
			{'T': 'b', 'N': 'PMACLKENABLE_A'},
			{'T': 'b', 'N': 'PMACLKENABLE_B'},
			{'T': 'b', 'N': 'PMACOREPWRENABLE_A'},
			{'T': 'b', 'N': 'PMACOREPWRENABLE_B'},
			{'T': 'b', 'N': 'PMA_BIT_SLIP_A'},
			{'T': 'b', 'N': 'PMA_BIT_SLIP_B'},
			{'T': 'b', 'N': 'POWER_ENABLE_A'},
			{'T': 'b', 'N': 'POWER_ENABLE_B'},
			{'T': 'b', 'N': 'REPEATER_A'},
			{'T': 'b', 'N': 'REPEATER_B'},
			{'T': 'b', 'N': 'RXACTST_A'},
			{'T': 'b', 'N': 'RXACTST_B'},
			{'T': 'b', 'N': 'RXAFEPD_A'},
			{'T': 'b', 'N': 'RXAFEPD_B'},
			{'T': 'b', 'N': 'RXAFETST_A'},
			{'T': 'b', 'N': 'RXAFETST_B'},
			{'T': 'b', 'N': 'RXAPD_A'},
			{'T': 'b', 'N': 'RXAPD_B'},
			{'T': 'b', 'N': 'RXBY_32_A'},
			{'T': 'b', 'N': 'RXBY_32_B'},
			{'T': 'b', 'N': 'RXCLK0_FORCE_PMACLK_A'},
			{'T': 'b', 'N': 'RXCLK0_FORCE_PMACLK_B'},
			{'T': 'b', 'N': 'RXCPSEL_A'},
			{'T': 'b', 'N': 'RXCPSEL_B'},
			{'T': 'b', 'N': 'RXCPTST_A'},
			{'T': 'b', 'N': 'RXCPTST_B'},
			{'T': 'b', 'N': 'RXCRCCLOCKDOUBLE_A'},
			{'T': 'b', 'N': 'RXCRCCLOCKDOUBLE_B'},
			{'T': 'b', 'N': 'RXCRCENABLE_A'},
			{'T': 'b', 'N': 'RXCRCENABLE_B'},
			{'T': 'b', 'N': 'RXCRCINVERTGEN_A'},
			{'T': 'b', 'N': 'RXCRCINVERTGEN_B'},
			{'T': 'b', 'N': 'RXCRCSAMECLOCK_A'},
			{'T': 'b', 'N': 'RXCRCSAMECLOCK_B'},
			{'T': 'b', 'N': 'RXDCCOUPLE_A'},
			{'T': 'b', 'N': 'RXDCCOUPLE_B'},
			{'T': 'b', 'N': 'RXDIGRESET_A'},
			{'T': 'b', 'N': 'RXDIGRESET_B'},
			{'T': 'b', 'N': 'RXDIGRX_A'},
			{'T': 'b', 'N': 'RXDIGRX_B'},
			{'T': 's', 'N': 'RXFDCAL_CLOCK_DIVIDE_A'},
			{'T': 's', 'N': 'RXFDCAL_CLOCK_DIVIDE_B'},
			{'T': 'b', 'N': 'RXLB_A'},
			{'T': 'b', 'N': 'RXLB_B'},
			{'T': 'b', 'N': 'RXLKAPD_A'},
			{'T': 'b', 'N': 'RXLKAPD_B'},
			{'T': 'i', 'N': 'RXOUTDIV2SEL_A'},
			{'T': 'i', 'N': 'RXOUTDIV2SEL_B'},
			{'T': 'b', 'N': 'RXPDDTST_A'},
			{'T': 'b', 'N': 'RXPDDTST_B'},
			{'T': 'b', 'N': 'RXPD_A'},
			{'T': 'b', 'N': 'RXPD_B'},
			{'T': 'i', 'N': 'RXPLLNDIVSEL_A'},
			{'T': 'i', 'N': 'RXPLLNDIVSEL_B'},
			{'T': 's', 'N': 'RXPMACLKSEL_A'},
			{'T': 's', 'N': 'RXPMACLKSEL_B'},
			{'T': 'b', 'N': 'RXRCPPD_A'},
			{'T': 'b', 'N': 'RXRCPPD_B'},
			{'T': 'b', 'N': 'RXRECCLK1_USE_SYNC_A'},
			{'T': 'b', 'N': 'RXRECCLK1_USE_SYNC_B'},
			{'T': 'b', 'N': 'RXRPDPD_A'},
			{'T': 'b', 'N': 'RXRPDPD_B'},
			{'T': 'b', 'N': 'RXRSDPD_A'},
			{'T': 'b', 'N': 'RXRSDPD_B'},
			{'T': 'i', 'N': 'RXUSRDIVISOR_A'},
			{'T': 'i', 'N': 'RXUSRDIVISOR_B'},
			{'T': 'b', 'N': 'RXVCO_CTRL_ENABLE_A'},
			{'T': 'b', 'N': 'RXVCO_CTRL_ENABLE_B'},
			{'T': 'b', 'N': 'RX_BUFFER_USE_A'},
			{'T': 'b', 'N': 'RX_BUFFER_USE_B'},
			{'T': 'b', 'N': 'SAMPLE_8X_A'},
			{'T': 'b', 'N': 'SAMPLE_8X_B'},
			{'T': 'i', 'N': 'SH_CNT_MAX_A'},
			{'T': 'i', 'N': 'SH_CNT_MAX_B'},
			{'T': 'i', 'N': 'SH_INVALID_CNT_MAX_A'},
			{'T': 'i', 'N': 'SH_INVALID_CNT_MAX_B'},
			{'T': 's', 'N': 'TXABPMACLKSEL_A'},
			{'T': 's', 'N': 'TXABPMACLKSEL_B'},
			{'T': 'b', 'N': 'TXAPD_A'},
			{'T': 'b', 'N': 'TXAPD_B'},
			{'T': 'b', 'N': 'TXAREFBIASSEL_A'},
			{'T': 'b', 'N': 'TXAREFBIASSEL_B'},
			{'T': 'b', 'N': 'TXCLK0_FORCE_PMACLK_A'},
			{'T': 'b', 'N': 'TXCLK0_FORCE_PMACLK_B'},
			{'T': 'b', 'N': 'TXCPSEL_A'},
			{'T': 'b', 'N': 'TXCPSEL_B'},
			{'T': 'b', 'N': 'TXCRCCLOCKDOUBLE_A'},
			{'T': 'b', 'N': 'TXCRCCLOCKDOUBLE_B'},
			{'T': 'b', 'N': 'TXCRCENABLE_A'},
			{'T': 'b', 'N': 'TXCRCENABLE_B'},
			{'T': 'b', 'N': 'TXCRCINVERTGEN_A'},
			{'T': 'b', 'N': 'TXCRCINVERTGEN_B'},
			{'T': 'b', 'N': 'TXCRCSAMECLOCK_A'},
			{'T': 'b', 'N': 'TXCRCSAMECLOCK_B'},
			{'T': 'b', 'N': 'TXDIGPD_A'},
			{'T': 'b', 'N': 'TXDIGPD_B'},
			{'T': 's', 'N': 'TXFDCAL_CLOCK_DIVIDE_A'},
			{'T': 's', 'N': 'TXFDCAL_CLOCK_DIVIDE_B'},
			{'T': 'b', 'N': 'TXHIGHSIGNALEN_A'},
			{'T': 'b', 'N': 'TXHIGHSIGNALEN_B'},
			{'T': 'b', 'N': 'TXLVLSHFTPD_A'},
			{'T': 'b', 'N': 'TXLVLSHFTPD_B'},
			{'T': 'b', 'N': 'TXOUTCLK1_USE_SYNC_A'},
			{'T': 'b', 'N': 'TXOUTCLK1_USE_SYNC_B'},
			{'T': 'i', 'N': 'TXOUTDIV2SEL_A'},
			{'T': 'i', 'N': 'TXOUTDIV2SEL_B'},
			{'T': 'b', 'N': 'TXPD_A'},
			{'T': 'b', 'N': 'TXPD_B'},
			{'T': 'b', 'N': 'TXPHASESEL_A'},
			{'T': 'b', 'N': 'TXPHASESEL_B'},
			{'T': 'i', 'N': 'TXPLLNDIVSEL_A'},
			{'T': 'i', 'N': 'TXPLLNDIVSEL_B'},
			{'T': 'b', 'N': 'TXPOST_TAP_PD_A'},
			{'T': 'b', 'N': 'TXPOST_TAP_PD_B'},
			{'T': 'b', 'N': 'TXPRE_TAP_PD_A'},
			{'T': 'b', 'N': 'TXPRE_TAP_PD_B'},
			{'T': 'b', 'N': 'TXSLEWRATE_A'},
			{'T': 'b', 'N': 'TXSLEWRATE_B'},
			{'T': 'b', 'N': 'TX_BUFFER_USE_A'},
			{'T': 'b', 'N': 'TX_BUFFER_USE_B'},
			{'T': 'b', 'N': 'VCO_CTRL_ENABLE_A'},
			{'T': 'b', 'N': 'VCO_CTRL_ENABLE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'CHBONDOA'},
			{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'CHBONDOB'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRDYA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRDYB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBUFERRA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBUFERRB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCALFAILA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCALFAILB'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXCHARISCOMMAA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXCHARISCOMMAB'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXCHARISKA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXCHARISKB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCOMMADETA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCOMMADETB'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'RXCRCOUTA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'RXCRCOUTB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCYCLELIMITA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCYCLELIMITB'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'RXDATAA'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'RXDATAB'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXDISPERRA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXDISPERRB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXLOCKA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXLOCKB'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXLOSSOFSYNCA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXLOSSOFSYNCB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXMCLKA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXMCLKB'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXNOTINTABLEA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXNOTINTABLEB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXPCSHCLKOUTA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXPCSHCLKOUTB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXREALIGNA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXREALIGNB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK1A'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK1B'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK2A'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK2B'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXRUNDISPA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'RXRUNDISPB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXSIGDETA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXSIGDETB'},
			{'D': 'o', 'T': 'b', 'L': [5, 0], 'N': 'RXSTATUSA'},
			{'D': 'o', 'T': 'b', 'L': [5, 0], 'N': 'RXSTATUSB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TX1NA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TX1NB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TX1PA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TX1PB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXBUFERRA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXBUFERRB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXCALFAILA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXCALFAILB'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'TXCRCOUTA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'TXCRCOUTB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXCYCLELIMITA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXCYCLELIMITB'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'TXKERRA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'TXKERRB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXLOCKA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXLOCKB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK1A'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK1B'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK2A'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK2B'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXPCSHCLKOUTA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXPCSHCLKOUTB'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'TXRUNDISPA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'TXRUNDISPB'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'CHBONDIA'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'CHBONDIB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DADDRA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCLKB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DENB'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DWEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DWEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENCHANSYNCA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENCHANSYNCB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENMCOMMAALIGNA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENMCOMMAALIGNB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENPCOMMAALIGNA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENPCOMMAALIGNB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GREFCLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GREFCLKB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'LOOPBACKA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'LOOPBACKB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'POWERDOWNA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'POWERDOWNB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLK1A'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLK1B'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLK2A'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLK2B'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RX1NA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RX1NB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RX1PA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RX1PB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXBLOCKSYNC64B66BUSEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXBLOCKSYNC64B66BUSEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCLKSTABLEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCLKSTABLEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCOMMADETUSEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCOMMADETUSEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCCLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCCLKB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCDATAVALIDA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCDATAVALIDB'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'RXCRCDATAWIDTHA'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'RXCRCDATAWIDTHB'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'RXCRCINA'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'RXCRCINB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCINITA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCINITB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCINTCLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCINTCLKB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCPDA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCPDB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCRESETA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCRCRESETB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXDATAWIDTHA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXDATAWIDTHB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC64B66BUSEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC64B66BUSEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC8B10BUSEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC8B10BUSEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDESCRAM64B66BUSEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDESCRAM64B66BUSEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXIGNOREBTFA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXIGNOREBTFB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXINTDATAWIDTHA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXINTDATAWIDTHB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPMARESETA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPMARESETB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPOLARITYA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPOLARITYB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXRESETA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXRESETB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSLIDEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSLIDEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSYNCA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSYNCB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK2A'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK2B'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLKB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXBYPASS8B10BA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXBYPASS8B10BB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARDISPMODEA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARDISPMODEB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARDISPVALA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARDISPVALB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARISKA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'TXCHARISKB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCLKSTABLEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCLKSTABLEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCCLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCCLKB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCDATAVALIDA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCDATAVALIDB'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXCRCDATAWIDTHA'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXCRCDATAWIDTHB'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'TXCRCINA'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'TXCRCINB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCINITA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCINITB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCINTCLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCINTCLKB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCPDA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCPDB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCRESETA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCRCRESETB'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'TXDATAA'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'TXDATAB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXDATAWIDTHA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXDATAWIDTHB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC64B66BUSEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC64B66BUSEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC8B10BUSEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC8B10BUSEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENOOBA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENOOBB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXGEARBOX64B66BUSEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXGEARBOX64B66BUSEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXINHIBITA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXINHIBITB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXINTDATAWIDTHA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXINTDATAWIDTHB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPMARESETA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPMARESETB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPOLARITYA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPOLARITYB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXRESETA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXRESETB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXSCRAM64B66BUSEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXSCRAM64B66BUSEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXSYNCA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXSYNCB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK2A'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK2B'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLKB'},
			[CompLib, generics, "GT11_DUAL"]]

	return(signals)

def GTP_DUAL(AC_CAP_DIS_0, AC_CAP_DIS_1, ALIGN_COMMA_WORD_0,
			ALIGN_COMMA_WORD_1, CHAN_BOND_1_MAX_SKEW_0, CHAN_BOND_1_MAX_SKEW_1,
			CHAN_BOND_2_MAX_SKEW_0, CHAN_BOND_2_MAX_SKEW_1, CHAN_BOND_LEVEL_0,
			CHAN_BOND_LEVEL_1, CHAN_BOND_MODE_0, CHAN_BOND_MODE_1,
			CHAN_BOND_SEQ_2_USE_0, CHAN_BOND_SEQ_2_USE_1, CHAN_BOND_SEQ_LEN_0,
			CHAN_BOND_SEQ_LEN_1, CLK25_DIVIDER, CLKINDC_B,
			CLK_CORRECT_USE_0, CLK_CORRECT_USE_1, CLK_COR_ADJ_LEN_0,
			CLK_COR_ADJ_LEN_1, CLK_COR_DET_LEN_0, CLK_COR_DET_LEN_1,
			CLK_COR_INSERT_IDLE_FLAG_0, CLK_COR_INSERT_IDLE_FLAG_1, CLK_COR_KEEP_IDLE_0,
			CLK_COR_KEEP_IDLE_1, CLK_COR_MAX_LAT_0, CLK_COR_MAX_LAT_1,
			CLK_COR_MIN_LAT_0, CLK_COR_MIN_LAT_1, CLK_COR_PRECEDENCE_0,
			CLK_COR_PRECEDENCE_1, CLK_COR_REPEAT_WAIT_0, CLK_COR_REPEAT_WAIT_1,
			CLK_COR_SEQ_2_USE_0, CLK_COR_SEQ_2_USE_1, COMMA_DOUBLE_0,
			COMMA_DOUBLE_1, DEC_MCOMMA_DETECT_0, DEC_MCOMMA_DETECT_1,
			DEC_PCOMMA_DETECT_0, DEC_PCOMMA_DETECT_1, DEC_VALID_COMMA_ONLY_0,
			DEC_VALID_COMMA_ONLY_1, MCOMMA_DETECT_0, MCOMMA_DETECT_1,
			OOB_CLK_DIVIDER, OVERSAMPLE_MODE, PCI_EXPRESS_MODE_0,
			PCI_EXPRESS_MODE_1, PCOMMA_DETECT_0, PCOMMA_DETECT_1,
			PLL_DIVSEL_FB, PLL_DIVSEL_REF, PLL_RXDIVSEL_OUT_0,
			PLL_RXDIVSEL_OUT_1, PLL_SATA_0, PLL_SATA_1,
			PLL_TXDIVSEL_COMM_OUT, PLL_TXDIVSEL_OUT_0, PLL_TXDIVSEL_OUT_1,
			RCV_TERM_GND_0, RCV_TERM_GND_1, RCV_TERM_MID_0,
			RCV_TERM_MID_1, RCV_TERM_VTTRX_0, RCV_TERM_VTTRX_1,
			RX_BUFFER_USE_0, RX_BUFFER_USE_1, RX_DECODE_SEQ_MATCH_0,
			RX_DECODE_SEQ_MATCH_1, RX_LOSS_OF_SYNC_FSM_0, RX_LOSS_OF_SYNC_FSM_1,
			RX_LOS_INVALID_INCR_0, RX_LOS_INVALID_INCR_1, RX_LOS_THRESHOLD_0,
			RX_LOS_THRESHOLD_1, RX_SLIDE_MODE_0, RX_SLIDE_MODE_1,
			RX_STATUS_FMT_0, RX_STATUS_FMT_1, RX_XCLK_SEL_0,
			RX_XCLK_SEL_1, SATA_MAX_BURST_0, SATA_MAX_BURST_1,
			SATA_MAX_INIT_0, SATA_MAX_INIT_1, SATA_MAX_WAKE_0,
			SATA_MAX_WAKE_1, SATA_MIN_BURST_0, SATA_MIN_BURST_1,
			SATA_MIN_INIT_0, SATA_MIN_INIT_1, SATA_MIN_WAKE_0,
			SATA_MIN_WAKE_1, SIM_GTPRESET_SPEEDUP, SIM_MODE,
			SIM_RECEIVER_DETECT_PASS0, SIM_RECEIVER_DETECT_PASS1, TERMINATION_IMP_0,
			TERMINATION_IMP_1, TERMINATION_OVRD, TX_BUFFER_USE_0,
			TX_BUFFER_USE_1, TX_DIFF_BOOST_0, TX_DIFF_BOOST_1,
			TX_SYNC_FILTERB, TX_XCLK_SEL_0, TX_XCLK_SEL_1,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'AC_CAP_DIS_0'},
			{'T': 'b', 'N': 'AC_CAP_DIS_1'},
			{'T': 'i', 'N': 'ALIGN_COMMA_WORD_0'},
			{'T': 'i', 'N': 'ALIGN_COMMA_WORD_1'},
			{'T': 'i', 'N': 'CHAN_BOND_1_MAX_SKEW_0'},
			{'T': 'i', 'N': 'CHAN_BOND_1_MAX_SKEW_1'},
			{'T': 'i', 'N': 'CHAN_BOND_2_MAX_SKEW_0'},
			{'T': 'i', 'N': 'CHAN_BOND_2_MAX_SKEW_1'},
			{'T': 'i', 'N': 'CHAN_BOND_LEVEL_0'},
			{'T': 'i', 'N': 'CHAN_BOND_LEVEL_1'},
			{'T': 's', 'N': 'CHAN_BOND_MODE_0'},
			{'T': 's', 'N': 'CHAN_BOND_MODE_1'},
			{'T': 'b', 'N': 'CHAN_BOND_SEQ_2_USE_0'},
			{'T': 'b', 'N': 'CHAN_BOND_SEQ_2_USE_1'},
			{'T': 'i', 'N': 'CHAN_BOND_SEQ_LEN_0'},
			{'T': 'i', 'N': 'CHAN_BOND_SEQ_LEN_1'},
			{'T': 'i', 'N': 'CLK25_DIVIDER'},
			{'T': 'b', 'N': 'CLKINDC_B'},
			{'T': 'b', 'N': 'CLK_CORRECT_USE_0'},
			{'T': 'b', 'N': 'CLK_CORRECT_USE_1'},
			{'T': 'i', 'N': 'CLK_COR_ADJ_LEN_0'},
			{'T': 'i', 'N': 'CLK_COR_ADJ_LEN_1'},
			{'T': 'i', 'N': 'CLK_COR_DET_LEN_0'},
			{'T': 'i', 'N': 'CLK_COR_DET_LEN_1'},
			{'T': 'b', 'N': 'CLK_COR_INSERT_IDLE_FLAG_0'},
			{'T': 'b', 'N': 'CLK_COR_INSERT_IDLE_FLAG_1'},
			{'T': 'b', 'N': 'CLK_COR_KEEP_IDLE_0'},
			{'T': 'b', 'N': 'CLK_COR_KEEP_IDLE_1'},
			{'T': 'i', 'N': 'CLK_COR_MAX_LAT_0'},
			{'T': 'i', 'N': 'CLK_COR_MAX_LAT_1'},
			{'T': 'i', 'N': 'CLK_COR_MIN_LAT_0'},
			{'T': 'i', 'N': 'CLK_COR_MIN_LAT_1'},
			{'T': 'b', 'N': 'CLK_COR_PRECEDENCE_0'},
			{'T': 'b', 'N': 'CLK_COR_PRECEDENCE_1'},
			{'T': 'i', 'N': 'CLK_COR_REPEAT_WAIT_0'},
			{'T': 'i', 'N': 'CLK_COR_REPEAT_WAIT_1'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_2_USE_0'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_2_USE_1'},
			{'T': 'b', 'N': 'COMMA_DOUBLE_0'},
			{'T': 'b', 'N': 'COMMA_DOUBLE_1'},
			{'T': 'b', 'N': 'DEC_MCOMMA_DETECT_0'},
			{'T': 'b', 'N': 'DEC_MCOMMA_DETECT_1'},
			{'T': 'b', 'N': 'DEC_PCOMMA_DETECT_0'},
			{'T': 'b', 'N': 'DEC_PCOMMA_DETECT_1'},
			{'T': 'b', 'N': 'DEC_VALID_COMMA_ONLY_0'},
			{'T': 'b', 'N': 'DEC_VALID_COMMA_ONLY_1'},
			{'T': 'b', 'N': 'MCOMMA_DETECT_0'},
			{'T': 'b', 'N': 'MCOMMA_DETECT_1'},
			{'T': 'i', 'N': 'OOB_CLK_DIVIDER'},
			{'T': 'b', 'N': 'OVERSAMPLE_MODE'},
			{'T': 'b', 'N': 'PCI_EXPRESS_MODE_0'},
			{'T': 'b', 'N': 'PCI_EXPRESS_MODE_1'},
			{'T': 'b', 'N': 'PCOMMA_DETECT_0'},
			{'T': 'b', 'N': 'PCOMMA_DETECT_1'},
			{'T': 'i', 'N': 'PLL_DIVSEL_FB'},
			{'T': 'i', 'N': 'PLL_DIVSEL_REF'},
			{'T': 'i', 'N': 'PLL_RXDIVSEL_OUT_0'},
			{'T': 'i', 'N': 'PLL_RXDIVSEL_OUT_1'},
			{'T': 'b', 'N': 'PLL_SATA_0'},
			{'T': 'b', 'N': 'PLL_SATA_1'},
			{'T': 'i', 'N': 'PLL_TXDIVSEL_COMM_OUT'},
			{'T': 'i', 'N': 'PLL_TXDIVSEL_OUT_0'},
			{'T': 'i', 'N': 'PLL_TXDIVSEL_OUT_1'},
			{'T': 'b', 'N': 'RCV_TERM_GND_0'},
			{'T': 'b', 'N': 'RCV_TERM_GND_1'},
			{'T': 'b', 'N': 'RCV_TERM_MID_0'},
			{'T': 'b', 'N': 'RCV_TERM_MID_1'},
			{'T': 'b', 'N': 'RCV_TERM_VTTRX_0'},
			{'T': 'b', 'N': 'RCV_TERM_VTTRX_1'},
			{'T': 'b', 'N': 'RX_BUFFER_USE_0'},
			{'T': 'b', 'N': 'RX_BUFFER_USE_1'},
			{'T': 'b', 'N': 'RX_DECODE_SEQ_MATCH_0'},
			{'T': 'b', 'N': 'RX_DECODE_SEQ_MATCH_1'},
			{'T': 'b', 'N': 'RX_LOSS_OF_SYNC_FSM_0'},
			{'T': 'b', 'N': 'RX_LOSS_OF_SYNC_FSM_1'},
			{'T': 'i', 'N': 'RX_LOS_INVALID_INCR_0'},
			{'T': 'i', 'N': 'RX_LOS_INVALID_INCR_1'},
			{'T': 'i', 'N': 'RX_LOS_THRESHOLD_0'},
			{'T': 'i', 'N': 'RX_LOS_THRESHOLD_1'},
			{'T': 's', 'N': 'RX_SLIDE_MODE_0'},
			{'T': 's', 'N': 'RX_SLIDE_MODE_1'},
			{'T': 's', 'N': 'RX_STATUS_FMT_0'},
			{'T': 's', 'N': 'RX_STATUS_FMT_1'},
			{'T': 's', 'N': 'RX_XCLK_SEL_0'},
			{'T': 's', 'N': 'RX_XCLK_SEL_1'},
			{'T': 'i', 'N': 'SATA_MAX_BURST_0'},
			{'T': 'i', 'N': 'SATA_MAX_BURST_1'},
			{'T': 'i', 'N': 'SATA_MAX_INIT_0'},
			{'T': 'i', 'N': 'SATA_MAX_INIT_1'},
			{'T': 'i', 'N': 'SATA_MAX_WAKE_0'},
			{'T': 'i', 'N': 'SATA_MAX_WAKE_1'},
			{'T': 'i', 'N': 'SATA_MIN_BURST_0'},
			{'T': 'i', 'N': 'SATA_MIN_BURST_1'},
			{'T': 'i', 'N': 'SATA_MIN_INIT_0'},
			{'T': 'i', 'N': 'SATA_MIN_INIT_1'},
			{'T': 'i', 'N': 'SATA_MIN_WAKE_0'},
			{'T': 'i', 'N': 'SATA_MIN_WAKE_1'},
			{'T': 'i', 'N': 'SIM_GTPRESET_SPEEDUP'},
			{'T': 's', 'N': 'SIM_MODE'},
			{'T': 'b', 'N': 'SIM_RECEIVER_DETECT_PASS0'},
			{'T': 'b', 'N': 'SIM_RECEIVER_DETECT_PASS1'},
			{'T': 'i', 'N': 'TERMINATION_IMP_0'},
			{'T': 'i', 'N': 'TERMINATION_IMP_1'},
			{'T': 'b', 'N': 'TERMINATION_OVRD'},
			{'T': 'b', 'N': 'TX_BUFFER_USE_0'},
			{'T': 'b', 'N': 'TX_BUFFER_USE_1'},
			{'T': 'b', 'N': 'TX_DIFF_BOOST_0'},
			{'T': 'b', 'N': 'TX_DIFF_BOOST_1'},
			{'T': 'i', 'N': 'TX_SYNC_FILTERB'},
			{'T': 's', 'N': 'TX_XCLK_SEL_0'},
			{'T': 's', 'N': 'TX_XCLK_SEL_1'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRDY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PHYSTATUS0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PHYSTATUS1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PLLLKDET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'REFCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RESETDONE0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RESETDONE1'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXBUFSTATUS0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXBUFSTATUS1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBYTEISALIGNED0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBYTEISALIGNED1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBYTEREALIGN0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBYTEREALIGN1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANBONDSEQ0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANBONDSEQ1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANISALIGNED0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANISALIGNED1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANREALIGN0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANREALIGN1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXCHARISCOMMA0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXCHARISCOMMA1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXCHARISK0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXCHARISK1'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXCHBONDO0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXCHBONDO1'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXCLKCORCNT0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXCLKCORCNT1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCOMMADET0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCOMMADET1'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'RXDATA0'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'RXDATA1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXDISPERR0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXDISPERR1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXELECIDLE0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXELECIDLE1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXLOSSOFSYNC0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXLOSSOFSYNC1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXNOTINTABLE0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXNOTINTABLE1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXOVERSAMPLEERR0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXOVERSAMPLEERR1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXPRBSERR0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXPRBSERR1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXRUNDISP0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXRUNDISP1'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXSTATUS0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXSTATUS1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXVALID0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXVALID1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'TXBUFSTATUS0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'TXBUFSTATUS1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'TXKERR0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'TXKERR1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXN0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXN1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXP0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXP1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'TXRUNDISP0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'TXRUNDISP1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'DADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DEN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DWE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTPRESET'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'GTPTEST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'INTDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'LOOPBACK0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'LOOPBACK1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLLLKDETEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLLPOWERDOWN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRBSCNTRESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRBSCNTRESET1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLKPWRDNB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXBUFRESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXBUFRESET1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCDRRESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCDRRESET1'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'RXCHBONDI0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'RXCHBONDI1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCOMMADETUSE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCOMMADETUSE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDATAWIDTH0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDATAWIDTH1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC8B10BUSE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC8B10BUSE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXELECIDLERESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXELECIDLERESET1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENCHANSYNC0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENCHANSYNC1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENELECIDLERESETB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENEQB0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENEQB1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENMCOMMAALIGN0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENMCOMMAALIGN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENPCOMMAALIGN0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENPCOMMAALIGN1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXENPRBSTST0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXENPRBSTST1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENSAMPLEALIGN0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENSAMPLEALIGN1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXEQMIX0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXEQMIX1'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'RXEQPOLE0'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'RXEQPOLE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXN0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXP0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXP1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPMASETPHASE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPMASETPHASE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPOLARITY0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPOLARITY1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXPOWERDOWN0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXPOWERDOWN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXRESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXRESET1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSLIDE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSLIDE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK20'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK21'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXBUFDIFFCTRL0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXBUFDIFFCTRL1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXBYPASS8B10B0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXBYPASS8B10B1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXCHARDISPMODE0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXCHARDISPMODE1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXCHARDISPVAL0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXCHARDISPVAL1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXCHARISK0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXCHARISK1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCOMSTART0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCOMSTART1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCOMTYPE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCOMTYPE1'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'TXDATA0'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'TXDATA1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXDATAWIDTH0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXDATAWIDTH1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXDETECTRX0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXDETECTRX1'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXDIFFCTRL0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXDIFFCTRL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXELECIDLE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXELECIDLE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC8B10BUSE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC8B10BUSE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENPMAPHASEALIGN'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXENPRBSTST0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXENPRBSTST1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXINHIBIT0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXINHIBIT1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPMASETPHASE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPOLARITY0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPOLARITY1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXPOWERDOWN0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXPOWERDOWN1'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXPREEMPHASIS0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXPREEMPHASIS1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXRESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXRESET1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK20'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK21'},
			[CompLib, generics, "GTP_DUAL"]]

	return(signals)

def GTX_DUAL(AC_CAP_DIS_0, AC_CAP_DIS_1, ALIGN_COMMA_WORD_0,
			ALIGN_COMMA_WORD_1, CB2_INH_CC_PERIOD_0, CB2_INH_CC_PERIOD_1,
			CHAN_BOND_1_MAX_SKEW_0, CHAN_BOND_1_MAX_SKEW_1, CHAN_BOND_2_MAX_SKEW_0,
			CHAN_BOND_2_MAX_SKEW_1, CHAN_BOND_KEEP_ALIGN_0, CHAN_BOND_KEEP_ALIGN_1,
			CHAN_BOND_LEVEL_0, CHAN_BOND_LEVEL_1, CHAN_BOND_MODE_0,
			CHAN_BOND_MODE_1, CHAN_BOND_SEQ_2_USE_0, CHAN_BOND_SEQ_2_USE_1,
			CHAN_BOND_SEQ_LEN_0, CHAN_BOND_SEQ_LEN_1, CLK25_DIVIDER,
			CLKINDC_B, CLKRCV_TRST, CLK_CORRECT_USE_0,
			CLK_CORRECT_USE_1, CLK_COR_ADJ_LEN_0, CLK_COR_ADJ_LEN_1,
			CLK_COR_DET_LEN_0, CLK_COR_DET_LEN_1, CLK_COR_INSERT_IDLE_FLAG_0,
			CLK_COR_INSERT_IDLE_FLAG_1, CLK_COR_KEEP_IDLE_0, CLK_COR_KEEP_IDLE_1,
			CLK_COR_MAX_LAT_0, CLK_COR_MAX_LAT_1, CLK_COR_MIN_LAT_0,
			CLK_COR_MIN_LAT_1, CLK_COR_PRECEDENCE_0, CLK_COR_PRECEDENCE_1,
			CLK_COR_REPEAT_WAIT_0, CLK_COR_REPEAT_WAIT_1, CLK_COR_SEQ_2_USE_0,
			CLK_COR_SEQ_2_USE_1, COMMA_DOUBLE_0, COMMA_DOUBLE_1,
			DEC_MCOMMA_DETECT_0, DEC_MCOMMA_DETECT_1, DEC_PCOMMA_DETECT_0,
			DEC_PCOMMA_DETECT_1, DEC_VALID_COMMA_ONLY_0, DEC_VALID_COMMA_ONLY_1,
			MCOMMA_DETECT_0, MCOMMA_DETECT_1, OOB_CLK_DIVIDER,
			OVERSAMPLE_MODE, PCI_EXPRESS_MODE_0, PCI_EXPRESS_MODE_1,
			PCOMMA_DETECT_0, PCOMMA_DETECT_1, PLL_DIVSEL_FB,
			PLL_DIVSEL_REF, PLL_FB_DCCEN, PLL_RXDIVSEL_OUT_0,
			PLL_RXDIVSEL_OUT_1, PLL_SATA_0, PLL_SATA_1,
			PLL_TXDIVSEL_OUT_0, PLL_TXDIVSEL_OUT_1, RCV_TERM_GND_0,
			RCV_TERM_GND_1, RCV_TERM_VTTRX_0, RCV_TERM_VTTRX_1,
			RXGEARBOX_USE_0, RXGEARBOX_USE_1, RX_BUFFER_USE_0,
			RX_BUFFER_USE_1, RX_DECODE_SEQ_MATCH_0, RX_DECODE_SEQ_MATCH_1,
			RX_EN_IDLE_HOLD_CDR, RX_EN_IDLE_HOLD_DFE_0, RX_EN_IDLE_HOLD_DFE_1,
			RX_EN_IDLE_RESET_BUF_0, RX_EN_IDLE_RESET_BUF_1, RX_EN_IDLE_RESET_FR,
			RX_EN_IDLE_RESET_PH, RX_LOSS_OF_SYNC_FSM_0, RX_LOSS_OF_SYNC_FSM_1,
			RX_LOS_INVALID_INCR_0, RX_LOS_INVALID_INCR_1, RX_LOS_THRESHOLD_0,
			RX_LOS_THRESHOLD_1, RX_SLIDE_MODE_0, RX_SLIDE_MODE_1,
			RX_STATUS_FMT_0, RX_STATUS_FMT_1, RX_XCLK_SEL_0,
			RX_XCLK_SEL_1, SATA_MAX_BURST_0, SATA_MAX_BURST_1,
			SATA_MAX_INIT_0, SATA_MAX_INIT_1, SATA_MAX_WAKE_0,
			SATA_MAX_WAKE_1, SATA_MIN_BURST_0, SATA_MIN_BURST_1,
			SATA_MIN_INIT_0, SATA_MIN_INIT_1, SATA_MIN_WAKE_0,
			SATA_MIN_WAKE_1, SIM_GTXRESET_SPEEDUP, SIM_MODE,
			SIM_RECEIVER_DETECT_PASS_0, SIM_RECEIVER_DETECT_PASS_1, TERMINATION_IMP_0,
			TERMINATION_IMP_1, TERMINATION_OVRD, TXGEARBOX_USE_0,
			TXGEARBOX_USE_1, TX_BUFFER_USE_0, TX_BUFFER_USE_1,
			TX_XCLK_SEL_0, TX_XCLK_SEL_1):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'AC_CAP_DIS_0'},
			{'T': 'b', 'N': 'AC_CAP_DIS_1'},
			{'T': 'i', 'N': 'ALIGN_COMMA_WORD_0'},
			{'T': 'i', 'N': 'ALIGN_COMMA_WORD_1'},
			{'T': 'i', 'N': 'CB2_INH_CC_PERIOD_0'},
			{'T': 'i', 'N': 'CB2_INH_CC_PERIOD_1'},
			{'T': 'i', 'N': 'CHAN_BOND_1_MAX_SKEW_0'},
			{'T': 'i', 'N': 'CHAN_BOND_1_MAX_SKEW_1'},
			{'T': 'i', 'N': 'CHAN_BOND_2_MAX_SKEW_0'},
			{'T': 'i', 'N': 'CHAN_BOND_2_MAX_SKEW_1'},
			{'T': 'b', 'N': 'CHAN_BOND_KEEP_ALIGN_0'},
			{'T': 'b', 'N': 'CHAN_BOND_KEEP_ALIGN_1'},
			{'T': 'i', 'N': 'CHAN_BOND_LEVEL_0'},
			{'T': 'i', 'N': 'CHAN_BOND_LEVEL_1'},
			{'T': 's', 'N': 'CHAN_BOND_MODE_0'},
			{'T': 's', 'N': 'CHAN_BOND_MODE_1'},
			{'T': 'b', 'N': 'CHAN_BOND_SEQ_2_USE_0'},
			{'T': 'b', 'N': 'CHAN_BOND_SEQ_2_USE_1'},
			{'T': 'i', 'N': 'CHAN_BOND_SEQ_LEN_0'},
			{'T': 'i', 'N': 'CHAN_BOND_SEQ_LEN_1'},
			{'T': 'i', 'N': 'CLK25_DIVIDER'},
			{'T': 'b', 'N': 'CLKINDC_B'},
			{'T': 'b', 'N': 'CLKRCV_TRST'},
			{'T': 'b', 'N': 'CLK_CORRECT_USE_0'},
			{'T': 'b', 'N': 'CLK_CORRECT_USE_1'},
			{'T': 'i', 'N': 'CLK_COR_ADJ_LEN_0'},
			{'T': 'i', 'N': 'CLK_COR_ADJ_LEN_1'},
			{'T': 'i', 'N': 'CLK_COR_DET_LEN_0'},
			{'T': 'i', 'N': 'CLK_COR_DET_LEN_1'},
			{'T': 'b', 'N': 'CLK_COR_INSERT_IDLE_FLAG_0'},
			{'T': 'b', 'N': 'CLK_COR_INSERT_IDLE_FLAG_1'},
			{'T': 'b', 'N': 'CLK_COR_KEEP_IDLE_0'},
			{'T': 'b', 'N': 'CLK_COR_KEEP_IDLE_1'},
			{'T': 'i', 'N': 'CLK_COR_MAX_LAT_0'},
			{'T': 'i', 'N': 'CLK_COR_MAX_LAT_1'},
			{'T': 'i', 'N': 'CLK_COR_MIN_LAT_0'},
			{'T': 'i', 'N': 'CLK_COR_MIN_LAT_1'},
			{'T': 'b', 'N': 'CLK_COR_PRECEDENCE_0'},
			{'T': 'b', 'N': 'CLK_COR_PRECEDENCE_1'},
			{'T': 'i', 'N': 'CLK_COR_REPEAT_WAIT_0'},
			{'T': 'i', 'N': 'CLK_COR_REPEAT_WAIT_1'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_2_USE_0'},
			{'T': 'b', 'N': 'CLK_COR_SEQ_2_USE_1'},
			{'T': 'b', 'N': 'COMMA_DOUBLE_0'},
			{'T': 'b', 'N': 'COMMA_DOUBLE_1'},
			{'T': 'b', 'N': 'DEC_MCOMMA_DETECT_0'},
			{'T': 'b', 'N': 'DEC_MCOMMA_DETECT_1'},
			{'T': 'b', 'N': 'DEC_PCOMMA_DETECT_0'},
			{'T': 'b', 'N': 'DEC_PCOMMA_DETECT_1'},
			{'T': 'b', 'N': 'DEC_VALID_COMMA_ONLY_0'},
			{'T': 'b', 'N': 'DEC_VALID_COMMA_ONLY_1'},
			{'T': 'b', 'N': 'MCOMMA_DETECT_0'},
			{'T': 'b', 'N': 'MCOMMA_DETECT_1'},
			{'T': 'i', 'N': 'OOB_CLK_DIVIDER'},
			{'T': 'b', 'N': 'OVERSAMPLE_MODE'},
			{'T': 'b', 'N': 'PCI_EXPRESS_MODE_0'},
			{'T': 'b', 'N': 'PCI_EXPRESS_MODE_1'},
			{'T': 'b', 'N': 'PCOMMA_DETECT_0'},
			{'T': 'b', 'N': 'PCOMMA_DETECT_1'},
			{'T': 'i', 'N': 'PLL_DIVSEL_FB'},
			{'T': 'i', 'N': 'PLL_DIVSEL_REF'},
			{'T': 'b', 'N': 'PLL_FB_DCCEN'},
			{'T': 'i', 'N': 'PLL_RXDIVSEL_OUT_0'},
			{'T': 'i', 'N': 'PLL_RXDIVSEL_OUT_1'},
			{'T': 'b', 'N': 'PLL_SATA_0'},
			{'T': 'b', 'N': 'PLL_SATA_1'},
			{'T': 'i', 'N': 'PLL_TXDIVSEL_OUT_0'},
			{'T': 'i', 'N': 'PLL_TXDIVSEL_OUT_1'},
			{'T': 'b', 'N': 'RCV_TERM_GND_0'},
			{'T': 'b', 'N': 'RCV_TERM_GND_1'},
			{'T': 'b', 'N': 'RCV_TERM_VTTRX_0'},
			{'T': 'b', 'N': 'RCV_TERM_VTTRX_1'},
			{'T': 'b', 'N': 'RXGEARBOX_USE_0'},
			{'T': 'b', 'N': 'RXGEARBOX_USE_1'},
			{'T': 'b', 'N': 'RX_BUFFER_USE_0'},
			{'T': 'b', 'N': 'RX_BUFFER_USE_1'},
			{'T': 'b', 'N': 'RX_DECODE_SEQ_MATCH_0'},
			{'T': 'b', 'N': 'RX_DECODE_SEQ_MATCH_1'},
			{'T': 'b', 'N': 'RX_EN_IDLE_HOLD_CDR'},
			{'T': 'b', 'N': 'RX_EN_IDLE_HOLD_DFE_0'},
			{'T': 'b', 'N': 'RX_EN_IDLE_HOLD_DFE_1'},
			{'T': 'b', 'N': 'RX_EN_IDLE_RESET_BUF_0'},
			{'T': 'b', 'N': 'RX_EN_IDLE_RESET_BUF_1'},
			{'T': 'b', 'N': 'RX_EN_IDLE_RESET_FR'},
			{'T': 'b', 'N': 'RX_EN_IDLE_RESET_PH'},
			{'T': 'b', 'N': 'RX_LOSS_OF_SYNC_FSM_0'},
			{'T': 'b', 'N': 'RX_LOSS_OF_SYNC_FSM_1'},
			{'T': 'i', 'N': 'RX_LOS_INVALID_INCR_0'},
			{'T': 'i', 'N': 'RX_LOS_INVALID_INCR_1'},
			{'T': 'i', 'N': 'RX_LOS_THRESHOLD_0'},
			{'T': 'i', 'N': 'RX_LOS_THRESHOLD_1'},
			{'T': 's', 'N': 'RX_SLIDE_MODE_0'},
			{'T': 's', 'N': 'RX_SLIDE_MODE_1'},
			{'T': 's', 'N': 'RX_STATUS_FMT_0'},
			{'T': 's', 'N': 'RX_STATUS_FMT_1'},
			{'T': 's', 'N': 'RX_XCLK_SEL_0'},
			{'T': 's', 'N': 'RX_XCLK_SEL_1'},
			{'T': 'i', 'N': 'SATA_MAX_BURST_0'},
			{'T': 'i', 'N': 'SATA_MAX_BURST_1'},
			{'T': 'i', 'N': 'SATA_MAX_INIT_0'},
			{'T': 'i', 'N': 'SATA_MAX_INIT_1'},
			{'T': 'i', 'N': 'SATA_MAX_WAKE_0'},
			{'T': 'i', 'N': 'SATA_MAX_WAKE_1'},
			{'T': 'i', 'N': 'SATA_MIN_BURST_0'},
			{'T': 'i', 'N': 'SATA_MIN_BURST_1'},
			{'T': 'i', 'N': 'SATA_MIN_INIT_0'},
			{'T': 'i', 'N': 'SATA_MIN_INIT_1'},
			{'T': 'i', 'N': 'SATA_MIN_WAKE_0'},
			{'T': 'i', 'N': 'SATA_MIN_WAKE_1'},
			{'T': 'i', 'N': 'SIM_GTXRESET_SPEEDUP'},
			{'T': 's', 'N': 'SIM_MODE'},
			{'T': 'b', 'N': 'SIM_RECEIVER_DETECT_PASS_0'},
			{'T': 'b', 'N': 'SIM_RECEIVER_DETECT_PASS_1'},
			{'T': 'i', 'N': 'TERMINATION_IMP_0'},
			{'T': 'i', 'N': 'TERMINATION_IMP_1'},
			{'T': 'b', 'N': 'TERMINATION_OVRD'},
			{'T': 'b', 'N': 'TXGEARBOX_USE_0'},
			{'T': 'b', 'N': 'TXGEARBOX_USE_1'},
			{'T': 'b', 'N': 'TX_BUFFER_USE_0'},
			{'T': 'b', 'N': 'TX_BUFFER_USE_1'},
			{'T': 's', 'N': 'TX_XCLK_SEL_0'},
			{'T': 's', 'N': 'TX_XCLK_SEL_1'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [5, 0], 'N': 'DFECLKDLYADJMONITOR0'},
			{'D': 'o', 'T': 'b', 'L': [5, 0], 'N': 'DFECLKDLYADJMONITOR1'},
			{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'DFEEYEDACMONITOR0'},
			{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'DFEEYEDACMONITOR1'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'DFESENSCAL0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'DFESENSCAL1'},
			{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'DFETAP1MONITOR0'},
			{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'DFETAP1MONITOR1'},
			{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'DFETAP2MONITOR0'},
			{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'DFETAP2MONITOR1'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DFETAP3MONITOR0'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DFETAP3MONITOR1'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DFETAP4MONITOR0'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DFETAP4MONITOR1'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRDY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PHYSTATUS0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PHYSTATUS1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PLLLKDET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'REFCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RESETDONE0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RESETDONE1'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXBUFSTATUS0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXBUFSTATUS1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBYTEISALIGNED0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBYTEISALIGNED1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBYTEREALIGN0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXBYTEREALIGN1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANBONDSEQ0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANBONDSEQ1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANISALIGNED0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANISALIGNED1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANREALIGN0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCHANREALIGN1'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXCHARISCOMMA0'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXCHARISCOMMA1'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXCHARISK0'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXCHARISK1'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXCHBONDO0'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXCHBONDO1'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXCLKCORCNT0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXCLKCORCNT1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCOMMADET0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXCOMMADET1'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'RXDATA0'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'RXDATA1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXDATAVALID0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXDATAVALID1'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXDISPERR0'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXDISPERR1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXELECIDLE0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXELECIDLE1'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXHEADER0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXHEADER1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXHEADERVALID0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXHEADERVALID1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXLOSSOFSYNC0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'RXLOSSOFSYNC1'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXNOTINTABLE0'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXNOTINTABLE1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXOVERSAMPLEERR0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXOVERSAMPLEERR1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXPRBSERR0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXPRBSERR1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXRECCLK1'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXRUNDISP0'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'RXRUNDISP1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXSTARTOFSEQ0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXSTARTOFSEQ1'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXSTATUS0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'RXSTATUS1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXVALID0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RXVALID1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'TXBUFSTATUS0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'TXBUFSTATUS1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXGEARBOXREADY0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXGEARBOXREADY1'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'TXKERR0'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'TXKERR1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXN0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXN1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXOUTCLK1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXP0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TXP1'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'TXRUNDISP0'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'TXRUNDISP1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'DADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DEN'},
			{'D': 'i', 'T': 'b', 'L': [5, 0], 'N': 'DFECLKDLYADJ0'},
			{'D': 'i', 'T': 'b', 'L': [5, 0], 'N': 'DFECLKDLYADJ1'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'DFETAP10'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'DFETAP11'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'DFETAP20'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'DFETAP21'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DFETAP30'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DFETAP31'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DFETAP40'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DFETAP41'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DWE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTXRESET'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'GTXTEST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'INTDATAWIDTH'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'LOOPBACK0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'LOOPBACK1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLLLKDETEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLLPOWERDOWN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRBSCNTRESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRBSCNTRESET1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLKPWRDNB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXBUFRESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXBUFRESET1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCDRRESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCDRRESET1'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'RXCHBONDI0'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'RXCHBONDI1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCOMMADETUSE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXCOMMADETUSE1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXDATAWIDTH0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXDATAWIDTH1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC8B10BUSE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXDEC8B10BUSE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENCHANSYNC0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENCHANSYNC1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENEQB0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENEQB1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENMCOMMAALIGN0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENMCOMMAALIGN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENPCOMMAALIGN0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENPCOMMAALIGN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENPMAPHASEALIGN0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENPMAPHASEALIGN1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXENPRBSTST0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXENPRBSTST1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENSAMPLEALIGN0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXENSAMPLEALIGN1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXEQMIX0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXEQMIX1'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'RXEQPOLE0'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'RXEQPOLE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXGEARBOXSLIP0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXGEARBOXSLIP1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXN0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXP0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXP1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPMASETPHASE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPMASETPHASE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPOLARITY0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXPOLARITY1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXPOWERDOWN0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'RXPOWERDOWN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXRESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXRESET1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSLIDE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXSLIDE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK20'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RXUSRCLK21'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXBUFDIFFCTRL0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXBUFDIFFCTRL1'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'TXBYPASS8B10B0'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'TXBYPASS8B10B1'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'TXCHARDISPMODE0'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'TXCHARDISPMODE1'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'TXCHARDISPVAL0'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'TXCHARDISPVAL1'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'TXCHARISK0'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'TXCHARISK1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCOMSTART0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCOMSTART1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCOMTYPE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXCOMTYPE1'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'TXDATA0'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'TXDATA1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXDATAWIDTH0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXDATAWIDTH1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXDETECTRX0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXDETECTRX1'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXDIFFCTRL0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXDIFFCTRL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXELECIDLE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXELECIDLE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC8B10BUSE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENC8B10BUSE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENPMAPHASEALIGN0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXENPMAPHASEALIGN1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXENPRBSTST0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXENPRBSTST1'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXHEADER0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'TXHEADER1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXINHIBIT0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXINHIBIT1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPMASETPHASE0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPMASETPHASE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPOLARITY0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXPOLARITY1'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXPOWERDOWN0'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'TXPOWERDOWN1'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'TXPREEMPHASIS0'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'TXPREEMPHASIS1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXRESET0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXRESET1'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'TXSEQUENCE0'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'TXSEQUENCE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXSTARTSEQ0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXSTARTSEQ1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK20'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TXUSRCLK21'},
			[CompLib, generics, "GTX_DUAL"]]

	return(signals)

def IBUF(CAPACITANCE, IBUF_DELAY_VALUE, IFD_DELAY_VALUE,
			IOSTANDARD):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'CAPACITANCE'},
			{'T': 's', 'N': 'IBUF_DELAY_VALUE'},
			{'T': 's', 'N': 'IFD_DELAY_VALUE'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF"]]

	return(signals)

def IBUFDS(CAPACITANCE, DIFF_TERM, IBUF_DELAY_VALUE,
			IFD_DELAY_VALUE, IOSTANDARD):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'CAPACITANCE'},
			{'T': 'b', 'N': 'DIFF_TERM'},
			{'T': 's', 'N': 'IBUF_DELAY_VALUE'},
			{'T': 's', 'N': 'IFD_DELAY_VALUE'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS"]]

	return(signals)

def IBUFDS_BLVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_BLVDS_25"]]

	return(signals)

def IBUFDS_DIFF_OUT(DIFF_TERM, IOSTANDARD):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'DIFF_TERM'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_DIFF_OUT"]]

	return(signals)

def IBUFDS_DLY_ADJ(DELAY_OFFSET, DIFF_TERM, IOSTANDARD,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'DELAY_OFFSET'},
			{'T': 'b', 'N': 'DIFF_TERM'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'S'},
			[CompLib, generics, "IBUFDS_DLY_ADJ"]]

	return(signals)

def IBUFDS_LDT_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LDT_25"]]

	return(signals)

def IBUFDS_LVDSEXT_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LVDSEXT_25"]]

	return(signals)

def IBUFDS_LVDSEXT_25_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LVDSEXT_25_DCI"]]

	return(signals)

def IBUFDS_LVDSEXT_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LVDSEXT_33"]]

	return(signals)

def IBUFDS_LVDSEXT_33_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LVDSEXT_33_DCI"]]

	return(signals)

def IBUFDS_LVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LVDS_25"]]

	return(signals)

def IBUFDS_LVDS_25_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LVDS_25_DCI"]]

	return(signals)

def IBUFDS_LVDS_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LVDS_33"]]

	return(signals)

def IBUFDS_LVDS_33_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LVDS_33_DCI"]]

	return(signals)

def IBUFDS_LVPECL_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LVPECL_25"]]

	return(signals)

def IBUFDS_LVPECL_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_LVPECL_33"]]

	return(signals)

def IBUFDS_ULVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFDS_ULVDS_25"]]

	return(signals)

def IBUFG(CAPACITANCE, IBUF_DELAY_VALUE, IOSTANDARD,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'CAPACITANCE'},
			{'T': 's', 'N': 'IBUF_DELAY_VALUE'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG"]]

	return(signals)

def IBUFGDS(CAPACITANCE, DIFF_TERM, IBUF_DELAY_VALUE,
			IOSTANDARD):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'CAPACITANCE'},
			{'T': 'b', 'N': 'DIFF_TERM'},
			{'T': 's', 'N': 'IBUF_DELAY_VALUE'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS"]]

	return(signals)

def IBUFGDS_BLVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_BLVDS_25"]]

	return(signals)

def IBUFGDS_DIFF_OUT(DIFF_TERM, IOSTANDARD):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'DIFF_TERM'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_DIFF_OUT"]]

	return(signals)

def IBUFGDS_LDT_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LDT_25"]]

	return(signals)

def IBUFGDS_LVDSEXT_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LVDSEXT_25"]]

	return(signals)

def IBUFGDS_LVDSEXT_25_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LVDSEXT_25_DCI"]]

	return(signals)

def IBUFGDS_LVDSEXT_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LVDSEXT_33"]]

	return(signals)

def IBUFGDS_LVDSEXT_33_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LVDSEXT_33_DCI"]]

	return(signals)

def IBUFGDS_LVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LVDS_25"]]

	return(signals)

def IBUFGDS_LVDS_25_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LVDS_25_DCI"]]

	return(signals)

def IBUFGDS_LVDS_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LVDS_33"]]

	return(signals)

def IBUFGDS_LVDS_33_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LVDS_33_DCI"]]

	return(signals)

def IBUFGDS_LVPECL_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LVPECL_25"]]

	return(signals)

def IBUFGDS_LVPECL_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_LVPECL_33"]]

	return(signals)

def IBUFGDS_ULVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IB'},
			[CompLib, generics, "IBUFGDS_ULVDS_25"]]

	return(signals)

def IBUFG_AGP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_AGP"]]

	return(signals)

def IBUFG_CTT():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_CTT"]]

	return(signals)

def IBUFG_GTL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_GTL"]]

	return(signals)

def IBUFG_GTLP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_GTLP"]]

	return(signals)

def IBUFG_GTLP_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_GTLP_DCI"]]

	return(signals)

def IBUFG_GTL_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_GTL_DCI"]]

	return(signals)

def IBUFG_HSTL_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_I"]]

	return(signals)

def IBUFG_HSTL_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_II"]]

	return(signals)

def IBUFG_HSTL_III():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_III"]]

	return(signals)

def IBUFG_HSTL_III_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_III_18"]]

	return(signals)

def IBUFG_HSTL_III_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_III_DCI"]]

	return(signals)

def IBUFG_HSTL_III_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_III_DCI_18"]]

	return(signals)

def IBUFG_HSTL_II_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_II_18"]]

	return(signals)

def IBUFG_HSTL_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_II_DCI"]]

	return(signals)

def IBUFG_HSTL_II_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_II_DCI_18"]]

	return(signals)

def IBUFG_HSTL_IV():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_IV"]]

	return(signals)

def IBUFG_HSTL_IV_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_IV_18"]]

	return(signals)

def IBUFG_HSTL_IV_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_IV_DCI"]]

	return(signals)

def IBUFG_HSTL_IV_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_IV_DCI_18"]]

	return(signals)

def IBUFG_HSTL_I_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_I_18"]]

	return(signals)

def IBUFG_HSTL_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_I_DCI"]]

	return(signals)

def IBUFG_HSTL_I_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_HSTL_I_DCI_18"]]

	return(signals)

def IBUFG_LVCMOS12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVCMOS12"]]

	return(signals)

def IBUFG_LVCMOS15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVCMOS15"]]

	return(signals)

def IBUFG_LVCMOS18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVCMOS18"]]

	return(signals)

def IBUFG_LVCMOS2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVCMOS2"]]

	return(signals)

def IBUFG_LVCMOS25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVCMOS25"]]

	return(signals)

def IBUFG_LVCMOS33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVCMOS33"]]

	return(signals)

def IBUFG_LVDCI_15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVDCI_15"]]

	return(signals)

def IBUFG_LVDCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVDCI_18"]]

	return(signals)

def IBUFG_LVDCI_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVDCI_25"]]

	return(signals)

def IBUFG_LVDCI_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVDCI_33"]]

	return(signals)

def IBUFG_LVDCI_DV2_15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVDCI_DV2_15"]]

	return(signals)

def IBUFG_LVDCI_DV2_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVDCI_DV2_18"]]

	return(signals)

def IBUFG_LVDCI_DV2_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVDCI_DV2_25"]]

	return(signals)

def IBUFG_LVDCI_DV2_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVDCI_DV2_33"]]

	return(signals)

def IBUFG_LVDS():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVDS"]]

	return(signals)

def IBUFG_LVPECL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVPECL"]]

	return(signals)

def IBUFG_LVTTL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_LVTTL"]]

	return(signals)

def IBUFG_PCI33_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_PCI33_3"]]

	return(signals)

def IBUFG_PCI33_5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_PCI33_5"]]

	return(signals)

def IBUFG_PCI66_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_PCI66_3"]]

	return(signals)

def IBUFG_PCIX():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_PCIX"]]

	return(signals)

def IBUFG_PCIX66_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_PCIX66_3"]]

	return(signals)

def IBUFG_SSTL18_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL18_I"]]

	return(signals)

def IBUFG_SSTL18_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL18_II"]]

	return(signals)

def IBUFG_SSTL18_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL18_II_DCI"]]

	return(signals)

def IBUFG_SSTL18_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL18_I_DCI"]]

	return(signals)

def IBUFG_SSTL2_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL2_I"]]

	return(signals)

def IBUFG_SSTL2_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL2_II"]]

	return(signals)

def IBUFG_SSTL2_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL2_II_DCI"]]

	return(signals)

def IBUFG_SSTL2_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL2_I_DCI"]]

	return(signals)

def IBUFG_SSTL3_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL3_I"]]

	return(signals)

def IBUFG_SSTL3_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL3_II"]]

	return(signals)

def IBUFG_SSTL3_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL3_II_DCI"]]

	return(signals)

def IBUFG_SSTL3_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUFG_SSTL3_I_DCI"]]

	return(signals)

def IBUF_AGP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_AGP"]]

	return(signals)

def IBUF_CTT():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_CTT"]]

	return(signals)

def IBUF_DLY_ADJ(DELAY_OFFSET, IOSTANDARD):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'DELAY_OFFSET'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'S'},
			[CompLib, generics, "IBUF_DLY_ADJ"]]

	return(signals)

def IBUF_GTL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_GTL"]]

	return(signals)

def IBUF_GTLP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_GTLP"]]

	return(signals)

def IBUF_GTLP_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_GTLP_DCI"]]

	return(signals)

def IBUF_GTL_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_GTL_DCI"]]

	return(signals)

def IBUF_HSTL_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_I"]]

	return(signals)

def IBUF_HSTL_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_II"]]

	return(signals)

def IBUF_HSTL_III():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_III"]]

	return(signals)

def IBUF_HSTL_III_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_III_18"]]

	return(signals)

def IBUF_HSTL_III_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_III_DCI"]]

	return(signals)

def IBUF_HSTL_III_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_III_DCI_18"]]

	return(signals)

def IBUF_HSTL_II_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_II_18"]]

	return(signals)

def IBUF_HSTL_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_II_DCI"]]

	return(signals)

def IBUF_HSTL_II_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_II_DCI_18"]]

	return(signals)

def IBUF_HSTL_IV():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_IV"]]

	return(signals)

def IBUF_HSTL_IV_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_IV_18"]]

	return(signals)

def IBUF_HSTL_IV_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_IV_DCI"]]

	return(signals)

def IBUF_HSTL_IV_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_IV_DCI_18"]]

	return(signals)

def IBUF_HSTL_I_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_I_18"]]

	return(signals)

def IBUF_HSTL_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_I_DCI"]]

	return(signals)

def IBUF_HSTL_I_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_HSTL_I_DCI_18"]]

	return(signals)

def IBUF_LVCMOS12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVCMOS12"]]

	return(signals)

def IBUF_LVCMOS15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVCMOS15"]]

	return(signals)

def IBUF_LVCMOS18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVCMOS18"]]

	return(signals)

def IBUF_LVCMOS2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVCMOS2"]]

	return(signals)

def IBUF_LVCMOS25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVCMOS25"]]

	return(signals)

def IBUF_LVCMOS33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVCMOS33"]]

	return(signals)

def IBUF_LVDCI_15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVDCI_15"]]

	return(signals)

def IBUF_LVDCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVDCI_18"]]

	return(signals)

def IBUF_LVDCI_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVDCI_25"]]

	return(signals)

def IBUF_LVDCI_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVDCI_33"]]

	return(signals)

def IBUF_LVDCI_DV2_15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVDCI_DV2_15"]]

	return(signals)

def IBUF_LVDCI_DV2_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVDCI_DV2_18"]]

	return(signals)

def IBUF_LVDCI_DV2_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVDCI_DV2_25"]]

	return(signals)

def IBUF_LVDCI_DV2_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVDCI_DV2_33"]]

	return(signals)

def IBUF_LVDS():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVDS"]]

	return(signals)

def IBUF_LVPECL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVPECL"]]

	return(signals)

def IBUF_LVTTL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_LVTTL"]]

	return(signals)

def IBUF_PCI33_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_PCI33_3"]]

	return(signals)

def IBUF_PCI33_5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_PCI33_5"]]

	return(signals)

def IBUF_PCI66_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_PCI66_3"]]

	return(signals)

def IBUF_PCIX():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_PCIX"]]

	return(signals)

def IBUF_PCIX66_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_PCIX66_3"]]

	return(signals)

def IBUF_SSTL18_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL18_I"]]

	return(signals)

def IBUF_SSTL18_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL18_II"]]

	return(signals)

def IBUF_SSTL18_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL18_II_DCI"]]

	return(signals)

def IBUF_SSTL18_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL18_I_DCI"]]

	return(signals)

def IBUF_SSTL2_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL2_I"]]

	return(signals)

def IBUF_SSTL2_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL2_II"]]

	return(signals)

def IBUF_SSTL2_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL2_II_DCI"]]

	return(signals)

def IBUF_SSTL2_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL2_I_DCI"]]

	return(signals)

def IBUF_SSTL3_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL3_I"]]

	return(signals)

def IBUF_SSTL3_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL3_II"]]

	return(signals)

def IBUF_SSTL3_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL3_II_DCI"]]

	return(signals)

def IBUF_SSTL3_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IBUF_SSTL3_I_DCI"]]

	return(signals)

def ICAP_SPARTAN3A():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'BUSY'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRITE'},
			[CompLib, generics, "ICAP_SPARTAN3A"]]

	return(signals)

def ICAP_VIRTEX4(ICAP_WIDTH):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'ICAP_WIDTH'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'BUSY'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRITE'},
			[CompLib, generics, "ICAP_VIRTEX4"]]

	return(signals)

def ICAP_VIRTEX5(ICAP_WIDTH):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'ICAP_WIDTH'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'BUSY'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRITE'},
			[CompLib, generics, "ICAP_VIRTEX5"]]

	return(signals)

def IDDR(DDR_CLK_EDGE, SRTYPE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'DDR_CLK_EDGE'},
			{'T': 's', 'N': 'SRTYPE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "IDDR"]]

	return(signals)

def IDDR2(DDR_ALIGNMENT, SRTYPE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'DDR_ALIGNMENT'},
			{'T': 's', 'N': 'SRTYPE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "IDDR2"]]

	return(signals)

def IDDR_2CLK(DDR_CLK_EDGE, SRTYPE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'DDR_CLK_EDGE'},
			{'T': 's', 'N': 'SRTYPE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "IDDR_2CLK"]]

	return(signals)

def IDELAY(IOBDELAY_TYPE, IOBDELAY_VALUE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'IOBDELAY_TYPE'},
			{'T': 'i', 'N': 'IOBDELAY_VALUE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'INC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "IDELAY"]]

	return(signals)

def IDELAYCTRL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RDY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REFCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "IDELAYCTRL"]]

	return(signals)

def IFDDRCPE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "IFDDRCPE"]]

	return(signals)

def IFDDRRSE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "IFDDRRSE"]]

	return(signals)

def ILD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			[CompLib, generics, "ILD"]]

	return(signals)

def INV():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "INV"]]

	return(signals)

def IOBUF(CAPACITANCE, DRIVE, IBUF_DELAY_VALUE,
			IFD_DELAY_VALUE, IOSTANDARD, SLEW,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'CAPACITANCE'},
			{'T': 'i', 'N': 'DRIVE'},
			{'T': 's', 'N': 'IBUF_DELAY_VALUE'},
			{'T': 's', 'N': 'IFD_DELAY_VALUE'},
			{'T': 's', 'N': 'IOSTANDARD'},
			{'T': 's', 'N': 'SLEW'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF"]]

	return(signals)

def IOBUFDS(CAPACITANCE, IBUF_DELAY_VALUE, IFD_DELAY_VALUE,
			IOSTANDARD):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'CAPACITANCE'},
			{'T': 's', 'N': 'IBUF_DELAY_VALUE'},
			{'T': 's', 'N': 'IFD_DELAY_VALUE'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IOB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUFDS"]]

	return(signals)

def IOBUFDS_BLVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IOB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUFDS_BLVDS_25"]]

	return(signals)

def IOBUFE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'E'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "IOBUFE"]]

	return(signals)

def IOBUF_AGP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_AGP"]]

	return(signals)

def IOBUF_CTT():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_CTT"]]

	return(signals)

def IOBUF_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_F_12"]]

	return(signals)

def IOBUF_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_F_16"]]

	return(signals)

def IOBUF_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_F_2"]]

	return(signals)

def IOBUF_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_F_24"]]

	return(signals)

def IOBUF_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_F_4"]]

	return(signals)

def IOBUF_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_F_6"]]

	return(signals)

def IOBUF_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_F_8"]]

	return(signals)

def IOBUF_GTL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_GTL"]]

	return(signals)

def IOBUF_GTLP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_GTLP"]]

	return(signals)

def IOBUF_GTLP_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_GTLP_DCI"]]

	return(signals)

def IOBUF_GTL_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_GTL_DCI"]]

	return(signals)

def IOBUF_HSTL_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_I"]]

	return(signals)

def IOBUF_HSTL_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_II"]]

	return(signals)

def IOBUF_HSTL_III():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_III"]]

	return(signals)

def IOBUF_HSTL_III_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_III_18"]]

	return(signals)

def IOBUF_HSTL_II_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_II_18"]]

	return(signals)

def IOBUF_HSTL_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_II_DCI"]]

	return(signals)

def IOBUF_HSTL_II_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_II_DCI_18"]]

	return(signals)

def IOBUF_HSTL_IV():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_IV"]]

	return(signals)

def IOBUF_HSTL_IV_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_IV_18"]]

	return(signals)

def IOBUF_HSTL_IV_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_IV_DCI"]]

	return(signals)

def IOBUF_HSTL_IV_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_IV_DCI_18"]]

	return(signals)

def IOBUF_HSTL_I_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_HSTL_I_18"]]

	return(signals)

def IOBUF_LVCMOS12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS12"]]

	return(signals)

def IOBUF_LVCMOS12_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS12_F_2"]]

	return(signals)

def IOBUF_LVCMOS12_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS12_F_4"]]

	return(signals)

def IOBUF_LVCMOS12_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS12_F_6"]]

	return(signals)

def IOBUF_LVCMOS12_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS12_F_8"]]

	return(signals)

def IOBUF_LVCMOS12_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS12_S_2"]]

	return(signals)

def IOBUF_LVCMOS12_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS12_S_4"]]

	return(signals)

def IOBUF_LVCMOS12_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS12_S_6"]]

	return(signals)

def IOBUF_LVCMOS12_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS12_S_8"]]

	return(signals)

def IOBUF_LVCMOS15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15"]]

	return(signals)

def IOBUF_LVCMOS15_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_F_12"]]

	return(signals)

def IOBUF_LVCMOS15_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_F_16"]]

	return(signals)

def IOBUF_LVCMOS15_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_F_2"]]

	return(signals)

def IOBUF_LVCMOS15_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_F_4"]]

	return(signals)

def IOBUF_LVCMOS15_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_F_6"]]

	return(signals)

def IOBUF_LVCMOS15_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_F_8"]]

	return(signals)

def IOBUF_LVCMOS15_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_S_12"]]

	return(signals)

def IOBUF_LVCMOS15_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_S_16"]]

	return(signals)

def IOBUF_LVCMOS15_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_S_2"]]

	return(signals)

def IOBUF_LVCMOS15_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_S_4"]]

	return(signals)

def IOBUF_LVCMOS15_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_S_6"]]

	return(signals)

def IOBUF_LVCMOS15_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS15_S_8"]]

	return(signals)

def IOBUF_LVCMOS18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18"]]

	return(signals)

def IOBUF_LVCMOS18_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_F_12"]]

	return(signals)

def IOBUF_LVCMOS18_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_F_16"]]

	return(signals)

def IOBUF_LVCMOS18_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_F_2"]]

	return(signals)

def IOBUF_LVCMOS18_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_F_4"]]

	return(signals)

def IOBUF_LVCMOS18_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_F_6"]]

	return(signals)

def IOBUF_LVCMOS18_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_F_8"]]

	return(signals)

def IOBUF_LVCMOS18_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_S_12"]]

	return(signals)

def IOBUF_LVCMOS18_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_S_16"]]

	return(signals)

def IOBUF_LVCMOS18_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_S_2"]]

	return(signals)

def IOBUF_LVCMOS18_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_S_4"]]

	return(signals)

def IOBUF_LVCMOS18_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_S_6"]]

	return(signals)

def IOBUF_LVCMOS18_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS18_S_8"]]

	return(signals)

def IOBUF_LVCMOS2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS2"]]

	return(signals)

def IOBUF_LVCMOS25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25"]]

	return(signals)

def IOBUF_LVCMOS25_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_F_12"]]

	return(signals)

def IOBUF_LVCMOS25_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_F_16"]]

	return(signals)

def IOBUF_LVCMOS25_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_F_2"]]

	return(signals)

def IOBUF_LVCMOS25_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_F_24"]]

	return(signals)

def IOBUF_LVCMOS25_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_F_4"]]

	return(signals)

def IOBUF_LVCMOS25_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_F_6"]]

	return(signals)

def IOBUF_LVCMOS25_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_F_8"]]

	return(signals)

def IOBUF_LVCMOS25_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_S_12"]]

	return(signals)

def IOBUF_LVCMOS25_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_S_16"]]

	return(signals)

def IOBUF_LVCMOS25_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_S_2"]]

	return(signals)

def IOBUF_LVCMOS25_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_S_24"]]

	return(signals)

def IOBUF_LVCMOS25_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_S_4"]]

	return(signals)

def IOBUF_LVCMOS25_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_S_6"]]

	return(signals)

def IOBUF_LVCMOS25_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS25_S_8"]]

	return(signals)

def IOBUF_LVCMOS33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33"]]

	return(signals)

def IOBUF_LVCMOS33_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_F_12"]]

	return(signals)

def IOBUF_LVCMOS33_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_F_16"]]

	return(signals)

def IOBUF_LVCMOS33_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_F_2"]]

	return(signals)

def IOBUF_LVCMOS33_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_F_24"]]

	return(signals)

def IOBUF_LVCMOS33_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_F_4"]]

	return(signals)

def IOBUF_LVCMOS33_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_F_6"]]

	return(signals)

def IOBUF_LVCMOS33_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_F_8"]]

	return(signals)

def IOBUF_LVCMOS33_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_S_12"]]

	return(signals)

def IOBUF_LVCMOS33_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_S_16"]]

	return(signals)

def IOBUF_LVCMOS33_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_S_2"]]

	return(signals)

def IOBUF_LVCMOS33_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_S_24"]]

	return(signals)

def IOBUF_LVCMOS33_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_S_4"]]

	return(signals)

def IOBUF_LVCMOS33_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_S_6"]]

	return(signals)

def IOBUF_LVCMOS33_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVCMOS33_S_8"]]

	return(signals)

def IOBUF_LVDCI_15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVDCI_15"]]

	return(signals)

def IOBUF_LVDCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVDCI_18"]]

	return(signals)

def IOBUF_LVDCI_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVDCI_25"]]

	return(signals)

def IOBUF_LVDCI_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVDCI_33"]]

	return(signals)

def IOBUF_LVDCI_DV2_15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVDCI_DV2_15"]]

	return(signals)

def IOBUF_LVDCI_DV2_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVDCI_DV2_18"]]

	return(signals)

def IOBUF_LVDCI_DV2_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVDCI_DV2_25"]]

	return(signals)

def IOBUF_LVDCI_DV2_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVDCI_DV2_33"]]

	return(signals)

def IOBUF_LVDS():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVDS"]]

	return(signals)

def IOBUF_LVPECL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVPECL"]]

	return(signals)

def IOBUF_LVTTL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL"]]

	return(signals)

def IOBUF_LVTTL_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_F_12"]]

	return(signals)

def IOBUF_LVTTL_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_F_16"]]

	return(signals)

def IOBUF_LVTTL_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_F_2"]]

	return(signals)

def IOBUF_LVTTL_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_F_24"]]

	return(signals)

def IOBUF_LVTTL_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_F_4"]]

	return(signals)

def IOBUF_LVTTL_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_F_6"]]

	return(signals)

def IOBUF_LVTTL_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_F_8"]]

	return(signals)

def IOBUF_LVTTL_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_S_12"]]

	return(signals)

def IOBUF_LVTTL_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_S_16"]]

	return(signals)

def IOBUF_LVTTL_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_S_2"]]

	return(signals)

def IOBUF_LVTTL_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_S_24"]]

	return(signals)

def IOBUF_LVTTL_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_S_4"]]

	return(signals)

def IOBUF_LVTTL_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_S_6"]]

	return(signals)

def IOBUF_LVTTL_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_LVTTL_S_8"]]

	return(signals)

def IOBUF_PCI33_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_PCI33_3"]]

	return(signals)

def IOBUF_PCI33_5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_PCI33_5"]]

	return(signals)

def IOBUF_PCI66_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_PCI66_3"]]

	return(signals)

def IOBUF_PCIX():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_PCIX"]]

	return(signals)

def IOBUF_PCIX66_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_PCIX66_3"]]

	return(signals)

def IOBUF_SSTL18_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_SSTL18_I"]]

	return(signals)

def IOBUF_SSTL18_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_SSTL18_II"]]

	return(signals)

def IOBUF_SSTL18_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_SSTL18_II_DCI"]]

	return(signals)

def IOBUF_SSTL2_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_SSTL2_I"]]

	return(signals)

def IOBUF_SSTL2_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_SSTL2_II"]]

	return(signals)

def IOBUF_SSTL2_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_SSTL2_II_DCI"]]

	return(signals)

def IOBUF_SSTL3_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_SSTL3_I"]]

	return(signals)

def IOBUF_SSTL3_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_SSTL3_II"]]

	return(signals)

def IOBUF_SSTL3_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_SSTL3_II_DCI"]]

	return(signals)

def IOBUF_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_S_12"]]

	return(signals)

def IOBUF_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_S_16"]]

	return(signals)

def IOBUF_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_S_2"]]

	return(signals)

def IOBUF_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_S_24"]]

	return(signals)

def IOBUF_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_S_4"]]

	return(signals)

def IOBUF_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_S_6"]]

	return(signals)

def IOBUF_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IOBUF_S_8"]]

	return(signals)

def IODELAY(DELAY_SRC, HIGH_PERFORMANCE_MODE, IDELAY_TYPE,
			IDELAY_VALUE, ODELAY_VALUE, SIGNAL_PATTERN,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'DELAY_SRC'},
			{'T': 'b', 'N': 'HIGH_PERFORMANCE_MODE'},
			{'T': 's', 'N': 'IDELAY_TYPE'},
			{'T': 'i', 'N': 'IDELAY_VALUE'},
			{'T': 'i', 'N': 'ODELAY_VALUE'},
			{'T': 's', 'N': 'SIGNAL_PATTERN'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DATAOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DATAIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'IDATAIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'INC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ODATAIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "IODELAY"]]

	return(signals)

def ISERDES(BITSLIP_ENABLE, DATA_RATE, DATA_WIDTH,
			INTERFACE_TYPE, IOBDELAY, IOBDELAY_TYPE,
			IOBDELAY_VALUE, NUM_CE, SERDES_MODE,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'BITSLIP_ENABLE'},
			{'T': 's', 'N': 'DATA_RATE'},
			{'T': 'i', 'N': 'DATA_WIDTH'},
			{'T': 's', 'N': 'INTERFACE_TYPE'},
			{'T': 's', 'N': 'IOBDELAY'},
			{'T': 's', 'N': 'IOBDELAY_TYPE'},
			{'T': 'i', 'N': 'IOBDELAY_VALUE'},
			{'T': 'i', 'N': 'NUM_CE'},
			{'T': 's', 'N': 'SERDES_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFTOUT1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFTOUT2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'BITSLIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKDIV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DLYCE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DLYINC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DLYRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'OCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SHIFTIN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SHIFTIN2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SR'},
			[CompLib, generics, "ISERDES"]]

	return(signals)

def ISERDES_NODELAY(BITSLIP_ENABLE, DATA_RATE, DATA_WIDTH,
			INTERFACE_TYPE, NUM_CE, SERDES_MODE,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'BITSLIP_ENABLE'},
			{'T': 's', 'N': 'DATA_RATE'},
			{'T': 'i', 'N': 'DATA_WIDTH'},
			{'T': 's', 'N': 'INTERFACE_TYPE'},
			{'T': 'i', 'N': 'NUM_CE'},
			{'T': 's', 'N': 'SERDES_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFTOUT1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFTOUT2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'BITSLIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKDIV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'OCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SHIFTIN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SHIFTIN2'},
			[CompLib, generics, "ISERDES_NODELAY"]]

	return(signals)

def JTAGPPC():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TCK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TDIPPC'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TMS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDOPPC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDOTSPPC'},
			[CompLib, generics, "JTAGPPC"]]

	return(signals)

def JTAGPPC440():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TCK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TDIPPC'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TMS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDOPPC'},
			[CompLib, generics, "JTAGPPC440"]]

	return(signals)

def JTAG_SIM_SPARTAN3A(PART_NAME):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'PART_NAME'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TDO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TCK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TMS'},
			[CompLib, generics, "JTAG_SIM_SPARTAN3A"]]

	return(signals)

def JTAG_SIM_VIRTEX4(PART_NAME):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'PART_NAME'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TDO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TCK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TMS'},
			[CompLib, generics, "JTAG_SIM_VIRTEX4"]]

	return(signals)

def JTAG_SIM_VIRTEX5(PART_NAME):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'PART_NAME'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TDO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TCK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TDI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TMS'},
			[CompLib, generics, "JTAG_SIM_VIRTEX5"]]

	return(signals)

def KEEP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "KEEP"]]

	return(signals)

def KEEPER():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			[CompLib, generics, "KEEPER"]]

	return(signals)

def KEY_CLEAR():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'KEYCLEARB'},
			[CompLib, generics, "KEY_CLEAR"]]

	return(signals)

def LD():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			[CompLib, generics, "LD"]]

	return(signals)

def LDC():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			[CompLib, generics, "LDC"]]

	return(signals)

def LDCE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GE'},
			[CompLib, generics, "LDCE"]]

	return(signals)

def LDCE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GE'},
			[CompLib, generics, "LDCE_1"]]

	return(signals)

def LDCP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "LDCP"]]

	return(signals)

def LDCPE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "LDCPE"]]

	return(signals)

def LDCPE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "LDCPE_1"]]

	return(signals)

def LDCP_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "LDCP_1"]]

	return(signals)

def LDC_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			[CompLib, generics, "LDC_1"]]

	return(signals)

def LDE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GE'},
			[CompLib, generics, "LDE"]]

	return(signals)

def LDE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GE'},
			[CompLib, generics, "LDE_1"]]

	return(signals)

def LDG():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'G'},
			[CompLib, generics, "LDG"]]

	return(signals)

def LDP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "LDP"]]

	return(signals)

def LDPE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "LDPE"]]

	return(signals)

def LDPE_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "LDPE_1"]]

	return(signals)

def LDP_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "LDP_1"]]

	return(signals)

def LD_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'G'},
			[CompLib, generics, "LD_1"]]

	return(signals)

def LUT1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			[CompLib, generics, "LUT1"]]

	return(signals)

def LUT1_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			[CompLib, generics, "LUT1_D"]]

	return(signals)

def LUT1_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			[CompLib, generics, "LUT1_L"]]

	return(signals)

def LUT2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "LUT2"]]

	return(signals)

def LUT2_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "LUT2_D"]]

	return(signals)

def LUT2_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "LUT2_L"]]

	return(signals)

def LUT3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "LUT3"]]

	return(signals)

def LUT3_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "LUT3_D"]]

	return(signals)

def LUT3_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "LUT3_L"]]

	return(signals)

def LUT4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "LUT4"]]

	return(signals)

def LUT4_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "LUT4_D"]]

	return(signals)

def LUT4_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "LUT4_L"]]

	return(signals)

def LUT5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "LUT5"]]

	return(signals)

def LUT5_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "LUT5_D"]]

	return(signals)

def LUT5_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "LUT5_L"]]

	return(signals)

def LUT6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I5'},
			[CompLib, generics, "LUT6"]]

	return(signals)

def LUT6_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I5'},
			[CompLib, generics, "LUT6_2"]]

	return(signals)

def LUT6_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I5'},
			[CompLib, generics, "LUT6_D"]]

	return(signals)

def LUT6_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I5'},
			[CompLib, generics, "LUT6_L"]]

	return(signals)

def MERGE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "MERGE"]]

	return(signals)

def MIN_OFF():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "MIN_OFF"]]

	return(signals)

def MULT18X18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [35, 0], 'N': 'P'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'A'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'B'},
			[CompLib, generics, "MULT18X18"]]

	return(signals)

def MULT18X18S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [35, 0], 'N': 'P'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'A'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'B'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			[CompLib, generics, "MULT18X18S"]]

	return(signals)

def MULT18X18SIO(AREG, BREG, B_INPUT,
			PREG):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'AREG'},
			{'T': 'i', 'N': 'BREG'},
			{'T': 's', 'N': 'B_INPUT'},
			{'T': 'i', 'N': 'PREG'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [17, 0], 'N': 'BCOUT'},
			{'D': 'o', 'T': 'b', 'L': [35, 0], 'N': 'P'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'A'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'B'},
			{'D': 'i', 'T': 'b', 'L': [17, 0], 'N': 'BCIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CEP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTP'},
			[CompLib, generics, "MULT18X18SIO"]]

	return(signals)

def MULT_AND():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "MULT_AND"]]

	return(signals)

def MUXCY():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXCY"]]

	return(signals)

def MUXCY_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXCY_D"]]

	return(signals)

def MUXCY_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXCY_L"]]

	return(signals)

def MUXF5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF5"]]

	return(signals)

def MUXF5_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF5_D"]]

	return(signals)

def MUXF5_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF5_L"]]

	return(signals)

def MUXF6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF6"]]

	return(signals)

def MUXF6_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF6_D"]]

	return(signals)

def MUXF6_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF6_L"]]

	return(signals)

def MUXF7():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF7"]]

	return(signals)

def MUXF7_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF7_D"]]

	return(signals)

def MUXF7_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF7_L"]]

	return(signals)

def MUXF8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF8"]]

	return(signals)

def MUXF8_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF8_D"]]

	return(signals)

def MUXF8_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "MUXF8_L"]]

	return(signals)

def NAND2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "NAND2"]]

	return(signals)

def NAND2B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "NAND2B1"]]

	return(signals)

def NAND2B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "NAND2B2"]]

	return(signals)

def NAND3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "NAND3"]]

	return(signals)

def NAND3B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "NAND3B1"]]

	return(signals)

def NAND3B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "NAND3B2"]]

	return(signals)

def NAND3B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "NAND3B3"]]

	return(signals)

def NAND4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "NAND4"]]

	return(signals)

def NAND4B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "NAND4B1"]]

	return(signals)

def NAND4B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "NAND4B2"]]

	return(signals)

def NAND4B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "NAND4B3"]]

	return(signals)

def NAND4B4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "NAND4B4"]]

	return(signals)

def NAND5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NAND5"]]

	return(signals)

def NAND5B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NAND5B1"]]

	return(signals)

def NAND5B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NAND5B2"]]

	return(signals)

def NAND5B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NAND5B3"]]

	return(signals)

def NAND5B4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NAND5B4"]]

	return(signals)

def NAND5B5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NAND5B5"]]

	return(signals)

def NOR2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "NOR2"]]

	return(signals)

def NOR2B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "NOR2B1"]]

	return(signals)

def NOR2B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "NOR2B2"]]

	return(signals)

def NOR3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "NOR3"]]

	return(signals)

def NOR3B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "NOR3B1"]]

	return(signals)

def NOR3B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "NOR3B2"]]

	return(signals)

def NOR3B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "NOR3B3"]]

	return(signals)

def NOR4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "NOR4"]]

	return(signals)

def NOR4B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "NOR4B1"]]

	return(signals)

def NOR4B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "NOR4B2"]]

	return(signals)

def NOR4B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "NOR4B3"]]

	return(signals)

def NOR4B4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "NOR4B4"]]

	return(signals)

def NOR5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NOR5"]]

	return(signals)

def NOR5B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NOR5B1"]]

	return(signals)

def NOR5B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NOR5B2"]]

	return(signals)

def NOR5B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NOR5B3"]]

	return(signals)

def NOR5B4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NOR5B4"]]

	return(signals)

def NOR5B5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "NOR5B5"]]

	return(signals)

def OBUF(CAPACITANCE, DRIVE, IOSTANDARD,
			SLEW):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'CAPACITANCE'},
			{'T': 'i', 'N': 'DRIVE'},
			{'T': 's', 'N': 'IOSTANDARD'},
			{'T': 's', 'N': 'SLEW'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF"]]

	return(signals)

def OBUFDS(CAPACITANCE, IOSTANDARD):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'CAPACITANCE'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFDS"]]

	return(signals)

def OBUFDS_BLVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFDS_BLVDS_25"]]

	return(signals)

def OBUFDS_LDT_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFDS_LDT_25"]]

	return(signals)

def OBUFDS_LVDSEXT_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFDS_LVDSEXT_25"]]

	return(signals)

def OBUFDS_LVDSEXT_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFDS_LVDSEXT_33"]]

	return(signals)

def OBUFDS_LVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFDS_LVDS_25"]]

	return(signals)

def OBUFDS_LVDS_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFDS_LVDS_33"]]

	return(signals)

def OBUFDS_LVPECL_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFDS_LVPECL_25"]]

	return(signals)

def OBUFDS_LVPECL_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFDS_LVPECL_33"]]

	return(signals)

def OBUFDS_ULVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFDS_ULVDS_25"]]

	return(signals)

def OBUFE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'E'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUFE"]]

	return(signals)

def OBUFT(CAPACITANCE, DRIVE, IOSTANDARD,
			SLEW):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'CAPACITANCE'},
			{'T': 'i', 'N': 'DRIVE'},
			{'T': 's', 'N': 'IOSTANDARD'},
			{'T': 's', 'N': 'SLEW'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT"]]

	return(signals)

def OBUFTDS(CAPACITANCE, IOSTANDARD):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'CAPACITANCE'},
			{'T': 's', 'N': 'IOSTANDARD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFTDS"]]

	return(signals)

def OBUFTDS_BLVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFTDS_BLVDS_25"]]

	return(signals)

def OBUFTDS_LDT_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFTDS_LDT_25"]]

	return(signals)

def OBUFTDS_LVDSEXT_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFTDS_LVDSEXT_25"]]

	return(signals)

def OBUFTDS_LVDSEXT_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFTDS_LVDSEXT_33"]]

	return(signals)

def OBUFTDS_LVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFTDS_LVDS_25"]]

	return(signals)

def OBUFTDS_LVDS_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFTDS_LVDS_33"]]

	return(signals)

def OBUFTDS_LVPECL_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFTDS_LVPECL_25"]]

	return(signals)

def OBUFTDS_LVPECL_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFTDS_LVPECL_33"]]

	return(signals)

def OBUFTDS_ULVDS_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFTDS_ULVDS_25"]]

	return(signals)

def OBUFT_AGP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_AGP"]]

	return(signals)

def OBUFT_CTT():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_CTT"]]

	return(signals)

def OBUFT_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_F_12"]]

	return(signals)

def OBUFT_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_F_16"]]

	return(signals)

def OBUFT_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_F_2"]]

	return(signals)

def OBUFT_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_F_24"]]

	return(signals)

def OBUFT_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_F_4"]]

	return(signals)

def OBUFT_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_F_6"]]

	return(signals)

def OBUFT_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_F_8"]]

	return(signals)

def OBUFT_GTL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_GTL"]]

	return(signals)

def OBUFT_GTLP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_GTLP"]]

	return(signals)

def OBUFT_GTLP_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_GTLP_DCI"]]

	return(signals)

def OBUFT_GTL_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_GTL_DCI"]]

	return(signals)

def OBUFT_HSTL_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_I"]]

	return(signals)

def OBUFT_HSTL_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_II"]]

	return(signals)

def OBUFT_HSTL_III():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_III"]]

	return(signals)

def OBUFT_HSTL_III_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_III_18"]]

	return(signals)

def OBUFT_HSTL_III_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_III_DCI"]]

	return(signals)

def OBUFT_HSTL_III_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_III_DCI_18"]]

	return(signals)

def OBUFT_HSTL_II_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_II_18"]]

	return(signals)

def OBUFT_HSTL_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_II_DCI"]]

	return(signals)

def OBUFT_HSTL_II_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_II_DCI_18"]]

	return(signals)

def OBUFT_HSTL_IV():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_IV"]]

	return(signals)

def OBUFT_HSTL_IV_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_IV_18"]]

	return(signals)

def OBUFT_HSTL_IV_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_IV_DCI"]]

	return(signals)

def OBUFT_HSTL_IV_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_IV_DCI_18"]]

	return(signals)

def OBUFT_HSTL_I_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_I_18"]]

	return(signals)

def OBUFT_HSTL_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_I_DCI"]]

	return(signals)

def OBUFT_HSTL_I_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_HSTL_I_DCI_18"]]

	return(signals)

def OBUFT_LVCMOS12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS12"]]

	return(signals)

def OBUFT_LVCMOS12_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS12_F_2"]]

	return(signals)

def OBUFT_LVCMOS12_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS12_F_4"]]

	return(signals)

def OBUFT_LVCMOS12_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS12_F_6"]]

	return(signals)

def OBUFT_LVCMOS12_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS12_F_8"]]

	return(signals)

def OBUFT_LVCMOS12_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS12_S_2"]]

	return(signals)

def OBUFT_LVCMOS12_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS12_S_4"]]

	return(signals)

def OBUFT_LVCMOS12_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS12_S_6"]]

	return(signals)

def OBUFT_LVCMOS12_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS12_S_8"]]

	return(signals)

def OBUFT_LVCMOS15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15"]]

	return(signals)

def OBUFT_LVCMOS15_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_F_12"]]

	return(signals)

def OBUFT_LVCMOS15_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_F_16"]]

	return(signals)

def OBUFT_LVCMOS15_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_F_2"]]

	return(signals)

def OBUFT_LVCMOS15_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_F_4"]]

	return(signals)

def OBUFT_LVCMOS15_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_F_6"]]

	return(signals)

def OBUFT_LVCMOS15_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_F_8"]]

	return(signals)

def OBUFT_LVCMOS15_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_S_12"]]

	return(signals)

def OBUFT_LVCMOS15_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_S_16"]]

	return(signals)

def OBUFT_LVCMOS15_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_S_2"]]

	return(signals)

def OBUFT_LVCMOS15_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_S_4"]]

	return(signals)

def OBUFT_LVCMOS15_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_S_6"]]

	return(signals)

def OBUFT_LVCMOS15_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS15_S_8"]]

	return(signals)

def OBUFT_LVCMOS18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18"]]

	return(signals)

def OBUFT_LVCMOS18_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_F_12"]]

	return(signals)

def OBUFT_LVCMOS18_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_F_16"]]

	return(signals)

def OBUFT_LVCMOS18_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_F_2"]]

	return(signals)

def OBUFT_LVCMOS18_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_F_4"]]

	return(signals)

def OBUFT_LVCMOS18_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_F_6"]]

	return(signals)

def OBUFT_LVCMOS18_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_F_8"]]

	return(signals)

def OBUFT_LVCMOS18_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_S_12"]]

	return(signals)

def OBUFT_LVCMOS18_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_S_16"]]

	return(signals)

def OBUFT_LVCMOS18_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_S_2"]]

	return(signals)

def OBUFT_LVCMOS18_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_S_4"]]

	return(signals)

def OBUFT_LVCMOS18_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_S_6"]]

	return(signals)

def OBUFT_LVCMOS18_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS18_S_8"]]

	return(signals)

def OBUFT_LVCMOS2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS2"]]

	return(signals)

def OBUFT_LVCMOS25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25"]]

	return(signals)

def OBUFT_LVCMOS25_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_F_12"]]

	return(signals)

def OBUFT_LVCMOS25_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_F_16"]]

	return(signals)

def OBUFT_LVCMOS25_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_F_2"]]

	return(signals)

def OBUFT_LVCMOS25_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_F_24"]]

	return(signals)

def OBUFT_LVCMOS25_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_F_4"]]

	return(signals)

def OBUFT_LVCMOS25_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_F_6"]]

	return(signals)

def OBUFT_LVCMOS25_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_F_8"]]

	return(signals)

def OBUFT_LVCMOS25_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_S_12"]]

	return(signals)

def OBUFT_LVCMOS25_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_S_16"]]

	return(signals)

def OBUFT_LVCMOS25_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_S_2"]]

	return(signals)

def OBUFT_LVCMOS25_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_S_24"]]

	return(signals)

def OBUFT_LVCMOS25_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_S_4"]]

	return(signals)

def OBUFT_LVCMOS25_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_S_6"]]

	return(signals)

def OBUFT_LVCMOS25_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS25_S_8"]]

	return(signals)

def OBUFT_LVCMOS33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33"]]

	return(signals)

def OBUFT_LVCMOS33_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_F_12"]]

	return(signals)

def OBUFT_LVCMOS33_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_F_16"]]

	return(signals)

def OBUFT_LVCMOS33_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_F_2"]]

	return(signals)

def OBUFT_LVCMOS33_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_F_24"]]

	return(signals)

def OBUFT_LVCMOS33_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_F_4"]]

	return(signals)

def OBUFT_LVCMOS33_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_F_6"]]

	return(signals)

def OBUFT_LVCMOS33_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_F_8"]]

	return(signals)

def OBUFT_LVCMOS33_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_S_12"]]

	return(signals)

def OBUFT_LVCMOS33_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_S_16"]]

	return(signals)

def OBUFT_LVCMOS33_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_S_2"]]

	return(signals)

def OBUFT_LVCMOS33_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_S_24"]]

	return(signals)

def OBUFT_LVCMOS33_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_S_4"]]

	return(signals)

def OBUFT_LVCMOS33_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_S_6"]]

	return(signals)

def OBUFT_LVCMOS33_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVCMOS33_S_8"]]

	return(signals)

def OBUFT_LVDCI_15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVDCI_15"]]

	return(signals)

def OBUFT_LVDCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVDCI_18"]]

	return(signals)

def OBUFT_LVDCI_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVDCI_25"]]

	return(signals)

def OBUFT_LVDCI_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVDCI_33"]]

	return(signals)

def OBUFT_LVDCI_DV2_15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVDCI_DV2_15"]]

	return(signals)

def OBUFT_LVDCI_DV2_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVDCI_DV2_18"]]

	return(signals)

def OBUFT_LVDCI_DV2_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVDCI_DV2_25"]]

	return(signals)

def OBUFT_LVDCI_DV2_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVDCI_DV2_33"]]

	return(signals)

def OBUFT_LVDS():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVDS"]]

	return(signals)

def OBUFT_LVPECL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVPECL"]]

	return(signals)

def OBUFT_LVTTL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL"]]

	return(signals)

def OBUFT_LVTTL_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_F_12"]]

	return(signals)

def OBUFT_LVTTL_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_F_16"]]

	return(signals)

def OBUFT_LVTTL_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_F_2"]]

	return(signals)

def OBUFT_LVTTL_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_F_24"]]

	return(signals)

def OBUFT_LVTTL_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_F_4"]]

	return(signals)

def OBUFT_LVTTL_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_F_6"]]

	return(signals)

def OBUFT_LVTTL_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_F_8"]]

	return(signals)

def OBUFT_LVTTL_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_S_12"]]

	return(signals)

def OBUFT_LVTTL_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_S_16"]]

	return(signals)

def OBUFT_LVTTL_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_S_2"]]

	return(signals)

def OBUFT_LVTTL_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_S_24"]]

	return(signals)

def OBUFT_LVTTL_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_S_4"]]

	return(signals)

def OBUFT_LVTTL_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_S_6"]]

	return(signals)

def OBUFT_LVTTL_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_LVTTL_S_8"]]

	return(signals)

def OBUFT_PCI33_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_PCI33_3"]]

	return(signals)

def OBUFT_PCI33_5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_PCI33_5"]]

	return(signals)

def OBUFT_PCI66_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_PCI66_3"]]

	return(signals)

def OBUFT_PCIX():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_PCIX"]]

	return(signals)

def OBUFT_PCIX66_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_PCIX66_3"]]

	return(signals)

def OBUFT_SSTL18_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL18_I"]]

	return(signals)

def OBUFT_SSTL18_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL18_II"]]

	return(signals)

def OBUFT_SSTL18_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL18_II_DCI"]]

	return(signals)

def OBUFT_SSTL18_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL18_I_DCI"]]

	return(signals)

def OBUFT_SSTL2_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL2_I"]]

	return(signals)

def OBUFT_SSTL2_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL2_II"]]

	return(signals)

def OBUFT_SSTL2_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL2_II_DCI"]]

	return(signals)

def OBUFT_SSTL2_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL2_I_DCI"]]

	return(signals)

def OBUFT_SSTL3_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL3_I"]]

	return(signals)

def OBUFT_SSTL3_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL3_II"]]

	return(signals)

def OBUFT_SSTL3_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL3_II_DCI"]]

	return(signals)

def OBUFT_SSTL3_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_SSTL3_I_DCI"]]

	return(signals)

def OBUFT_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_S_12"]]

	return(signals)

def OBUFT_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_S_16"]]

	return(signals)

def OBUFT_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_S_2"]]

	return(signals)

def OBUFT_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_S_24"]]

	return(signals)

def OBUFT_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_S_4"]]

	return(signals)

def OBUFT_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_S_6"]]

	return(signals)

def OBUFT_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OBUFT_S_8"]]

	return(signals)

def OBUF_AGP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_AGP"]]

	return(signals)

def OBUF_CTT():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_CTT"]]

	return(signals)

def OBUF_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_F_12"]]

	return(signals)

def OBUF_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_F_16"]]

	return(signals)

def OBUF_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_F_2"]]

	return(signals)

def OBUF_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_F_24"]]

	return(signals)

def OBUF_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_F_4"]]

	return(signals)

def OBUF_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_F_6"]]

	return(signals)

def OBUF_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_F_8"]]

	return(signals)

def OBUF_GTL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_GTL"]]

	return(signals)

def OBUF_GTLP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_GTLP"]]

	return(signals)

def OBUF_GTLP_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_GTLP_DCI"]]

	return(signals)

def OBUF_GTL_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_GTL_DCI"]]

	return(signals)

def OBUF_HSTL_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_I"]]

	return(signals)

def OBUF_HSTL_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_II"]]

	return(signals)

def OBUF_HSTL_III():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_III"]]

	return(signals)

def OBUF_HSTL_III_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_III_18"]]

	return(signals)

def OBUF_HSTL_III_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_III_DCI"]]

	return(signals)

def OBUF_HSTL_III_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_III_DCI_18"]]

	return(signals)

def OBUF_HSTL_II_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_II_18"]]

	return(signals)

def OBUF_HSTL_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_II_DCI"]]

	return(signals)

def OBUF_HSTL_II_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_II_DCI_18"]]

	return(signals)

def OBUF_HSTL_IV():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_IV"]]

	return(signals)

def OBUF_HSTL_IV_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_IV_18"]]

	return(signals)

def OBUF_HSTL_IV_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_IV_DCI"]]

	return(signals)

def OBUF_HSTL_IV_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_IV_DCI_18"]]

	return(signals)

def OBUF_HSTL_I_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_I_18"]]

	return(signals)

def OBUF_HSTL_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_I_DCI"]]

	return(signals)

def OBUF_HSTL_I_DCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_HSTL_I_DCI_18"]]

	return(signals)

def OBUF_LVCMOS12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS12"]]

	return(signals)

def OBUF_LVCMOS12_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS12_F_2"]]

	return(signals)

def OBUF_LVCMOS12_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS12_F_4"]]

	return(signals)

def OBUF_LVCMOS12_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS12_F_6"]]

	return(signals)

def OBUF_LVCMOS12_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS12_F_8"]]

	return(signals)

def OBUF_LVCMOS12_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS12_S_2"]]

	return(signals)

def OBUF_LVCMOS12_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS12_S_4"]]

	return(signals)

def OBUF_LVCMOS12_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS12_S_6"]]

	return(signals)

def OBUF_LVCMOS12_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS12_S_8"]]

	return(signals)

def OBUF_LVCMOS15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15"]]

	return(signals)

def OBUF_LVCMOS15_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_F_12"]]

	return(signals)

def OBUF_LVCMOS15_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_F_16"]]

	return(signals)

def OBUF_LVCMOS15_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_F_2"]]

	return(signals)

def OBUF_LVCMOS15_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_F_4"]]

	return(signals)

def OBUF_LVCMOS15_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_F_6"]]

	return(signals)

def OBUF_LVCMOS15_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_F_8"]]

	return(signals)

def OBUF_LVCMOS15_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_S_12"]]

	return(signals)

def OBUF_LVCMOS15_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_S_16"]]

	return(signals)

def OBUF_LVCMOS15_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_S_2"]]

	return(signals)

def OBUF_LVCMOS15_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_S_4"]]

	return(signals)

def OBUF_LVCMOS15_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_S_6"]]

	return(signals)

def OBUF_LVCMOS15_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS15_S_8"]]

	return(signals)

def OBUF_LVCMOS18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18"]]

	return(signals)

def OBUF_LVCMOS18_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_F_12"]]

	return(signals)

def OBUF_LVCMOS18_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_F_16"]]

	return(signals)

def OBUF_LVCMOS18_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_F_2"]]

	return(signals)

def OBUF_LVCMOS18_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_F_4"]]

	return(signals)

def OBUF_LVCMOS18_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_F_6"]]

	return(signals)

def OBUF_LVCMOS18_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_F_8"]]

	return(signals)

def OBUF_LVCMOS18_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_S_12"]]

	return(signals)

def OBUF_LVCMOS18_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_S_16"]]

	return(signals)

def OBUF_LVCMOS18_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_S_2"]]

	return(signals)

def OBUF_LVCMOS18_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_S_4"]]

	return(signals)

def OBUF_LVCMOS18_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_S_6"]]

	return(signals)

def OBUF_LVCMOS18_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS18_S_8"]]

	return(signals)

def OBUF_LVCMOS2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS2"]]

	return(signals)

def OBUF_LVCMOS25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25"]]

	return(signals)

def OBUF_LVCMOS25_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_F_12"]]

	return(signals)

def OBUF_LVCMOS25_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_F_16"]]

	return(signals)

def OBUF_LVCMOS25_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_F_2"]]

	return(signals)

def OBUF_LVCMOS25_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_F_24"]]

	return(signals)

def OBUF_LVCMOS25_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_F_4"]]

	return(signals)

def OBUF_LVCMOS25_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_F_6"]]

	return(signals)

def OBUF_LVCMOS25_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_F_8"]]

	return(signals)

def OBUF_LVCMOS25_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_S_12"]]

	return(signals)

def OBUF_LVCMOS25_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_S_16"]]

	return(signals)

def OBUF_LVCMOS25_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_S_2"]]

	return(signals)

def OBUF_LVCMOS25_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_S_24"]]

	return(signals)

def OBUF_LVCMOS25_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_S_4"]]

	return(signals)

def OBUF_LVCMOS25_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_S_6"]]

	return(signals)

def OBUF_LVCMOS25_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS25_S_8"]]

	return(signals)

def OBUF_LVCMOS33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33"]]

	return(signals)

def OBUF_LVCMOS33_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_F_12"]]

	return(signals)

def OBUF_LVCMOS33_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_F_16"]]

	return(signals)

def OBUF_LVCMOS33_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_F_2"]]

	return(signals)

def OBUF_LVCMOS33_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_F_24"]]

	return(signals)

def OBUF_LVCMOS33_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_F_4"]]

	return(signals)

def OBUF_LVCMOS33_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_F_6"]]

	return(signals)

def OBUF_LVCMOS33_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_F_8"]]

	return(signals)

def OBUF_LVCMOS33_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_S_12"]]

	return(signals)

def OBUF_LVCMOS33_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_S_16"]]

	return(signals)

def OBUF_LVCMOS33_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_S_2"]]

	return(signals)

def OBUF_LVCMOS33_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_S_24"]]

	return(signals)

def OBUF_LVCMOS33_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_S_4"]]

	return(signals)

def OBUF_LVCMOS33_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_S_6"]]

	return(signals)

def OBUF_LVCMOS33_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVCMOS33_S_8"]]

	return(signals)

def OBUF_LVDCI_15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVDCI_15"]]

	return(signals)

def OBUF_LVDCI_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVDCI_18"]]

	return(signals)

def OBUF_LVDCI_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVDCI_25"]]

	return(signals)

def OBUF_LVDCI_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVDCI_33"]]

	return(signals)

def OBUF_LVDCI_DV2_15():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVDCI_DV2_15"]]

	return(signals)

def OBUF_LVDCI_DV2_18():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVDCI_DV2_18"]]

	return(signals)

def OBUF_LVDCI_DV2_25():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVDCI_DV2_25"]]

	return(signals)

def OBUF_LVDCI_DV2_33():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVDCI_DV2_33"]]

	return(signals)

def OBUF_LVDS():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVDS"]]

	return(signals)

def OBUF_LVPECL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVPECL"]]

	return(signals)

def OBUF_LVTTL():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL"]]

	return(signals)

def OBUF_LVTTL_F_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_F_12"]]

	return(signals)

def OBUF_LVTTL_F_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_F_16"]]

	return(signals)

def OBUF_LVTTL_F_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_F_2"]]

	return(signals)

def OBUF_LVTTL_F_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_F_24"]]

	return(signals)

def OBUF_LVTTL_F_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_F_4"]]

	return(signals)

def OBUF_LVTTL_F_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_F_6"]]

	return(signals)

def OBUF_LVTTL_F_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_F_8"]]

	return(signals)

def OBUF_LVTTL_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_S_12"]]

	return(signals)

def OBUF_LVTTL_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_S_16"]]

	return(signals)

def OBUF_LVTTL_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_S_2"]]

	return(signals)

def OBUF_LVTTL_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_S_24"]]

	return(signals)

def OBUF_LVTTL_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_S_4"]]

	return(signals)

def OBUF_LVTTL_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_S_6"]]

	return(signals)

def OBUF_LVTTL_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_LVTTL_S_8"]]

	return(signals)

def OBUF_PCI33_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_PCI33_3"]]

	return(signals)

def OBUF_PCI33_5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_PCI33_5"]]

	return(signals)

def OBUF_PCI66_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_PCI66_3"]]

	return(signals)

def OBUF_PCIX():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_PCIX"]]

	return(signals)

def OBUF_PCIX66_3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_PCIX66_3"]]

	return(signals)

def OBUF_SSTL18_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL18_I"]]

	return(signals)

def OBUF_SSTL18_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL18_II"]]

	return(signals)

def OBUF_SSTL18_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL18_II_DCI"]]

	return(signals)

def OBUF_SSTL18_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL18_I_DCI"]]

	return(signals)

def OBUF_SSTL2_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL2_I"]]

	return(signals)

def OBUF_SSTL2_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL2_II"]]

	return(signals)

def OBUF_SSTL2_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL2_II_DCI"]]

	return(signals)

def OBUF_SSTL2_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL2_I_DCI"]]

	return(signals)

def OBUF_SSTL3_I():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL3_I"]]

	return(signals)

def OBUF_SSTL3_II():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL3_II"]]

	return(signals)

def OBUF_SSTL3_II_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL3_II_DCI"]]

	return(signals)

def OBUF_SSTL3_I_DCI():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_SSTL3_I_DCI"]]

	return(signals)

def OBUF_S_12():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_S_12"]]

	return(signals)

def OBUF_S_16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_S_16"]]

	return(signals)

def OBUF_S_2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_S_2"]]

	return(signals)

def OBUF_S_24():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_S_24"]]

	return(signals)

def OBUF_S_4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_S_4"]]

	return(signals)

def OBUF_S_6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_S_6"]]

	return(signals)

def OBUF_S_8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OBUF_S_8"]]

	return(signals)

def ODDR(DDR_CLK_EDGE, SRTYPE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'DDR_CLK_EDGE'},
			{'T': 's', 'N': 'SRTYPE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "ODDR"]]

	return(signals)

def ODDR2(DDR_ALIGNMENT, SRTYPE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'DDR_ALIGNMENT'},
			{'T': 's', 'N': 'SRTYPE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "ODDR2"]]

	return(signals)

def OFDDRCPE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			[CompLib, generics, "OFDDRCPE"]]

	return(signals)

def OFDDRRSE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			[CompLib, generics, "OFDDRRSE"]]

	return(signals)

def OFDDRTCPE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PRE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OFDDRTCPE"]]

	return(signals)

def OFDDRTRSE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'C1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'R'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'S'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T'},
			[CompLib, generics, "OFDDRTRSE"]]

	return(signals)

def OPT_OFF():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OPT_OFF"]]

	return(signals)

def OPT_UIM():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "OPT_UIM"]]

	return(signals)

def OR2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "OR2"]]

	return(signals)

def OR2B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "OR2B1"]]

	return(signals)

def OR2B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "OR2B2"]]

	return(signals)

def OR3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "OR3"]]

	return(signals)

def OR3B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "OR3B1"]]

	return(signals)

def OR3B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "OR3B2"]]

	return(signals)

def OR3B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "OR3B3"]]

	return(signals)

def OR4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "OR4"]]

	return(signals)

def OR4B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "OR4B1"]]

	return(signals)

def OR4B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "OR4B2"]]

	return(signals)

def OR4B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "OR4B3"]]

	return(signals)

def OR4B4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "OR4B4"]]

	return(signals)

def OR5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "OR5"]]

	return(signals)

def OR5B1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "OR5B1"]]

	return(signals)

def OR5B2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "OR5B2"]]

	return(signals)

def OR5B3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "OR5B3"]]

	return(signals)

def OR5B4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "OR5B4"]]

	return(signals)

def OR5B5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "OR5B5"]]

	return(signals)

def OR6():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I5'},
			[CompLib, generics, "OR6"]]

	return(signals)

def OR7():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I6'},
			[CompLib, generics, "OR7"]]

	return(signals)

def OR8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I7'},
			[CompLib, generics, "OR8"]]

	return(signals)

def ORCY():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "ORCY"]]

	return(signals)

def OSERDES(DATA_RATE_OQ, DATA_RATE_TQ, DATA_WIDTH,
			SERDES_MODE, TRISTATE_WIDTH):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'DATA_RATE_OQ'},
			{'T': 's', 'N': 'DATA_RATE_TQ'},
			{'T': 'i', 'N': 'DATA_WIDTH'},
			{'T': 's', 'N': 'SERDES_MODE'},
			{'T': 'i', 'N': 'TRISTATE_WIDTH'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFTOUT1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SHIFTOUT2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKDIV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'OCE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SHIFTIN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SHIFTIN2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'T4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TCE'},
			[CompLib, generics, "OSERDES"]]

	return(signals)

def PCIE_EP(BAR0ADDRWIDTH, BAR0EXIST, BAR0IOMEMN,
			BAR0PREFETCHABLE, BAR1ADDRWIDTH, BAR1EXIST,
			BAR1IOMEMN, BAR1PREFETCHABLE, BAR2ADDRWIDTH,
			BAR2EXIST, BAR2IOMEMN, BAR2PREFETCHABLE,
			BAR3ADDRWIDTH, BAR3EXIST, BAR3IOMEMN,
			BAR3PREFETCHABLE, BAR4ADDRWIDTH, BAR4EXIST,
			BAR4IOMEMN, BAR4PREFETCHABLE, BAR5EXIST,
			BAR5IOMEMN, BAR5PREFETCHABLE, CLKDIVIDED,
			INFINITECOMPLETIONS, L0SEXITLATENCY, L0SEXITLATENCYCOMCLK,
			L1EXITLATENCY, L1EXITLATENCYCOMCLK, LINKSTATUSSLOTCLOCKCONFIG,
			LOWPRIORITYVCCOUNT, PBCAPABILITYSYSTEMALLOCATED, PMCAPABILITYD1SUPPORT,
			PMCAPABILITYD2SUPPORT, PMCAPABILITYDSI, PMDATASCALE0,
			PMDATASCALE1, PMDATASCALE2, PMDATASCALE3,
			PMDATASCALE4, PMDATASCALE5, PMDATASCALE6,
			PMDATASCALE7, RESETMODE, RETRYRAMREADLATENCY,
			RETRYRAMWRITELATENCY, TLRAMREADLATENCY, TLRAMWRITELATENCY,
			TXTSNFTS, TXTSNFTSCOMCLK, XPMAXPAYLOAD,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'BAR0ADDRWIDTH'},
			{'T': 'b', 'N': 'BAR0EXIST'},
			{'T': 'i', 'N': 'BAR0IOMEMN'},
			{'T': 'b', 'N': 'BAR0PREFETCHABLE'},
			{'T': 'i', 'N': 'BAR1ADDRWIDTH'},
			{'T': 'b', 'N': 'BAR1EXIST'},
			{'T': 'i', 'N': 'BAR1IOMEMN'},
			{'T': 'b', 'N': 'BAR1PREFETCHABLE'},
			{'T': 'i', 'N': 'BAR2ADDRWIDTH'},
			{'T': 'b', 'N': 'BAR2EXIST'},
			{'T': 'i', 'N': 'BAR2IOMEMN'},
			{'T': 'b', 'N': 'BAR2PREFETCHABLE'},
			{'T': 'i', 'N': 'BAR3ADDRWIDTH'},
			{'T': 'b', 'N': 'BAR3EXIST'},
			{'T': 'i', 'N': 'BAR3IOMEMN'},
			{'T': 'b', 'N': 'BAR3PREFETCHABLE'},
			{'T': 'i', 'N': 'BAR4ADDRWIDTH'},
			{'T': 'b', 'N': 'BAR4EXIST'},
			{'T': 'i', 'N': 'BAR4IOMEMN'},
			{'T': 'b', 'N': 'BAR4PREFETCHABLE'},
			{'T': 'b', 'N': 'BAR5EXIST'},
			{'T': 'i', 'N': 'BAR5IOMEMN'},
			{'T': 'b', 'N': 'BAR5PREFETCHABLE'},
			{'T': 'b', 'N': 'CLKDIVIDED'},
			{'T': 'b', 'N': 'INFINITECOMPLETIONS'},
			{'T': 'i', 'N': 'L0SEXITLATENCY'},
			{'T': 'i', 'N': 'L0SEXITLATENCYCOMCLK'},
			{'T': 'i', 'N': 'L1EXITLATENCY'},
			{'T': 'i', 'N': 'L1EXITLATENCYCOMCLK'},
			{'T': 'b', 'N': 'LINKSTATUSSLOTCLOCKCONFIG'},
			{'T': 'i', 'N': 'LOWPRIORITYVCCOUNT'},
			{'T': 'b', 'N': 'PBCAPABILITYSYSTEMALLOCATED'},
			{'T': 'b', 'N': 'PMCAPABILITYD1SUPPORT'},
			{'T': 'b', 'N': 'PMCAPABILITYD2SUPPORT'},
			{'T': 'b', 'N': 'PMCAPABILITYDSI'},
			{'T': 'i', 'N': 'PMDATASCALE0'},
			{'T': 'i', 'N': 'PMDATASCALE1'},
			{'T': 'i', 'N': 'PMDATASCALE2'},
			{'T': 'i', 'N': 'PMDATASCALE3'},
			{'T': 'i', 'N': 'PMDATASCALE4'},
			{'T': 'i', 'N': 'PMDATASCALE5'},
			{'T': 'i', 'N': 'PMDATASCALE6'},
			{'T': 'i', 'N': 'PMDATASCALE7'},
			{'T': 'b', 'N': 'RESETMODE'},
			{'T': 'i', 'N': 'RETRYRAMREADLATENCY'},
			{'T': 'i', 'N': 'RETRYRAMWRITELATENCY'},
			{'T': 'i', 'N': 'TLRAMREADLATENCY'},
			{'T': 'i', 'N': 'TLRAMWRITELATENCY'},
			{'T': 'i', 'N': 'TXTSNFTS'},
			{'T': 'i', 'N': 'TXTSNFTSCOMCLK'},
			{'T': 'i', 'N': 'XPMAXPAYLOAD'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'BUSMASTERENABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CRMDOHOTRESETN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CRMPWRSOFTRESETN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DLLTXPMDLLPOUTSTANDING'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'INTERRUPTDISABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IOSPACEENABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0CFGLOOPBACKACK'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'L0COMPLETERID'},
			{'D': 'o', 'T': 'b', 'L': [6, 0], 'N': 'L0DLLERRORVECTOR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0DLLRXACKOUTSTANDING'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0DLLTXNONFCOUTSTANDING'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0DLLTXOUTSTANDING'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'L0DLLVCSTATUS'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'L0DLUPDOWN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0FIRSTCFGWRITEOCCURRED'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'L0LTSSMSTATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACENTEREDL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACLINKTRAINING'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACLINKUP'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'L0MACNEGOTIATEDLINKWIDTH'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACNEWSTATEACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACRXL0SSTATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MSIENABLE0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'L0MULTIMSGEN0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PMEACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PMEEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PMEREQOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PWRL1STATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PWRL23READYSTATE'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'L0PWRSTATE0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PWRTURNOFFREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PWRTXL0SSTATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RXDLLPM'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'L0RXDLLPMTYPE'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'L0RXMACLINKERROR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSCFGOTHERRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSCFGOTHERTRANSMITTED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSCFGRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSCFGTRANSMITTED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSDLLPRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSDLLPTRANSMITTED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSOSRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSOSTRANSMITTED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSTLPRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSTLPTRANSMITTED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0UNLOCKRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKRXCHCOMPLETIONAVAILABLEN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKRXCHNONPOSTEDAVAILABLEN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKRXCHPOSTEDAVAILABLEN'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'LLKRXDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXEOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXEOPN'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'LLKRXPREFERREDTYPE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXSOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXSOPN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXSRCLASTREQN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXSRCRDYN'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'LLKRXVALIDN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKTCSTATUS'},
			{'D': 'o', 'T': 'b', 'L': [9, 0], 'N': 'LLKTXCHANSPACE'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKTXCHCOMPLETIONREADYN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKTXCHNONPOSTEDREADYN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKTXCHPOSTEDREADYN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKTXCONFIGREADYN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKTXDSTRDYN'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'MAXPAYLOADSIZE'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'MAXREADREQUESTSIZE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MEMSPACEENABLE'},
			{'D': 'o', 'T': 'b', 'L': [16, 0], 'N': 'MGMTPSO'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'MGMTRDATA'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'MGMTSTATSCREDIT'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'MIMDLLBRADD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMDLLBREN'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'MIMDLLBWADD'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'MIMDLLBWDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMDLLBWEN'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'MIMRXBRADD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMRXBREN'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'MIMRXBWADD'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'MIMRXBWDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMRXBWEN'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'MIMTXBRADD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMTXBREN'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'MIMTXBWADD'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'MIMTXBWDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMTXBWEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PARITYERRORRESPONSE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL7'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL2'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL3'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL4'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL5'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL6'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL7'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL0'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL1'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL2'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL3'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL4'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL5'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL6'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SERRENABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'URREPORTINGENABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'AUXPOWER'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'COMPLIANCEAVOID'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMCORECLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMCORECLKDLO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMCORECLKRXO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMCORECLKTXO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMLINKRSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMMACRSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMMGMTRSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMNVRSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMURSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMUSERCFGRSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMUSERCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMUSERCLKRXO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMUSERCLKTXO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0CFGDISABLESCRAMBLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0CFGLOOPBACKMASTER'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0LEGACYINTFUNCT0'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'L0MSIREQUEST0'},
			{'D': 'i', 'T': 'b', 'L': [127, 0], 'N': 'L0PACKETHEADERFROMUSER'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0PMEREQIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETCOMPLETERABORTERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETCOMPLETIONTIMEOUTCORRERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETCOMPLETIONTIMEOUTUNCORRERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETDETECTEDCORRERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETDETECTEDFATALERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETDETECTEDNONFATALERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUNEXPECTEDCOMPLETIONCORRERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUNEXPECTEDCOMPLETIONUNCORRERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUNSUPPORTEDREQUESTNONPOSTEDERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUNSUPPORTEDREQUESTOTHERERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERDETECTEDPARITYERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERMASTERDATAPARITY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERRECEIVEDMASTERABORT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERRECEIVEDTARGETABORT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERSIGNALLEDTARGETABORT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERSYSTEMERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TRANSACTIONSPENDING'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'LLKRXCHFIFO'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'LLKRXCHTC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKRXDSTCONTREQN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKRXDSTREQN'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'LLKTXCHFIFO'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'LLKTXCHTC'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'LLKTXDATA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'LLKTXENABLEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXEOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXEOPN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXSOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXSOPN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXSRCDSCN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXSRCRDYN'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'MGMTADDR'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'MGMTBWREN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MGMTRDEN'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'MGMTSTATSCREDITSEL'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'MGMTWDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MGMTWREN'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'MIMDLLBRDATA'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'MIMRXBRDATA'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'MIMTXBRDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL7'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL7'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL7'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL0'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL1'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL2'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL3'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL4'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL5'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL6'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL7'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL7'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL1'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL2'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL3'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL4'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL5'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL6'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL7'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL7'},
			[CompLib, generics, "PCIE_EP"]]

	return(signals)

def PCIE_INTERNAL_1_1(AERCAPABILITYECRCCHECKCAPABLE, AERCAPABILITYECRCGENCAPABLE, BAR0ADDRWIDTH,
			BAR0EXIST, BAR0IOMEMN, BAR0PREFETCHABLE,
			BAR1ADDRWIDTH, BAR1EXIST, BAR1IOMEMN,
			BAR1PREFETCHABLE, BAR2ADDRWIDTH, BAR2EXIST,
			BAR2IOMEMN, BAR2PREFETCHABLE, BAR3ADDRWIDTH,
			BAR3EXIST, BAR3IOMEMN, BAR3PREFETCHABLE,
			BAR4ADDRWIDTH, BAR4EXIST, BAR4IOMEMN,
			BAR4PREFETCHABLE, BAR5EXIST, BAR5IOMEMN,
			BAR5PREFETCHABLE, CLKDIVIDED, DUALCOREENABLE,
			DUALCORESLAVE, DUALROLECFGCNTRLROOTEPN, INFINITECOMPLETIONS,
			ISSWITCH, L0SEXITLATENCY, L0SEXITLATENCYCOMCLK,
			L1EXITLATENCY, L1EXITLATENCYCOMCLK, LINKSTATUSSLOTCLOCKCONFIG,
			LLKBYPASS, LOWPRIORITYVCCOUNT, PBCAPABILITYSYSTEMALLOCATED,
			PCIECAPABILITYSLOTIMPL, PCIEREVISION, PMCAPABILITYD1SUPPORT,
			PMCAPABILITYD2SUPPORT, PMCAPABILITYDSI, PMDATASCALE0,
			PMDATASCALE1, PMDATASCALE2, PMDATASCALE3,
			PMDATASCALE4, PMDATASCALE5, PMDATASCALE6,
			PMDATASCALE7, PMDATASCALE8, RAMSHARETXRX,
			RESETMODE, RETRYRAMREADLATENCY, RETRYRAMWIDTH,
			RETRYRAMWRITELATENCY, RETRYREADADDRPIPE, RETRYREADDATAPIPE,
			RETRYWRITEPIPE, RXREADADDRPIPE, RXREADDATAPIPE,
			RXWRITEPIPE, SELECTASMODE, SELECTDLLIF,
			SLOTCAPABILITYATTBUTTONPRESENT, SLOTCAPABILITYATTINDICATORPRESENT, SLOTCAPABILITYHOTPLUGCAPABLE,
			SLOTCAPABILITYHOTPLUGSURPRISE, SLOTCAPABILITYMSLSENSORPRESENT, SLOTCAPABILITYPOWERCONTROLLERPRESENT,
			SLOTCAPABILITYPOWERINDICATORPRESENT, SLOTIMPLEMENTED, TLRAMREADLATENCY,
			TLRAMWIDTH, TLRAMWRITELATENCY, TXREADADDRPIPE,
			TXREADDATAPIPE, TXTSNFTS, TXTSNFTSCOMCLK,
			TXWRITEPIPE, UPSTREAMFACING, XLINKSUPPORTED,
			XPMAXPAYLOAD, XPRCBCONTROL):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'AERCAPABILITYECRCCHECKCAPABLE'},
			{'T': 'b', 'N': 'AERCAPABILITYECRCGENCAPABLE'},
			{'T': 'i', 'N': 'BAR0ADDRWIDTH'},
			{'T': 'b', 'N': 'BAR0EXIST'},
			{'T': 'i', 'N': 'BAR0IOMEMN'},
			{'T': 'b', 'N': 'BAR0PREFETCHABLE'},
			{'T': 'i', 'N': 'BAR1ADDRWIDTH'},
			{'T': 'b', 'N': 'BAR1EXIST'},
			{'T': 'i', 'N': 'BAR1IOMEMN'},
			{'T': 'b', 'N': 'BAR1PREFETCHABLE'},
			{'T': 'i', 'N': 'BAR2ADDRWIDTH'},
			{'T': 'b', 'N': 'BAR2EXIST'},
			{'T': 'i', 'N': 'BAR2IOMEMN'},
			{'T': 'b', 'N': 'BAR2PREFETCHABLE'},
			{'T': 'i', 'N': 'BAR3ADDRWIDTH'},
			{'T': 'b', 'N': 'BAR3EXIST'},
			{'T': 'i', 'N': 'BAR3IOMEMN'},
			{'T': 'b', 'N': 'BAR3PREFETCHABLE'},
			{'T': 'i', 'N': 'BAR4ADDRWIDTH'},
			{'T': 'b', 'N': 'BAR4EXIST'},
			{'T': 'i', 'N': 'BAR4IOMEMN'},
			{'T': 'b', 'N': 'BAR4PREFETCHABLE'},
			{'T': 'b', 'N': 'BAR5EXIST'},
			{'T': 'i', 'N': 'BAR5IOMEMN'},
			{'T': 'b', 'N': 'BAR5PREFETCHABLE'},
			{'T': 'b', 'N': 'CLKDIVIDED'},
			{'T': 'b', 'N': 'DUALCOREENABLE'},
			{'T': 'b', 'N': 'DUALCORESLAVE'},
			{'T': 'i', 'N': 'DUALROLECFGCNTRLROOTEPN'},
			{'T': 'b', 'N': 'INFINITECOMPLETIONS'},
			{'T': 'b', 'N': 'ISSWITCH'},
			{'T': 'i', 'N': 'L0SEXITLATENCY'},
			{'T': 'i', 'N': 'L0SEXITLATENCYCOMCLK'},
			{'T': 'i', 'N': 'L1EXITLATENCY'},
			{'T': 'i', 'N': 'L1EXITLATENCYCOMCLK'},
			{'T': 'b', 'N': 'LINKSTATUSSLOTCLOCKCONFIG'},
			{'T': 'b', 'N': 'LLKBYPASS'},
			{'T': 'i', 'N': 'LOWPRIORITYVCCOUNT'},
			{'T': 'b', 'N': 'PBCAPABILITYSYSTEMALLOCATED'},
			{'T': 'b', 'N': 'PCIECAPABILITYSLOTIMPL'},
			{'T': 'i', 'N': 'PCIEREVISION'},
			{'T': 'b', 'N': 'PMCAPABILITYD1SUPPORT'},
			{'T': 'b', 'N': 'PMCAPABILITYD2SUPPORT'},
			{'T': 'b', 'N': 'PMCAPABILITYDSI'},
			{'T': 'i', 'N': 'PMDATASCALE0'},
			{'T': 'i', 'N': 'PMDATASCALE1'},
			{'T': 'i', 'N': 'PMDATASCALE2'},
			{'T': 'i', 'N': 'PMDATASCALE3'},
			{'T': 'i', 'N': 'PMDATASCALE4'},
			{'T': 'i', 'N': 'PMDATASCALE5'},
			{'T': 'i', 'N': 'PMDATASCALE6'},
			{'T': 'i', 'N': 'PMDATASCALE7'},
			{'T': 'i', 'N': 'PMDATASCALE8'},
			{'T': 'b', 'N': 'RAMSHARETXRX'},
			{'T': 'b', 'N': 'RESETMODE'},
			{'T': 'i', 'N': 'RETRYRAMREADLATENCY'},
			{'T': 'i', 'N': 'RETRYRAMWIDTH'},
			{'T': 'i', 'N': 'RETRYRAMWRITELATENCY'},
			{'T': 'b', 'N': 'RETRYREADADDRPIPE'},
			{'T': 'b', 'N': 'RETRYREADDATAPIPE'},
			{'T': 'b', 'N': 'RETRYWRITEPIPE'},
			{'T': 'b', 'N': 'RXREADADDRPIPE'},
			{'T': 'b', 'N': 'RXREADDATAPIPE'},
			{'T': 'b', 'N': 'RXWRITEPIPE'},
			{'T': 'b', 'N': 'SELECTASMODE'},
			{'T': 'b', 'N': 'SELECTDLLIF'},
			{'T': 'b', 'N': 'SLOTCAPABILITYATTBUTTONPRESENT'},
			{'T': 'b', 'N': 'SLOTCAPABILITYATTINDICATORPRESENT'},
			{'T': 'b', 'N': 'SLOTCAPABILITYHOTPLUGCAPABLE'},
			{'T': 'b', 'N': 'SLOTCAPABILITYHOTPLUGSURPRISE'},
			{'T': 'b', 'N': 'SLOTCAPABILITYMSLSENSORPRESENT'},
			{'T': 'b', 'N': 'SLOTCAPABILITYPOWERCONTROLLERPRESENT'},
			{'T': 'b', 'N': 'SLOTCAPABILITYPOWERINDICATORPRESENT'},
			{'T': 'b', 'N': 'SLOTIMPLEMENTED'},
			{'T': 'i', 'N': 'TLRAMREADLATENCY'},
			{'T': 'i', 'N': 'TLRAMWIDTH'},
			{'T': 'i', 'N': 'TLRAMWRITELATENCY'},
			{'T': 'b', 'N': 'TXREADADDRPIPE'},
			{'T': 'b', 'N': 'TXREADDATAPIPE'},
			{'T': 'i', 'N': 'TXTSNFTS'},
			{'T': 'i', 'N': 'TXTSNFTSCOMCLK'},
			{'T': 'b', 'N': 'TXWRITEPIPE'},
			{'T': 'b', 'N': 'UPSTREAMFACING'},
			{'T': 'b', 'N': 'XLINKSUPPORTED'},
			{'T': 'i', 'N': 'XPMAXPAYLOAD'},
			{'T': 'i', 'N': 'XPRCBCONTROL'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'BUSMASTERENABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CRMDOHOTRESETN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CRMPWRSOFTRESETN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CRMRXHOTRESETN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DLLTXPMDLLPOUTSTANDING'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'INTERRUPTDISABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'IOSPACEENABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0ASAUTONOMOUSINITCOMPLETED'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'L0ATTENTIONINDICATORCONTROL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0CFGLOOPBACKACK'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'L0COMPLETERID'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0CORRERRMSGRCVD'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'L0DLLASRXSTATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0DLLASTXSTATE'},
			{'D': 'o', 'T': 'b', 'L': [6, 0], 'N': 'L0DLLERRORVECTOR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0DLLRXACKOUTSTANDING'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0DLLTXNONFCOUTSTANDING'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0DLLTXOUTSTANDING'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'L0DLLVCSTATUS'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'L0DLUPDOWN'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'L0ERRMSGREQID'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0FATALERRMSGRCVD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0FIRSTCFGWRITEOCCURRED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0FWDCORRERROUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0FWDFATALERROUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0FWDNONFATALERROUT'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'L0LTSSMSTATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACENTEREDL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACLINKTRAINING'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACLINKUP'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'L0MACNEGOTIATEDLINKWIDTH'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACNEWSTATEACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACRXL0SSTATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MACUPSTREAMDOWNSTREAM'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'L0MCFOUND'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0MSIENABLE0'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'L0MULTIMSGEN0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0NONFATALERRMSGRCVD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PMEACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PMEEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PMEREQOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0POWERCONTROLLERCONTROL'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'L0POWERINDICATORCONTROL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PWRINHIBITTRANSFERS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PWRL1STATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PWRL23READYDEVICE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PWRL23READYSTATE'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'L0PWRSTATE0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PWRTURNOFFREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0PWRTXL0SSTATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RECEIVEDASSERTINTALEGACYINT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RECEIVEDASSERTINTBLEGACYINT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RECEIVEDASSERTINTCLEGACYINT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RECEIVEDASSERTINTDLEGACYINT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RECEIVEDDEASSERTINTALEGACYINT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RECEIVEDDEASSERTINTBLEGACYINT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RECEIVEDDEASSERTINTCLEGACYINT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RECEIVEDDEASSERTINTDLEGACYINT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RXBEACON'},
			{'D': 'o', 'T': 'b', 'L': [23, 0], 'N': 'L0RXDLLFCCMPLMCCRED'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'L0RXDLLFCCMPLMCUPDATE'},
			{'D': 'o', 'T': 'b', 'L': [19, 0], 'N': 'L0RXDLLFCNPOSTBYPCRED'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'L0RXDLLFCNPOSTBYPUPDATE'},
			{'D': 'o', 'T': 'b', 'L': [23, 0], 'N': 'L0RXDLLFCPOSTORDCRED'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'L0RXDLLFCPOSTORDUPDATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RXDLLPM'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'L0RXDLLPMTYPE'},
			{'D': 'o', 'T': 'b', 'L': [18, 0], 'N': 'L0RXDLLSBFCDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RXDLLSBFCUPDATE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0RXDLLTLPECRCOK'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'L0RXDLLTLPEND'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'L0RXMACLINKERROR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSCFGOTHERRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSCFGOTHERTRANSMITTED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSCFGRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSCFGTRANSMITTED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSDLLPRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSDLLPTRANSMITTED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSOSRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSOSTRANSMITTED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSTLPRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0STATSTLPTRANSMITTED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0TOGGLEELECTROMECHANICALINTERLOCK'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'L0TRANSFORMEDVC'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'L0TXDLLFCCMPLMCUPDATED'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'L0TXDLLFCNPOSTBYPUPDATED'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'L0TXDLLFCPOSTORDUPDATED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0TXDLLPMUPDATED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0TXDLLSBFCUPDATED'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'L0UCBYPFOUND'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'L0UCORDFOUND'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'L0UNLOCKRECEIVED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRX4DWHEADERN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKRXCHCOMPLETIONAVAILABLEN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKRXCHCOMPLETIONPARTIALN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXCHCONFIGAVAILABLEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXCHCONFIGPARTIALN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKRXCHNONPOSTEDAVAILABLEN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKRXCHNONPOSTEDPARTIALN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKRXCHPOSTEDAVAILABLEN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKRXCHPOSTEDPARTIALN'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'LLKRXDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXECRCBADN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXEOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXEOPN'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'LLKRXPREFERREDTYPE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXSOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXSOPN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXSRCDSCN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXSRCLASTREQN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKRXSRCRDYN'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'LLKRXVALIDN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKTCSTATUS'},
			{'D': 'o', 'T': 'b', 'L': [9, 0], 'N': 'LLKTXCHANSPACE'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKTXCHCOMPLETIONREADYN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKTXCHNONPOSTEDREADYN'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'LLKTXCHPOSTEDREADYN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKTXCONFIGREADYN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LLKTXDSTRDYN'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'MAXPAYLOADSIZE'},
			{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'MAXREADREQUESTSIZE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MEMSPACEENABLE'},
			{'D': 'o', 'T': 'b', 'L': [16, 0], 'N': 'MGMTPSO'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'MGMTRDATA'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'MGMTSTATSCREDIT'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'MIMDLLBRADD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMDLLBREN'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'MIMDLLBWADD'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'MIMDLLBWDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMDLLBWEN'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'MIMRXBRADD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMRXBREN'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'MIMRXBWADD'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'MIMRXBWDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMRXBWEN'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'MIMTXBRADD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMTXBREN'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'MIMTXBWADD'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'MIMTXBWDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMTXBWEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PARITYERRORRESPONSE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPEDESKEWLANESL7'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL0'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL1'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL2'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL3'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL4'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL5'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL6'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'PIPEPOWERDOWNL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERESETL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPERXPOLARITYL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXCOMPLIANCEL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDATAKL7'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL0'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL1'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL2'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL3'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL4'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL5'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL6'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'PIPETXDATAL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXDETECTRXLOOPBACKL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL6'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PIPETXELECIDLEL7'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SERRENABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'URREPORTINGENABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'AUXPOWER'},
			{'D': 'i', 'T': 'b', 'L': [5, 0], 'N': 'CFGNEGOTIATEDLINKWIDTH'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'COMPLIANCEAVOID'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMCFGBRIDGEHOTRESET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMCORECLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMCORECLKDLO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMCORECLKRXO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMCORECLKTXO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMLINKRSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMMACRSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMMGMTRSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMNVRSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMTXHOTRESETN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMURSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMUSERCFGRSTN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMUSERCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMUSERCLKRXO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CRMUSERCLKTXO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CROSSLINKSEED'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'L0ACKNAKTIMERADJUSTMENT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0ALLDOWNPORTSINL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0ALLDOWNRXPORTSINL0S'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0ASE'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'L0ASPORTCOUNT'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'L0ASTURNPOOLBITSCONSUMED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0ATTENTIONBUTTONPRESSED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0CFGASSPANTREEOWNEDSTATE'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'L0CFGASSTATECHANGECMD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0CFGDISABLESCRAMBLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0CFGEXTENDEDSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0CFGL0SENTRYENABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0CFGL0SENTRYSUP'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'L0CFGL0SEXITLAT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0CFGLINKDISABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0CFGLOOPBACKMASTER'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'L0CFGNEGOTIATEDMAXP'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'L0CFGVCENABLE'},
			{'D': 'i', 'T': 'b', 'L': [23, 0], 'N': 'L0CFGVCID'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0DLLHOLDLINKUP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0ELECTROMECHANICALINTERLOCKENGAGED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDASSERTINTALEGACYINT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDASSERTINTBLEGACYINT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDASSERTINTCLEGACYINT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDASSERTINTDLEGACYINT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDCORRERRIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDDEASSERTINTALEGACYINT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDDEASSERTINTBLEGACYINT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDDEASSERTINTCLEGACYINT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDDEASSERTINTDLEGACYINT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDFATALERRIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0FWDNONFATALERRIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0LEGACYINTFUNCT0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0MRLSENSORCLOSEDN'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'L0MSIREQUEST0'},
			{'D': 'i', 'T': 'b', 'L': [127, 0], 'N': 'L0PACKETHEADERFROMUSER'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0PMEREQIN'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'L0PORTNUMBER'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0POWERFAULTDETECTED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0PRESENCEDETECTSLOTEMPTYN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0PWRNEWSTATEREQ'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'L0PWRNEXTLINKSTATE'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'L0REPLAYTIMERADJUSTMENT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0ROOTTURNOFFREQ'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'L0RXTLTLPNONINITIALIZEDVC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SENDUNLOCKMESSAGE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETCOMPLETERABORTERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETCOMPLETIONTIMEOUTCORRERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETCOMPLETIONTIMEOUTUNCORRERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETDETECTEDCORRERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETDETECTEDFATALERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETDETECTEDNONFATALERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETLINKDETECTEDPARITYERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETLINKMASTERDATAPARITY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETLINKRECEIVEDMASTERABORT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETLINKRECEIVEDTARGETABORT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETLINKSIGNALLEDTARGETABORT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETLINKSYSTEMERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUNEXPECTEDCOMPLETIONCORRERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUNEXPECTEDCOMPLETIONUNCORRERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUNSUPPORTEDREQUESTNONPOSTEDERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUNSUPPORTEDREQUESTOTHERERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERDETECTEDPARITYERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERMASTERDATAPARITY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERRECEIVEDMASTERABORT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERRECEIVEDTARGETABORT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERSIGNALLEDTARGETABORT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0SETUSERSYSTEMERROR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TLASFCCREDSTARVATION'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TLLINKRETRAIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TRANSACTIONSPENDING'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TXBEACON'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TXCFGPM'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'L0TXCFGPMTYPE'},
			{'D': 'i', 'T': 'b', 'L': [159, 0], 'N': 'L0TXTLFCCMPLMCCRED'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'L0TXTLFCCMPLMCUPDATE'},
			{'D': 'i', 'T': 'b', 'L': [191, 0], 'N': 'L0TXTLFCNPOSTBYPCRED'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'L0TXTLFCNPOSTBYPUPDATE'},
			{'D': 'i', 'T': 'b', 'L': [159, 0], 'N': 'L0TXTLFCPOSTORDCRED'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'L0TXTLFCPOSTORDUPDATE'},
			{'D': 'i', 'T': 'b', 'L': [18, 0], 'N': 'L0TXTLSBFCDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TXTLSBFCUPDATE'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'L0TXTLTLPDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TXTLTLPEDB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'L0TXTLTLPENABLE'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'L0TXTLTLPEND'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'L0TXTLTLPLATENCY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TXTLTLPREQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TXTLTLPREQEND'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0TXTLTLPWIDTH'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0UPSTREAMRXPORTINL0S'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0VC0PREVIEWEXPAND'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'L0WAKEN'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'LLKRXCHFIFO'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'LLKRXCHTC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKRXDSTCONTREQN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKRXDSTREQN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTX4DWHEADERN'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'LLKTXCHFIFO'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'LLKTXCHTC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXCOMPLETEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXCREATEECRCN'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'LLKTXDATA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'LLKTXENABLEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXEOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXEOPN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXSOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXSOPN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXSRCDSCN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLKTXSRCRDYN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MAINPOWER'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'MGMTADDR'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'MGMTBWREN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MGMTRDEN'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'MGMTSTATSCREDITSEL'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'MGMTWDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MGMTWREN'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'MIMDLLBRDATA'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'MIMRXBRDATA'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'MIMTXBRDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPEPHYSTATUSL7'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXCHANISALIGNEDL7'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXDATAKL7'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL0'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL1'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL2'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL3'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL4'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL5'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL6'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PIPERXDATAL7'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXELECIDLEL7'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL0'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL1'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL2'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL3'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL4'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL5'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL6'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PIPERXSTATUSL7'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PIPERXVALIDL7'},
			[CompLib, generics, "PCIE_INTERNAL_1_1"]]

	return(signals)

def PLL_ADV(BANDWIDTH, CLKFBOUT_DESKEW_ADJUST, CLKFBOUT_MULT,
			CLKOUT0_DESKEW_ADJUST, CLKOUT0_DIVIDE, CLKOUT1_DESKEW_ADJUST,
			CLKOUT1_DIVIDE, CLKOUT2_DESKEW_ADJUST, CLKOUT2_DIVIDE,
			CLKOUT3_DESKEW_ADJUST, CLKOUT3_DIVIDE, CLKOUT4_DESKEW_ADJUST,
			CLKOUT4_DIVIDE, CLKOUT5_DESKEW_ADJUST, CLKOUT5_DIVIDE,
			COMPENSATION, DIVCLK_DIVIDE, EN_REL,
			PLL_PMCD_MODE, RESET_ON_LOSS_OF_LOCK, RST_DEASSERT_CLK,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'BANDWIDTH'},
			{'T': 's', 'N': 'CLKFBOUT_DESKEW_ADJUST'},
			{'T': 'i', 'N': 'CLKFBOUT_MULT'},
			{'T': 's', 'N': 'CLKOUT0_DESKEW_ADJUST'},
			{'T': 'i', 'N': 'CLKOUT0_DIVIDE'},
			{'T': 's', 'N': 'CLKOUT1_DESKEW_ADJUST'},
			{'T': 'i', 'N': 'CLKOUT1_DIVIDE'},
			{'T': 's', 'N': 'CLKOUT2_DESKEW_ADJUST'},
			{'T': 'i', 'N': 'CLKOUT2_DIVIDE'},
			{'T': 's', 'N': 'CLKOUT3_DESKEW_ADJUST'},
			{'T': 'i', 'N': 'CLKOUT3_DIVIDE'},
			{'T': 's', 'N': 'CLKOUT4_DESKEW_ADJUST'},
			{'T': 'i', 'N': 'CLKOUT4_DIVIDE'},
			{'T': 's', 'N': 'CLKOUT5_DESKEW_ADJUST'},
			{'T': 'i', 'N': 'CLKOUT5_DIVIDE'},
			{'T': 's', 'N': 'COMPENSATION'},
			{'T': 'i', 'N': 'DIVCLK_DIVIDE'},
			{'T': 'b', 'N': 'EN_REL'},
			{'T': 'b', 'N': 'PLL_PMCD_MODE'},
			{'T': 'b', 'N': 'RESET_ON_LOSS_OF_LOCK'},
			{'T': 's', 'N': 'RST_DEASSERT_CLK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFBDCM'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFBOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUTDCM0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUTDCM1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUTDCM2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUTDCM3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUTDCM4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUTDCM5'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRDY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKFBIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKINSEL'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'DADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DEN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DWE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "PLL_ADV"]]

	return(signals)

def PLL_BASE(BANDWIDTH, CLKFBOUT_MULT, CLKOUT0_DIVIDE,
			CLKOUT1_DIVIDE, CLKOUT2_DIVIDE, CLKOUT3_DIVIDE,
			CLKOUT4_DIVIDE, CLKOUT5_DIVIDE, COMPENSATION,
			DIVCLK_DIVIDE, RESET_ON_LOSS_OF_LOCK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'BANDWIDTH'},
			{'T': 'i', 'N': 'CLKFBOUT_MULT'},
			{'T': 'i', 'N': 'CLKOUT0_DIVIDE'},
			{'T': 'i', 'N': 'CLKOUT1_DIVIDE'},
			{'T': 'i', 'N': 'CLKOUT2_DIVIDE'},
			{'T': 'i', 'N': 'CLKOUT3_DIVIDE'},
			{'T': 'i', 'N': 'CLKOUT4_DIVIDE'},
			{'T': 'i', 'N': 'CLKOUT5_DIVIDE'},
			{'T': 's', 'N': 'COMPENSATION'},
			{'T': 'i', 'N': 'DIVCLK_DIVIDE'},
			{'T': 'b', 'N': 'RESET_ON_LOSS_OF_LOCK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKFBOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKOUT5'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKFBIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "PLL_BASE"]]

	return(signals)

def PMCD(EN_REL, RST_DEASSERT_CLK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'EN_REL'},
			{'T': 's', 'N': 'RST_DEASSERT_CLK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKA1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKA1D2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKA1D4'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKA1D8'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKB1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKC1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLKD1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RST'},
			[CompLib, generics, "PMCD"]]

	return(signals)

def PPC405_ADV():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMDECODED'},
			{'D': 'o', 'T': 'b', 'L': [0, 2], 'N': 'APUFCMDECUDI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMDECUDIVALID'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMENDIAN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMFLUSH'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'APUFCMINSTRUCTION'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMINSTRVALID'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'APUFCMLOADBYTEEN'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'APUFCMLOADDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMLOADDVALID'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMOPERANDVALID'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'APUFCMRADATA'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'APUFCMRBDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMWRITEBACKOK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMXERCA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405CPMCORESLEEPREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405CPMMSRCE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405CPMMSREE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405CPMTIMERIRQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405CPMTIMERRESETREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405DBGLOADDATAONAPUDBUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405DBGMSRWE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405DBGSTOPACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405DBGWBCOMPLETE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405DBGWBFULL'},
			{'D': 'o', 'T': 'b', 'L': [0, 29], 'N': 'C405DBGWBIAR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405JTGCAPTUREDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405JTGEXTEST'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405JTGPGMOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405JTGSHIFTDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405JTGTDO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405JTGTDOEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405JTGUPDATEDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBDCUABORT'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'C405PLBDCUABUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 7], 'N': 'C405PLBDCUBE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBDCUCACHEABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBDCUGUARDED'},
			{'D': 'o', 'T': 'b', 'L': [0, 1], 'N': 'C405PLBDCUPRIORITY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBDCUREQUEST'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBDCURNW'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBDCUSIZE2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBDCUU0ATTR'},
			{'D': 'o', 'T': 'b', 'L': [0, 63], 'N': 'C405PLBDCUWRDBUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBDCUWRITETHRU'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBICUABORT'},
			{'D': 'o', 'T': 'b', 'L': [0, 29], 'N': 'C405PLBICUABUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBICUCACHEABLE'},
			{'D': 'o', 'T': 'b', 'L': [0, 1], 'N': 'C405PLBICUPRIORITY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBICUREQUEST'},
			{'D': 'o', 'T': 'b', 'L': [2, 3], 'N': 'C405PLBICUSIZE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405PLBICUU0ATTR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405RSTCHIPRESETREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405RSTCORERESETREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405RSTSYSRESETREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405TRCCYCLE'},
			{'D': 'o', 'T': 'b', 'L': [0, 1], 'N': 'C405TRCEVENEXECUTIONSTATUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 1], 'N': 'C405TRCODDEXECUTIONSTATUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'C405TRCTRACESTATUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405TRCTRIGGEREVENTOUT'},
			{'D': 'o', 'T': 'b', 'L': [0, 10], 'N': 'C405TRCTRIGGEREVENTTYPE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C405XXXMACHINECHECK'},
			{'D': 'o', 'T': 'b', 'L': [8, 9], 'N': 'DCREMACABUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DCREMACCLK'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'DCREMACDBUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DCREMACENABLER'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DCREMACREAD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DCREMACWRITE'},
			{'D': 'o', 'T': 'b', 'L': [8, 29], 'N': 'DSOCMBRAMABUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'DSOCMBRAMBYTEWRITE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DSOCMBRAMEN'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'DSOCMBRAMWRDBUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DSOCMBUSY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DSOCMRDADDRVALID'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DSOCMWRADDRVALID'},
			{'D': 'o', 'T': 'b', 'L': [0, 9], 'N': 'EXTDCRABUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'EXTDCRDBUSOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EXTDCRREAD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EXTDCRWRITE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ISOCMBRAMEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ISOCMBRAMEVENWRITEEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ISOCMBRAMODDWRITEEN'},
			{'D': 'o', 'T': 'b', 'L': [8, 28], 'N': 'ISOCMBRAMRDABUS'},
			{'D': 'o', 'T': 'b', 'L': [8, 28], 'N': 'ISOCMBRAMWRABUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'ISOCMBRAMWRDBUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ISOCMDCRBRAMEVENEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ISOCMDCRBRAMODDEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'ISOCMDCRBRAMRDSELECT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'BRAMDSOCMCLK'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'BRAMDSOCMRDDBUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'BRAMISOCMCLK'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'BRAMISOCMDCRRDDBUS'},
			{'D': 'i', 'T': 'b', 'L': [0, 63], 'N': 'BRAMISOCMRDDBUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC405CLOCK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC405CORECLKINACTIVE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC405CPUCLKEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC405JTAGCLKEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC405SYNCBYPASS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC405TIMERCLKEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC405TIMERTICK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMDCRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMFCMCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DBGC405DEBUGHALT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DBGC405EXTBUSHOLDACK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DBGC405UNCONDDEBUGEVENT'},
			{'D': 'i', 'T': 'b', 'L': [0, 7], 'N': 'DSARCVALUE'},
			{'D': 'i', 'T': 'b', 'L': [0, 7], 'N': 'DSCNTLVALUE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DSOCMRWCOMPLETE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'EICC405CRITINPUTIRQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'EICC405EXTINPUTIRQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'EMACDCRACK'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'EMACDCRDBUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'EXTDCRACK'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'EXTDCRDBUSIN'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'FCMAPUCR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDCREN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDFORCEALIGN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDFORCEBESTEERING'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDFPUOP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDGPRWRITE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDLDSTBYTE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDLDSTDW'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDLDSTHW'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDLDSTQW'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDLDSTWD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDLOAD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDPRIVOP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDRAEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDRBEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDSTORE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDTRAPBE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDTRAPLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDUPDATE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDXERCAEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDCDXEROVEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDECODEBUSY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDONE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUEXCEPTION'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUEXEBLOCKINGMCO'},
			{'D': 'i', 'T': 'b', 'L': [0, 2], 'N': 'FCMAPUEXECRFIELD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUEXENONBLOCKINGMCO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUINSTRACK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPULOADWAIT'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'FCMAPURESULT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPURESULTVALID'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUSLEEPNOTREADY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUXERCA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUXEROV'},
			{'D': 'i', 'T': 'b', 'L': [0, 7], 'N': 'ISARCVALUE'},
			{'D': 'i', 'T': 'b', 'L': [0, 7], 'N': 'ISCNTLVALUE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'JTGC405BNDSCANTDO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'JTGC405TCK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'JTGC405TDI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'JTGC405TMS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'JTGC405TRSTNEG'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MCBCPUCLKEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MCBJTAGEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MCBTIMEREN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MCPPCRST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405DCUADDRACK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405DCUBUSY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405DCUERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405DCURDDACK'},
			{'D': 'i', 'T': 'b', 'L': [0, 63], 'N': 'PLBC405DCURDDBUS'},
			{'D': 'i', 'T': 'b', 'L': [1, 3], 'N': 'PLBC405DCURDWDADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405DCUSSIZE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405DCUWRDACK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405ICUADDRACK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405ICUBUSY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405ICUERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405ICURDDACK'},
			{'D': 'i', 'T': 'b', 'L': [0, 63], 'N': 'PLBC405ICURDDBUS'},
			{'D': 'i', 'T': 'b', 'L': [1, 3], 'N': 'PLBC405ICURDWDADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBC405ICUSSIZE1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTC405RESETCHIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTC405RESETCORE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTC405RESETSYS'},
			{'D': 'i', 'T': 'b', 'L': [0, 15], 'N': 'TIEAPUCONTROL'},
			{'D': 'i', 'T': 'b', 'L': [0, 23], 'N': 'TIEAPUUDI1'},
			{'D': 'i', 'T': 'b', 'L': [0, 23], 'N': 'TIEAPUUDI2'},
			{'D': 'i', 'T': 'b', 'L': [0, 23], 'N': 'TIEAPUUDI3'},
			{'D': 'i', 'T': 'b', 'L': [0, 23], 'N': 'TIEAPUUDI4'},
			{'D': 'i', 'T': 'b', 'L': [0, 23], 'N': 'TIEAPUUDI5'},
			{'D': 'i', 'T': 'b', 'L': [0, 23], 'N': 'TIEAPUUDI6'},
			{'D': 'i', 'T': 'b', 'L': [0, 23], 'N': 'TIEAPUUDI7'},
			{'D': 'i', 'T': 'b', 'L': [0, 23], 'N': 'TIEAPUUDI8'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEC405DETERMINISTICMULT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEC405DISOPERANDFWD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEC405MMUEN'},
			{'D': 'i', 'T': 'b', 'L': [0, 5], 'N': 'TIEDCRADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEPVRBIT10'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEPVRBIT11'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEPVRBIT28'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEPVRBIT29'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEPVRBIT30'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEPVRBIT31'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEPVRBIT8'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEPVRBIT9'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TRCC405TRACEDISABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TRCC405TRIGGEREVENTIN'},
			[CompLib, generics, "PPC405_ADV"]]

	return(signals)

def PPC440(CLOCK_DELAY, DCR_AUTOLOCK_ENABLE, PPCDM_ASYNCMODE,
			PPCDS_ASYNCMODE, PPCS0_WIDTH_128N64, PPCS1_WIDTH_128N64,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'CLOCK_DELAY'},
			{'T': 'b', 'N': 'DCR_AUTOLOCK_ENABLE'},
			{'T': 'b', 'N': 'PPCDM_ASYNCMODE'},
			{'T': 'b', 'N': 'PPCDS_ASYNCMODE'},
			{'T': 'b', 'N': 'PPCS0_WIDTH_128N64'},
			{'T': 'b', 'N': 'PPCS1_WIDTH_128N64'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMDECFPUOP'},
			{'D': 'o', 'T': 'b', 'L': [0, 2], 'N': 'APUFCMDECLDSTXFERSIZE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMDECLOAD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMDECNONAUTON'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMDECSTORE'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'APUFCMDECUDI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMDECUDIVALID'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMENDIAN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMFLUSH'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'APUFCMINSTRUCTION'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMINSTRVALID'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'APUFCMLOADBYTEADDR'},
			{'D': 'o', 'T': 'b', 'L': [0, 127], 'N': 'APUFCMLOADDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMLOADDVALID'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMMSRFE0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMMSRFE1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMNEXTINSTRREADY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMOPERANDVALID'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'APUFCMRADATA'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'APUFCMRBDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'APUFCMWRITEBACKOK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440CPMCORESLEEPREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440CPMDECIRPTREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440CPMFITIRPTREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440CPMMSRCE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440CPMMSREE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440CPMTIMERRESETREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440CPMWDIRPTREQ'},
			{'D': 'o', 'T': 'b', 'L': [0, 7], 'N': 'C440DBGSYSTEMCONTROL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440JTGTDO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440JTGTDOEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440MACHINECHECK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440RSTCHIPRESETREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440RSTCORERESETREQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440RSTSYSTEMRESETREQ'},
			{'D': 'o', 'T': 'b', 'L': [0, 2], 'N': 'C440TRCBRANCHSTATUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440TRCCYCLE'},
			{'D': 'o', 'T': 'b', 'L': [0, 4], 'N': 'C440TRCEXECUTIONSTATUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 6], 'N': 'C440TRCTRACESTATUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'C440TRCTRIGGEREVENTOUT'},
			{'D': 'o', 'T': 'b', 'L': [0, 13], 'N': 'C440TRCTRIGGEREVENTTYPE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA0LLRSTENGINEACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA0LLRXDSTRDYN'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'DMA0LLTXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA0LLTXEOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA0LLTXEOPN'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'DMA0LLTXREM'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA0LLTXSOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA0LLTXSOPN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA0LLTXSRCRDYN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA0RXIRQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA0TXIRQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA1LLRSTENGINEACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA1LLRXDSTRDYN'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'DMA1LLTXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA1LLTXEOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA1LLTXEOPN'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'DMA1LLTXREM'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA1LLTXSOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA1LLTXSOPN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA1LLTXSRCRDYN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA1RXIRQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA1TXIRQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA2LLRSTENGINEACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA2LLRXDSTRDYN'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'DMA2LLTXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA2LLTXEOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA2LLTXEOPN'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'DMA2LLTXREM'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA2LLTXSOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA2LLTXSOPN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA2LLTXSRCRDYN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA2RXIRQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA2TXIRQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA3LLRSTENGINEACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA3LLRXDSTRDYN'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'DMA3LLTXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA3LLTXEOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA3LLTXEOPN'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'DMA3LLTXREM'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA3LLTXSOFN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA3LLTXSOPN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA3LLTXSRCRDYN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA3RXIRQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DMA3TXIRQ'},
			{'D': 'o', 'T': 'b', 'L': [0, 35], 'N': 'MIMCADDRESS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMCADDRESSVALID'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMCBANKCONFLICT'},
			{'D': 'o', 'T': 'b', 'L': [0, 15], 'N': 'MIMCBYTEENABLE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMCREADNOTWRITE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMCROWCONFLICT'},
			{'D': 'o', 'T': 'b', 'L': [0, 127], 'N': 'MIMCWRITEDATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MIMCWRITEDATAVALID'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCCPMINTERCONNECTBUSY'},
			{'D': 'o', 'T': 'b', 'L': [0, 9], 'N': 'PPCDMDCRABUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'PPCDMDCRDBUSOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCDMDCRREAD'},
			{'D': 'o', 'T': 'b', 'L': [20, 21], 'N': 'PPCDMDCRUABUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCDMDCRWRITE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCDSDCRACK'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'PPCDSDCRDBUSIN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCDSDCRTIMEOUTWAIT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCEICINTERCONNECTIRQ'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCMPLBABORT'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'PPCMPLBABUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 15], 'N': 'PPCMPLBBE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCMPLBBUSLOCK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCMPLBLOCKERR'},
			{'D': 'o', 'T': 'b', 'L': [0, 1], 'N': 'PPCMPLBPRIORITY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCMPLBRDBURST'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCMPLBREQUEST'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCMPLBRNW'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCMPLBSIZE'},
			{'D': 'o', 'T': 'b', 'L': [0, 15], 'N': 'PPCMPLBTATTRIBUTE'},
			{'D': 'o', 'T': 'b', 'L': [0, 2], 'N': 'PPCMPLBTYPE'},
			{'D': 'o', 'T': 'b', 'L': [28, 31], 'N': 'PPCMPLBUABUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCMPLBWRBURST'},
			{'D': 'o', 'T': 'b', 'L': [0, 127], 'N': 'PPCMPLBWRDBUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS0PLBADDRACK'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCS0PLBMBUSY'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCS0PLBMIRQ'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCS0PLBMRDERR'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCS0PLBMWRERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS0PLBRDBTERM'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS0PLBRDCOMP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS0PLBRDDACK'},
			{'D': 'o', 'T': 'b', 'L': [0, 127], 'N': 'PPCS0PLBRDDBUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCS0PLBRDWDADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS0PLBREARBITRATE'},
			{'D': 'o', 'T': 'b', 'L': [0, 1], 'N': 'PPCS0PLBSSIZE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS0PLBWAIT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS0PLBWRBTERM'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS0PLBWRCOMP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS0PLBWRDACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS1PLBADDRACK'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCS1PLBMBUSY'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCS1PLBMIRQ'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCS1PLBMRDERR'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCS1PLBMWRERR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS1PLBRDBTERM'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS1PLBRDCOMP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS1PLBRDDACK'},
			{'D': 'o', 'T': 'b', 'L': [0, 127], 'N': 'PPCS1PLBRDDBUS'},
			{'D': 'o', 'T': 'b', 'L': [0, 3], 'N': 'PPCS1PLBRDWDADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS1PLBREARBITRATE'},
			{'D': 'o', 'T': 'b', 'L': [0, 1], 'N': 'PPCS1PLBSSIZE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS1PLBWAIT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS1PLBWRBTERM'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS1PLBWRCOMP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'PPCS1PLBWRDACK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC440CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC440CLKEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC440CORECLOCKINACTIVE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMC440TIMERCLOCK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMDCRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMDMA0LLCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMDMA1LLCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMDMA2LLCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMDMA3LLCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMFCMCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMINTERCONNECTCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMINTERCONNECTCLKEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMINTERCONNECTCLKNTO1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMMCCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMPPCMPLBCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMPPCS0PLBCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CPMPPCS1PLBCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DBGC440DEBUGHALT'},
			{'D': 'i', 'T': 'b', 'L': [0, 4], 'N': 'DBGC440SYSTEMSTATUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DBGC440UNCONDDEBUGEVENT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCRPPCDMACK'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'DCRPPCDMDBUSIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCRPPCDMTIMEOUTWAIT'},
			{'D': 'i', 'T': 'b', 'L': [0, 9], 'N': 'DCRPPCDSABUS'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'DCRPPCDSDBUSOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCRPPCDSREAD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCRPPCDSWRITE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'EICC440CRITIRQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'EICC440EXTIRQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUCONFIRMINSTR'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'FCMAPUCR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUDONE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUEXCEPTION'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUFPSCRFEX'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'FCMAPURESULT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPURESULTVALID'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'FCMAPUSLEEPNOTREADY'},
			{'D': 'i', 'T': 'b', 'L': [0, 127], 'N': 'FCMAPUSTOREDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'JTGC440TCK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'JTGC440TDI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'JTGC440TMS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'JTGC440TRSTNEG'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA0RSTENGINEREQ'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'LLDMA0RXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA0RXEOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA0RXEOPN'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'LLDMA0RXREM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA0RXSOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA0RXSOPN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA0RXSRCRDYN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA0TXDSTRDYN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA1RSTENGINEREQ'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'LLDMA1RXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA1RXEOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA1RXEOPN'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'LLDMA1RXREM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA1RXSOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA1RXSOPN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA1RXSRCRDYN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA1TXDSTRDYN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA2RSTENGINEREQ'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'LLDMA2RXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA2RXEOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA2RXEOPN'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'LLDMA2RXREM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA2RXSOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA2RXSOPN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA2RXSRCRDYN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA2TXDSTRDYN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA3RSTENGINEREQ'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'LLDMA3RXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA3RXEOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA3RXEOPN'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'LLDMA3RXREM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA3RXSOFN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA3RXSOPN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA3RXSRCRDYN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LLDMA3TXDSTRDYN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MCMIADDRREADYTOACCEPT'},
			{'D': 'i', 'T': 'b', 'L': [0, 127], 'N': 'MCMIREADDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MCMIREADDATAERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MCMIREADDATAVALID'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMADDRACK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMMBUSY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMMIRQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMMRDERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMMWRERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMRDBTERM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMRDDACK'},
			{'D': 'i', 'T': 'b', 'L': [0, 127], 'N': 'PLBPPCMRDDBUS'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCMRDPENDPRI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMRDPENDREQ'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'PLBPPCMRDWDADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMREARBITRATE'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCMREQPRI'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCMSSIZE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMTIMEOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMWRBTERM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMWRDACK'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCMWRPENDPRI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCMWRPENDREQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0ABORT'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'PLBPPCS0ABUS'},
			{'D': 'i', 'T': 'b', 'L': [0, 15], 'N': 'PLBPPCS0BE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0BUSLOCK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0LOCKERR'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCS0MASTERID'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCS0MSIZE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0PAVALID'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0RDBURST'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCS0RDPENDPRI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0RDPENDREQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0RDPRIM'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCS0REQPRI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0RNW'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0SAVALID'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'PLBPPCS0SIZE'},
			{'D': 'i', 'T': 'b', 'L': [0, 15], 'N': 'PLBPPCS0TATTRIBUTE'},
			{'D': 'i', 'T': 'b', 'L': [0, 2], 'N': 'PLBPPCS0TYPE'},
			{'D': 'i', 'T': 'b', 'L': [28, 31], 'N': 'PLBPPCS0UABUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0WRBURST'},
			{'D': 'i', 'T': 'b', 'L': [0, 127], 'N': 'PLBPPCS0WRDBUS'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCS0WRPENDPRI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0WRPENDREQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS0WRPRIM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1ABORT'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'PLBPPCS1ABUS'},
			{'D': 'i', 'T': 'b', 'L': [0, 15], 'N': 'PLBPPCS1BE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1BUSLOCK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1LOCKERR'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCS1MASTERID'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCS1MSIZE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1PAVALID'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1RDBURST'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCS1RDPENDPRI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1RDPENDREQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1RDPRIM'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCS1REQPRI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1RNW'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1SAVALID'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'PLBPPCS1SIZE'},
			{'D': 'i', 'T': 'b', 'L': [0, 15], 'N': 'PLBPPCS1TATTRIBUTE'},
			{'D': 'i', 'T': 'b', 'L': [0, 2], 'N': 'PLBPPCS1TYPE'},
			{'D': 'i', 'T': 'b', 'L': [28, 31], 'N': 'PLBPPCS1UABUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1WRBURST'},
			{'D': 'i', 'T': 'b', 'L': [0, 127], 'N': 'PLBPPCS1WRDBUS'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'PLBPPCS1WRPENDPRI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1WRPENDREQ'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PLBPPCS1WRPRIM'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTC440RESETCHIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTC440RESETCORE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTC440RESETSYSTEM'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEC440DCURDLDCACHEPLBPRIO'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEC440DCURDNONCACHEPLBPRIO'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEC440DCURDTOUCHPLBPRIO'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEC440DCURDURGENTPLBPRIO'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEC440DCUWRFLUSHPLBPRIO'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEC440DCUWRSTOREPLBPRIO'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEC440DCUWRURGENTPLBPRIO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TIEC440ENDIANRESET'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'TIEC440ERPNRESET'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEC440ICURDFETCHPLBPRIO'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEC440ICURDSPECPLBPRIO'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEC440ICURDTOUCHPLBPRIO'},
			{'D': 'i', 'T': 'b', 'L': [28, 31], 'N': 'TIEC440PIR'},
			{'D': 'i', 'T': 'b', 'L': [28, 31], 'N': 'TIEC440PVR'},
			{'D': 'i', 'T': 'b', 'L': [0, 3], 'N': 'TIEC440USERRESET'},
			{'D': 'i', 'T': 'b', 'L': [0, 1], 'N': 'TIEDCRBASEADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TRCC440TRACEDISABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'TRCC440TRIGGEREVENTIN'},
			[CompLib, generics, "PPC440"]]

	return(signals)

def PULLDOWN():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			[CompLib, generics, "PULLDOWN"]]

	return(signals)

def PULLUP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			[CompLib, generics, "PULLUP"]]

	return(signals)

def RAM128X1D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DPO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SPO'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'A'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'DPRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM128X1D"]]

	return(signals)

def RAM128X1S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM128X1S"]]

	return(signals)

def RAM128X1S_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM128X1S_1"]]

	return(signals)

def RAM16X1D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DPO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SPO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM16X1D"]]

	return(signals)

def RAM16X1D_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DPO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SPO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM16X1D_1"]]

	return(signals)

def RAM16X1S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM16X1S"]]

	return(signals)

def RAM16X1S_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM16X1S_1"]]

	return(signals)

def RAM16X2S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM16X2S"]]

	return(signals)

def RAM16X4S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM16X4S"]]

	return(signals)

def RAM16X8S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM16X8S"]]

	return(signals)

def RAM256X1S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'A'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM256X1S"]]

	return(signals)

def RAM32M():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOC'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOD'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'ADDRC'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'ADDRD'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIC'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DID'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM32M"]]

	return(signals)

def RAM32X1D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DPO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SPO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM32X1D"]]

	return(signals)

def RAM32X1D_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DPO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SPO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM32X1D_1"]]

	return(signals)

def RAM32X1S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM32X1S"]]

	return(signals)

def RAM32X1S_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM32X1S_1"]]

	return(signals)

def RAM32X2S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM32X2S"]]

	return(signals)

def RAM32X4S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM32X4S"]]

	return(signals)

def RAM32X8S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM32X8S"]]

	return(signals)

def RAM64M():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DOC'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DOD'},
			{'D': 'i', 'T': 'b', 'L': [5, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [5, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': [5, 0], 'N': 'ADDRC'},
			{'D': 'i', 'T': 'b', 'L': [5, 0], 'N': 'ADDRD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DIC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DID'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM64M"]]

	return(signals)

def RAM64X1D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DPO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SPO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM64X1D"]]

	return(signals)

def RAM64X1D_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DPO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SPO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DPRA5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM64X1D_1"]]

	return(signals)

def RAM64X1S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM64X1S"]]

	return(signals)

def RAM64X1S_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM64X1S_1"]]

	return(signals)

def RAM64X2S():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'D1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAM64X2S"]]

	return(signals)

def RAMB16(DOA_REG, DOB_REG, INIT_FILE,
			INVERT_CLK_DOA_REG, INVERT_CLK_DOB_REG, RAM_EXTENSION_A,
			RAM_EXTENSION_B, READ_WIDTH_A, READ_WIDTH_B,
			SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
			WRITE_WIDTH_A, WRITE_WIDTH_B):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DOA_REG'},
			{'T': 'i', 'N': 'DOB_REG'},
			{'T': 's', 'N': 'INIT_FILE'},
			{'T': 'b', 'N': 'INVERT_CLK_DOA_REG'},
			{'T': 'b', 'N': 'INVERT_CLK_DOB_REG'},
			{'T': 's', 'N': 'RAM_EXTENSION_A'},
			{'T': 's', 'N': 'RAM_EXTENSION_B'},
			{'T': 'i', 'N': 'READ_WIDTH_A'},
			{'T': 'i', 'N': 'READ_WIDTH_B'},
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'},
			{'T': 'i', 'N': 'WRITE_WIDTH_A'},
			{'T': 'i', 'N': 'WRITE_WIDTH_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CASCADEOUTA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CASCADEOUTB'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [14, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [14, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CASCADEINA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CASCADEINB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEB'},
			[CompLib, generics, "RAMB16"]]

	return(signals)

def RAMB16BWE(DATA_WIDTH_A, DATA_WIDTH_B, SIM_COLLISION_CHECK,
			WRITE_MODE_A, WRITE_MODE_B):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DATA_WIDTH_A'},
			{'T': 'i', 'N': 'DATA_WIDTH_B'},
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEB'},
			[CompLib, generics, "RAMB16BWE"]]

	return(signals)

def RAMB16BWER(DATA_WIDTH_A, DATA_WIDTH_B, DOA_REG,
			DOB_REG, EN_RSTRAM_A, EN_RSTRAM_B,
			INIT_FILE, RSTTYPE, RST_PRIORITY_A,
			RST_PRIORITY_B, SIM_COLLISION_CHECK, SIM_DEVICE,
			WRITE_MODE_A, WRITE_MODE_B):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DATA_WIDTH_A'},
			{'T': 'i', 'N': 'DATA_WIDTH_B'},
			{'T': 'i', 'N': 'DOA_REG'},
			{'T': 'i', 'N': 'DOB_REG'},
			{'T': 'b', 'N': 'EN_RSTRAM_A'},
			{'T': 'b', 'N': 'EN_RSTRAM_B'},
			{'T': 's', 'N': 'INIT_FILE'},
			{'T': 's', 'N': 'RSTTYPE'},
			{'T': 's', 'N': 'RST_PRIORITY_A'},
			{'T': 's', 'N': 'RST_PRIORITY_B'},
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'SIM_DEVICE'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEB'},
			[CompLib, generics, "RAMB16BWER"]]

	return(signals)

def RAMB16BWE_S18(WRITE_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'WRITE_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOP'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'WE'},
			[CompLib, generics, "RAMB16BWE_S18"]]

	return(signals)

def RAMB16BWE_S18_S18(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'WEB'},
			[CompLib, generics, "RAMB16BWE_S18_S18"]]

	return(signals)

def RAMB16BWE_S18_S9(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16BWE_S18_S9"]]

	return(signals)

def RAMB16BWE_S36(WRITE_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'WRITE_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOP'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WE'},
			[CompLib, generics, "RAMB16BWE_S36"]]

	return(signals)

def RAMB16BWE_S36_S18(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'WEB'},
			[CompLib, generics, "RAMB16BWE_S36_S18"]]

	return(signals)

def RAMB16BWE_S36_S36(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEB'},
			[CompLib, generics, "RAMB16BWE_S36_S36"]]

	return(signals)

def RAMB16BWE_S36_S9(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16BWE_S36_S9"]]

	return(signals)

def RAMB16_S1(WRITE_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'WRITE_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [13, 0], 'N': 'ADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB16_S1"]]

	return(signals)

def RAMB16_S18(WRITE_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'WRITE_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOP'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB16_S18"]]

	return(signals)

def RAMB16_S18_S18(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S18_S18"]]

	return(signals)

def RAMB16_S18_S36(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S18_S36"]]

	return(signals)

def RAMB16_S1_S1(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S1_S1"]]

	return(signals)

def RAMB16_S1_S18(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S1_S18"]]

	return(signals)

def RAMB16_S1_S2(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [12, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S1_S2"]]

	return(signals)

def RAMB16_S1_S36(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S1_S36"]]

	return(signals)

def RAMB16_S1_S4(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S1_S4"]]

	return(signals)

def RAMB16_S1_S9(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S1_S9"]]

	return(signals)

def RAMB16_S2(WRITE_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'WRITE_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [12, 0], 'N': 'ADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB16_S2"]]

	return(signals)

def RAMB16_S2_S18(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [12, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S2_S18"]]

	return(signals)

def RAMB16_S2_S2(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [12, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [12, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S2_S2"]]

	return(signals)

def RAMB16_S2_S36(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [12, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S2_S36"]]

	return(signals)

def RAMB16_S2_S4(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [12, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S2_S4"]]

	return(signals)

def RAMB16_S2_S9(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [12, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S2_S9"]]

	return(signals)

def RAMB16_S36(WRITE_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'WRITE_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': [8, 0], 'N': 'ADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DI'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DIP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB16_S36"]]

	return(signals)

def RAMB16_S36_S36(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S36_S36"]]

	return(signals)

def RAMB16_S4(WRITE_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'WRITE_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'ADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB16_S4"]]

	return(signals)

def RAMB16_S4_S18(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S4_S18"]]

	return(signals)

def RAMB16_S4_S36(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S4_S36"]]

	return(signals)

def RAMB16_S4_S4(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S4_S4"]]

	return(signals)

def RAMB16_S4_S9(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S4_S9"]]

	return(signals)

def RAMB16_S9(WRITE_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'WRITE_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': [10, 0], 'N': 'ADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DI'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DIP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB16_S9"]]

	return(signals)

def RAMB16_S9_S18(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S9_S18"]]

	return(signals)

def RAMB16_S9_S36(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S9_S36"]]

	return(signals)

def RAMB16_S9_S9(SIM_COLLISION_CHECK, WRITE_MODE_A, WRITE_MODE_B,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB16_S9_S9"]]

	return(signals)

def RAMB18(DOA_REG, DOB_REG, INIT_FILE,
			READ_WIDTH_A, READ_WIDTH_B, SIM_COLLISION_CHECK,
			SIM_MODE, WRITE_MODE_A, WRITE_MODE_B,
			WRITE_WIDTH_A, WRITE_WIDTH_B):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DOA_REG'},
			{'T': 'i', 'N': 'DOB_REG'},
			{'T': 's', 'N': 'INIT_FILE'},
			{'T': 'i', 'N': 'READ_WIDTH_A'},
			{'T': 'i', 'N': 'READ_WIDTH_B'},
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'SIM_MODE'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'},
			{'T': 'i', 'N': 'WRITE_WIDTH_A'},
			{'T': 'i', 'N': 'WRITE_WIDTH_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [13, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'WEB'},
			[CompLib, generics, "RAMB18"]]

	return(signals)

def RAMB18SDP(DO_REG, INIT_FILE, SIM_COLLISION_CHECK,
			SIM_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DO_REG'},
			{'T': 's', 'N': 'INIT_FILE'},
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'SIM_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOP'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'RDADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WE'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'WRADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WREN'},
			[CompLib, generics, "RAMB18SDP"]]

	return(signals)

def RAMB32_S64_ECC(DO_REG, SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DO_REG'},
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'STATUS'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'RDADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'WRADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WREN'},
			[CompLib, generics, "RAMB32_S64_ECC"]]

	return(signals)

def RAMB36(DOA_REG, DOB_REG, INIT_FILE,
			RAM_EXTENSION_A, RAM_EXTENSION_B, READ_WIDTH_A,
			READ_WIDTH_B, SIM_COLLISION_CHECK, SIM_MODE,
			WRITE_MODE_A, WRITE_MODE_B, WRITE_WIDTH_A,
			WRITE_WIDTH_B):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DOA_REG'},
			{'T': 'i', 'N': 'DOB_REG'},
			{'T': 's', 'N': 'INIT_FILE'},
			{'T': 's', 'N': 'RAM_EXTENSION_A'},
			{'T': 's', 'N': 'RAM_EXTENSION_B'},
			{'T': 'i', 'N': 'READ_WIDTH_A'},
			{'T': 'i', 'N': 'READ_WIDTH_B'},
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'SIM_MODE'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'},
			{'T': 'i', 'N': 'WRITE_WIDTH_A'},
			{'T': 'i', 'N': 'WRITE_WIDTH_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CASCADEOUTLATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CASCADEOUTLATB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CASCADEOUTREGA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CASCADEOUTREGB'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CASCADEINLATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CASCADEINLATB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CASCADEINREGA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CASCADEINREGB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEB'},
			[CompLib, generics, "RAMB36"]]

	return(signals)

def RAMB36SDP(DO_REG, EN_ECC_READ, EN_ECC_SCRUB,
			EN_ECC_WRITE, INIT_FILE, SIM_COLLISION_CHECK,
			SIM_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DO_REG'},
			{'T': 'b', 'N': 'EN_ECC_READ'},
			{'T': 'b', 'N': 'EN_ECC_SCRUB'},
			{'T': 'b', 'N': 'EN_ECC_WRITE'},
			{'T': 's', 'N': 'INIT_FILE'},
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'SIM_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DBITERR'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'ECCPARITY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SBITERR'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'RDADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDEN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSR'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'WE'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'WRADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WREN'},
			[CompLib, generics, "RAMB36SDP"]]

	return(signals)

def RAMB36SDP_EXP(DO_REG, EN_ECC_READ, EN_ECC_SCRUB,
			EN_ECC_WRITE, INIT_FILE, SIM_COLLISION_CHECK,
			SIM_MODE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DO_REG'},
			{'T': 'b', 'N': 'EN_ECC_READ'},
			{'T': 'b', 'N': 'EN_ECC_SCRUB'},
			{'T': 'b', 'N': 'EN_ECC_WRITE'},
			{'T': 's', 'N': 'INIT_FILE'},
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'SIM_MODE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DBITERR'},
			{'D': 'o', 'T': 'b', 'L': [63, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOP'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'ECCPARITY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'SBITERR'},
			{'D': 'i', 'T': 'b', 'L': [63, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIP'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'RDADDRL'},
			{'D': 'i', 'T': 'b', 'L': [14, 0], 'N': 'RDADDRU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLKL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDCLKU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDENL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDENU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDRCLKL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDRCLKU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRU'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'WEL'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'WEU'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'WRADDRL'},
			{'D': 'i', 'T': 'b', 'L': [14, 0], 'N': 'WRADDRU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLKL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRCLKU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRENL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WRENU'},
			[CompLib, generics, "RAMB36SDP_EXP"]]

	return(signals)

def RAMB36_EXP(DOA_REG, DOB_REG, INIT_FILE,
			RAM_EXTENSION_A, RAM_EXTENSION_B, READ_WIDTH_A,
			READ_WIDTH_B, SIM_COLLISION_CHECK, SIM_MODE,
			WRITE_MODE_A, WRITE_MODE_B, WRITE_WIDTH_A,
			WRITE_WIDTH_B):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'i', 'N': 'DOA_REG'},
			{'T': 'i', 'N': 'DOB_REG'},
			{'T': 's', 'N': 'INIT_FILE'},
			{'T': 's', 'N': 'RAM_EXTENSION_A'},
			{'T': 's', 'N': 'RAM_EXTENSION_B'},
			{'T': 'i', 'N': 'READ_WIDTH_A'},
			{'T': 'i', 'N': 'READ_WIDTH_B'},
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'},
			{'T': 's', 'N': 'SIM_MODE'},
			{'T': 's', 'N': 'WRITE_MODE_A'},
			{'T': 's', 'N': 'WRITE_MODE_B'},
			{'T': 'i', 'N': 'WRITE_WIDTH_A'},
			{'T': 'i', 'N': 'WRITE_WIDTH_B'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CASCADEOUTLATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CASCADEOUTLATB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CASCADEOUTREGA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CASCADEOUTREGB'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DOB'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOPB'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'ADDRAL'},
			{'D': 'i', 'T': 'b', 'L': [14, 0], 'N': 'ADDRAU'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'ADDRBL'},
			{'D': 'i', 'T': 'b', 'L': [14, 0], 'N': 'ADDRBU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CASCADEINLATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CASCADEINLATB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CASCADEINREGA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CASCADEINREGB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKAL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKAU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKBL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKBU'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIPB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENAL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENAU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENBL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENBU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEAL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEAU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEBL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCEBU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCLKAL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCLKAU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCLKBL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'REGCLKBU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRAL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRAU'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRBL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'SSRBU'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEAL'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'WEAU'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'WEBL'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'WEBU'},
			[CompLib, generics, "RAMB36_EXP"]]

	return(signals)

def RAMB4_S1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [11, 0], 'N': 'ADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB4_S1"]]

	return(signals)

def RAMB4_S16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'ADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB4_S16"]]

	return(signals)

def RAMB4_S16_S16(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S16_S16"]]

	return(signals)

def RAMB4_S1_S1(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S1_S1"]]

	return(signals)

def RAMB4_S1_S16(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S1_S16"]]

	return(signals)

def RAMB4_S1_S2(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S1_S2"]]

	return(signals)

def RAMB4_S1_S4(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S1_S4"]]

	return(signals)

def RAMB4_S1_S8(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [0, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [11, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [0, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S1_S8"]]

	return(signals)

def RAMB4_S2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [10, 0], 'N': 'ADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB4_S2"]]

	return(signals)

def RAMB4_S2_S16(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S2_S16"]]

	return(signals)

def RAMB4_S2_S2(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S2_S2"]]

	return(signals)

def RAMB4_S2_S4(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S2_S4"]]

	return(signals)

def RAMB4_S2_S8(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [1, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [10, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S2_S8"]]

	return(signals)

def RAMB4_S4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [9, 0], 'N': 'ADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB4_S4"]]

	return(signals)

def RAMB4_S4_S16(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S4_S16"]]

	return(signals)

def RAMB4_S4_S4(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S4_S4"]]

	return(signals)

def RAMB4_S4_S8(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [3, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S4_S8"]]

	return(signals)

def RAMB4_S8():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': [8, 0], 'N': 'ADDR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'RST'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'WE'},
			[CompLib, generics, "RAMB4_S8"]]

	return(signals)

def RAMB4_S8_S16(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S8_S16"]]

	return(signals)

def RAMB4_S8_S8(SIM_COLLISION_CHECK):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_COLLISION_CHECK'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOA'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'DOB'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRA'},
			{'D': 'i', 'T': 'b', 'L': [8, 0], 'N': 'ADDRB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKB'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIA'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'DIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'ENB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RSTB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'WEB'},
			[CompLib, generics, "RAMB4_S8_S8"]]

	return(signals)

def ROC():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			[CompLib, generics, "ROC"]]

	return(signals)

def ROCBUF():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "ROCBUF"]]

	return(signals)

def ROM128X1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A6'},
			[CompLib, generics, "ROM128X1"]]

	return(signals)

def ROM16X1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			[CompLib, generics, "ROM16X1"]]

	return(signals)

def ROM256X1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A5'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A6'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A7'},
			[CompLib, generics, "ROM256X1"]]

	return(signals)

def ROM32X1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			[CompLib, generics, "ROM32X1"]]

	return(signals)

def ROM64X1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A4'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'A5'},
			[CompLib, generics, "ROM64X1"]]

	return(signals)

def SIM_CONFIG_S3A():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CSOB'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'D'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DONE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'INITB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CSIB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCMLOCK'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'M'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PROGB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDWRB'},
			[CompLib, generics, "SIM_CONFIG_S3A"]]

	return(signals)

def SIM_CONFIG_V5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'BUSY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CSOB'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'D'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DONE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'INITB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CSB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCMLOCK'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'M'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PROGB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RDWRB'},
			[CompLib, generics, "SIM_CONFIG_V5"]]

	return(signals)

def SPI_ACCESS(SIM_DELAY_TYPE, SIM_DEVICE, SIM_MEM_FILE,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_DELAY_TYPE'},
			{'T': 's', 'N': 'SIM_DEVICE'},
			{'T': 's', 'N': 'SIM_MEM_FILE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'MISO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CSB'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MOSI'},
			[CompLib, generics, "SPI_ACCESS"]]

	return(signals)

def SRL16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "SRL16"]]

	return(signals)

def SRL16E():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "SRL16E"]]

	return(signals)

def SRL16E_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "SRL16E_1"]]

	return(signals)

def SRL16_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "SRL16_1"]]

	return(signals)

def SRLC16():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q15'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "SRLC16"]]

	return(signals)

def SRLC16E():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q15'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "SRLC16E"]]

	return(signals)

def SRLC16E_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q15'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "SRLC16E_1"]]

	return(signals)

def SRLC16_1():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q15'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A0'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A1'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A2'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'A3'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "SRLC16_1"]]

	return(signals)

def SRLC32E():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'Q31'},
			{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'A'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'D'},
			[CompLib, generics, "SRLC32E"]]

	return(signals)

def STARTBUF_FPGACORE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GSROUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSRIN'},
			[CompLib, generics, "STARTBUF_FPGACORE"]]

	return(signals)

def STARTBUF_SPARTAN2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GSROUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GTSOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSRIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTSIN'},
			[CompLib, generics, "STARTBUF_SPARTAN2"]]

	return(signals)

def STARTBUF_SPARTAN3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GSROUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GTSOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSRIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTSIN'},
			[CompLib, generics, "STARTBUF_SPARTAN3"]]

	return(signals)

def STARTBUF_VIRTEX():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GSROUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GTSOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSRIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTSIN'},
			[CompLib, generics, "STARTBUF_VIRTEX"]]

	return(signals)

def STARTBUF_VIRTEX2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GSROUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GTSOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSRIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTSIN'},
			[CompLib, generics, "STARTBUF_VIRTEX2"]]

	return(signals)

def STARTBUF_VIRTEX4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EOSOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GSROUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'GTSOUT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSRIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTSIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRCCLKOIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRCCLKTSIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRDONEOIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRDONETSIN'},
			[CompLib, generics, "STARTBUF_VIRTEX4"]]

	return(signals)

def STARTUP_FPGACORE():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSR'},
			[CompLib, generics, "STARTUP_FPGACORE"]]

	return(signals)

def STARTUP_SPARTAN3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTS'},
			[CompLib, generics, "STARTUP_SPARTAN3"]]

	return(signals)

def STARTUP_SPARTAN3A():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTS'},
			[CompLib, generics, "STARTUP_SPARTAN3A"]]

	return(signals)

def STARTUP_SPARTAN3E():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'MBT'},
			[CompLib, generics, "STARTUP_SPARTAN3E"]]

	return(signals)

def STARTUP_VIRTEX4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EOS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRCCLKO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRCCLKTS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRDONEO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRDONETS'},
			[CompLib, generics, "STARTUP_VIRTEX4"]]

	return(signals)

def STARTUP_VIRTEX5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CFGCLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CFGMCLK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DINSPI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EOS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'TCKSPI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GSR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'GTS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRCCLKO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRCCLKTS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRDONEO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'USRDONETS'},
			[CompLib, generics, "STARTUP_VIRTEX5"]]

	return(signals)

def SYSMON(SIM_MONITOR_FILE):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 's', 'N': 'SIM_MONITOR_FILE'}]
	signals = [{'D': 'o', 'T': 'b', 'L': [2, 0], 'N': 'ALM'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'BUSY'},
			{'D': 'o', 'T': 'b', 'L': [4, 0], 'N': 'CHANNEL'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'DO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DRDY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EOC'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EOS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'JTAGBUSY'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'JTAGLOCKED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'JTAGMODIFIED'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'OT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CONVST'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CONVSTCLK'},
			{'D': 'i', 'T': 'b', 'L': [6, 0], 'N': 'DADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DEN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'DI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DWE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RESET'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'VAUXN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'VAUXP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'VN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'VP'},
			[CompLib, generics, "SYSMON"]]

	return(signals)

def TBLOCK():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [[CompLib, generics, "TBLOCK"]]

	return(signals)

def TEMAC(EMAC0_1000BASEX_ENABLE, EMAC0_ADDRFILTER_ENABLE, EMAC0_BYTEPHY,
			EMAC0_CONFIGVEC_79, EMAC0_GTLOOPBACK, EMAC0_HOST_ENABLE,
			EMAC0_LTCHECK_DISABLE, EMAC0_MDIO_ENABLE, EMAC0_PHYINITAUTONEG_ENABLE,
			EMAC0_PHYISOLATE, EMAC0_PHYLOOPBACKMSB, EMAC0_PHYPOWERDOWN,
			EMAC0_PHYRESET, EMAC0_RGMII_ENABLE, EMAC0_RX16BITCLIENT_ENABLE,
			EMAC0_RXFLOWCTRL_ENABLE, EMAC0_RXHALFDUPLEX, EMAC0_RXINBANDFCS_ENABLE,
			EMAC0_RXJUMBOFRAME_ENABLE, EMAC0_RXRESET, EMAC0_RXVLAN_ENABLE,
			EMAC0_RX_ENABLE, EMAC0_SGMII_ENABLE, EMAC0_SPEED_LSB,
			EMAC0_SPEED_MSB, EMAC0_TX16BITCLIENT_ENABLE, EMAC0_TXFLOWCTRL_ENABLE,
			EMAC0_TXHALFDUPLEX, EMAC0_TXIFGADJUST_ENABLE, EMAC0_TXINBANDFCS_ENABLE,
			EMAC0_TXJUMBOFRAME_ENABLE, EMAC0_TXRESET, EMAC0_TXVLAN_ENABLE,
			EMAC0_TX_ENABLE, EMAC0_UNIDIRECTION_ENABLE, EMAC0_USECLKEN,
			EMAC1_1000BASEX_ENABLE, EMAC1_ADDRFILTER_ENABLE, EMAC1_BYTEPHY,
			EMAC1_CONFIGVEC_79, EMAC1_GTLOOPBACK, EMAC1_HOST_ENABLE,
			EMAC1_LTCHECK_DISABLE, EMAC1_MDIO_ENABLE, EMAC1_PHYINITAUTONEG_ENABLE,
			EMAC1_PHYISOLATE, EMAC1_PHYLOOPBACKMSB, EMAC1_PHYPOWERDOWN,
			EMAC1_PHYRESET, EMAC1_RGMII_ENABLE, EMAC1_RX16BITCLIENT_ENABLE,
			EMAC1_RXFLOWCTRL_ENABLE, EMAC1_RXHALFDUPLEX, EMAC1_RXINBANDFCS_ENABLE,
			EMAC1_RXJUMBOFRAME_ENABLE, EMAC1_RXRESET, EMAC1_RXVLAN_ENABLE,
			EMAC1_RX_ENABLE, EMAC1_SGMII_ENABLE, EMAC1_SPEED_LSB,
			EMAC1_SPEED_MSB, EMAC1_TX16BITCLIENT_ENABLE, EMAC1_TXFLOWCTRL_ENABLE,
			EMAC1_TXHALFDUPLEX, EMAC1_TXIFGADJUST_ENABLE, EMAC1_TXINBANDFCS_ENABLE,
			EMAC1_TXJUMBOFRAME_ENABLE, EMAC1_TXRESET, EMAC1_TXVLAN_ENABLE,
			EMAC1_TX_ENABLE, EMAC1_UNIDIRECTION_ENABLE, EMAC1_USECLKEN,
	):
	CompLib = "unisim_VCOMP"
	generics = [True,
			{'T': 'b', 'N': 'EMAC0_1000BASEX_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_ADDRFILTER_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_BYTEPHY'},
			{'T': 'b', 'N': 'EMAC0_CONFIGVEC_79'},
			{'T': 'b', 'N': 'EMAC0_GTLOOPBACK'},
			{'T': 'b', 'N': 'EMAC0_HOST_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_LTCHECK_DISABLE'},
			{'T': 'b', 'N': 'EMAC0_MDIO_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_PHYINITAUTONEG_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_PHYISOLATE'},
			{'T': 'b', 'N': 'EMAC0_PHYLOOPBACKMSB'},
			{'T': 'b', 'N': 'EMAC0_PHYPOWERDOWN'},
			{'T': 'b', 'N': 'EMAC0_PHYRESET'},
			{'T': 'b', 'N': 'EMAC0_RGMII_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_RX16BITCLIENT_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_RXFLOWCTRL_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_RXHALFDUPLEX'},
			{'T': 'b', 'N': 'EMAC0_RXINBANDFCS_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_RXJUMBOFRAME_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_RXRESET'},
			{'T': 'b', 'N': 'EMAC0_RXVLAN_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_RX_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_SGMII_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_SPEED_LSB'},
			{'T': 'b', 'N': 'EMAC0_SPEED_MSB'},
			{'T': 'b', 'N': 'EMAC0_TX16BITCLIENT_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_TXFLOWCTRL_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_TXHALFDUPLEX'},
			{'T': 'b', 'N': 'EMAC0_TXIFGADJUST_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_TXINBANDFCS_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_TXJUMBOFRAME_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_TXRESET'},
			{'T': 'b', 'N': 'EMAC0_TXVLAN_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_TX_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_UNIDIRECTION_ENABLE'},
			{'T': 'b', 'N': 'EMAC0_USECLKEN'},
			{'T': 'b', 'N': 'EMAC1_1000BASEX_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_ADDRFILTER_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_BYTEPHY'},
			{'T': 'b', 'N': 'EMAC1_CONFIGVEC_79'},
			{'T': 'b', 'N': 'EMAC1_GTLOOPBACK'},
			{'T': 'b', 'N': 'EMAC1_HOST_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_LTCHECK_DISABLE'},
			{'T': 'b', 'N': 'EMAC1_MDIO_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_PHYINITAUTONEG_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_PHYISOLATE'},
			{'T': 'b', 'N': 'EMAC1_PHYLOOPBACKMSB'},
			{'T': 'b', 'N': 'EMAC1_PHYPOWERDOWN'},
			{'T': 'b', 'N': 'EMAC1_PHYRESET'},
			{'T': 'b', 'N': 'EMAC1_RGMII_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_RX16BITCLIENT_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_RXFLOWCTRL_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_RXHALFDUPLEX'},
			{'T': 'b', 'N': 'EMAC1_RXINBANDFCS_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_RXJUMBOFRAME_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_RXRESET'},
			{'T': 'b', 'N': 'EMAC1_RXVLAN_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_RX_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_SGMII_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_SPEED_LSB'},
			{'T': 'b', 'N': 'EMAC1_SPEED_MSB'},
			{'T': 'b', 'N': 'EMAC1_TX16BITCLIENT_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_TXFLOWCTRL_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_TXHALFDUPLEX'},
			{'T': 'b', 'N': 'EMAC1_TXIFGADJUST_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_TXINBANDFCS_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_TXJUMBOFRAME_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_TXRESET'},
			{'T': 'b', 'N': 'EMAC1_TXVLAN_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_TX_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_UNIDIRECTION_ENABLE'},
			{'T': 'b', 'N': 'EMAC1_USECLKEN'}]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DCRHOSTDONEIR'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTANINTERRUPT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXBADFRAME'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXCLIENTCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'EMAC0CLIENTRXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXDVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXDVLDMSW'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXFRAMEDROP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXGOODFRAME'},
			{'D': 'o', 'T': 'b', 'L': [6, 0], 'N': 'EMAC0CLIENTRXSTATS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXSTATSBYTEVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTRXSTATSVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXCLIENTCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXCOLLISION'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXRETRANSMIT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXSTATS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXSTATSBYTEVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0CLIENTTXSTATSVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYENCOMMAALIGN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYLOOPBACKMSB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYMCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYMDOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYMDTRI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYMGTRXRESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYMGTTXRESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYPOWERDOWN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYSYNCACQSTATUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXCHARDISPMODE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXCHARDISPVAL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXCHARISK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXCLK'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'EMAC0PHYTXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXER'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0PHYTXGMIIMIICLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC0SPEEDIS10100'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTANINTERRUPT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXBADFRAME'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXCLIENTCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': [15, 0], 'N': 'EMAC1CLIENTRXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXDVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXDVLDMSW'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXFRAMEDROP'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXGOODFRAME'},
			{'D': 'o', 'T': 'b', 'L': [6, 0], 'N': 'EMAC1CLIENTRXSTATS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXSTATSBYTEVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTRXSTATSVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXACK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXCLIENTCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXCOLLISION'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXRETRANSMIT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXSTATS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXSTATSBYTEVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1CLIENTTXSTATSVLD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYENCOMMAALIGN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYLOOPBACKMSB'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYMCLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYMDOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYMDTRI'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYMGTRXRESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYMGTTXRESET'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYPOWERDOWN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYSYNCACQSTATUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXCHARDISPMODE'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXCHARDISPVAL'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXCHARISK'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXCLK'},
			{'D': 'o', 'T': 'b', 'L': [7, 0], 'N': 'EMAC1PHYTXD'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXEN'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXER'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1PHYTXGMIIMIICLKOUT'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMAC1SPEEDIS10100'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'EMACDCRACK'},
			{'D': 'o', 'T': 'b', 'L': [0, 31], 'N': 'EMACDCRDBUS'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'HOSTMIIMRDY'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'HOSTRDDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0DCMLOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0PAUSEREQ'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'CLIENTEMAC0PAUSEVAL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0RXCLIENTCLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXCLIENTCLKIN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'CLIENTEMAC0TXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXDVLD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXDVLDMSW'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXFIRSTBYTE'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'CLIENTEMAC0TXIFGDELAY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC0TXUNDERRUN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1DCMLOCKED'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1PAUSEREQ'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'CLIENTEMAC1PAUSEVAL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1RXCLIENTCLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXCLIENTCLKIN'},
			{'D': 'i', 'T': 'b', 'L': [15, 0], 'N': 'CLIENTEMAC1TXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXDVLD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXDVLDMSW'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXFIRSTBYTE'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'CLIENTEMAC1TXIFGDELAY'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CLIENTEMAC1TXUNDERRUN'},
			{'D': 'i', 'T': 'b', 'L': [0, 9], 'N': 'DCREMACABUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCREMACCLK'},
			{'D': 'i', 'T': 'b', 'L': [0, 31], 'N': 'DCREMACDBUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCREMACENABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCREMACREAD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'DCREMACWRITE'},
			{'D': 'i', 'T': 'b', 'L': [9, 0], 'N': 'HOSTADDR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'HOSTCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'HOSTEMAC1SEL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'HOSTMIIMSEL'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'HOSTOPCODE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'HOSTREQ'},
			{'D': 'i', 'T': 'b', 'L': [31, 0], 'N': 'HOSTWRDATA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0COL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0CRS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0GTXCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0MCLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0MDIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0MIITXCLK'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'PHYEMAC0PHYAD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXBUFERR'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'PHYEMAC0RXBUFSTATUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXCHARISCOMMA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXCHARISK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXCHECKINGCRC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXCLK'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PHYEMAC0RXCLKCORCNT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXCOMMADET'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PHYEMAC0RXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXDISPERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXER'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'PHYEMAC0RXLOSSOFSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXNOTINTABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0RXRUNDISP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0SIGNALDET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0TXBUFERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC0TXGMIIMIICLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1COL'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1CRS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1GTXCLK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1MCLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1MDIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1MIITXCLK'},
			{'D': 'i', 'T': 'b', 'L': [4, 0], 'N': 'PHYEMAC1PHYAD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXBUFERR'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'PHYEMAC1RXBUFSTATUS'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXCHARISCOMMA'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXCHARISK'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXCHECKINGCRC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXCLK'},
			{'D': 'i', 'T': 'b', 'L': [2, 0], 'N': 'PHYEMAC1RXCLKCORCNT'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXCOMMADET'},
			{'D': 'i', 'T': 'b', 'L': [7, 0], 'N': 'PHYEMAC1RXD'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXDISPERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXDV'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXER'},
			{'D': 'i', 'T': 'b', 'L': [1, 0], 'N': 'PHYEMAC1RXLOSSOFSYNC'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXNOTINTABLE'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1RXRUNDISP'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1SIGNALDET'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1TXBUFERR'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'PHYEMAC1TXGMIIMIICLKIN'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'RESET'},
			[CompLib, generics, "TEMAC"]]

	return(signals)

def TIMEGRP():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [[CompLib, generics, "TIMEGRP"]]

	return(signals)

def TIMESPEC():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [[CompLib, generics, "TIMESPEC"]]

	return(signals)

def TOC():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			[CompLib, generics, "TOC"]]

	return(signals)

def TOCBUF():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "TOCBUF"]]

	return(signals)

def USR_ACCESS_VIRTEX4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DATAVALID'},
			[CompLib, generics, "USR_ACCESS_VIRTEX4"]]

	return(signals)

def USR_ACCESS_VIRTEX5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'CFGCLK'},
			{'D': 'o', 'T': 'b', 'L': [31, 0], 'N': 'DATA'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'DATAVALID'},
			[CompLib, generics, "USR_ACCESS_VIRTEX5"]]

	return(signals)

def VCC():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'P'},
			[CompLib, generics, "VCC"]]

	return(signals)

def WIREAND():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I'},
			[CompLib, generics, "WIREAND"]]

	return(signals)

def XNOR2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "XNOR2"]]

	return(signals)

def XNOR3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "XNOR3"]]

	return(signals)

def XNOR4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "XNOR4"]]

	return(signals)

def XNOR5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "XNOR5"]]

	return(signals)

def XOR2():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			[CompLib, generics, "XOR2"]]

	return(signals)

def XOR3():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			[CompLib, generics, "XOR3"]]

	return(signals)

def XOR4():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			[CompLib, generics, "XOR4"]]

	return(signals)

def XOR5():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I0'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I1'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I2'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I3'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'I4'},
			[CompLib, generics, "XOR5"]]

	return(signals)

def XORCY():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LI'},
			[CompLib, generics, "XORCY"]]

	return(signals)

def XORCY_D():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'o', 'T': 'b', 'L': 1, 'N': 'O'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LI'},
			[CompLib, generics, "XORCY_D"]]

	return(signals)

def XORCY_L():
	CompLib = "unisim_VCOMP"
	generics = [False]
	signals = [{'D': 'o', 'T': 'b', 'L': 1, 'N': 'LO'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'CI'},
			{'D': 'i', 'T': 'b', 'L': 1, 'N': 'LI'},
			[CompLib, generics, "XORCY_L"]]

	return(signals)

