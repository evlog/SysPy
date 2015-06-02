"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _dataflow_signal_check.py

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

  Checking dataflow signal assignments.
"""

import _MyExceptions
reload(_MyExceptions)
from pdb import *

def dataflow_signal_check(token_struct, signals, func):
       """
       FUNCTION: dataflow_signal_check(a(), b[], c str)
              a: token's tupple
              b:  I/O signals list
              c: string name of the design function
              
       - Checking dataflow signal assignments.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       bit = "01"
       letter_d = "abcdefghijklmnopqrstuvwxyz"
       letter_u = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
       letter = letter_u + letter_d
       signal_name = ''
       index_name = ''
       flag_signal_left = 0
       flag_signal_right = 0
       flag_index_right0 = 0
       flag_index_right1 = 0
       flag_index_right2 = 0
       flag_signal_sens_list = 0
       flag_signal_in = 0
       flag_signal_out = 0
       flag_signal_sens_list = 0
       flag_signal_left_dataflow_comp = 0
       flag_rising_edge_sig = 0
       flag_conv_integer_sig = 0
       flag_conv_std_logic = 0
       signal_length = []
       flag_signal_slice_length = 0
       flag_signal_item_length = 0
       flag_signal_array_binary_item_length = 0
       flag_signal_array_binary_item_length0 = 0
       flag_signal_array_binary_item_length1 = 0
       flag_signal_array_binary_slice_length = 0
       flag_signal_array_binary_slice_length0 = 0
       flag_signal_array_binary_slice_length1 = 0
       flag_signal_func = 0
       pos = 0
#----------------------------------------------------------------------------------------------------------------------------------



       if (token_struct[0] == "name_right_binary_slice"):
              signal_name = token_struct[1][0]
              index_name = [int(token_struct[1][1]), int(token_struct[1][2])]
              print("signal_name_slice:", signal_name)
       elif (token_struct[0] == "name_right_binary_slice_var0"):
              signal_name = token_struct[1][0]
              index_name = [token_struct[1][1], int(token_struct[1][2])]
       elif (token_struct[0] == "name_right_binary_slice_var1"):
              signal_name = token_struct[1][0]
              index_name = [int(token_struct[1][1]), token_struct[1][2]]
       elif (token_struct[0] == "name_right_binary_slice_var01"):
              signal_name = token_struct[1][0]
              index_name = [token_struct[1][1], token_struct[1][2]]
       elif (token_struct[0] == "name_right_item"):
              signal_name = token_struct[1][0]
              signal_length = int(token_struct[1][1])
       elif (token_struct[0] == "name_left_item"):
              signal_name = token_struct[1][0]
              signal_length = int(token_struct[1][1])
       elif (token_struct[0] == "name_right_item_var"):
              signal_name = token_struct[1][0]
              index_name = token_struct[1][1]
              print("signal_name_item:", signal_name)
       elif (token_struct[0] == "name_left_item_var"):
              signal_name = token_struct[1][0]
              index_name = token_struct[1][1]
       elif (token_struct[0] == "name_right_array_binary_item"):
              signal_name = token_struct[1][0]
              index_name = [int(token_struct[1][1]), int(token_struct[1][2])]
       elif (token_struct[0] == "name_right_array_binary_item_var0"):
              signal_name = token_struct[1][0]
              index_name = [token_struct[1][1], int(token_struct[1][2])]
       elif (token_struct[0] == "name_right_array_binary_item_var1"):
              signal_name = token_struct[1][0]
              index_name = [int(token_struct[1][1]), token_struct[1][2]]
       elif (token_struct[0] == "name_right_array_binary_item_var01"):
              signal_name = token_struct[1][0]
              index_name = [token_struct[1][1], token_struct[1][2]]
       elif (token_struct[0] == "name_right_array_binary_slice"):
              signal_name = token_struct[1][0]
              index_name = [int(token_struct[1][1]), int(token_struct[1][2]), int(token_struct[1][3])]
       elif (token_struct[0] == "name_right_array_binary_slice_var0"):
              signal_name = token_struct[1][0]
              index_name = [token_struct[1][1], int(token_struct[1][2]), int(token_struct[1][3])]
       elif (token_struct[0] == "name_right_array_binary_slice_var1"):
              signal_name = token_struct[1][0]
              index_name = [int(token_struct[1][1]), token_struct[1][2], int(token_struct[1][3])]
       elif (token_struct[0] == "name_right_array_binary_slice_var2"):
              signal_name = token_struct[1][0]
              index_name = [int(token_struct[1][1]), int(token_struct[1][2]), token_struct[1][3]]
       elif (token_struct[0] == "name_right_array_binary_slice_var01"):
              signal_name = token_struct[1][0]
              index_name = [token_struct[1][1], token_struct[1][2], int(token_struct[1][3])]
       elif (token_struct[0] == "name_right_array_binary_slice_var02"):
              signal_name = token_struct[1][0]
              index_name = [token_struct[1][1], int(token_struct[1][2]), token_struct[1][3]]
       elif (token_struct[0] == "name_right_array_binary_slice_var12"):
              signal_name = token_struct[1][0]
              index_name = [int(token_struct[1][1]), token_struct[1][2], token_struct[1][3]]
       elif (token_struct[0] == "name_right_array_binary_slice_var012"):
              signal_name = token_struct[1][0]
              index_name = [token_struct[1][1], token_struct[1][2], token_struct[1][3]]
       else:
              signal_name = token_struct[1]
              signal_name = signal_name.replace('=', '')
              signal_name = signal_name.replace('!', '')
              signal_name = signal_name.replace('>', '')
              signal_name = signal_name.replace('<', '')
              signal_name = signal_name.replace(' ', '')
              signal_name = signal_name.replace('\'', '')


