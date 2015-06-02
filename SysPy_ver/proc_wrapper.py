from inspect import *
import _toVHDL
reload(_toVHDL)
def proc_wrapper():
       gn = '0'
       gnb = others('0')
       rst_int = ~ rst_buf
       
       if (ddrareg_out_int == "11111111"):
              porta_int = porta_avr
       else:
              porta_int = "ZZZZZZZZ"

       if (ddrbreg_out_int == "00000000"):
              portb_avr = portb_int
       else:
              portb_avr = "ZZZZZZZZ"

       if (ddrcreg_out_int == "11111111"):
              portc_buf = portc_avr
       else:
              portc_buf = "ZZZZZZZZ"

       portc_buf = "00000000"
										
       if (ddrdreg_out_int == "11111111"):
              portd_int = portd_avr
       else:
              portd_int = "ZZZZZZZZ"

       if (ddrereg_out_int[1:0] == "11"):
              porte_int = porte_avr
       else:
              porte_int = "ZZ"

       if (ddrereg_out_int[3:2] == "00"):
              pine_avr = pine_int
       else:
              pine_avr = "ZZ"

       def struct_Leon3_wrapper():
              nrst = rst_int
              clk = clk_div_25MHz_int

##       def struct_top_avr_core_v8():
##              nrst = rst_int
##              clk = clk_div_25MHz_int
##              porta = porta_avr
##              portb = portb_avr
##              portc = portc_avr
##              portd = portd_avr
##              porte[0] = porte_avr[0]
##              porte[1] = porte_avr[1]
##              porte[3] = pine_avr[1]
##              porte[2] = pine_avr[0]
##              porte[7] = porte_avr_unus[7]
##              porte[6] = porte_avr_unus[6]
##              porte[5] = porte_avr_unus[5]
##              porte[4] = porte_avr_unus[4]
##              ddrareg_out = ddrareg_out_int
##              ddrbreg_out = ddrbreg_out_int
##              ddrcreg_out = ddrcreg_out_int
##              ddrdreg_out = ddrdreg_out_int
##              ddrereg_out = ddrereg_out_int
##              rxd = rxd_buf
##              txd = txd_buf
##              INTx = gnb
##              TMS = gn
##              TCK = gn
##              TDI = gn
##              TDO = "open" 
##              TRSTn = rst_int
##              man_rst = rst_int

       def struct_sobel():
              rst = rst_buf
              clk = clk_div_25MHz_int
              t_cts = t_cts_int
              t_dpr = t_dpr_int
              t_write = t_write_int
              t_read = t_read_int
              data_in = t_data_out_int
              data_out = t_data_in_int

       def struct_bridge(n = 8):
              rst = rst_buf
              clk = clk_buf
              h_write = porte_int[0]
              t_write = t_write_int
              h_read = porte_int[1]
              t_read = t_read_int
              h_cts = pine_int[0]
              t_cts = t_cts_int
              h_dpr = pine_int[1]
              t_dpr = t_dpr_int
              h_data_in = porta_int
              t_data_in = t_data_in_int
              h_data_out = portb_int
              t_data_out = t_data_out_int

       def struct_clk_div():
              clk = clk_buf
              rst = rst_buf
              clk_div_25MHz = clk_div_25MHz_int


				   
# Design's atrributes
attributes = {"sign": '+', "PROC_SW": ["greth"], "FPGA_DEV": "Virtex5"}
generics = {}


iosigs0 = {'D': 'i', 'T': 'b', 'L': 1, 'N': ["clk", "rst", "rxd"]}
iosigs1 = {'D': 'o', 'T': 'b', 'L': 1, 'N': "txd"}
iosigs2 = {'D': 'o', 'T': 'b', 'L': [7, 0], 'N': "portc"}

intrsigs0 = {'D': 'intr', 'T': 'b', 'L': 1, 'N': ["clk_buf", "clk_div_25MHz_int", "clk_div_50MHz_int", "clk_div_100Hz_int", "rst_int", "gn"]}
intrsigs1 = {'D': 'intr', 'T': 'b', 'L': 1, 'N': ["t_cts_int", "t_dpr_int", "t_write_int", "t_read_int", "rst_buf", "txd_buf", "rxd_buf"]}
intrsigs2 = {'D': 'intr', 'T': 'b', 'L': [7, 0], 'N': ["porta_int", "portb_int", "portc_int", "portd_int", "porta_avr", "portb_avr", "portc_avr"]}
intrsigs3 = {'D': 'intr', 'T': 'b', 'L': [7, 0], 'N': ["portd_avr", "porte_avr_unus", "ddrareg_out_int", "ddrbreg_out_int", "ddrcreg_out_int"]}
intrsigs4 = {'D': 'intr', 'T': 'b', 'L': [7, 0], 'N': ["ddrdreg_out_int", "ddrereg_out_int", "t_data_in_int", "t_data_out_int", "portc_buf", "gnb"]}
intrsigs5 = {'D': 'intr', 'T': 'b', 'L': [1, 0], 'N': ["porte_int", "pine_int", "porte_avr", "pine_avr"]}

code = getsourcelines(proc_wrapper)

_toVHDL.toVHDL("proc_wrapper", attributes, generics, iosigs0, iosigs1, iosigs2, intrsigs0, intrsigs1, intrsigs2, intrsigs3, intrsigs4, intrsigs5, code)

