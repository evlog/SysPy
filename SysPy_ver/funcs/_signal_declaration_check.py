"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _signal_declaration_check.py

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

  Signal decleration check.
"""

from operator import *
import _MyExceptions
reload (_MyExceptions)
from pdb import *

def signal_declaration_check(args, func):
       """
       FUNCTION: signal_decleration_check(a(), b str)
              a: tupple containing the signal statements
              b: string name of the design function
              
       - Signal decleration check.
       """
       
# Python's variable declarations
#----------------------------------------------------------------------------------------------------------------------------------
       multiple_sig_names = ''
       bit = "01"
       letter_d = "abcdefghijklmnopqrstuvwxyz"
       letter_u = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
       letter = letter_u + letter_d
       signal_decl_keys_sup = ['D', 'T', 'L', 'N', 'V', "del"]
       signal_decl_keys_req_sim = ['T', 'N', 'V', "del"]
       signal_decl_keys_req = ['D', 'T', 'L', 'N']
       comp_signal_decl_keys_sup = ['D', 'T', 'L', 'N']
       signal_decl_direct_sup = ['i', 'o', "intr", 'v']
       comp_signal_decl_direct_sup = ['i', 'o']
       signal_decl_types_sup = ['b', 's', "int", "arrb", "arri", "sim"] 
       comp_signal_decl_types_sup = ['b']
       signals = []
       flag_decl_keys = 0
       flag_decl_types = 0
       flag_decl_direct = 0
       flag_letter = 0
       flag_comp = 0
       flag_decl_keys_count = 0
       signal_dupl_count = 0
#----------------------------------------------------------------------------------------------------------------------------------

# extracting signals from "args[]" list
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(args) - 1):
              signals.append(args[i])
#----------------------------------------------------------------------------------------------------------------------------------

# Setting "flag_comp" if the signals to be checked are from a component
#----------------------------------------------------------------------------------------------------------------------------------
       if ((args[len(args) - 1][0] == "Unisim") or (args[len(args) - 1][0] == "CoreLib") or (args[len(args) - 1][0] == "custom")):
              flag_comp = 1 
#----------------------------------------------------------------------------------------------------------------------------------

# Checking for correct signal dictionary keys in their declaration
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(args) - 1):
              k = args[i].keys()
              if (flag_comp == 0):
                     for j in range(len(k)):
                            flag_decl_keys = 0
                            for m in range(len(signal_decl_keys_sup)):
                                   if (k[j] == signal_decl_keys_sup[m]): 
                                          flag_decl_keys = 1
                                          break
                            if (flag_decl_keys == 0):
                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect key for \"" + k[j] + "\". Possible keys are: \"D\", \"T\", \"L\", \"N\", \"V\", \"del\".")
              elif (flag_comp == 1):
                     for j in range(len(k)):
                            flag_decl_keys = 0
                            for m in range(len(comp_signal_decl_keys_sup)):
                                   if (k[j] == signal_decl_keys_sup[m]):
                                          flag_decl_keys = 1
                                          break
                            if (flag_decl_keys == 0):
                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect key for \"" + k[j] + "\" in component \"" + args[len(args) - 1][1] + "\". Possible keys are: \"D\", \"T\", \"L\", \"N\".")
#----------------------------------------------------------------------------------------------------------------------------------
                            
# Checking if a signal has all the required dictionary keys in their declaration
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(args) - 1):
              k = args[i].keys()
              decl_keys_dupl = []
              flag_decl_keys_count = 0
              if (flag_comp == 0):
                     if (args[i]['T'] != "sim"): 
                            flag_decl_keys_count = 0
                            for j in range(len(k)):
                                   for m in range(len(signal_decl_keys_req)):
                                          if (k[j] == signal_decl_keys_req[m]):
                                                 flag_decl_keys_count += 1

                            if (flag_decl_keys_count < len(signal_decl_keys_req)):
                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Missing keys in signal declaration. Required keys are: \"D\", \"T\", \"L\", \"N\".")

                     ## Simulation signal check
                     elif (args[i]['T'] == "sim"):
                            flag_decl_keys_count = 0
                            for j in range(len(k)):
                                   for m in range(len(signal_decl_keys_req_sim)):
                                          if (k[j] == signal_decl_keys_req_sim[m]):
                                                 flag_decl_keys_count += 1

                            if (flag_decl_keys_count < len(signal_decl_keys_req_sim)):
                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Missing keys in simulation signal declaration. Required keys are: \"T\", \"N\", \"V\".")

              elif (flag_comp == 1):
                     flag_decl_keys_count = 0
                     for j in range(len(k)):
                            for m in range(len(signal_decl_keys_req)):
                                   if (k[j] == signal_decl_keys_req[m]):
                                          flag_decl_keys_count += 1

                     if (flag_decl_keys_count < len(signal_decl_keys_req)):
                            raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Missing keys in signals declarations in component \"" + args[len(args) - 1][1] + "\". Required keys are: \"D\", \"T\", \"L\", \"N\".")
#----------------------------------------------------------------------------------------------------------------------------------

# Adding 'D' and 'L' keys to simulation signals declaration
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(args) - 1):
              if (args[i]['T'] == "sim"): 
                     for j in range(len(args) - 1):
                            n = args[j]['N'].__doc__
                            if (n.find("str") == 0):
                                   if ((args[i]['N'] == args[j]['N']) and (args[j]['T'] != "sim")): 
                                          args[i]['D'] = args[j]['D']
                                          args[i]['L'] = args[j]['L']
                            elif (n.find("list") == 0):
                                   for k in range(len(args[j]['N'])):
                                          if ((args[i]['N'] == args[j]['N'][k]) and (args[j]['T'] != "sim")): 
                                                 args[i]['D'] = args[j]['D']
                                                 args[i]['L'] = args[j]['L']
                                

#----------------------------------------------------------------------------------------------------------------------------------

# Checking if a signal has duplication of dictionary keys in its declaration
#----------------------------------------------------------------------------------------------------------------------------------

# Checking for correct signal's size declaration and raising the proper exceptions
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(args) - 1):
              if (args[i]['T'] != "sim"):
                     L = args[i]['L'].__doc__
                     n = args[i]['N'].__doc__
                     if ((L.find("int") == -1) and (L.find("list") == -1)):
                            if (n.find("str") == 0):
                                   if (flag_comp == 0):
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\".")
                                   elif (flag_comp == 1):
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][1] + "\".")
                            elif (n.find("list") == 0):
                                   multiple_sig_names = ''
                                   for j in range(len(args[i]['N'])):
                                          if (j != (len(args[i]['N']) - 1)):
                                                 multiple_sig_names += args[i]['N'][j] + ", "
                                          else:
                                                 multiple_sig_names += args[i]['N'][j]
                                   if (flag_comp == 0):
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\".")
                                   elif (flag_comp == 1):
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\" in component \"" + args[len(args) - 1][1] + "\".")
                     elif (L.find("int") == 0):
                            if (args[i]['L'] != 1):
                                   if (args[i]['T'] == 'b'):
                                          if (n.find("str")  == 0):
                                                 if (flag_comp == 0):
                                                        raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". Single bit binary signals must have a length equal to \"1\".")
                                                 elif (flag_comp == 1):
                                                        raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][1] + "\". Single bit binary signals must have a length equal to \"1\".")
                                          elif (n.find("list") == 0):
                                                 multiple_sig_names = ''
                                                 for j in range(len(args[i]['N'])):
                                                        if (j != (len(args[i]['N']) - 1)):
                                                               multiple_sig_names += args[i]['N'][j] + ", "
                                                        else:
                                                               multiple_sig_names += args[i]['N'][j]
                                                 if (flag_comp == 0):
                                                        raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\". Single bit binary signals must have a length equal to \"1\".")
                                                 elif (flag_comp == 1):
                                                        raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\" in component \"" + args[len(args) - 1][1] + "\". Single bit binary signals must have a length equal to \"1\".")
                                   elif (args[i]['T'] == 's'):
                                          if (flag_comp == 0):
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". State signals must have a length equal to \"1\".")
                                          elif (flag_comp == 1):
                                                 pass
                            if (args[i]['T'] == "int"):
                                   if (n.find("str")  == 0):
                                          if (flag_comp == 0):
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". Integer signals must have a length declared by a 1x2 integer list .")
                                          elif (flag_comp == 1):
                                                 pass
                                   elif (n.find("list") == 0):
                                          multiple_sig_names = ''
                                          for j in range(len(args[i]['N'])):
                                                 if (j != (len(args[i]['N']) - 1)):
                                                        multiple_sig_names += args[i]['N'][j] + ", "
                                                 else:
                                                        multiple_sig_names += args[i]['N'][j]
                                          if (flag_comp == 0):
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\". Integer signals must have a length declared by a 1x2 integer list .")
                                          elif (flag_comp == 1):
                                                 pass
                     elif (L.find("list") == 0):
                            if (len(args[i]['L']) != 2):
                                   if (n.find("str") == 0):
                                          if (flag_comp == 0):
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". Length of a binary bus or integer signal must be declared with a 1x2 integer list.")
                                          elif (flag_comp == 1):
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][1] + "\". Length of a binary bus signal must be declared with a 1x2 integer list.")
                                   elif (n.find("list") == 0):
                                          multiple_sig_names = ''
                                          for j in range(len(args[i]['N'])):
                                                 if (j != (len(args[i]['N']) - 1)):
                                                        multiple_sig_names += args[i]['N'][j] + ", "
                                                 else:
                                                        multiple_sig_names += args[i]['N'][j]
                                          if (flag_comp == 0):
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\". Length of a binary bus or integer signal must be declared with a 1x2 integer list.")
                                          elif (flag_comp == 1):
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\" in component \"" + args[len(args) - 1][1] +"\". Length of a binary bus signal must be declared with a 1x2 integer list.")
                            elif (len(args[i]['L']) == 2):
                                   if ((args[i]['T'] == 'b') or (args[i]['T'] == "int")):
                                          L0 = args[i]['L'][0].__doc__
                                          L1 = args[i]['L'][1].__doc__
                                          if ((L0.find("int") != 0) or (L1.find("int") != 0)):
                                                 if (n.find("str") == 0):
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". Length of a binary bus or integer signal must be declared with a 1x2 integer list.")
                                                        #elif (flag_comp == 1):
                                                               #raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][2] + "\". Length of a binary bus signal must be declared with a 1x2 integer list.")
                                                 elif (n.find("list") == 0):
                                                        multiple_sig_names = ''
                                                        for j in range(len(args[i]['N'])):
                                                               if (j != (len(args[i]['N']) - 1)):
                                                                      multiple_sig_names += args[i]['N'][j] + ", "
                                                               else:
                                                                      multiple_sig_names += args[i]['N'][j]
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\". Length of a binary bus or integer signal must be declared with a 1x2 integer list.")
                                                        #elif (flag_comp == 1):
                                                               #raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\" in component \"" + args[len(args) - 1][2] + "\". Length of a binary bus signal must be declared with a 1x2 integer list.")
                                   elif (args[i]['T'] == "arrb"):
                                          L00 = args[i]['L'][0][0].__doc__
                                          L01 = args[i]['L'][0][1].__doc__
                                          L10 = args[i]['L'][1][0].__doc__
                                          L11 = args[i]['L'][1][1].__doc__

                                          if ((L00.find("int") != 0) or (L01.find("int") != 0) or (L10.find("int") != 0) or (L11.find("int") != 0)):
                                                 if (n.find("str") == 0):
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". Length of a binary array must be declared with two 1x2 positive integer lists.")
                                                        #elif (flag_comp == 1):
                                                               #raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][2] + "\". Length of a binary bus signal must be declared with a 1x2 integer list.")
                                                 elif (n.find("list") == 0):
                                                        multiple_sig_names = ''
                                                        for j in range(len(args[i]['N'])):
                                                               if (j != (len(args[i]['N']) - 1)):
                                                                      multiple_sig_names += args[i]['N'][j] + ", "
                                                               else:
                                                                      multiple_sig_names += args[i]['N'][j]
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\". Length of a binary array must be declared with two 1x2 posotive integer lists.")

                                          if ((args[i]['L'][0][0] < 0) or (args[i]['L'][0][1] < 0) or (args[i]['L'][1][0] < 0) or (args[i]['L'][1][1] < 0)):
                                                 if (n.find("str") == 0):
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". Length of a binary array must be declared with two 1x2 positive integer lists.")
                                                        #elif (flag_comp == 1):
                                                               #raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][2] + "\". Length of a binary bus signal must be declared with a 1x2 integer list.")
                                                 elif (n.find("list") == 0):
                                                        multiple_sig_names = ''
                                                        for j in range(len(args[i]['N'])):
                                                               if (j != (len(args[i]['N']) - 1)):
                                                                      multiple_sig_names += args[i]['N'][j] + ", "
                                                               else:
                                                                      multiple_sig_names += args[i]['N'][j]
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\". Length of a binary array must be declared with two 1x2 positive integer lists.")

                                   elif (args[i]['T'] == "arri"):
                                          L00 = args[i]['L'][0][0].__doc__
                                          L01 = args[i]['L'][0][1].__doc__
                                          L10 = args[i]['L'][1][0].__doc__
                                          L11 = args[i]['L'][1][1].__doc__
                                          print("L10, L11:", L10, L11)
                                          if (args[i]['L'][1][0] >= args[i]['L'][1][1]):
                                                 if (n.find("str") == 0):
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". Length of an integer signal must be declared with a 1x2 integer list where the 2nd integer must be greater.")

                                          if ((L00.find("int") != 0) or (L01.find("int") != 0) or (L10.find("int") != 0) or (L11.find("int") != 0)):
                                                 if (n.find("str") == 0):
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". Length of an integer signal must be declared with a 1x2 integer list where the 2nd integer must be greater.")
                                                        #elif (flag_comp == 1):
                                                               #raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][2] + "\". Length of a binary bus signal must be declared with a 1x2 integer list.")
                                                 elif (n.find("list") == 0):
                                                        multiple_sig_names = ''
                                                        for j in range(len(args[i]['N'])):
                                                               if (j != (len(args[i]['N']) - 1)):
                                                                      multiple_sig_names += args[i]['N'][j] + ", "
                                                               else:
                                                                      multiple_sig_names += args[i]['N'][j]
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + multiple_sig_names + "\". Length of an integer signal must be declared with a 1x2 integer list where the 2nd integer must be greater.")

                                          if ((args[i]['L'][0][0] < 0) or (args[i]['L'][0][1] < 0)):
                                                 if (n.find("str") == 0):
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". Length of an integer array must be declared with a 1x2 positive integer lists.")
                                                        #elif (flag_comp == 1):
                                                               #raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][2] + "\". Length of a binary bus signal must be declared with a 1x2 integer list.")
                                                 elif (n.find("list") == 0):
                                                        multiple_sig_names = ''
                                                        for j in range(len(args[i]['N'])):
                                                               if (j != (len(args[i]['N']) - 1)):
                                                                      multiple_sig_names += args[i]['N'][j] + ", "
                                                               else:
                                                                      multiple_sig_names += args[i]['N'][j]
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\". Length of an integer array must be declared with a 1x2 positive integer lists.")


                                   if (args[i]['T'] == "int"):
                                          if (args[i]['L'][0] >= args[i]['L'][1]):
                                                 if (n.find("str") == 0):
                                                        if (flag_comp == 0):
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signal \"" + args[i]['N'] + "\". Length of an integer signal must be declared with a 1x2 integer list where the 2nd integer must be greater.")
                                                        elif (flag_comp == 1):
                                                               pass
                                                 elif (n.find("list") == 0):
                                                        multiple_sig_names = ''
                                                        for j in range(len(args[i]['N'])):
                                                               if (j != (len(args[i]['N']) - 1)):
                                                                      multiple_sig_names += args[i]['N'][j] + ", "
                                                               else:
                                                                      multiple_sig_names += args[i]['N'][j]

                                                        if (flag_comp == 0):
                                                               print("flag_comp:", flag_comp)
                                                               raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect length for signals \"" + multiple_sig_names + "\". Length of an integer signal must be declared with a 1x2 integer list where the 2nd integer must be greater.")
                                                        elif (flag_comp == 1):
                                                               pass
#----------------------------------------------------------------------------------------------------------------------------------
       
 # checking for correct signal type and direction declaration and raising the proper exceptions
 #----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(args) - 1):
              if (args[i]['T'] != "sim"):
                     if (flag_comp == 0):
                            n = args[i]['N'].__doc__
                            for j in range(len(signal_decl_direct_sup)):
                                   if (args[i]['D'] == signal_decl_direct_sup[j]):
                                          flag_decl_direct = 1
                                          break
                            if (flag_decl_direct == 0):
                                   if (n.find("str") == 0):            
                                          raise _MyExceptions.MyExceptions("File: \"" + func + ".py\": " + "Signal direction not supported for signal \"" + args[i]['N'] + "\" (supported directions: input -> \"i\", output -> \"o\", internal -> \"intr\", variable -> \"v\").")
                                   elif (n.find("list") == 0):
                                          multiple_sig_names = ''
                                          for j in range(len(args[i]['N'])):
                                                 if (j != (len(args[i]['N']) - 1)):
                                                        multiple_sig_names += args[i]['N'][j] + ", "
                                                 else:
                                                        multiple_sig_names += args[i]['N'][j]
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Signal direction not supported for signals \"" + multiple_sig_names + "\" (supported directions: input -> \"i\", output-> \"o\", internal -> \"intr\", variable -> \"v\").")
                     elif (flag_comp == 1):
                            n = args[i]['N'].__doc__
                            for j in range(len(comp_signal_decl_direct_sup)):
                                   if (args[i]['D'] == comp_signal_decl_direct_sup[j]):
                                          flag_decl_direct = 1
                                          break
                            if (flag_decl_direct == 0):
                                   if (n.find("str") == 0):            
                                          raise _MyExceptions.MyExceptions("File: \"" + func + ".py\": " + "Signal direction not supported for signal \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][1] + "\" (supported directions: input -> \"i\", output -> \"o\").")
                                   elif (n.find("list") == 0):
                                          multiple_sig_names = ''
                                          for j in range(len(args[i]['N'])):
                                                 if (j != (len(args[i]['N']) - 1)):
                                                        multiple_sig_names += args[i]['N'][j] + ", "
                                                 else:
                                                        multiple_sig_names += args[i]['N'][j]
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Signal direction not supported for signals \"" + multiple_sig_names + "\" in component \"" + args[len(args) - 1][1] + "\" (supported directions: input -> \"i\", output-> \"o\").")
                     if (flag_comp == 0):
                            flag_decl_types = 0 
                            for j in range(len(signal_decl_types_sup)):
                                   if (args[i]['T'] == signal_decl_types_sup[j]):
                                          flag_decl_types = 1
                                          break
                            if (flag_decl_types == 0):
                                   if (n.find("str") == 0):    
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Signal type not supported for signal \"" + args[i]['N'] + "\"  (supported types: std_logic_vector -> \"b\", integer -> \"int\", states -> \"s\", std_logic_array -> \"arrb\", integer_array -> \"arri\").")
                                   elif (n.find("list") == 0):
                                          multiple_sig_names = ''
                                          for j in range(len(args[i]['N'])):
                                                 if (j != (len(args[i]['N']) - 1)):
                                                        multiple_sig_names += args[i]['N'][j] + ", "
                                                 else:
                                                        multiple_sig_names += args[i]['N'][j]
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Signal type not supported for signals \"" + multiple_sig_names + "\"  (supported types: std_logic_vector -> \"b\", integer -> \"int\", states -> \"s\", std_logic_array -> \"arrb\", integer_array -> \"arri\").")

                     elif (flag_comp == 1):
                            flag_decl_types = 0
                            for j in range(len(comp_signal_decl_types_sup)):
                                   if (args[i]['T'] == comp_signal_decl_types_sup[j]):
                                          flag_decl_types = 1
                                          break
                            if (flag_decl_types == 0):
                                   if (n.find("str") == 0):     
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Signal type not supported for signal \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][1] + "\" (supported types: std_logic_vector -> \"b\").")
                                   elif (n.find("list") == 0):
                                          multiple_sig_names = ''
                                          for j in range(len(args[i]['N'])):
                                                 if (j != (len(args[i]['N']) - 1)):
                                                        multiple_sig_names += args[i]['N'][j] + ", "
                                                 else:
                                                        multiple_sig_names += args[i]['N'][j]
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Signal type not supported for signals \"" + multiple_sig_names + "\" in component \"" + args[len(args) - 1][1] + "\" (supported types: std_logic_vector -> \"b\").")

                     if (args[i]['T'] == "int"):
                            if ((args[i]['D'] != "intr") and (args[i]['D'] != 'v')):
                                   if (flag_comp == 0):
                                          if (n.find("str") == 0):   
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Integer signal \"" + args[i]['N'] + "\" can be declared only as internal signal. I/O signals must be binary.")
                                          elif (n.find("list") == 0):  
                                                 multiple_sig_names = ''
                                                 for j in range(len(args[i]['N'])):
                                                        if (j != (len(args[i]['N']) - 1)):
                                                               multiple_sig_names += args[i]['N'][j] + ", "
                                                        else:
                                                               multiple_sig_names += args[i]['N'][j]
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Integer signals \"" + multiple_sig_names + "\" can be declared only as internal signals. I/O signals must be binary.")
#----------------------------------------------------------------------------------------------------------------------------------

 # checking for correct signal name declaration  and raising the proper exceptions
 #----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(args) - 1):
              n = args[i]['N'].__doc__
              if (n.find("list") == 0):
                     if (len(args[i]['N']) == 1):
                            if (flag_comp == 0):
                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + str(args[i]['N'][0]) + "\". Single names must be declared as single strings.")
                            elif (flag_comp == 1):
                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + str(args[i]['N'][0]) + "\" in component \"" + args[len(args) - 1][1] + "\". Single names must be declared as single strings.")
                     elif (len(args[i]['N']) > 0):
                            for j in range(len(args[i]['N'])):
                                   n1 = args[i]['N'][j].__doc__
                                   if (n1.find("str") != 0):
                                          if (flag_comp == 0):
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + str(args[i]['N'][j]) + "\". Signal names must be declared as strings.")
                                          elif (flag_comp == 1):
                                                 raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + str(args[i]['N'][j]) + "\" in component \"" + args[len(args) - 1][1] + "\". Signal names must be declared as strings.")

              else:
                     if (n.find("str") != 0):
                            if (flag_comp == 0):
                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + str(args[i]['N']) + "\". Signal names must be declared as strings.")
                            elif (flag_comp == 1):
                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + str(args[i]['N']) + "\" in component \"" + args[len(args) - 1][1] + "\". Signal names must be declared as strings.")
                     
##              if (args[i]['T'] == 's'):
##                     if (n.find("list") == 0):
##                            if (flag_comp == 0):
##                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + args[i]['N'][0] + "\" . Signal name for state must be a single string.")
##                            elif (flag_comp == 1):
##                                   pass

              if (n.find("str") == 0):
                     flag_letter = 0
                     for j in range(len(letter)):
                            if (letter[j] == args[i]['N'][0]):
                                   flag_letter = 1 
                                   break
                     if (flag_letter == 0):
                            if (flag_comp == 0):
                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + args[i]['N'] + "\". Signal names must begin with a letter.")
                            elif (flag_comp == 1):
                                   raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][1] + "\". Signal names must begin with a letter.")
              
              elif (n.find("list") == 0):
                     for k in range(len(args[i]['N'])):
                            flag_letter = 0
                            for j in range(len(letter)):
                                   if (letter[j] == args[i]['N'][k][0]):
                                          flag_letter = 1
                                          break
                            if (flag_letter == 0): 
                                   if (flag_comp == 0):
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + args[i]['N'][k] + "\". Signal names must begin with a letter.")
                                   elif (flag_comp == 1):
                                          raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Incorrect signal name for \"" + args[i]['N'][k] + "\" in component \"" + args[len(args) - 1][1] + "\". Signal names must begin with a letter.")
              
 #----------------------------------------------------------------------------------------------------------------------------------

# Checking for signal duplication
 #----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(args) - 1):
              signal_dupl_count = 0
              for j in range(len(args) - 1):
                     n = args[j]['N'].__doc__
                     if (n.find("str") == 0):
                            if ((args[i]['D'] != "sim") and (args[j]['D'] != "sim")):
                                   if (args[i]['N'] == args[j]['N']):
                                          signal_dupl_count += 1
                     elif (n.find("list") == 0):
                            for k in range(len(args[j]['N'])):
                                   if (args[i]['N'] == args[j]['N'][k]):
                                          signal_dupl_count += 1
                                            
              if (signal_dupl_count > 1):
                     if (flag_comp == 0):
                            raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Signal duplication for \"" + args[i]['N'] + "\".")
                     elif (flag_comp == 1):
                            raise _MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Signal duplication for \"" + args[i]['N'] + "\" in component \"" + args[len(args) - 1][1] + "\".")

# Checking for correct signal initialization
#----------------------------------------------------------------------------------------------------------------------------------
##       for i in range(len(args) - 1):
##              if (args[i].has_key('V') == True):
##                     v = args[i]['V'].__doc__
##                     n = args[i]['N'].__doc__
##                     if (v.find("str") != 0):
##                            if (n.find("list") == 0):
##                                   raise "Incorrect signal initialization for '" + args[i]['N'][0] + "' . String required."
##                            elif (n.find("str") == 0):
##                                   raise "Incorrect signal initialization for '" + args[i]['N'] + "' . String required."

       for i in range(len(args) - 1):
              if (args[i]['D'] != "sim"):
                     if (flag_comp == 0):
                            if (args[i].has_key('V') == True):
                                   L = args[i]['L'].__doc__
                                   n = args[i]['N'].__doc__ 
                                   v = args[i]['V'].__doc__

                                   if (args[i]['T'] == 'b'):
                                          if (v.find("list") == 0):
                                                 if (n.find("str") == 0):
                                                        raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect initialization for signal \"" + args[i]['N'] + "\". Binary signals must be initalized with strings.")
                                                 elif (n.find("list") == 0):
                                                        multiple_sig_names = ''
                                                        for j in range(len(args[i]['N'])):
                                                               if (j != (len(args[i]['N']) - 1)):
                                                                      multiple_sig_names += args[i]['N'][j] + ", "
                                                               else:
                                                                      multiple_sig_names += args[i]['N'][j]
                                                        raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect initialization for signals \"" + multiple_sig_names + "\". Binary signals must be initalized with strings.")

                                   if (args[i]['T'] == "int"):
                                          if (v.find("int") != 0):
                                                 if (n.find("str") == 0):
                                                        raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect initialization for signal \"" + args[i]['N'] + "\". Integer signals must be initalized with a single integer.")
                                                 elif (n.find("list") == 0):
                                                        multiple_sig_names = ''
                                                        for j in range(len(args[i]['N'])):
                                                               if (j != (len(args[i]['N']) - 1)):
                                                                      multiple_sig_names += args[i]['N'][j] + ", "
                                                               else:
                                                                      multiple_sig_names += args[i]['N'][j]
                                                        raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect initialization for signals \"" + multiple_sig_names + "\". Integer signals must be initalized with a single integer.")       

                                          elif (v.find("int") == 0):
                                                 if ((args[i]['V'] > args[i]['L'][1]) or (args[i]['V'] < args[i]['L'][0])):
                                                        if (n.find("str") == 0):
                                                               raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect initialization for signal \"" + args[i]['N'] + "\". Initialization value is not included in the range of the signal.")
                                                        elif (n.find("list") == 0):
                                                               multiple_sig_names = ''
                                                               for j in range(len(args[i]['N'])):
                                                                      if (j != (len(args[i]['N']) - 1)):
                                                                             multiple_sig_names += args[i]['N'][j] + ", "
                                                                      else:
                                                                             multiple_sig_names += args[i]['N'][j]
                                                               raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect initialization for signals \"" + multiple_sig_names + "\". Initialization value is not included in the range of the signal.")

                                   if (args[i]['T'] == 'b'): 
                                          if (L.find("list") == 0):
                                                 if ((abs(args[i]['L'][0] - args[i]['L'][1]) + 1) != len(args[i]['V'])):
                                                        if (n.find("str") == 0):
                                                               raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect signal length for \"" + args[i]['N'] + "\" initializtion.")
                                                        elif (n.find("list") == 0):
                                                               multiple_sig_names = ''
                                                               for j in range(len(args[i]['N'])):
                                                                      if (j != (len(args[i]['N']) - 1)):
                                                                             multiple_sig_names += args[i]['N'][j] + ", "
                                                                      else:
                                                                             multiple_sig_names += args[i]['N'][j]
                                                               raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect signal length for \"" + multiple_sig_names + "\" initializtion.")
                                          elif (L.find("int") == 0):
                                                 if (args[i]['T'] == 'b'):
                                                        if (len(args[i]['V']) != 1):
                                                               if (n.find("list") == 0):
                                                                      raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect signal length for \"" + args[i]['N'][0] + "\" initializtion.")
                                                               elif (n.find("str") == 0):
                                                                      raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect signal length for \"" + args[i]['N'] + "\" initializtion.")
                                                 
                                   if (args[i]['T'] == 'b'):
                                          if (L.find("list") == 0):
                                                 for j in range(len(args[i]['V'])):
                                                        if (bit.find(args[i]['V'][j]) == -1):
                                                               if (n.find("list") == 0):
                                                                      raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect initialization for binary signal \"" + args[i]['N'][0] + "\" .")
                                                               elif (n.find("str") == 0):
                                                                      raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect initialization for binary signal \"" + args[i]['N'] + "\" .")
                                          elif (L.find("int") == 0):
                                                 if (bit.find(args[i]['V']) == -1):
                                                        if (n.find("list") == 0):
                                                               raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect initialization for binary signal \"" + args[i]['N'][0] + "\" .")
                                                        elif (n.find("str") == 0):
                                                               raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect initialization for binary signal \"" + args[i]['N'] + "\" .")
                                                        
                                   elif (args[i]['T'] == 's'):
                                          if (v.find("list") == 0):
                                                 if (len(args[i]['V']) == 1):
                                                        raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect signal initialization for \"" + args[i]['V'][0] + "\". Single initialization values must be declared as single strings.")
                                                 
                                                 for k in range(len(args[i]['V'])):
                                                        flag_letter = 0
                                                        for j in range(len(letter)):
                                                               if (letter[j] == args[i]['V'][k][0]):
                                                                      flag_letter = 1
                                                                      break
                                                        if (flag_letter == 0):
                                                               raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect signal initialization for \"" + args[i]['V'][k] + "\". State names must begin with a letter.")

                                          elif (v.find("str") == 0):
                                                 flag_letter = 0
                                                 for j in range(len(letter)):
                                                        if (letter[j] == args[i]['V'][0]):
                                                               flag_letter = 1
                                                               break
                                                 if (flag_letter == 0):
                                                        raise _MyExceptions.MyExceptions("File:\"" +  func +".py\": " + "Incorrect signal initialization for \"" + args[i]['V'] + "\". State names must begin with a letter.")
                     elif (flag_comp == 1):
                            pass