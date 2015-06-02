import SysPy_setup
from inspect import *
import _toVHDL
reload(_toVHDL)  
def HAL_FSM():

       m_rtr = PORTB_in[0]
       m_ack = PORTB_in[3]
       rst_fsm = PORTB_in[4]

       def proc_0(clk, rst_fsm, ce2int):
              if rst_fsm == '1':
                     PORTB_out[1] = '0'
                     PORTB_out[2] = '0'
                     PORTC_out = "00000000000000000000000000000000"
              elif rising_edge(clk):
                     if state == smy0:
                            if ce2int == '1':
                                   sendnext = '0'
                                   rstFSMforsend = '0'
                                   state = smy1
                            elif ce2int == '0':
                                   sendnext = '0'
                                   state = smy0
 
                     elif state == smy1:
                            if count < 10:
                                   ROM[count] = dimem
                                   sendfsmint = '0'
                                   state = smy2        
                            elif count >= 10:
                                   sendfsmint = '0'
                                   count = 0
                                   rstFSMforsend = '1'
                                   state = s0   

                     elif state == smy2:        
                            count = count + 1
                            sendfsmint = '1'
                            state = smy1del       

                     elif state == smy1del:     
                            state = smy1   

                     elif state == s0:    
                            if m_rtr == '1':  
                                   PORTB_out[1] = '1'  
                                   state = s1           
                            elif m_rtr == '0':  
                                   PORTB_out[1] = '0'  
                                   state = s0  

                     elif state == s1:
                            PORTC_out = ROM[count]
                            PORTB_out[2] = '1'
                            state = s2

                     elif state == s2:
                            if m_ack == '1':
                                   PORTB_out[1] = '0'
                                   PORTB_out[2] = '0'
                                   state = s3
                            elif m_ack == '0':
                                   PORTB_out[2] = '1'
                                   state = s2

                     elif state == s3:
                            if count >= 10:
                                   sendnext = '1'
                                   count = 0
                                   state = smy0
                            elif count < 10:
                                   count = count + 1
                                   sendnext = '0'
                                   state = s0

generics = {}
attributes = {"sign": '+', "PROC_SW": ["greth"], "FPGA_DEV": "Virtex5"}


i_sigs0 = {'D': 'i', 'T': 'b', 'L': 1, 'N': ["clk", "ce2int"]}
i_sigs1 = {'D': 'i', 'T': 'b', 'L': [31, 0], 'N': ["dimem", "PORTA_in", "PORTB_in", "PORTC_in"]} 
o_sigs0 = {'D': 'o', 'T': 'b', 'L': 1, 'N': ["sendnext", "sendfsmint", "rstFSMforsend"]}
o_sigs1 = {'D': 'o', 'T': 'b', 'L': [31, 0], 'N': ["PORTA_out", "PORTB_out", "PORTC_out"]} 

int_sigs0 = {'D': 'intr', 'T': 'b', 'L': 1, 'N': ["m_rtr", "m_ack", "rst_fsm"]}
int_sigs1 = {'D': 'intr', 'T': 's', 'L': 1, 'N': "state", 'V': ["smy0", "smy1", "smy2", "smy1del", "s0", "s1", "s2", "s3"]}
int_sigs2 = {'D': 'intr', 'T': 'arrb', 'L': [[0, 10], [31, 0]], 'N': "ROM"}
int_sigs3 = {'D': 'v', 'T': 'int', 'L': [0, 15], 'N': "count"}


code = getsourcelines(HAL_FSM)

_toVHDL.toVHDL("HAL_FSM", attributes, generics, i_sigs0, i_sigs1, o_sigs0, o_sigs1, int_sigs0, int_sigs1, int_sigs2, int_sigs3, code)
