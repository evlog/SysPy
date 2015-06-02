from inspect import *
import _toVHDL
reload(_toVHDL)
def simple2():
       def proc_2(clk, rst):
              if rst == '1':
                     h_cts = '1'
                     t_dpr = '0'
                     h_rec_buf = "00000000"
                     state_hrb = s0
              elif rising_edge(clk):
                     if state_hrb == s0:
                            if h_write == '1': 
                                   h_cts = '0'
                                   t_dpr = '0'
                                   h_rec_buf = h_rec_buf
                                   state_hrb = s1		
                            elif h_write == '0':
                                   h_cts = '1'
                                   t_dpr = '0'
                                   h_rec_buf = h_rec_buf
                                   state_hrb = s0
                     elif state_hrb == s1:		
                            if h_write == '0':
                                   h_cts = '0'
                                   t_dpr = '1'
                                   h_rec_buf = h_rec_buf
                                   state_hrb = s2		
                            elif h_write == '1':
                                   h_cts  = '0'
                                   t_dpr  = '0'
                                   h_rec_buf = h_rec_buf
                                   state_hrb = s1
                     elif state_hrb == s2:	
                            if t_read == '1':
                                   h_cts = '0'
                                   t_dpr = '1'
                                   h_rec_buf = h_data_in
                                   state_hrb = s3		
                            elif t_read == '0':
                                   h_cts = '0'
                                   t_dpr = '1'
                                   h_rec_buf = h_rec_buf
                                   state_hrb = s2
                     elif state_hrb == s3:
                            if t_read == '0':
                                   h_cts = '0'
                                   t_dpr = '0'
                                   h_rec_buf = h_rec_buf
                                   state_hrb = s4
                            elif t_read == '1':
                                   h_cts = '0'
                                   t_dpr = '1'
                                   h_rec_buf = h_data_in
                                   state_hrb = s3
                     elif state_hrb == s4:
                            h_cts = '1'
                            t_dpr = '0'
                            h_rec_buf = h_rec_buf
                            state_hrb = s0

       t_data_out = h_rec_buf

       def proc_2(clk, rst):
              if rst == '1':
                     t_cts = '1'
                     h_dpr = '0'
                     t_rec_buf = "00000000"
                     state_trb = s0
              elif rising_edge(clk):
                     if state_trb == s0:
                            if t_write == '1': 
                                   t_cts = '0'
                                   h_dpr = '0'
                                   t_rec_buf = h_rec_buf
                                   state_trb = s1		
                            elif t_write == '0':
                                   t_cts = '1'
                                   h_dpr = '0'
                                   t_rec_buf = t_rec_buf
                                   state_trb = s0
                     elif state_trb == s1:		
                            if t_write == '0':
                                   t_cts = '0'
                                   h_dpr = '1'
                                   t_rec_buf = t_rec_buf
                                   state_trb = s2		
                            elif t_write == '1':
                                   t_cts  = '0'
                                   h_dpr  = '0'
                                   t_rec_buf = t_rec_buf
                                   state_trb = s1
                     elif state_trb == s2:	
                            if h_read == '1':
                                   t_cts = '0'
                                   h_dpr = '1'
                                   t_rec_buf = t_data_in
                                   state_trb = s3		
                            elif h_read == '0':
                                   t_cts = '0'
                                   h_dpr = '1'
                                   t_rec_buf = t_rec_buf
                                   state_trb = s2
                     elif state_trb == s3:
                            if h_read == '0':
                                   t_cts = '0'
                                   h_dpr = '0'
                                   t_rec_buf = t_rec_buf
                                   state_trb = s4
                            elif h_read == '1':
                                   t_cts = '0'
                                   h_dpr = '1'
                                   t_rec_buf = t_data_in
                                   state_trb = s3
                     elif state_trb == s4:
                            t_cts = '1'
                            h_dpr = '0'
                            t_rec_buf = t_rec_buf
                            state_trb = s0

       h_data_out = t_rec_buf
  

# Design's atrributes
attributes = {"sign": '+'}
generics = {'n': 8}
       
iosigs0 = {'D': 'i', 'T': 'b', 'L': 1, 'N': ["rst", "clk", "h_write", "t_write", "h_read", "t_read"]}
iosigs1 = {'D': 'o', 'T': 'b', 'L': 1, 'N': ["h_cts", "t_cts", "h_dpr", "t_dpr"]}
iosigs2 = {'D': 'i', 'T': 'b', 'L': ["(n - 1)", 0], 'N': ["h_data_in", "t_data_in"]}
iosigs3 = {'D': 'o', 'T': 'b', 'L': ["(n - 1)", 0], 'N': ["h_data_out", "t_data_out"]}

intrsig0 = {'D': 'intr', 'T': 's', 'L': 1, 'N': ["state_hrb", "state_trb"], 'V': ["s0", "s1", "s2", "s3", "s4"]}
intrsig1 = {'D': 'intr', 'T': 'b', 'L': ["(n - 1)", 0], 'N': ["h_rec_buf", "t_rec_buf"], 'V': "00000000"}

data_flow_code = getsourcelines(simple2)

_toVHDL.toVHDL("simple2", attributes, generics, iosigs0, iosigs1, iosigs2, iosigs3, intrsig0, intrsig1, data_flow_code)
