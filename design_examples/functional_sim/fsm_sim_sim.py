import funcs._beh_sim
from pdb import *
from _sim_functions import *
SimObj = SimFunctions2()
import example
def fsm_sim(rst, clk, start): 
       

       global input_fifo_ready, output_fifo_ready, state, filt_out3, filt_out1, filt_out2, filt_out0, sim_time, data_counter
       input_fifo_ready = 0
       data_counter = 0
       clk_out1 = 0
       clk_out2 = 0
       clk_out3 = 0
       numOfSamples = 100
       
       def proc_1(clk):
              global input_fifo_ready, output_fifo_ready, state, filt_out3, filt_out1, filt_out2, filt_out0, sim_time, data_counter
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
              global input_fifo_ready, output_fifo_ready,  filt_out3, filt_out1, filt_out2, filt_out0, sim_time, data_counter
               
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

       proc_1(clk)
       proc_2(clk,state)
       return input_fifo_ready, output_fifo_ready, state, filt_out3, filt_out1, filt_out2, filt_out0, sim_time, data_counter