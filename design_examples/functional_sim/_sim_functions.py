"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name : SysPy (System Python) 
		 http://cgi.di.uoa.gr/~evlog/syspy.html
 
File Name    : _sim_functions.py
 
Created by   : Evangelos Logaras

"""

import time
import example
import math
from pdb import *
from _fp_sign_to_bin import *
from scipy import signal
from random import *
import matplotlib.pyplot as plt
from numpy import absolute, pi

class SimFunctions2:
       FilterOut0 = 0
       FilterOut1 = 0
       FilterOut2 = 0
       FilterOut3 = 0
       
       plotFlag = True
       
       MusicFileArray = []
       
       musicFileName = ''
       
       outputFifo = {"Filter0": [], "Filter1": [], "Filter2": [], "Filter3": []} 
       
       musicCategories = {"Rock": {"Filter0": 0.1, "Filter1": 0.01, "Filter2": 0.025, "Filter3": 0.4}, 
                         "Pop": {"Filter0": 0.23, "Filter1": 1.1, "Filter2": 0.056, "Filter3": 0.4}, 
                         "Classical": {"Filter0": 2.0, "Filter1": 1.3, "Filter2": 0.85, "Filter3": 2.2}} 
       

       # Paramaters for coefficients calculation using scipy
       fs = 16000.0 # sampling frequency
       N = 5 # number of taps
       fpNotation = "2.6"
       fpDecimalSize = 0
       i = fpNotation.find('.')
       fpDecimalSize = int(fpNotation[(i+1):].replace('"', ''))
       
       # Filter0
       fc = 1000.0# / (0.05 * fs)
       coeffFilter0 = signal.firwin(N, fc, nyq = (0.5 * fs), window = 'hamming')
       coeffFilter0Fp = []      
       for i in coeffFilter0:
              coeffFilter0Fp.append(int(fp_sign_to_bin(i, fpNotation), 2))
              
       # Filter1
       fc0 = 1000.0# / (0.05 * fs)
       fc1 = 3000.0# / (0.1 * fs)
       coeffFilter1 = signal.firwin(N, [fc0, fc1], nyq = (0.5 * fs), window = 'hamming')
       coeffFilter1Fp = []      
       for i in coeffFilter1:
              coeffFilter1Fp.append(int(fp_sign_to_bin(i, fpNotation), 2))
              
       # Filter2
       fc0 = 3000.0# / (0.05 * fs)
       fc1 = 5000.0# / (0.1 * fs)
       coeffFilter2 = signal.firwin(N, [fc0, fc1], nyq = (0.5 * fs), window = 'hamming')
       coeffFilter2Fp = []      
       for i in coeffFilter2:
              coeffFilter2Fp.append(int(fp_sign_to_bin(i, fpNotation), 2))
              
       # Filter3
       fc0 = 5000.0# / (0.05 * fs)
       fc1 = 7999.0# / (0.1 * fs)
       coeffFilter3 = signal.firwin(N, [fc0, fc1], nyq = (0.5 * fs), window = 'hamming')
       coeffFilter3Fp = []      
       for i in coeffFilter3:
              coeffFilter3Fp.append(int(fp_sign_to_bin(i, fpNotation), 2))
       
       FilterDict = {"Filter0": {"Coefficients": coeffFilter0Fp, "fc0": 0.0, "fc1": 0.0, "fs": 0.0, 'N': 0, "registerQueue": 5 * [0], "OutPort": 0, "Counter": 0},
                     "Filter1": {"Coefficients": coeffFilter1Fp, "fc0": 0.0, "fc1": 0.0, "fs": 0.0, 'N': 0, "registerQueue": 5 * [0], "OutPort": 0, "Counter": 0},
                     "Filter2": {"Coefficients": coeffFilter2Fp, "fc0": 0.0, "fc1": 0.0, "fs": 0.0, 'N': 0, "registerQueue": 5 * [0], "OutPort": 0, "Counter": 0},
                     "Filter3": {"Coefficients": coeffFilter3Fp, "fc0": 0.0, "fc1": 0.0, "fs": 0.0, 'N': 0, "registerQueue": 5 * [0], "OutPort": 0, "Counter": 0}}

       


       def init(self):                             
              self.count0 = 0
              self.count1 = 0
              
              # Open the wav music file
              MusicFile = open(self.musicFileName, 'r')
              
              # Read the music samples into an array
              self.MusicFileArray = MusicFile.read()
              self.MusicFileArray = self.MusicFileArray[:(len(self.MusicFileArray) - 1)]
              self.MusicFileArray = self.MusicFileArray.split("\n")
              
              # Filter0
              coeffFilter0 = signal.firwin(self.FilterDict["Filter0"]['N'], [self.FilterDict["Filter0"]["fc0"], self.FilterDict["Filter0"]["fc1"]], nyq = (0.5 * self.FilterDict["Filter0"]["fs"]), window = 'hamming')
              ## Calculate coefficients in C
              print "C implementation"
              set_trace()
              ###############
              for i in range(len(coeffFilter0)):
                     coeffFilter0[i] = example.hamming_win(self.FilterDict["Filter0"]['N'], i, self.FilterDict["Filter0"]["fc1"], self.FilterDict["Filter0"]["fs"]) 
              
              
              set_trace()
              ##################
              
              
              coeffFilter0Fp = []      
              for i in coeffFilter0:
                     coeffFilter0Fp.append(int(fp_sign_to_bin(i, self.fpNotation), 2))
             
              self.FilterDict["Filter0"]["Coefficients"] = coeffFilter0Fp
              
              # Filter1
              coeffFilter1 = signal.firwin(self.FilterDict["Filter1"]['N'], [self.FilterDict["Filter1"]["fc0"], self.FilterDict["Filter1"]["fc1"]], nyq = (0.5 * self.FilterDict["Filter1"]["fs"]), window = 'hamming')
              coeffFilter1Fp = []      
              for i in coeffFilter1:
                     coeffFilter1Fp.append(int(fp_sign_to_bin(i, self.fpNotation), 2))
             
              self.FilterDict["Filter1"]["Coefficients"] = coeffFilter1Fp              
              
              # Filter2
              coeffFilter2 = signal.firwin(self.FilterDict["Filter2"]['N'], [self.FilterDict["Filter2"]["fc0"], self.FilterDict["Filter2"]["fc1"]], nyq = (0.5 * self.FilterDict["Filter2"]["fs"]), window = 'hamming')
              coeffFilter2Fp = []      
              for i in coeffFilter2:
                     coeffFilter2Fp.append(int(fp_sign_to_bin(i, self.fpNotation), 2))
             
              self.FilterDict["Filter2"]["Coefficients"] = coeffFilter2Fp              
              
              # Filter3
              coeffFilter3 = signal.firwin(self.FilterDict["Filter3"]['N'], [self.FilterDict["Filter3"]["fc0"], self.FilterDict["Filter3"]["fc1"]], nyq = (0.5 * self.FilterDict["Filter3"]["fs"]), window = 'hamming')
              coeffFilter3Fp = []      
              for i in coeffFilter3:
                     coeffFilter3Fp.append(int(fp_sign_to_bin(i, self.fpNotation), 2))
             
              self.FilterDict["Filter3"]["Coefficients"] = coeffFilter3Fp
              
       
       # Write in a random way a new value to the input FIFO                    
       def inputFifo(self):
              if (random() > 0.5):
                     return 1
              else:
                     return 0
       
       # Return the value of the output FIFO counter              
       def outputFifoCounter(self, FilterName):
              return self.FilterDict[FilterName]["Counter"]
              
       def outputFifoData(self, FilterName):
              return self.outputFifo[FilterName]
       
       
       # Process and write data to the generated text file       
       def printOutputFifoData(self):
        if (self.plotFlag):
              simDataFile = open("./sim/simData.txt", 'w')
              
              time = []
              outputFifoFloat = {"Filter0": [], "Filter1": [], "Filter2": [], "Filter3": []} 
              outputFifoAcc = {"Filter0": {"total": 0.0, "mean": 0.0}, "Filter1": {"total": 0.0, "mean": 0.0}, "Filter2": {"total": 0.0, "mean": 0.0}, "Filter3": {"total": 0.0, "mean": 0.0}}
              distances = {"Rock": 0.0, "Classical": 0.0, "Pop": 0.0} 
              
              for i in self.outputFifo.keys():
                     for j in self.outputFifo[i]:
                            if (j < 255):
                                   outputFifoFloat[i].append(float(j) / 64.0) 
                            else:
                                   outputFifoFloat[i].append(-1.0 * float(512 - j) / 64.0) 

              for i in outputFifoFloat.keys():
                     for jp in outputFifoFloat[i]:
                            outputFifoAcc[i]["total"] = outputFifoAcc[i]["total"] + jp
                     outputFifoAcc[i]["mean"] = outputFifoAcc[i]["total"] / float(len(outputFifoFloat[i]))
                               
              for i in range(len(self.outputFifo["Filter0"])):
                     time.append(float(i) * (1.0 / self.fs) * 1000.0)
              
              simDataFile.write("Time(s)\twav file\tFilter0\tFilter1\tFilter2\tFilter3\n")
              for i in range(len(self.outputFifo["Filter0"])):
                     simDataFile.write(str(time[i]) + "\t" + str(self.MusicFileArray[i]) + "\t" + str(outputFifoFloat["Filter0"][i]) + "\t" + str(outputFifoFloat["Filter1"][i]) + "\t" + str(outputFifoFloat["Filter2"][i]) + "\t" + str(outputFifoFloat["Filter3"][i]) + "\n")
              
              simDataFile.write("\n\n\n")
              
              for i in outputFifoAcc.keys():
                     simDataFile.write(str(outputFifoAcc[i]["mean"]) + "\n")
              
              for i in self.musicCategories.keys():
                     for j in self.musicCategories[i].keys():
                            for k in outputFifoAcc.keys():
                                        distances[i] = distances[i] + ((self.musicCategories[i][j] - outputFifoAcc[k]["mean"]) * (self.musicCategories[i][j] - outputFifoAcc[k]["mean"]))
              

              
              min = 1000000000.0
              for i in distances.keys():
                     if (distances[i] < min ):
                            min = distances[i]
                            category = i
                     
              # Plot the wav file samples and the fintered values
              plt.subplot(5,1,1)
              plt.plot(time, self.MusicFileArray)#, 'r-o')
              plt.ylabel("wav file")
              
              plt.subplot(5,1,2)
              plt.plot(time, outputFifoFloat["Filter0"])#, 'b-o')
              plt.ylabel("Filter0")
              
              plt.subplot(5,1,3)
              plt.plot(time, outputFifoFloat["Filter1"])#, 'b-o')
              plt.ylabel("Filter1")
              
              plt.subplot(5,1,4)
              plt.plot(time, outputFifoFloat["Filter2"])#, 'b-o')
              plt.ylabel("Filter2")
              
              plt.subplot(5,1,5)
              plt.plot(time, outputFifoFloat["Filter3"])#, 'b-o')
              plt.xlabel("Time(ms)")
              plt.ylabel("Filter3")
              
              
              plt.show()
              
              set_trace()
              self.plotFlag = False
              
              
              simDataFile.write("\nThe category of the music file is: \"" + category + "\".")
              simDataFile.close()

       def mfreqz(b,a=1):

              w,h = signal.freqz(b,a)

              h_dB = 20 * log10 (abs(h))

              subplot(211)

              plot(w/max(w),h_dB)

              ylim(-150, 5)

              ylabel('Magnitude (db)')

              xlabel(r'Normalized Frequency (x$\pi$rad/sample)')

              title(r'Frequency response')

              subplot(212)

              h_Phase = unwrap(arctan2(imag(h),real(h)))

              plot(w/max(w),h_Phase)

              ylabel('Phase (radians)')

              xlabel(r'Normalized Frequency (x$\pi$rad/sample)')

              title(r'Phase response')

              subplots_adjust(hspace=0.5)

       def printFrequencyResponse(self):
              
              coeffFilter1FpDec = []
              for i in self.coeffFilter1Fp:
                     if (i < 255):
                            coeffFilter1FpDec.append(float(i) / float(pow(2, self.fpDecimalSize))) 
                     else:
                            coeffFilter1FpDec.append(-1.0 * float(512 - i) / float(pow(2, self.fpDecimalSize))) 
 
              print "FrequencyResponse"
              set_trace()
              
              nyq_rate = self.fs / 2.0
              
              w, h = signal.freqz(self.coeffFilter1, worN=8000)
              plt.plot((w/pi)*nyq_rate, absolute(h), linewidth=2)
              
              w, h = signal.freqz(coeffFilter1FpDec, worN=8000)
              plt.plot((w/pi)*nyq_rate, absolute(h), linewidth=2)
              
              
              plt.show()
              
              
       
       # Simulate the FIR pipelined data path
       def Fir(self, SignalIn, FilterName): 
              for i in range((len(self.FilterDict[FilterName]["registerQueue"]) - 2), -1, -1):
                     #if (i != 0):
                            self.FilterDict[FilterName]["registerQueue"][i + 1] = self.FilterDict[FilterName]["registerQueue"][i]
                            
              self.FilterDict[FilterName]["registerQueue"][0] = int(self.MusicFileArray[self.FilterDict[FilterName]["Counter"]])
       
              acc = 0
              for i in range(len(self.FilterDict[FilterName]["registerQueue"])):
                     acc = acc + self.FilterDict[FilterName]["Coefficients"][i] * self.FilterDict[FilterName]["registerQueue"][i]
              
              self.FilterDict[FilterName]["OutPort"] = acc
              #self.FilterDict[FilterName]["OutPort"] = self.FilterDict[FilterName]["Coefficients"][self.FilterDict[FilterName]["Counter"]] * int(self.MusicFileArray[self.FilterDict[FilterName]["Counter"]])
              self.FilterDict[FilterName]["Counter"] = self.FilterDict[FilterName]["Counter"] + 1
              
              self.outputFifo[FilterName].append(self.FilterDict[FilterName]["OutPort"])

              return (self.FilterDict[FilterName]["OutPort"]) 
              

       # Simulate the FIR pipelined data path
       def CWrapperFir(self, SignalIn, FilterName): 
              for i in range((len(self.FilterDict[FilterName]["registerQueue"]) - 2), -1, -1):
                     #if (i != 0):
                            self.FilterDict[FilterName]["registerQueue"][i + 1] = self.FilterDict[FilterName]["registerQueue"][i]
                            
              self.FilterDict[FilterName]["registerQueue"][0] = int(self.MusicFileArray[self.FilterDict[FilterName]["Counter"]])
       
              acc = 0
              for i in range(len(self.FilterDict[FilterName]["registerQueue"])):
                     acc = example.fact(3)
              
              self.FilterDict[FilterName]["OutPort"] = acc
              #self.FilterDict[FilterName]["OutPort"] = self.FilterDict[FilterName]["Coefficients"][self.FilterDict[FilterName]["Counter"]] * int(self.MusicFileArray[self.FilterDict[FilterName]["Counter"]])
              self.FilterDict[FilterName]["Counter"] = self.FilterDict[FilterName]["Counter"] + 1
              
              self.outputFifo[FilterName].append(self.FilterDict[FilterName]["OutPort"])

              return (self.FilterDict[FilterName]["OutPort"]) 

    
          
       # Generate a latch on the fitlers' output to buffer the filtered result       
       def PreserveState(self, FilterName):    
              self.FilterDict[FilterName]["OutPort"] = self.FilterDict[FilterName]["OutPort"]
              
              return (self.FilterDict[FilterName]["OutPort"])              

              

class SimFunctions:
       
       FilterOut0 = 0
       FilterOut1 = 0
       FilterOut2 = 0
       FilterOut3 = 0
       
       Coef0 = [1, 2, 3, 4, 5]
       Coef1 = [6, 7, 8, 9, 10]
       Coef2 = [11, 12, 13, 14, 15]
       Coef3 = [16, 17, 18, 19, 20]
       MusicFileArray = []
       
       count0 = 0
       count1 = 0

       

       def init(self):                             
              self.count0 = 0
              self.count1 = 0
              
              MusicFile = open("music_file.wav", 'r')
              

              self.MusicFileArray = MusicFile.read()
              self.MusicFileArray = self.MusicFileArray[:(len(self.MusicFileArray) - 1)]
              self.MusicFileArray = self.MusicFileArray.split("\n")
              
              #set_trace()
              

       
       def Fir0(self, SignalIn):                             
              self.FilterOut0 = self.Coef0[self.count0] * self.MusicFileArray[self.count0]#SignalIn                        
              self.count0 = self.count0 + 1
              
              return (self.FilterOut0)
              
       def Fir1(self, SignalIn):                             
              self.FilterOut1 = self.Coef1[self.count1] * SignalIn                        
              self.count1 = self.count1 + 1
              
              return (self.FilterOut1)

              
       def Fir2(self, SignalIn):                             
              self.FilterOut2 = self.Coef2[self.count0] * SignalIn                        
              self.count = self.count0 + 1
              
              return (self.FilterOut2)
              
       def Fir3(self, SignalIn):                             
              self.FilterOut3 = self.Coef3[self.count0] * SignalIn                        
              self.count = self.count0 + 1
              
              return (self.FilterOut3)
              
       def PreserveState0(self):                                          
              self.FilterOut0 = self.FilterOut0
              
              return (self.FilterOut0)
              
       def PreserveState1(self):                                          
              self.FilterOut1 = self.FilterOut1
              
              return (self.FilterOut1)

