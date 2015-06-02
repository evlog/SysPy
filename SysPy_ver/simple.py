from inspect import *
import _toVHDL
reload(_toVHDL)
def simple():

       #v1 = "0011"
       def proc_2(clk_0, rst):
              if rst == '0':
                     dfr = sig_int + conv_integer(x)
                     dfr = 2
                     state = s0
                     mv = 3
                     v1 = "0011" #+ v2[i:0]
                     #v1 = "0011"
                     v2 = "1111"
              elif rising_edge(clk_0):
                     if state == s0:
                            z = "1001"


                            #z = conv_std_logic(500, 4)
                            z = arrb[2]
                            #z = arrbv[m0][n0]
                            z = arrv[2][m0:n0]
                            z = arrb[2][3:m]
                            z = x
                            z = arrbv[2]
                            arrbv[2] = x
                            #z = x[i0:0]
                            #z = x[0:n0]
                            #z = x[i0:n0]
                            #z = arriv[m0]
                            z = "1101"
                            dfr = -8
                            state = s2
                     elif state < s2:
                            z = "0001"
                            state = s2
                     elif state == s2:
                            z = "011" + "010"
                            state = s3
                     elif state == s3:
                            #z = conv_std_logic_vector(x)
                            #z = func_fir_filt(x, 1.2, 0.2)
                            z = func_fir_filt(x, z, clk_0, rst, 8, "u", "6.2", 1.201, 0.2)
                            #dfr = 3
                            state = s0

##       def struct_mux_2_1_4():
##              I0 = y1[7:4]
##              I1 = x#y2
##              sel = '0'
##              O = "open"

       def struct_and2(n = 5, m = 4):
              I0 = "00000"
              I1 = x2
              c = rst
              O = z0

       def struct_and2(n = 4, m = 4):
              I0 = x0
              I1 = x2[3:0]
              c = x2[4]
              O = z0

       def struct_and5():
              I0 = "0000"
              I1 = x1
              O = z0

##       def struct_mux_2_1_4():
##              I0 = x
##              I1 = x
##              sel = '1'
##              O = z

# Design's atrributes
attributes = {"sign": '+', "FSM_STYLE": "lut", "MUX_EXTRACT": "yes"}
generics = {'k': 4}
       
xt = {'D': 'i', 'T': 'b', 'L': [3, 0], 'N': ['x', 'y']}
x2t = {'D': 'i', 'T': 'b', 'L': [4, 0], 'N': ['x2', 'y2']}
x0t = {'D': 'i', 'T': 'b', 'L': [3, 0], 'N': ['x0', 'x1']}
y1t = {'D': 'i', 'T': 'b', 'L': [7, 0], 'N': ["y1", "y2"]}
clkt = {'D': 'i', 'T': 'b', 'L': 1, 'N': ["clk_0", "rst"]}
zt = {'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'z'}
z0t = {'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'z0'}

testt = {'D': 'intr', 'T': 'b', 'L': 1, 'N': "test"}

z1t = {'D': 'intr', 'T': 'b', 'L': [3, 0], 'N': ['z1', "z2"], 'V': "1001"}

vart = {'D': 'intr', 'T': 'b', 'L': [3, 0], 'N': ["v1", "v2"], 'V': "1001"}

var2t = {'D': 'intr', 'T': 'int', 'L': [0, 3], 'N': ['mv', 'm0', 'i0', 'n0'], 'V': 3}

st = {'D': 'intr', 'T': 's', 'L': 1, 'N': "state", 'V': ["s0", "s1", "s2", "s3"]}

sig_int = {'D': 'intr', 'T': 'int', 'L': [-10,15], 'N': ["sig_int", "dfr", "z1"], 'V': 10}

sig_int2 = {'D': 'intr', 'T': 'int', 'L': [0,15], 'N': ["i", "m", "n"]}

arrb = {'D': 'intr', 'T': 'arrb', 'L': [[0, 2], [3, 0]], 'N': "arrb", 'V': ["101", "111", "0101"]}
arrbv = {'D': 'intr', 'T': 'arrb', 'L': [[0, 2], [3, 0]], 'N': "arrbv", 'V': ["111", "101", "1101"]}
arrv = {'D': 'intr', 'T': 'arrb', 'L': [[0, 2], [3, 0]], 'N': "arrv", 'V': ["111", "101", "1101"]}
arri = {'D': 'intr', 'T': 'arri', 'L': [[0, 2], [0, 15]], 'N': "arri", 'V': [10, 3, 8]}
arriv = {'D': 'intr', 'T': 'arri', 'L': [[0, 2], [0, 15]], 'N': "arriv", 'V': [20, 3, 8]}

data_flow_code = getsourcelines(simple)
#behavioral_code = getsourcelines(simple_proc)

_toVHDL.toVHDL("simple", attributes, generics, vart, var2t, sig_int, sig_int2, st, xt, x2t, y1t, zt, z1t, testt, clkt, x0t, z0t, arrb, arrv, arrbv, arri, arriv, data_flow_code)
