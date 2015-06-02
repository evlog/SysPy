from inspect import *
import _toVHDL
reload(_toVHDL)
def simple_filt():

     filt_out = func_fir_filt(filt_in, filt_out_int, clk, rst, 8, "s", "6.2", -3.5, -64.0)

attributes = {"sign": '-'}
filt_in = {'D': 'i', 'T': 'b', 'L': [8, 0], 'N': "filt_in"}
clk_rst = {'D': 'i', 'T': 'b', 'L': 1, 'N': ["clk", "rst"]}
filt_out = {'D': 'o', 'T': 'b', 'L': [18, 0], 'N': "filt_out"}
filt_out_int = {'D': 'intr', 'T': 'b', 'L': [18, 0], 'N': "filt_out_int"}

data_flow_code = getsourcelines(simple_filt)

_toVHDL.toVHDL("simple_filt", attributes, filt_in, filt_out, clk_rst, filt_out_int, data_flow_code)
