from inspect import *
import _toVHDL
reload(_toVHDL)
def clk_div():
       def proc_0(clk, rst):
              if rst == '0':
                     clk_div_25MHz_int = '0'  
                     count_25MHz = 0
              elif rising_edge(clk):
                     if count_25MHz == 1:
                            count_25MHz = 0
                            clk_div_25MHz_int = ~ clk_div_25MHz_int
                     else:
                            count_25MHz = count_25MHz + 1
       clk_div_25MHz = clk_div_25MHz_int

# Design's atrributes
attributes = {"sign": '+', "FSM_STYLE": "lut", "MUX_EXTRACT": "yes"}
generics = { }
       
iosigs0 = {'D': 'i', 'T': 'b', 'L': 1, 'N': ["rst", "clk"]}
iosigs1 = {'D': 'o', 'T': 'b', 'L': 1, 'N': "clk_div_25MHz"} 

intrsigs0 = {'D': 'intr', 'T': 'b', 'L': 1, 'N': "clk_div_25MHz_int", 'V': '0'}
intrsigs1 = {'D': 'v', 'T': 'int', 'L': [0, 3], 'N': "count_25MHz", 'V': 0}

code = getsourcelines(clk_div)

_toVHDL.toVHDL("clk_div", attributes, generics, iosigs0, iosigs1, intrsigs0, intrsigs1, code)