## raising exeptions if a tracked signal is not declared
#----------------------------------------------------------------------------------------------------------------------------------         
       flag_signal_left = 0
       if (token_struct[0] == "name_left"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_left = 1

              if (flag_signal_left == 0): 
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

       flag_signal_left= 0
       flag_index_left = 0
       if (token_struct[0] == "name_left_item_var"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_left = 1

                     if (index_name == signals[i]['N']):
                            flag_index_left = 1
                            
              
              if (flag_signal_left== 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_left == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name+ "\" not declared.")

       flag_signal_right = 0
       if (token_struct[0] == "name_right"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

       flag_signal_right = 0
       flag_signal_slice_length = 0
       if (token_struct[0] == "name_right_binary_slice"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1
                            L = signals[i]['L'].__doc__
                            if (L.find("list") == 0):
                                   if (signals[i]['L'][0] > signals[i]['L'][1]):
                                          if (index_name[0] > index_name[1]):
                                                 if ((index_name[0] <= signals[i]['L'][0]) and (index_name[1] >= signals[i]['L'][1])):
                                                        flag_signal_slice_length = 1
                                          elif (index_name[0] < index_name[1]):
                                                 if ((index_name[1] <= signals[i]['L'][0]) and (index_name[0] >= signals[i]['L'][1])):
                                                        flag_signal_slice_length = 1
                                   elif (signals[i]['L'][0] < signals[i]['L'][1]):
                                          if (index_name[0] > index_name[1]):
                                                 if ((index_name[0] <= signals[i]['L'][1]) and (index_name[1] >= signals[i]['L'][0])):
                                                        flag_signal_slice_length = 1
                                          elif (index_name[0] < index_name[1]):
                                                 if ((index_name[1] <= signals[i]['L'][1]) and (index_name[0] >= signals[i]['L'][0])):
                                                        flag_signal_slice_length = 1

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_signal_slice_length == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) + ':' + str(index_name[1]) + "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right = 0
       flag_signal_slice_length = 0
       if (token_struct[0] == "name_right_binary_slice_var0"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1
                            L = signals[i]['L'].__doc__
                            if (L.find("list") == 0):
                                   if (signals[i]['L'][0] > signals[i]['L'][1]):
                                          if ((index_name[1] <= signals[i]['L'][0]) and (index_name[1] >= signals[i]['L'][1])):
                                                 flag_signal_slice_length = 1
                                   elif (signals[i]['L'][0] < signals[i]['L'][1]):
                                          if ((index_name[1] <= signals[i]['L'][1]) and (index_name[1] >= signals[i]['L'][0])):
                                                 flag_signal_slice_length = 1
                     if (index_name[0] == signals[i]['N']):
                            flag_index_right = 1                     

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[0] + "\" not declared.")

              if (flag_signal_slice_length == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) + ':' + str(index_name[1]) + "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right = 0
       flag_signal_slice_length = 0
       if (token_struct[0] == "name_right_binary_slice_var1"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1
                            L = signals[i]['L'].__doc__
                            if (L.find("list") == 0):
                                   if (signals[i]['L'][0] > signals[i]['L'][1]):
                                          if ((index_name[0] <= signals[i]['L'][0]) and (index_name[0] >= signals[i]['L'][1])):
                                                 flag_signal_slice_length = 1
                                   elif (signals[i]['L'][0] < signals[i]['L'][1]):
                                          if ((index_name[0] <= signals[i]['L'][1]) and (index_name[0] >= signals[i]['L'][0])):
                                                 flag_signal_slice_length = 1
                     if (index_name[1] == signals[i]['N']):
                            flag_index_right = 1       

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[1] + "\" not declared.")

              if (flag_signal_slice_length == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) + ':' + str(index_name[1]) + "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right0 = 0
       flag_index_right1 = 0
       flag_signal_slice_length = 0
       if (token_struct[0] == "name_right_binary_slice_var01"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1
                     if (index_name[0] == signals[i]['N']):
                            flag_index_right0 = 1
                     if (index_name[1] == signals[i]['N']):
                            flag_index_right1 = 1    

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right0 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[0] + "\" not declared.")

              if (flag_index_right1 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[1] + "\" not declared.")

       flag_signal_right = 0
       if (token_struct[0] == "name_right_item"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1
                            if (signals[i]['T'] == 'b'):
                                   flag_signal_item_length = 0
                                   L = signals[i]['L'].__doc__
                                   if (L.find("list") == 0):
                                          if (signals[i]['L'][0] > signals[i]['L'][1]):
                                                 if ((signal_length <= signals[i]['L'][0]) and (signal_length >= signals[i]['L'][1])):
                                                        flag_signal_item_length = 1
                                                        print("flag_signal_item_length:", flag_signal_item_length)
                                          elif (signals[i]['L'][0] < signals[i]['L'][1]):
                                                 if ((signal_length >= signals[i]['L'][0]) and (signal_length <= signals[i]['L'][1])):
                                                        flag_signal_item_length = 1

                            elif (signals[i]['T'] == "arrb"):
                                   flag_signal_item_length = 0
                                   if ((signal_length >= signals[i]['L'][0][0]) and (signal_length <= signals[i]['L'][0][1])):
                                          flag_signal_item_length = 1

                            elif (signals[i]['T'] == "arri"):
                                   flag_signal_item_length = 0
                                   if ((signal_length >= signals[i]['L'][0][0]) and (signal_length <= signals[i]['L'][0][1])):
                                          flag_signal_item_length = 1
                            
              
              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_signal_item_length == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(signal_length) + "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right = 0
       if (token_struct[0] == "name_right_item_var"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1

                     if (index_name == signals[i]['N']):
                            flag_index_right = 1
                            
              
              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name+ "\" not declared.")



       flag_signal_right = 0
       flag_signal_array_binary_item_length0 = 0
       flag_signal_array_binary_item_length1 = 0
       if (token_struct[0] == "name_right_array_binary_item"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1
                            
                            if ((index_name[0] >= signals[i]['L'][0][0]) and (index_name[0] <= signals[i]['L'][0][1])):
                                   flag_signal_array_binary_item_length0 = 1

                            if (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                   if ((index_name[1] <= signals[i]['L'][1][0]) and (index_name[1] >= signals[i]['L'][1][1])):
                                          flag_signal_array_binary_item_length1 = 1
                                          print("flag_signal_item_length:", flag_signal_item_length)
                            elif (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                   if ((index_name[1] >= signals[i]['L'][1][0]) and (index_name <= signals[i]['L'][1][1])):
                                          flag_signal_array_binary_item_length1 = 1

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if ((flag_signal_array_binary_item_length0 == 0) or (flag_signal_array_binary_item_length1 == 0)):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) + "][" + str(index_name[1]) + "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right = 0
       flag_signal_array_binary_item_length = 0
       if (token_struct[0] == "name_right_array_binary_item_var0"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1
                            
                            if (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                   if ((index_name[1] <= signals[i]['L'][1][0]) and (index_name[1] >= signals[i]['L'][1][1])):
                                          flag_signal_array_binary_item_length = 1
                            elif (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                   if ((index_name[1] >= signals[i]['L'][1][0]) and (index_name[1] <= signals[i]['L'][1][1])):
                                          flag_signal_array_binary_item_length = 1
                                          
                     if (index_name[0] == signals[i]['N']):
                            flag_index_right = 1       

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[0] + "\" not declared.")

              if (flag_signal_array_binary_item_length == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) + "][" + str(index_name[1]) + "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right = 0
       flag_signal_array_binary_item_length = 0
       if (token_struct[0] == "name_right_array_binary_item_var1"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1
                            
                            if (signals[i]['L'][0][0] > signals[i]['L'][0][1]):
                                   if ((index_name[0] <= signals[i]['L'][0][0]) and (index_name[0] >= signals[i]['L'][0][1])):
                                          flag_signal_array_binary_item_length = 1
                            elif (signals[i]['L'][0][0] < signals[i]['L'][0][1]):
                                   if ((index_name[0] >= signals[i]['L'][0][0]) and (index_name[0] <= signals[i]['L'][0][1])):
                                          flag_signal_array_binary_item_length = 1
                                          
                     if (index_name[1] == signals[i]['N']):
                            flag_index_right = 1       

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[1] + "\" not declared.")

              if (flag_signal_array_binary_item_length == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) + "][" + str(index_name[1]) + "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right0 = 0
       flag_index_right1 = 0
       if (token_struct[0] == "name_right_array_binary_item_var01"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_right = 1

                     if (index_name[0] == signals[i]['N']):
                            flag_index_right0 = 1       
                                          
                     if (index_name[1] == signals[i]['N']):
                            flag_index_right1 = 1       

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right0 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[0] + "\" not declared.")

              if (flag_index_right1 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[1] + "\" not declared.")

       flag_signal_right = 0
       flag_signal_array_binary_item_length0 = 0
       flag_signal_array_binary_item_length1 = 0
       if (token_struct[0] == "name_right_array_binary_slice"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if (signals[i]['T'] != "arrb"):
                                   pos = token_struct[2]
                                   raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": wrong index type for signal \"" + signal_name + "\" .")
                                   
                            flag_signal_right = 1

                            if ((index_name[0] >= signals[i]['L'][0][0]) and (index_name[0] <= signals[i]['L'][0][1])):
                                   flag_signal_array_binary_item_length0 = 1

                            if (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                   if (index_name[1] > index_name[2]):
                                          if ((index_name[1] <= signals[i]['L'][1][0]) and (index_name[2] >= signals[i]['L'][1][1])):
                                                 flag_signal_array_binary_item_length1 = 1
                                                 print("flag_signal_item_length:", flag_signal_item_length)
                                   elif (index_name[1] < index_name[2]):
                                          if ((index_name[2] <= signals[i]['L'][1][0]) and (index_name[1] >= signals[i]['L'][1][1])):
                                                 flag_signal_array_binary_item_length1 = 1
                            elif (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                   if (index_name[1] > index_name[2]):
                                          if ((index_name[1] <= signals[i]['L'][1][1]) and (index_name[2] >= signals[i]['L'][1][0])):
                                                 flag_signal_array_binary_item_length1 = 1
                                   elif (index_name[1] < index_name[2]):
                                          if ((index_name[2] <= signals[i]['L'][1][1]) and (index_name[1] >= signals[i]['L'][1][0])):
                                                 flag_signal_array_binary_item_length1 = 1

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if ((flag_signal_array_binary_item_length0 == 0) or (flag_signal_array_binary_item_length1 == 0)):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) +  "][" + str(index_name[1]) + ':' + str(index_name[2]) +  "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right = 0
       flag_signal_array_binary_slice_length = 0
       if (token_struct[0] == "name_right_array_binary_slice_var0"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if (signals[i]['T'] != "arrb"):
                                   pos = token_struct[2]
                                   raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": wrong index type for signal \"" + signal_name + "\" .")
                                   
                            flag_signal_right = 1

                            if (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                   if (index_name[1] > index_name[2]):
                                          if ((index_name[1] <= signals[i]['L'][1][0]) and (index_name[2] >= signals[i]['L'][1][1])):
                                                 flag_signal_array_binary_slice_length = 1
                                                 print("flag_signal_item_length:", flag_signal_item_length)
                                   elif (index_name[1] < index_name[2]):
                                          if ((index_name[2] <= signals[i]['L'][1][0]) and (index_name[1] >= signals[i]['L'][1][1])):
                                                 flag_signal_array_binary_slice_length = 1
                            elif (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                   if (index_name[1] > index_name[2]):
                                          if ((index_name[1] <= signals[i]['L'][1][1]) and (index_name[2] >= signals[i]['L'][1][0])):
                                                 flag_signal_array_binary_slice_length = 1
                                   elif (index_name[1] < index_name[2]):
                                          if ((index_name[2] <= signals[i]['L'][1][1]) and (index_name[1] >= signals[i]['L'][1][0])):
                                                 flag_signal_array_binary_slice_length = 1

                     if (index_name[0] == signals[i]['N']):
                            flag_index_right = 1  

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[0] + "\" not declared.")

              if (flag_signal_array_binary_slice_length == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) +  "][" + str(index_name[1]) + ':' + str(index_name[2]) +  "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right = 0
       flag_signal_array_binary_slice_length0 = 0
       flag_signal_array_binary_slice_length1 = 0
       if (token_struct[0] == "name_right_array_binary_slice_var1"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if (signals[i]['T'] != "arrb"):
                                   pos = token_struct[2]
                                   raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": wrong index type for signal \"" + signal_name + "\" .")
                                   
                            flag_signal_right = 1

                            if ((index_name[0] >= signals[i]['L'][0][0]) and (index_name[0] <= signals[i]['L'][0][1])):
                                   flag_signal_array_binary_slice_length0 = 1

                            if (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                   if ((index_name[2] <= signals[i]['L'][1][0]) and (index_name[2] >= signals[i]['L'][1][1])):
                                          flag_signal_array_binary_slice_length1 = 1
                            elif (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                   if ((index_name[2] <= signals[i]['L'][1][1]) and (index_name[2] >= signals[i]['L'][1][0])):
                                          flag_signal_array_binary_slice_length1 = 1

                     if (index_name[1] == signals[i]['N']):
                            flag_index_right = 1  

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[1] + "\" not declared.")

              if ((flag_signal_array_binary_slice_length0 == 0) or (flag_signal_array_binary_slice_length1 == 0)):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) +  "][" + str(index_name[1]) + ':' + str(index_name[2]) +  "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right = 0
       flag_signal_array_binary_slice_length0 = 0
       flag_signal_array_binary_slice_length1 = 0
       if (token_struct[0] == "name_right_array_binary_slice_var2"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if (signals[i]['T'] != "arrb"):
                                   pos = token_struct[2]
                                   raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": wrong index type for signal \"" + signal_name + "\" .")
                                   
                            flag_signal_right = 1

                            if ((index_name[0] >= signals[i]['L'][0][0]) and (index_name[0] <= signals[i]['L'][0][1])):
                                   flag_signal_array_binary_slice_length0 = 1

                            if (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                   if ((index_name[1] <= signals[i]['L'][1][0]) and (index_name[1] >= signals[i]['L'][1][1])):
                                          flag_signal_array_binary_slice_length1 = 1
                            elif (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                   if ((index_name[1] <= signals[i]['L'][1][1]) and (index_name[1] >= signals[i]['L'][1][0])):
                                          flag_signal_array_binary_slice_length1 = 1

                     if (index_name[2] == signals[i]['N']):
                            flag_index_right = 1  

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[2] + "\" not declared.")

              if ((flag_signal_array_binary_slice_length0 == 0) or (flag_signal_array_binary_slice_length1 == 0)):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) +  "][" + str(index_name[1]) + ':' + str(index_name[2]) +  "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right0 = 0
       flag_index_right1 = 0
       flag_signal_array_binary_slice_length = 0
       if (token_struct[0] == "name_right_array_binary_slice_var01"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if (signals[i]['T'] != "arrb"):
                                   pos = token_struct[2]
                                   raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": wrong index type for signal \"" + signal_name + "\" .")
                                   
                            flag_signal_right = 1

                            if (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                   if ((index_name[2] <= signals[i]['L'][1][0]) and (index_name[2] >= signals[i]['L'][1][1])):
                                          flag_signal_array_binary_slice_length = 1
                            elif (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                   if ((index_name[2] <= signals[i]['L'][1][1]) and (index_name[2] >= signals[i]['L'][1][0])):
                                          flag_signal_array_binary_slice_length = 1

                     if (index_name[0] == signals[i]['N']):
                            flag_index_right0 = 1

                     if (index_name[1] == signals[i]['N']):
                            flag_index_right1 = 1  

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right0 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[0] + "\" not declared.")

              if (flag_index_right1 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[1] + "\" not declared.")

              if (flag_signal_array_binary_slice_length == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) +  "][" + str(index_name[1]) + ':' + str(index_name[2]) +  "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right0 = 0
       flag_index_right1 = 0
       flag_signal_array_binary_slice_length = 0
       if (token_struct[0] == "name_right_array_binary_slice_var02"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if (signals[i]['T'] != "arrb"):
                                   pos = token_struct[2]
                                   raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": wrong index type for signal \"" + signal_name + "\" .")
                                   
                            flag_signal_right = 1

                            if (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                   if ((index_name[1] <= signals[i]['L'][1][0]) and (index_name[1] >= signals[i]['L'][1][1])):
                                          flag_signal_array_binary_slice_length = 1
                            elif (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                   if ((index_name[1] <= signals[i]['L'][1][1]) and (index_name[1] >= signals[i]['L'][1][0])):
                                          flag_signal_array_binary_slice_length = 1

                     if (index_name[0] == signals[i]['N']):
                            flag_index_right0 = 1

                     if (index_name[2] == signals[i]['N']):
                            flag_index_right1 = 1  

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right0 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[0] + "\" not declared.")

              if (flag_index_right1 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[2] + "\" not declared.")

              if (flag_signal_array_binary_slice_length == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) +  "][" + str(index_name[1]) + ':' + str(index_name[2]) +  "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right0 = 0
       flag_index_right1 = 0
       flag_signal_array_binary_slice_length = 0
       if (token_struct[0] == "name_right_array_binary_slice_var12"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if (signals[i]['T'] != "arrb"):
                                   pos = token_struct[2]
                                   raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": wrong index type for signal \"" + signal_name + "\" .")
                                   
                            flag_signal_right = 1

                            if ((index_name[0] >= signals[i]['L'][0][0]) and (index_name[0] <= signals[i]['L'][0][1])):
                                   flag_signal_array_binary_slice_length = 1

                     if (index_name[1] == signals[i]['N']):
                            flag_index_right0 = 1

                     if (index_name[2] == signals[i]['N']):
                            flag_index_right1 = 1  

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right0 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[1] + "\" not declared.")

              if (flag_index_right1 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[2] + "\" not declared.")

              if (flag_signal_array_binary_slice_length == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" is not compatible with the slice assignment \"" + signal_name + '[' + str(index_name[0]) +  "][" + str(index_name[1]) + ':' + str(index_name[2]) +  "]\". Index out of range.")

       flag_signal_right = 0
       flag_index_right0 = 0
       flag_index_right1 = 0
       flag_index_right2 = 0
       if (token_struct[0] == "name_right_array_binary_slice_var012"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if (signals[i]['T'] != "arrb"):
                                   pos = token_struct[2]
                                   raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": wrong index type for signal \"" + signal_name + "\" .")
                                   
                            flag_signal_right = 1

                     if (index_name[0] == signals[i]['N']):
                            flag_index_right0 = 1

                     if (index_name[1] == signals[i]['N']):
                            flag_index_right1 = 1

                     if (index_name[2] == signals[i]['N']):
                            flag_index_right2 = 1  

              if (flag_signal_right == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

              if (flag_index_right0 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[0] + "\" not declared.")

              if (flag_index_right1 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[1] + "\" not declared.")

              if (flag_index_right2 == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + index_name[2] + "\" not declared.")

       flag_signal_sens_list = 0
       if (token_struct[0] == "name_sens_list"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_signal_sens_list  = 1

              if (flag_signal_sens_list == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

       flag_rising_edge_sig = 0
       if (token_struct[0] == "rising_edge_sig"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_rising_edge_sig  = 1

              if (flag_rising_edge_sig == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

       flag_conv_integer_bit_sig = 0
       flag_conv_integer_let_sig = 0
       if (token_struct[0] == "conv_integer"):
              signal_name = signal_name.replace("\"", '')
              for i in range(len(letter)):
                     if (token_struct[1][0] == letter[i]):
                            flag_conv_integer_let_sig = 1
              if (flag_conv_integer_let_sig == 0):
                     flag_conv_integer_bit_sig = 1

              if (flag_conv_integer_let_sig == 1):
                     flag_conv_integer_let_sig = 0
                     for i in range(len(signals)):
                            if (signal_name == signals[i]['N']):
                                   flag_conv_integer_let_sig = 1

                     if (flag_conv_integer_let_sig == 0):
                            pos = token_struct[2]
                            raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")

       flag_conv_std_logic = 0
       if (token_struct[0] == "conv_std_logic"):
              for i in range(len(letter)):
                     if (token_struct[1][0] == letter[i]):      
                            for i in range(len(signals)):
                                   if (signal_name == signals[i]['N']):
                                          flag_conv_std_logic = 1

              for i in range(len(letter)):
                     if (token_struct[1][0] == letter[i]): 
                            if (flag_conv_std_logic == 0):
                                   pos = token_struct[3]
                                   raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")                                 

       flag_func = 0       
       if ((token_struct[0] == "func_def_i") or (token_struct[0] == "func_def_o")):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            flag_func = 1

              if (flag_func == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": signal \"" + signal_name+ "\" not declared.")
#----------------------------------------------------------------------------------------------------------------------------------    

## raising exeption if an input signal is assigned or an ouput signal is read
#----------------------------------------------------------------------------------------------------------------------------------
       flag_signal_in = 0
       if (token_struct[0] == "name_left"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if ((signals[i]['D'] == 'o') or (signals[i]['D'] == "intr") or (signals[i]['D'] == 'v') or (signals[i]['D'] == "vf")):
                                   flag_signal_in = 1

              if (flag_signal_in == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": cannot assign input signal \"" + signal_name + "\".")


       flag_signal_out = 0
       if (token_struct[0] == "name_right"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if ((signals[i]['D'] == 'i') or (signals[i]['D'] == "intr") or (signals[i]['D'] == 'v')):
                                   flag_signal_out = 1

              if (flag_signal_out == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": cannot read from output signal \"" + signal_name + "\".")

       flag_signal_out = 0
       if (token_struct[0] == "conv_integer"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if ((signals[i]['D'] == 'i') or (signals[i]['D'] == "intr")):
                                   flag_signal_out = 1
              ## A binary string must be converted to integer
              if (bit.find(signal_name[0]) != -1):
                     flag_signal_out = 1
                     print("flag_signal_out = 1")
                     #L0 = len(signal_name) - 3
                     #signal_name = {'D': 'intr', 'T': 'b', 'L': [L0, 0], 'N': signal_name}

              if (flag_signal_out == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": cannot read from output signal \"" + signal_name + "\".")

       # Isos  na mhn xreiazetai, afou ta shmata typou int den boroun na dilothoun os I/O
       flag_signal_out = 0
       if (token_struct[0] == "conv_std_logic"):
              for i in range(len(letter)):
                     if (token_struct[1][0] == letter[i]):                    
                            for i in range (0, len(signals)):
                                   if (signal_name == signals[i]['N']):
                                          if ((signals[i]['D'] == 'i') or (signals[i]['D'] == "intr")):
                                                 flag_signal_out = 1
                            break

                            if (flag_signal_out == 0):
                                   pos = token_struct[2]
                                   raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": cannot read from output signal \"" + signal_name + "\".")
#----------------------------------------------------------------------------------------------------------------------------------

## raising exeption if an ouput signal is declared to a sensitivity list or as a rising/falling edge clock 
#----------------------------------------------------------------------------------------------------------------------------------
       flag_signal_sens_list = 0
       if (token_struct[0] == "name_sens_list"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if ((signals[i]['D'] == 'i') or (signals[i]['D'] == "intr")):
                                   flag_signal_sens_list = 1

              if (flag_signal_sens_list == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": cannot declare output signal \"" + signal_name + "\" in a sensitivity list.")

       flag_rising_edge_sig = 0
       if (token_struct[0] == "rising_edge_sig"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if ((signals[i]['D'] == 'i') or (signals[i]['D'] == "intr")):
                                   flag_rising_edge_sig = 1

              if (flag_rising_edge_sig == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": cannot declare output signal \"" + signal_name + "\" as a rising edge clock signal.")
#----------------------------------------------------------------------------------------------------------------------------------

## raising exeption if an ouput signal is read in a conditional if statement in dataflow code
#----------------------------------------------------------------------------------------------------------------------------------
       flag_signal_left_dataflow_comp = 0
       if (token_struct[0] == "name_left_dataflow_comp"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if ((signals[i]['D'] == 'i') or (signals[i]['D'] == "intr") or (signals[i]['D'] == 'v')):
                                   flag_signal_left_dataflow_comp = 1

              if (flag_signal_left_dataflow_comp == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": cannot read from output signal \"" + signal_name + "\".")
#----------------------------------------------------------------------------------------------------------------------------------

## raising exeption for I/O directions in signal assignments in function declarations
#----------------------------------------------------------------------------------------------------------------------------------
       flag_signal_func = 0
       if (token_struct[0] == "func_def_i"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if ((signals[i]['D'] == 'i') or (signals[i]['D'] == "intr")):
                                   flag_signal_func = 1

              if (flag_signal_func == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": \"" + signal_name + "\" is an output signal. An input or internal signal must be assigned")

       flag_signal_func = 0
       if (token_struct[0] == "func_def_o"):
              for i in range (0, len(signals)):
                     if (signal_name == signals[i]['N']):
                            if ((signals[i]['D'] == 'o') or (signals[i]['D'] == 'intr')):
                                   flag_signal_func = 1

              if (flag_signal_func == 0):
                     pos = token_struct[2]
                     raise _MyExceptions.MyExceptions("File :\"" +  func +".py\": Line " + str(pos) + ": \"" + signal_name + "\" is an input signal. An output or internal signal must be assigned")
