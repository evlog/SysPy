from inspect import *
import _toVHDL
reload(_toVHDL)
def sobel():

       zero_ext = others('0')
       
       def proc_0(clk, rst):
              if rst == '1':
                     t_read = '0'
                     t_write = '0'
                     sqrt_write = '0'
                     sqrt_in = others('0')
                     data_out_buf = others('0')
                     count = 0
                     state = s0
              elif rising_edge(clk):
                     if state == s0:
                            if t_dpr == '1':
                                   t_read = '1'
                                   t_write = '0'
                                   sqrt_write = '0'
                                   sqrt_in = others('0')
                                   data_out_buf = ~data_out_buf
                                   state = s1
                            elif t_dpr == '0':
                                   t_read = '0'
                                   t_write = '0'
                                   sqrt_write = '0'
                                   sqrt_in = others('0')
                                   data_out_buf = data_out_buf
                                   state = s0
                     elif state == s1:
                            window_data[count] = data_in
                            count = count + 1
                            t_read = '1'
                            t_write = '0'
                            sqrt_write = '0'
                            sqrt_in = others('0')
                            data_out_buf = data_out_buf
                            state = s2
                     elif state == s2:
                            if count <= 9:
                                   t_read = '0'
                                   t_write = '0'
                                   sqrt_write = '0'
                                   sqrt_in = others('0')
                                   data_out_buf = data_out_buf
                                   state = s0	
                            elif count > 9:
                                   count = 0
                                   t_read = '0'
                                   t_write = '0'
                                   sqrt_write = '0'
                                   sqrt_in = others('0')
                                   data_out_buf = data_out_buf
                                   state = s3
                     elif state == s3:
                            sobel[0] =  (zero_ext & window_data[1]) - (zero_ext & window_data[3]) + (zero_ext & window_data[4]) + (zero_ext & window_data[4]) - (zero_ext & window_data[6]) - (zero_ext & window_data[6]) + (zero_ext & window_data[7]) + (zero_ext & window_data[9])							 
                            sobel[1] = (- (zero_ext & window_data[1])) - (zero_ext & window_data[2]) - (zero_ext & window_data[2]) - (zero_ext & window_data[3]) + (zero_ext & window_data[7]) + (zero_ext & window_data[8]) + (zero_ext & window_data[8]) + (zero_ext & window_data[9])									 
                            t_read = '0'
                            t_write = '0'
                            sqrt_write = '0'
                            sqrt_in = others('0')
                            data_out_buf = data_out_buf
                            state = s4
                     elif state == s4:
                            t_read = '0'
                            t_write = '0'
                            sqrt_write = '0'
                            sqrt_in = sobel[0] * sobel[0] + sobel[1] * sobel[1]
                            data_out_buf = data_out_buf
                            state = s5
                     elif state == s5:
                            t_read = '0'
                            t_write = '0'
                            sqrt_write = '1'
                            sqrt_in = sobel[0] * sobel[0] + sobel[1] * sobel[1]
                            data_out_buf = data_out_buf
                            state = s6
                     elif state == s6:
                            if sqrt_ready == '1':
                                   t_read = '0'
                                   t_write = '0'
                                   sqrt_write = '0'
                                   sobel[2] = "0000000" & sqrt_out
                                   sqrt_in = others('0')
                                   data_out_buf = data_out_buf
                                   state = s7
                            elif sqrt_ready == '0':
                                   t_read = '0'
                                   t_write = '0'
                                   sqrt_write = '0'
                                   sqrt_in = sobel[0] * sobel[0] + sobel[1] * sobel[1]
                                   data_out_buf = data_out_buf
                                   state = s6
                            elif state == s7:
                                   t_read = '0'
                                   t_write = '0'
                                   sqrt_write = '0'
                                   sqrt_in = others('0')
                                   data_out_buf = data_out_buf
                                   if sobel[count] > "00000000000000000000000011111111":
                                          sobel[count] = "00000000000000000000000011111111"

                                   if sobel[count] < "00000000000000000000000000000000":
                                          sobel[count] = others('0')

                                   state = s8
                            elif state == s8:			
                                   t_read = '0'
                                   t_write = '0'
                                   sqrt_write = '0'
                                   sqrt_in = others('0')
                                   data_out_buf = data_out_buf
                                   state = s9
                            elif state == s9:
                                   if count < 2:
                                          count = count + 1
                                          t_read = '0'
                                          t_write = '0'
                                          sqrt_write = '0'
                                          sqrt_in = others('0')
                                          data_out_buf = data_out_buf
                                          state = s7
                                   elif count >= 2:
                                          count = 0
                                          t_read = '0'
                                          t_write = '0'
                                          sqrt_write = '0'
                                          sqrt_in = others('0')
                                          data_out_buf = sobel[2][7:0]
                                          state = s10
                            elif state == s10:	
                                   if t_cts == '1':
                                          t_read = '0'
                                          t_write = '1'
                                          sqrt_write = '0'
                                          sqrt_in = others('0')
                                          data_out_buf = sobel[2][7:0]
                                          state = s11
                                   elif t_cts == '0':
                                          t_read = '0'
                                          t_write = '0'
                                          sqrt_write = '0'
                                          sqrt_in = others('0')
                                          data_out_buf = sobel[2][7:0]
                                          state = s11
                            elif state == s11:
                                   t_read = '0'
                                   t_write = '1'
                                   sqrt_write = '0'
                                   sqrt_in = others('0')
                                   data_out_buf = sobel[2][7:0]
                                   state = s0

       def struct_XCoreLib_sqrt48():
              x_in = sqrt_in[47:0]
              sclr = rst
              nd = sqrt_write
              x_out = sqrt_out
              rdy = sqrt_ready
              clk = clk



