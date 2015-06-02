"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _port_map_assignment_check.py

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

  Checking if the 2 signals in a port map assignmet are compatible.
"""

import _MyExceptions
reload(_MyExceptions)

from pdb import *

def port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name, generic_comp, generic_comp_val):
       """
       FUNCTION: port_map_assignment_check(a[], b[]. c[], d str, e str, f[], g str)
              a: design's signal list
              b: component's signal list
              c: port map assignment's signals list
              d: string name of the design function
              e: string name of the component
              f: generics' list
              g: string of the generics' values
              
       - Checking if the 2 signals in a port map assignmet are compatible.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       comp_signals_ex = []
       left_signal = ''
       right_signal = ''
       flag_left_signal = 0
       flag_right_signal = 0
       flag_signal_slice_length = 0
       right_signal_len = 0
       left_signal_len = 0
       flag_signal_slice_length = 0
       sig_doc = ''
       pos = 0
#----------------------------------------------------------------------------------------------------------------------------------

       left_signal = port_map_assignment_signals[0][1]
       left_signal = left_signal.replace('=', '')
       left_signal = left_signal.replace(' ', '')

       print("port_map_assignment_signals:", port_map_assignment_signals)

       
       if (port_map_assignment_signals[1][0] == "name_right_binary_slice"):
              right_signal = port_map_assignment_signals[1][1]
              right_signal[0] = right_signal[0].replace(' ', '')
       elif (port_map_assignment_signals[1][0] == "name_right_item"):
              right_signal = port_map_assignment_signals[1][1]
              right_signal[0] = right_signal[0].replace(' ', '')
       else:
              right_signal = port_map_assignment_signals[1][1]
              right_signal = right_signal.replace(' ', '')             
       
       pos = port_map_assignment_signals[0][2]


       if ((port_map_assignment_signals[1][0] != "name_right") and (port_map_assignment_signals[1][0] != "const_binary_bit") and (port_map_assignment_signals[1][0] != "const_binary_bits") and (port_map_assignment_signals[1][0] != "open_key") and (port_map_assignment_signals[1][0] != "name_right_binary_slice") and (port_map_assignment_signals[1][0] != "name_right_item")):
              raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": wrong assignment type for signal \"" + str(right_signal) + "\" .Only binary signals or constants allowed in port assignments.")                            


# Extracting all component's signals in "comp_signals_ex" list
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(comp_signals)):
              n = comp_signals[i]['N'].__doc__
              if (n.find("str") == 0):
                     comp_signals_ex.append(comp_signals[i])
              elif (n.find("list") == 0):
                     for j in range(len(comp_signals[i]['N'])):
                            comp_signals_ex.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N'][j]})     
#----------------------------------------------------------------------------------------------------------------------------------

# Identifying the signals in the port map assignment  
#----------------------------------------------------------------------------------------------------------------------------------
       ## Checking if the left signal has been declared in the component's declaration in "_struct_lib.py" and setting the "flag_left_signal"
       flag_left_signal = 0
       for i in range(len(comp_signals_ex)):
              if (left_signal == comp_signals_ex[i]['N']):
                     left_signal = comp_signals_ex[i]
                     flag_left_signal = 1

       print("left_signal:", left_signal)

       if (flag_left_signal == 0):
               raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + left_signal + "\" not declared in component \"" + comp_name + "\".")

       flag_right_signal = 0
       flag_signal_slice_length = 0
       ## The existence of the right signal has already been checked in "_signal_declaration_check"
       for i in range(len(signals)):
              if (port_map_assignment_signals[1][0] == "name_right_binary_slice"):
                     if ((right_signal[0] == signals[i]['N'])):
                            right_signal[0] = {'D': signals[i]['D'], 'T':  signals[i]['T'], 'L': [int(right_signal[1]), int(right_signal[2])], 'N': signals[i]['N']}
                            flag_right_signal = 1
                            if (signals[i]['L'][0] > signals[i]['L'][1]):
                                   if ((int(right_signal[1]) <= signals[i]['L'][0]) and (int(right_signal[2]) >= signals[i]['L'][1])):
                                          flag_signal_slice_length = 1
                            elif (signals[i]['L'][0] < signals[i]['L'][1]):
                                   if ((int(right_signal[1]) >= signals[i]['L'][0]) and (int(right_signal[2]) <= signals[i]['L'][1])):
                                          flag_signal_slice_length = 1
              elif (port_map_assignment_signals[1][0] == "name_right_item"):
                     if ((right_signal[0] == signals[i]['N'])):
                            ## Tracking item assignments for binary and array signals
                            if (len(right_signal) == 2):
                                   right_signal[0] = {'D': signals[i]['D'], 'T': signals[i]['T'], 'L': 1, 'N': signals[i]['N']}
                            flag_right_signal = 1
                            if (signals[i]['L'][0] > signals[i]['L'][1]):
                                   if ((int(right_signal[1]) <= signals[i]['L'][0]) and (int(right_signal[1]) >= signals[i]['L'][1])):
                                          flag_signal_slice_length = 1
                            elif (signals[i]['L'][0] < signals[i]['L'][1]):
                                   if ((int(right_signal[1]) >= signals[i]['L'][0]) and (int(right_signal[1]) <= signals[i]['L'][1])):
                                          flag_signal_slice_length = 1
              else:
                     if ((right_signal == signals[i]['N'])):
                            right_signal = signals[i]
                            flag_right_signal = 1
                            
       if (port_map_assignment_signals[1][0] == "name_right_binary_slice"):
              right_signal = right_signal[0]
       elif (port_map_assignment_signals[1][0] == "name_right_item"):
              right_signal = right_signal[0]

       print("right_signal:", right_signal)
       sig_doc = right_signal.__doc__

       if ((flag_right_signal == 0) and (right_signal != "\"open\"") and (sig_doc.find("str") != 0)):
              if (port_map_assignment_signals[1][0] == "name_right_binary_slice"):
                     raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + "\" not declared.")
              elif (port_map_assignment_signals[1][0] == "name_right_item"):
                     raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + "\" not declared.")
              else:
                     raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal + "\" not declared.")

       if ((flag_signal_slice_length == 0) and (port_map_assignment_signals[1][0] == "name_right_binary_slice")):
              if (flag_right_signal == 1):
                     raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + right_signal['N'] + "\" is not compatible with the slice assignment \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + "].")
              elif (flag_right_signal == 0):
                     raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + right_signal + "\" not declared.")
       elif ((flag_signal_slice_length == 0) and (port_map_assignment_signals[1][0] == "name_right_item")):
              if (flag_right_signal == 1):
                     raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + right_signal['N'] + "\" is not compatible with the item assignment.")
              elif (flag_right_signal == 0):
                     raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + right_signal + "\" not declared.")

