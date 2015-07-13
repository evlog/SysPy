"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name : SysPy (System Python) 
		 http://cgi.di.uoa.gr/~evlog/syspy.html
 
File Name    : fsm_sim.py.py
 
Created by   : Evangelos Logaras

"""

import SysPy_setup
from inspect import *
import _toVHDL
reload(_toVHDL)
import funcs._beh_sim
reload(funcs._beh_sim)
from pdb import *
from _sim_functions import *

def fsm_sim(): 
       
       numOfSamples = 100
       
       def proc_1(clk):
              if (rst == 1):
                     state = 0
                     sim_time = funcs._beh_sim.simTime()
                     output_fifo_ready = 0
                     data_counter = 0
                     
                     # Read values from *.wav file                                          
                     SimObj.musicFileName = "music_file.wav"
                     
                     # Define filter parameters (# of taps, sampling 
	              # and cutoff freq. in Hz) Filter0
                     SimObj.FilterDict["Filter0"]['N'] = 5
                     SimObj.FilterDict["Filter0"]["fs"] = 16000.0
                     SimObj.FilterDict["Filter0"]["fc0"] = 250.0
                     SimObj.FilterDict["Filter0"]["fc1"] = 1000.0

                     # Define filter parameters (# of taps, sampling 
	              # and cutoff freq. in Hz) Filter1
                     SimObj.FilterDict["Filter1"]['N'] = 5
                     SimObj.FilterDict["Filter1"]["fs"] = 16000.0
                     SimObj.FilterDict["Filter1"]["fc0"] = 1600.0
                     SimObj.FilterDict["Filter1"]["fc1"] = 4800.0
                     
                     # Define filter parameters (# of taps, sampling 
	              # and cutoff freq. in Hz) Filter2
                     SimObj.FilterDict["Filter2"]['N'] = 5
                     SimObj.FilterDict["Filter2"]["fs"] = 16000.0
                     SimObj.FilterDict["Filter2"]["fc0"] = 3000.0
                     SimObj.FilterDict["Filter2"]["fc1"] = 5000.0
                     
                     # Define filter parameters (# of taps, sampling 
	              # and cutoff freq. in Hz) Filter3
                     SimObj.FilterDict["Filter3"]['N'] = 5
                     SimObj.FilterDict["Filter3"]["fs"] = 16000.0
                     SimObj.FilterDict["Filter3"]["fc0"] = 5000.0
                     SimObj.FilterDict["Filter3"]["fc1"] = 7999.0
                     
                     # Initialize simulation object
                     SimObj.init()
                     
       
              if (funcs._beh_sim.rising_edge2("clk") == True):
                     sim_time = funcs._beh_sim.simTime()
                     if (start == 1):

                            if (state == 0):
                                   state = 1
                            elif (state == 1):
                                   input_fifo_ready = SimObj.inputFifo()
                                   if (input_fifo_ready == 1):
                                          state = 2
                                   else:
                                          state = 1
                            elif (state == 2):
                                   if (SimObj.outputFifoCounter("Filter0") == numOfSamples):
                                          state = 3
                                   else:
                                          state = 1   
                            elif (state == 3):
                                   SimObj.printOutputFifoData()
                                   #SimObj.printFrequencyResponse()
                                   state = 3
                                   funcs._beh_sim.endSimulation()
                                                          


       def proc_2(clk,state):   
               
              if (funcs._beh_sim.rising_edge2("clk") == True):
                            if (state == 2):
                                   filt_out0 = SimObj.Fir(1, "Filter0")
                                   filt_out1 = SimObj.Fir(1, "Filter1") 
                                   filt_out2 = SimObj.Fir(1, "Filter2")
                                   filt_out3 = SimObj.Fir(1, "Filter3") 
                                   data_counter = SimObj.outputFifoCounter("Filter0")
                                   #input_fifo_empty = SimObj.inputFifo()                 
                            elif (state == 3):
                                   output_fifo_ready = 1
                            else:
                                   filt_out0 = SimObj.PreserveState("Filter0")
                                   filt_out1 = SimObj.PreserveState("Filter1")
                                   filt_out2 = SimObj.PreserveState("Filter2")
                                   filt_out3 = SimObj.PreserveState("Filter3")
       
              else:
                   filt_out0 = SimObj.PreserveState("Filter0")
                   filt_out1 = SimObj.PreserveState("Filter1")
                   filt_out2 = SimObj.PreserveState("Filter2")
                   filt_out3 = SimObj.PreserveState("Filter3")



              
              
                    

generics = {}
# Simulation parameters (5000us duration, 1ns time step) 
attributes = {"sign": '+', "simulation": [15000, 1, "ns"], "FPGA_DEV": "Virtex5"}

# Create a 50MHz clock sequence for 50ms, 50% duty cycle
clk_seq = []
clk = 0
for i in range(8, 15000, 10):
       clk = not clk
       if (clk == True):
              clk_seq.append([str(i), '1'])
       else:
              clk_seq.append([str(i), '0'])
       
# I/O and internal signal declaration
i_sigs0 = {'D': 'i', 'T': 'b', 'L': 1, 'N': ["rst", "clk", "start"]}
o_sigs0 = {'D': 'o', 'del': 0, 'T': 'b', 'L': [0, 5], 'N': "state"}
o_sigs1 = {'D': 'o', 'del': 7, 'T': 'b', 'L': [0, 16], 'N': ["filt_out3", "filt_out1", "filt_out2"]}
o_sigs2 = {'D': 'o', 'del': 15, 'T': 'b', 'L': [0, 16], 'N': "filt_out0"}
o_sigs3 = {'D': 'o', 'del': 0, 'T': 'b', 'L': 1, 'N': "input_fifo_ready"}
o_sigs4 = {'D': 'o', 'del': 0, 'T': 'b', 'L': [0, 31], 'N': "sim_time"}
o_sigs5 = {'D': 'o', 'del': 0, 'T': 'b', 'L': [0, 31], 'N': "data_counter"}
o_sigs6 = {'D': 'o', 'del': 0, 'T': 'b', 'L': 1, 'N': "output_fifo_ready"}

# Define values for input signals
sim_sigs0 = {'D': 'sim', 'T': 'b', 'L': 1, 'N': "rst", 'V': [['0', '1'], ['5', '0']]}
sim_sigs1 = {'D': 'sim', 'T': 'b', 'L': 1, 'N': "clk", 'V': clk_seq}
sim_sigs2 = {'D': 'sim', 'T': 'b', 'L': 1, 'N': "start", 'V': [['0', '0'], ['6', '1']]}


code = getsourcelines(fsm_sim)

_toVHDL.toVHDL("fsm_sim", attributes, generics, i_sigs0, o_sigs0, o_sigs1, o_sigs2, o_sigs3, o_sigs4, o_sigs5, o_sigs6, sim_sigs0, sim_sigs1, sim_sigs2, code)
