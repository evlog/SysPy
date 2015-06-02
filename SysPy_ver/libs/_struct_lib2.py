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

def leon3mp():
       CompLib = "custom"
       generics = [False]
       signals = [{'D': 'i', 'T': 'b', 'L': 1, 'N': ["nrst", "clk"]},
                         [CompLib, generics, "leon3mp"]]
       
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

def fir_filt_u_comp(n, m):
       CompLib = False
       generics = [True, 'n', 'm']
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["clk", "rst"]},
                       {'D': 'i', 'T': 'b', 'L': ["(n - 1)", 0],'N': "filt_in"},
                       {'D': 'i', 'T': 'b', 'L': ["((m * n) - 1)", 0], 'N': "filt_param"},
                       {'D': 'o', 'T': 'b', 'L': ["(filt_acc_bus(n, m) - 1)", 0], 'N': "filt_out"},
                         [CompLib, generics, "fir_filt_u_comp"]]

       return(signals)

def fir_filt_s_comp(n, m):
       CompLib = False
       generics = [True, 'n', 'm']
       signals = [{'D': 'i', 'T': 'b', 'L': 1,'N': ["clk", "rst"]},
                       {'D': 'i', 'T': 'b', 'L': ["(n - 1)", 0],'N': "filt_in"},
                       {'D': 'i', 'T': 'b', 'L': ["((m * n) - 1)", 0], 'N': "filt_param"},
                       {'D': 'o', 'T': 'b', 'L': ["(filt_acc_bus(n, m) - 1)", 0], 'N': "filt_out"},
                         [CompLib, generics, "fir_filt_s_comp"]]

       return(signals)





       
       
