"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _beh_sim.py

Created by:   Evangelos Logaras


*****************************************************************************
                                                                            *
                      C O P Y R I G H T   N O T I C E                       *
                                                                            *
*****************************************************************************

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; 
  version 2.1 of the License, a copy of which is available from
  http://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  
  USA


*****************************************************************************
                                                                            *
                           D E S C R I P T I O N                            *
                                                                            *
*****************************************************************************

  Functions used during behavioral simulation.
"""

import _MyExceptions
reload(_MyExceptions)
import time
import commands
import inspect
from pdb import *

## Global simulation time variable
sim_time = 0
sim_endtime = 0
sim_time_queue = []
sim_flip_bit = True
ednSimulation = False

def endSimulation():
       """
       FUNCTION: endSimulation()
              
       Terminate the simluation.              
       """
       sim_time = sim_endtime
       ednSimulation = True

def simTime():
       """
       FUNCTION: simTime()
              
       Return and read the simulation time value in the testbench.              
       """
       return sim_time

def rising_edge2(signal):
       """
       FUNCTION: rising_edge(a str)
              a: signal name
              
       Rising edge wait function.              
       """

       global sim_time_queue    
       return_value = False
       
       if (sim_time > 0):  
              signal_cur_value = 0
              signal_prev_value = 0
              rising_edge_flag = 0
              sim_time_temp = sim_time
              while(sim_time_temp > 0 ):  
                     sim_time_temp = sim_time_temp - 1
                     rising_edge_flag = 0
                     return_value = False
                     
                     counter = 0
                     for i in sim_time_queue:
                            #print "sim_time_queue:"
                            #print "sim_time:", i["sim_time"]

                            if ((i['N'] == signal) and (i['sim_time'] == sim_time_temp)):
                                   rising_edge_flag = 1
                                   for j in sim_time_queue:
                                          if ((j['N'] == signal) and (j['sim_time'] == sim_time)):
                                                 signal_cur_value = j['V']
                                                 #break
       
                                   for j in sim_time_queue:
                                          if ((j['N'] == signal) and (j['sim_time'] == sim_time_temp)):
                                                 signal_prev_value = j['V'] 
                                                 #break
       
                                   if ((int(signal_cur_value) == 1) and (int(signal_prev_value) == 0)):
                                          return_value = True
                                   else:
                                          return_value = False
                                          
                                   #print "rising_edge:"
                                   #print "return_value:", return_value
                                   #print "signal_cur_value:", signal_cur_value
                                   #print "signal_prev_value:", signal_prev_value
                                   #print "sim_time:", sim_time
                                   #print "sim_time_temp:", sim_time_temp
                                   
                                   break   
                     if (rising_edge_flag == 1):
                            break              

       

       return return_value
                     
def rising_edge(signal):
       """
       FUNCTION: rising_edge(a str)
              a: signal name
              
       Rising edge wait function.              
       """
       global sim_time_queue
       
       if (sim_time > 0):  
              signal_cur_value = 0
              signal_prev_value = 0
              rising_edge_flag = 0
              sim_time_temp = sim_time 
              while(sim_time_temp > 0 ):  
                     print "debug point 1"
                     sim_time_temp = sim_time_temp - 1
                     for i in sim_time_queue:
                            if ((i['N'] == signal) and (i['sim_time'] == sim_time_temp)):
                                   rising_edge_flag = 1
                                   break
                     
                     if (rising_edge_flag == 1):

                            
                            for i in sim_time_queue:
                                   if ((i['N'] == signal) and (i['sim_time'] == sim_time)):
                                          signal_cur_value = i['V']
                                          break
                                          
                            for i in sim_time_queue:
                                   if ((i['N'] == signal) and (i['sim_time'] == sim_time_temp)):
                                          signal_prev_value = i['V'] 
                                          break
                                          
                            if ((int(signal_cur_value) == 1) and (int(signal_prev_value) == 0)):
                                   return_value = True
                            else:
                                   return_value = False
                                                 

                     

                            break
       

       return return_value

def falling_edge(signal):
       """
       FUNCTION: falling_edge(a str)
              a: signal name
              
       Falling edge wait function.              
       """
       global sim_time_queue
       
       if (sim_time > 0):  
              signal_cur_value = 0
              signal_prev_value = 0
              rising_edge_flag = 0
              sim_time_temp = sim_time 
              while(sim_time_temp > 0 ):  
                     sim_time_temp = sim_time_temp - 1
                     for i in sim_time_queue:
                            if ((i['N'] == signal) and (i['sim_time'] == sim_time_temp)):
                                   rising_edge_flag = 1
                                   break
                     
                     if (rising_edge_flag == 1):

                            
                            for i in sim_time_queue:
                                   if ((i['N'] == signal) and (i['sim_time'] == sim_time)):
                                          signal_cur_value = i['V']
                                          break
                                          
                            for i in sim_time_queue:
                                   if ((i['N'] == signal) and (i['sim_time'] == sim_time_temp)):
                                          signal_prev_value = i['V'] 
                                          break
                                          
                            if ((int(signal_cur_value) == 1) and (int(signal_prev_value) == 0)):
                                   return_value = True
                            else:
                                   return_value = False
                                                 
                                   #print "rising_edge:"
                                   #print "return_value:", return_value
                                   #print "signal_cur_value:", signal_cur_value
                                  # print "signal_prev_value:", signal_prev_value
                     

                            break
       

       return return_value                                   
                     

def sim_delay(delay):
       """
       FUNCTION: sim_delay(a int, b str)
              a: string name of the design function
              b: dictionary containing design's attributes
              
       Simulation time delay function.
       """
       global sim_time
       global sim_flip_bit
       
       
       if (sim_flip_bit == True):      
              sim_time = sim_time + delay
              
       sim_flip_bit = not sim_flip_bit


def beh_sim(func, attributes, signals_i, signals_o, signals_intr, signals, func_code, config_options):
       """
       FUNCTION: beh_sim(a str, b{}, c{}, d{}, e{}, f{}, g[], h{})
              a: string name of the design function
              b: dictionary containing design's attributes
              c: dictionary containing input signals
              d: dictionary containing output signals
              e: dictionary containing internal signals
              f: dictionary containing all signals
              g: function code list
              h: dictionary containing configuration file paths
              
       Libraries statement of the *.vhd file.
       - Libraries definitions for the *.vdh file.
       - Extraction of the I/O signals.
       """
       
# Python's variable declarations
#----------------------------------------------------------------------------------------------------------------------------------
       global sim_time
       sim_timescale = 0
       global sim_endtime
       indentation_level = 0
       indentation = ''
       sim_timeunits = ''
       command = ''
       func_sim = ''
       command_output = ''
       vcdFile = ''
       PythonSimFile = ''
       logoFile = ''
       logo = ''
       signal_vcd_symbols = ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '[', ']', '{', '}']
       global sim_time_queue
       sim_time_queue_new = []
       sim_signals = []
       command_dict = []
       sig_len = 0
       proc_funcs = []
       global_signals = ''
       global_signals_proc = ''
       PythonSimFile_arr = []
       newFile = ''
       line = ''
       new_line = ''
       ReturningSignalsName_arr = []
       ReturningSignalsName_str = ''
#----------------------------------------------------------------------------------------------------------------------------------

       command = "mkdir ./sim"
       command_output = commands.getoutput(command)

       vcdFile = open("./sim/" + func + ".vcd", 'w')

# SysPy info for the *.vcd file
#----------------------------------------------------------------------------------------------------------------------------------
       vcdFile.write("$date " + time.ctime() + " $end\n")      
       vcdFile.write("$version\n")    
       vcdFile.write("   \"" + func + ".vcd\"\n")
       vcdFile.write("   Simulation file generated by SysPy\n")
       vcdFile.write("$end\n")
       
       sim_endtime = attributes["simulation"][0]
       sim_timescale = attributes["simulation"][1]
       sim_timeunits = attributes["simulation"][2]
       vcdFile.write("$timescale " + str(sim_timescale) + ' ' + sim_timeunits +  " $end\n")

       vcdFile.write("$comment\n")
       logoFile = open(config_options["syspy_dir"] + "/funcs/SysPy_logo.txt", 'r')
       logo = logoFile.read()
       vcdFile.write(logo)
       vcdFile.write("$end\n\n")
       vcdFile.write("$scope module " + func + " $end\n")
#----------------------------------------------------------------------------------------------------------------------------------

       #print "beh_sim\n"
       #print signals
 
# Raising exception if simulation values have been assigned to output signals
#----------------------------------------------------------------------------------------------------------------------------------
       for i in signals:
              if i['D'] == "sim":
                     for j in signals:
                            if (j['N'] == i['N']):
                                   if ((j['D'] != 'i') and (j['D'] != "sim")):
                                          raise _MyExceptions.MyExceptions("Cannot assign simulation input values to signal \"" + i['N'] + "\".")   
#----------------------------------------------------------------------------------------------------------------------------------

# Signal declaration
#----------------------------------------------------------------------------------------------------------------------------------
       count = 0       
       for i in signals:
              if i['D'] == "sim":
                     L = i['L'].__doc__
                     if (L.find("list") == 0):
                            sig_len = (abs(i['L'][0] - i['L'][1]) + 1)
                     elif (L.find("int") == 0):
                            sig_len = 1

                     vcdFile.write("$var wire " + str(sig_len) + ' ' + signal_vcd_symbols[count] + ' ' + i['N'] + " $end\n")

                     sim_signals.append({'N': i['N'], 'S': signal_vcd_symbols[count], 'V': i['V'], 'D': i['D'], 'L': sig_len})
                     
                     count = count + 1
                     
              elif i['D'] == 'o':
                     L = i['L'].__doc__
                     if (L.find("list") == 0):
                            sig_len = (abs(i['L'][0] - i['L'][1]) + 1)
                     elif (L.find("int") == 0):
                            sig_len = 1

                     vcdFile.write("$var wire " + str(sig_len) + ' ' + signal_vcd_symbols[count] + ' ' + i['N'] + " $end\n")
                     
		     if (i.has_key('del')):
		            sim_signals.append({'N': i['N'], 'S': signal_vcd_symbols[count], 'D': i['D'], 'del': i['del'], 'V': [], 'L': sig_len})
                     else:
                            sim_signals.append({'N': i['N'], 'S': signal_vcd_symbols[count], 'D': i['D'], 'V': [], 'L': sig_len})
                            
                     count = count + 1
              
       vcdFile.write("$upscope $end\n")    
       vcdFile.write("$enddefinitions $end\n")  
#----------------------------------------------------------------------------------------------------------------------------------  

# Create new simulation function
#----------------------------------------------------------------------------------------------------------------------------------        
       PythonSimFile = open("./" + func + "_sim.py", 'w')

       command = ''
       for i in sim_signals:
              if (i['D'] == "sim"):
                     command = command + i['N'] + ", "

       command = command[:(len(command) - 2)]
       #print "command:", command

       # Find first identation level
       for i in func_code:
              if ((i.find('=') != -1) or (i.find("proc_") != -1)):
                     for j in range(len(i)):
                            if (i[j] == ' '):
                                   indentation_level = indentation_level + 1
                                   indentation = indentation + ' '  
                            elif (i[j] != ' '):
                                   break
                     break

       #print("indentation_level:", indentation_level) 
                            

       func_code[0] = func_code[0].replace("()", '(' + command + ')')
       
       # Define all signals as global variables
       for i in sim_signals:
              global_signals_proc = global_signals_proc + i['N'] + ", "
              if (i['D'] == 'o'):
                     global_signals = global_signals + i['N'] + ", "

       global_signals = global_signals[:len(global_signals)-2]
       global_signals_proc = global_signals_proc[:len(global_signals_proc)-2]

       func_code[1] = func_code[1] + "\n" + indentation + "global " + global_signals + "\n" + indentation + "input_fifo_ready = 0\n" + indentation + "data_counter = 0\n" + indentation + "clk_out1 = 0\n" + indentation + "clk_out2 = 0\n" + indentation + "clk_out3 = 0\n"

       ## Import the "beh_sim" functions to the simulation file
       #simtestPythonSimFile.write("import funcs._beh_sim\nfrom pdb import *\nfrom _sim_functions import *\nSimObj = SimFunctions2()\n")
       #PythonSimFile.write("import funcs._beh_sim\nfrom pdb import *\nfrom linearRegressionSimFunctions import *\nSimObj = linearRegressionSimFunctions()\n")
       PythonSimFile.write("import funcs._beh_sim\nfrom pdb import *\nfrom _sim_functions import *\nSimObj = SimFunctions2()\nimport example\n")

       for i in func_code:
              PythonSimFile.write(i)

       PythonSimFile.close()
#----------------------------------------------------------------------------------------------------------------------------------

# Create signal FIFO time queues for input signals
#----------------------------------------------------------------------------------------------------------------------------------
       sim_time = 0
       while(sim_time <= sim_endtime):
              for i in sim_signals:
                     if (i['D'] == "sim"):
                            for j in i['V']:
                                   #print "j:", j
                                   if (str(sim_time) == j[0]):
                                          # Handle logic True/False values
                                          if j[1] == False:
                                                 sim_time_queue.append({"sim_time": sim_time, 'N': i['N'], 'V': 0, 'S': i['S'], 'L': i['L']})
                                          elif j[1] == True:
                                                 sim_time_queue.append({"sim_time": sim_time, 'N': i['N'], 'V': 1, 'S': i['S'], 'L': i['L']})
                                          else:
                                                sim_time_queue.append({"sim_time": sim_time, 'N': i['N'], 'V': j[1], 'S': i['S'], 'L': i['L']}) 

              sim_time = sim_time + sim_timescale 

       #print "sim_time_queue:", sim_time_queue   

#----------------------------------------------------------------------------------------------------------------------------------

# Create signal FIFO time queues for output signals
#----------------------------------------------------------------------------------------------------------------------------------
       func_sim = func + "_sim"       
       exec "import " + func_sim

       exec "top_func_vars = inspect.getargspec(" + func_sim + '.' + func + ')'
       #print "top_func_vars:", top_func_vars

       exec "proc_func_source = inspect.getsource(" + func_sim + '.' + func + ')'
       #print "proc_func_source:", proc_func_source

       ## Extract processes names
       i = 0
       while(not ednSimulation):
              print "debug point 2"
              if (proc_func_source[i:].find("def proc_") != -1):
                     k = proc_func_source[i:].find("def proc_")
                     j = proc_func_source[(i+k+1):].find(':')

                     #print "proc_func_source[i:(j+1)]:", proc_func_source[(i+k):(i+k+j+1)]
                     func_name = proc_func_source[(i+k+4):(i+k+j+1)]
                     

                     if (func_name.find("()") == 1):
                            func_name = func_name.replace("()", '')
                            func_name_dict = {"func_name":func_name, "func_args":[]}

                     elif (func_name.find("()") != 1):
                            m = func_name.find('(')
                            n = func_name.find(')')
                            args = func_name[(m+1):n]
                            exec "args_list = [args]"
                            func_name = func_name.replace(func_name[m:(n+1)], '')
                            func_name_dict = {"func_name":func_name, "func_args":args_list}  

                     proc_funcs.append(func_name_dict)


                     i = i + k + j


              elif (proc_func_source[i:].find("def proc_") == -1):
                     break

              
       #print "proc_funcs:", proc_funcs

       PythonSimFile = open("./" + func + "_sim.py", 'a')

       for i in proc_funcs:
              if (i["func_args"][0] == ''):
                     PythonSimFile.write("\n" + indentation + i["func_name"] + "()")      
              elif (i["func_args"][0] != ''):
                     args = ''
                     for j in i["func_args"]:
                            args =  args + j + ", " 

                     args = args[:len(args)-2]
                     PythonSimFile.write("\n" + indentation + i["func_name"] + '(' + args + ')') 

       for i in signals:
              if (i['D'] == 'o'):
                     ReturningSignalsName_arr.append(i)
                     ReturningSignalsName_str = ReturningSignalsName_str + i['N'] + ", "
                            
       ReturningSignalsName_str = ReturningSignalsName_str[: (len(ReturningSignalsName_str) - 2)]                   
       
       PythonSimFile.write("\n       return " + ReturningSignalsName_str)              
       PythonSimFile.close()

       PythonSimFile = open("./" + func + "_sim.py", 'r')
       while 1:
              print "debug point 3"
              line = PythonSimFile.readline()
              if not line:
                     break
              else:
                     PythonSimFile_arr.append(line)                     

       PythonSimFile.close()

       PythonSimFile = open("./" + func + "_sim.py", 'w')

       #print("PythonSimFile_arr:", PythonSimFile_arr)

       for i in range(len(PythonSimFile_arr)):
              if (PythonSimFile_arr[i].find("def proc_") != -1):
                     j = PythonSimFile_arr[i].find('(')
                     k = PythonSimFile_arr[i].find(')')

                     x = 3                   
                     
                     sens_list_str = PythonSimFile_arr[i][(j+1):k].replace(' ', '')
                     sens_list = sens_list_str.split(',')

                     #print("sensitivity_list:", sens_list)

                     LocalGlobalSignals = global_signals
                     
                     for j in sens_list:
                            if (LocalGlobalSignals.find(j + ',') != -1):
                                    LocalGlobalSignals =  LocalGlobalSignals.replace(j + ',', '')


                     new_line = PythonSimFile_arr[i] + indentation + indentation + "global " + LocalGlobalSignals + "\n"
                     PythonSimFile_arr[i] = new_line

                    
       
       for i in PythonSimFile_arr:
              newFile = newFile + i

       PythonSimFile.write(newFile)
       PythonSimFile.close()


       
 
       commands.getoutput("rm " + func_sim + ".pyc")


       exec "reload (" + func_sim + ')'   

       exec "proc_func_source = inspect.getsource(" + func_sim + '.' + func + ')'

       
       

       for i in sim_signals:
              if (i['D'] == "sim"):
                     command_dict.append({'N': i['N'], 'S': i['S'], 'D': i['D'], 'V': '0'})
                     #command_dict.append({'N': i['N'], 'S': signal_vcd_symbols[count], 'D': i['D'], 'V': '0'})

       #@@@@@@@@@@@@@@@@@@@@@@@
       TempDict = {}
       for i in sim_time_queue:
              TempDict[i["sim_time"]] = i  
       

    
                     
       sim_time = 0
       while(sim_time <= sim_endtime):
              command = ''
              print "debug point 4"
              for i in sim_time_queue:
                     command = ''
                     if (sim_time == i["sim_time"]):
                            for j in command_dict:
                                   if (i['N'] == j['N']):
                                          j['V'] = i['V']

                            for j in command_dict:                                         
                                   command = command + j['N'] + " = " + str(int(j['V'])) + ", "
          
                            command = command = command[:(len(command) - 2)]

                            count = 0
                            
                            exec 'x ' + ' = ' + func_sim + '.' + func + '(' + command + ')'
                            for j in ReturningSignalsName_arr:
                                   #exec j['N'] + ' = ' + func_sim + '.' + func + '(' + command + ')'#[' + str(count) + ']'
                                   a = x.__doc__
                                   if (a.find("tuple") != -1):
                                          exec j['N'] + ' = x[' + str(count) + ']'
                                   else:
                                          exec j['N'] + ' = x'
                                   count = count + 1



                            for j in sim_signals:
                                   for k in ReturningSignalsName_arr:
                                          if (j['N'] == k['N']):
                                                 exec "x = " + j['N']
                                                 j['V'].append([str(sim_time), x]) 


                                          
                            
                            #for j in sim_signals:
                            #       if (j['N'] == "data_out0"):
                            #              j['V'].append([str(sim_time), str(data_out0)]) 
                            #              print "[str(sim_time), str(data_out0)]:", [str(sim_time), str(data_out0)]
                            #              
                            #       if (j['N'] == "data_out1"):
                            #              j['V'].append([str(sim_time), str(data_out1)]) 
                            #              print "[str(sim_time), str(data_out1)]:", [str(sim_time), str(data_out1)]




              sim_time = sim_time + sim_timescale

       for i in sim_signals:
              if (i['D'] == 'o'):
                     i['V'] = i['V'][1:]


       #print "sim_time_queue:", sim_time_queue 
       
#----------------------------------------------------------------------------------------------------------------------------------

# Create signal FIFO time queues for output signals
#----------------------------------------------------------------------------------------------------------------------------------
       sel = 0
       if (sel == 0):
        TempDict = sim_signals
        for i in TempDict:
               if (i['D'] == 'o'):
                      x = dict((k[0], k[1]) for k in i['V'])  
                      i['V'] = x



        sim_time = 0
        while(sim_time <= sim_endtime):
               print "debug point 5"
               for i in TempDict:
                      if (i['D'] == 'o'):
                             if (i['V'].has_key(str(sim_time))):
                                           if (i.has_key("del") == True):
                                                  sim_time_queue.append({"sim_time": sim_time + i['del'], 'N': i['N'], 'V': i['V'][str(sim_time)], 'S': i['S'], 'L': i['L']})
                                           elif (i.has_key("del") == False):
                                                  sim_time_queue.append({"sim_time": sim_time, 'N': i['N'], 'V': i['V'][str(sim_time)], 'S': i['S'], 'L': i['L']})


               sim_time = sim_time + sim_timescale 

       if (sel == 1):       
        sim_time = 0
        while(sim_time <= sim_endtime):
               print "debug point 5"
               for i in sim_signals:
                      if (i['D'] == 'o'):
                            # TempDict = dict((k[0], k[1]) for k in i['V'])
                             for j in i['V']:
                                    #print "j:", j
                                    if (str(sim_time) == j[0]):
                             #if (TempDict.has_key(str(sim_time))):

                                           if (i.has_key("del") == True):
                                                  sim_time_queue.append({"sim_time": sim_time + i['del'], 'N': i['N'], 'V': j[1], 'S': i['S'], 'L': i['L']})
                                                  #sim_time_queue.append({"sim_time": sim_time + i['del'], 'N': i['N'], 'V': TempDict[str(sim_time)], 'S': i['S'], 'L': i['L']})
                                           elif (i.has_key("del") == False):
                                                  sim_time_queue.append({"sim_time": sim_time, 'N': i['N'], 'V': j[1], 'S': i['S'], 'L': i['L']})
                                                  #sim_time_queue.append({"sim_time": sim_time, 'N': i['N'], 'V': TempDict[str(sim_time)], 'S': i['S'], 'L': i['L']})

               sim_time = sim_time + sim_timescale 



#----------------------------------------------------------------------------------------------------------------------------------

       
# Time and signal's values declaration
#----------------------------------------------------------------------------------------------------------------------------------

       #TempDict = sim_time_queue
       #for i in range(TempDict:
        #             x = dict((k[0], k[1]) for k in i['V'])  
         #            i['V'] = x


       sim_time = 0
       count = 0
       while(sim_time <= sim_endtime):
              count = count + 1 
              #print "debug point 6 " + str(count)            
              for i in sim_time_queue:
                     if (i["sim_time"] != 'X'):
                            if (i["sim_time"] == sim_time):
                                   if (i['L'] == 1):
                                          sim_time_queue_new.append({"sim_time": sim_time, 'N': i['N'], 'V': i['V'], 'S': i['S'], 'L': i['L']})
                                   elif ((i['L'] > 1) and (i['V'] != 'None')):

                                          val = bin(int(float(i['V'])))
                                          new_val = ''
                                          for j in range(i['L'] - len(val) + 2):
                                                 new_val = new_val + '0'

                                          val = val[:2] + new_val + val[2:]
                                          
                                          sim_time_queue_new.append({"sim_time": sim_time, 'N': i['N'], 'V': val, 'S': i['S'], 'L': i['L']})

                                   i["sim_time"] = 'X'
                                   
              sim_time = sim_time + sim_timescale
              
       print "sim_time_queue_new:", sim_time_queue_new      
       vcdFile.write('#' + str(sim_time_queue_new[0]["sim_time"]) +" \n") 
       #print "sim_time_queue_new:", sim_time_queue_new 

       for i in sim_time_queue_new:  
              print "debug point 7"
              if (i["sim_time"] == 0):
                     if (i['L'] == 1):
                            vcdFile.write(str(i['V']) + i['S'] +"\n")  
                     elif (i['L'] > 1):   
                            vcdFile.write(i['V'][1:] + ' ' + i['S'] +"\n")                            
      
              elif (i["sim_time"] != 0):
                     if (i['L'] == 1):
                            vcdFile.write('#' + str(i["sim_time"]) + "\n")
                            vcdFile.write(str(i['V']) + i['S'] +"\n")    
                     elif (i['L'] > 1):
                            vcdFile.write('#' + str(i["sim_time"]) + "\n")
                            vcdFile.write(i['V'][1:] + ' ' + i['S'] +"\n")                           
#----------------------------------------------------------------------------------------------------------------------------------                          
       