# Checking signals compatibility in the port map assignment
#----------------------------------------------------------------------------------------------------------------------------------

       ## Evaluating generic signals' widths
       g = generic_comp.__doc__
       if (g.find("list") == 0):
              if (generic_comp[0] == True):
                     i = generic_comp_val.find('(')
                     generic_comp_val = generic_comp_val[i + 1:]
                     generic_comp_val = generic_comp_val.replace('>', '')
                     generic_comp_val = generic_comp_val.replace(',', ';')
                     exec(generic_comp_val)
                     
       print("rignth_signal:", right_signal)
       print("left_signal:", left_signal)

       sig_doc = right_signal.__doc__
       if (sig_doc.find("dict") == 0):
              if ((right_signal['T'] != 'b') and (right_signal['T'] != 'arrb')):
                     raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + "\" has different type from signal \"" + left_signal['N'] + "\" in component \"" + comp_name + "\". Only binary signals allowed in port assignments.")              
       elif ((sig_doc.find("str") == 0) and (right_signal == "\"open\"")):
              if ((left_signal['D'] != 'o') and (left_signal['D'] != 'io')):
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": input signal \"" + left_signal['N'] + "\" in component \"" + comp_name + "\" cannot be assigned with \"open\" keyword.")
       elif ((sig_doc.find("str") == 0) and (right_signal != "\"open\"")):
              if (left_signal['D'] != 'i'):
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": output signal \"" + left_signal['N'] + "\" in component \"" + comp_name + "\" cannot be assigned a constant value.")

       if (sig_doc.find("dict") == 0):
              if ((left_signal['D'] == 'i') and (right_signal['D'] == 'o')):
                     raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + left_signal['N'] + "\" in component \"" + comp_name + "\" cannot be assigned with an output signal.")

              if ((left_signal['D'] == 'o') and (right_signal['D'] == 'i')):
                     raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + left_signal['N'] + "\" in component \"" + comp_name + "\" cannot be assigned with an input signal.")
           
       


       L = left_signal['L'].__doc__

       if (L.find("list") == 0):
              L0 = left_signal['L'][0].__doc__
              L1 = left_signal['L'][1].__doc__
              
       if (L.find("int") == 0):
              left_signal_len = left_signal['L']
       elif (L.find("list") == 0):
              if ((L0.find("int") == 0) and (L1.find("int") == 0)):
                     left_signal_len = abs(left_signal['L'][0] - left_signal['L'][1]) + 1
              elif ((L0.find("str") == 0) and (L1.find("int") == 0)):
                     left_signal_len = abs(eval(left_signal['L'][0]) - left_signal['L'][1]) + 1
              elif ((L0.find("int") == 0) and (L1.find("str") == 0)):
                     left_signal_len = abs(left_signal['L'][0] - eval(left_signal['L'][1])) + 1
              elif ((L0.find("str") == 0) and (L1.find("str") == 0)):
                     left_signal_len = abs(eval(left_signal['L'][0]) - eval(left_signal['L'][1])) + 1


                            
       if (sig_doc.find("dict") == 0):
              L = right_signal['L'].__doc__
              if (L.find("int") == 0):
                     right_signal_len = right_signal['L']
              elif (L.find("list") == 0):
                     right_signal_len = abs(right_signal['L'][0] - right_signal['L'][1]) + 1
       elif ((sig_doc.find("str") == 0) and (right_signal != "open")):
              right_signal_len = len(right_signal) - 2



       L = left_signal['L'].__doc__

       if (L.find("list") == 0):
              L0 = left_signal['L'][0].__doc__
              L1 = left_signal['L'][1].__doc__
       #if ((L0.find("int") == 0) and (L1.find("int") == 0)):
       if(right_signal !=  "\"open\""):
              if (right_signal_len != left_signal_len):
                     if (port_map_assignment_signals[1][0] == "name_right_binary_slice"):
                            if ((L0.find("int") == 0) and (L1.find("int") == 0)):
                                   raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(left_signal['L'][0]) + ':' + str(left_signal['L'][1]) + ']' + "\" in component \"" + comp_name + "\".")              
                            elif ((L0.find("str") == 0) and (L1.find("int") == 0)):
                                   raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(eval(left_signal['L'][0])) + ':' + str(left_signal['L'][1]) + ']' + "\" in component \"" + comp_name + "\".")              
                            elif ((L0.find("int") == 0) and (L1.find("str") == 0)):
                                   raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(left_signal['L'][0]) + ':' + str(eval(left_signal['L'][1])) + ']' + "\" in component \"" + comp_name + "\".")              
                            elif ((L0.find("str") == 0) and (L1.find("str") == 0)):
                                   raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(eval(left_signal['L'][0])) + ':' + str(eval(left_signal['L'][1])) + ']' + "\" in component \"" + comp_name + "\".")              
                     elif (port_map_assignment_signals[1][0] == "name_right_item"):
                            if ((L0.find("int") == 0) and (L1.find("int") == 0)):
                                   raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(left_signal['L'][0]) + ':' + str(left_signal['L'][1]) + ']' + "\" in component \"" + comp_name + "\".")              
                            elif ((L0.find("str") == 0) and (L1.find("int") == 0)):
                                   raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(eval(left_signal['L'][0])) + ':' + str(left_signal['L'][1]) + ']' + "\" in component \"" + comp_name + "\".")              
                            elif ((L0.find("int") == 0) and (L1.find("str") == 0)):
                                   raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(left_signal['L'][0]) + ':' + str(eval(left_signal['L'][1])) + ']' + "\" in component \"" + comp_name + "\".")              
                            elif ((L0.find("str") == 0) and (L1.find("str") == 0)):
                                   raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(eval(left_signal['L'][0])) + ':' + str(eval(left_signal['L'][1])) + ']' + "\" in component \"" + comp_name + "\".")       
                     else:
                            if (sig_doc.find("dict") == 0):
                                   if ((L0.find("int") == 0) and (L1.find("int") == 0)):
                                          raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(left_signal['L'][0]) + ':' + str(left_signal['L'][1]) + ']' + "\" in component \"" + comp_name + "\".")              
                                   elif ((L0.find("str") == 0) and (L1.find("int") == 0)):
                                          raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(eval(left_signal['L'][0])) + ':' + str(left_signal['L'][1]) + ']' + "\" in component \"" + comp_name + "\".")              
                                   elif ((L0.find("int") == 0) and (L1.find("str") == 0)):
                                          raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(left_signal['L'][0]) + ':' + str(eval(left_signal['L'][1])) + ']' + "\" in component \"" + comp_name + "\".")              
                                   elif ((L0.find("str") == 0) and (L1.find("str") == 0)):
                                          raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": signal \"" + right_signal['N'] + '[' + str(right_signal['L'][0]) + ':' + str(right_signal['L'][1]) + ']' + "\" has different length from signal \"" + left_signal['N']  + '[' + str(eval(left_signal['L'][0])) + ':' + str(eval(left_signal['L'][1])) + ']' + "\" in component \"" + comp_name + "\".")              
                            elif (sig_doc.find("str") == 0):
                                   if (L.find("list") == 0):
                                          if ((L0.find("int") == 0) and (L1.find("int") == 0)):
                                                  raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": binary constant " + right_signal + " has different length from signal \"" + left_signal['N']  + '[' + str(eval(left_signal['L'][0])) + ':' + str(left_signal['L'][1]) + ']' +  "\" in component \"" + comp_name + "\".")              
                                          elif ((L0.find("str") == 0) and (L1.find("int") == 0)):
                                                 raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": binary constant " + right_signal + " has different length from signal \"" + left_signal['N']  + '[' + str(eval(left_signal['L'][0])) + ':' + str(left_signal['L'][1]) + ']' +  "\" in component \"" + comp_name + "\".")
                                          elif ((L0.find("int") == 0) and (L1.find("str") == 0)):
                                                 raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": binary constant " + right_signal + " has different length from signal \"" + left_signal['N']  + '[' + str(left_signal['L'][0]) + ':' + str(eval(left_signal['L'][1])) + ']' +  "\" in component \"" + comp_name + "\".")      
                                          elif ((L0.find("str") == 0) and (L1.find("str") == 0)):
                                                 raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos) + ": binary constant " + right_signal + " has different length from signal \"" + left_signal['N']  + '[' + str(eval(left_signal['L'][0])) + ':' + str(eval(left_signal['L'][1])) + ']' +  "\" in component \"" + comp_name + "\".")      
                                       