# Design's atrributes
attributes = {"sign": '-', "FSM_STYLE": "lut", "MUX_EXTRACT": "yes", "FPGA_DEV": "Virtex5"}
generics = {}
       
iosigs0 = {'D': 'i', 'T': 'b', 'L': 1, 'N': ["rst", "clk", "t_cts", "t_dpr"]}
iosigs1 = {'D': 'o', 'T': 'b', 'L': 1, 'N': ["t_write", "t_read"]}
iosigs2 = {'D': 'i', 'T': 'b', 'L': [7, 0], 'N': "data_in"}
iosigs3 = {'D': 'o', 'T': 'b', 'L': [7, 0], 'N': "data_out"}

intrsigs0 = {'D': 'intr', 'T': 's', 'L': 1, 'N': "state", 'V': ["s0", "s1", "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11"]}
intrsigs1 = {'D': 'intr', 'T': 'arrb', 'L': [[0, 9], [7, 0]], 'N': "window_data"}
intrsigs2 = {'D': 'intr', 'T': 'arrb', 'L': [[0, 2], [31, 0]], 'N': "sobel"}
intrsigs3 = {'D': 'intr', 'T': 'b', 'L': 1, 'N': ["sqrt_write", "sqrt_ready"]}
intrsigs4 = {'D': 'intr', 'T': 'b', 'L': [63, 0], 'N': "sqrt_in"}
intrsigs5 = {'D': 'intr', 'T': 'b', 'L': [24, 0], 'N': "sqrt_out"}
intrsigs6 = {'D': 'intr', 'T': 'b', 'L': [7, 0], 'N': "data_out_buf"}
intrsigs7 = {'D': 'intr', 'T': 'b', 'L': [23, 0], 'N': "zero_ext"}
intrsigs8 = {'D': 'v', 'T': 'int', 'L': [0, 15], 'N': "count"}

code = getsourcelines(sobel)

_toVHDL.toVHDL("sobel", attributes, generics, iosigs0, iosigs1, iosigs2, iosigs3, intrsigs0, intrsigs1, intrsigs2, intrsigs3, intrsigs4, intrsigs5, intrsigs6, intrsigs7, intrsigs8, code)

