"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _var_declaration.py

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

  Variable declaration when a variable assignment is tracked.
"""


from pdb import *
def var_declaration(assign_lines_count, token_struct, assign_lines, signals, process_vars):
       """
       FUNCTION: var_declaration(a int, b(), c[], d[], e[])
              a: assign lines counter integer
              b: token's tupple
              c: list containing the VHDL code
              d: list containing the signal statements
              e: list containing
              
       Variable declaration when a variable assignment is tracked.
       """

# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       count0 = 0
       count1 = 0
       process_vars_d = []
       vars0 = []
       var0 = ''
       var1 = ''
#----------------------------------------------------------------------------------------------------------------------------------

       print("process_vars:", process_vars)       
# Erasing duplicated registrations in "process_vars[]" 
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(process_vars)):
              vars0 = []
              #flag_process_vars = 0
              if ((process_vars[i][0] == "name_left") or (process_vars[i][0] == "name_right")):
                     var0 = process_vars[i][1].replace('=', '')
                     var0 = var0.replace('! ', '')
                     var0 = var0.replace('>', '')
                     var0 = var0.replace('<', '')
                     var0 = var0.replace(' ', '')
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_binary_slice"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_binary_slice_var0"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][1]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_binary_slice_var1"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][2]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_binary_slice_var01"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][1]
                     vars0.append(var0)
                     var0 = process_vars[i][1][2]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_item"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_item_var"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][1]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_item"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_item_var0"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][1]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_item_var1"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][2]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_item_var01"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][1]
                     vars0.append(var0)
                     var0 = process_vars[i][1][2]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_slice"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_slice_var0"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][1]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_slice_var1"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][2]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_slice_var2"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][3]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_slice_var01"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][1]
                     vars0.append(var0)
                     var0 = process_vars[i][1][2]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_slice_var02"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][1]
                     vars0.append(var0)
                     var0 = process_vars[i][1][3]
                     vars0.append(var0)
              elif (process_vars[i][0] == "name_right_array_binary_slice_var12"):
                     var0 = process_vars[i][1][0]
                     vars0.append(var0)
                     var0 = process_vars[i][1][2]
                     vars0.append(var0)
                     var0 = process_vars[i][1][3]
                     vars0.append(var0)

              flag_process_vars = 0
              for n in range(0, len(vars0)):
                     for j in range(len(process_vars_d)):
                            if ((process_vars_d[j][0] == "name_left") or (process_vars_d[j][0] == "name_right")):
                                   var1 = process_vars_d[j][1].replace('=', '')
                                   var1 = var1.replace('! ', '')
                                   var1 = var1.replace('>', '')
                                   var1 = var1.replace('<', '')
                                   var1 = var1.replace(' ', '')
                            elif (process_vars_d[j][0] == "name_right_binary_slice"):
                                   var1 = process_vars_d[j][1][0]
                            elif (process_vars_d[j][0] == "name_right_binary_slice_var0"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_binary_slice_var1"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_binary_slice_var01"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_item"):
                                   var1 = process_vars_d[j][1][0]
                            elif (process_vars_d[j][0] == "name_right_item_var"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_array_binary_item"):
                                   var1 = process_vars_d[j][1][0]
                            elif (process_vars_d[j][0] == "name_right_array_binary_item_var0"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_array_binary_item_var1"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_array_binary_item_var01"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_array_binary_slice"):
                                   var1 = process_vars_d[j][1][0]
                            elif (process_vars_d[j][0] == "name_right_array_binary_slice_var0"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_array_binary_slice_var1"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_array_binary_slice_var2"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_array_binary_slice_var01"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_array_binary_slice_var02"):
                                   var1 = process_vars_d[j][1]
                            elif (process_vars_d[j][0] == "name_right_array_binary_slice_var12"):
                                   var1 = process_vars_d[j][1]
                            
                            if (vars0[n] == var1):
                                   if (n == 0):
                                          flag_process_vars += 1
                                   if (n == 1):
                                          flag_process_vars += 2
                                   if (n == 2):
                                          flag_process_vars += 4

                                   
              if ((process_vars[i][0] == "name_left") or (process_vars[i][0] == "name_right")):
                     if (flag_process_vars == 0):
                            process_vars_d.append(process_vars[i])
              elif (process_vars[i][0] == "name_right_binary_slice"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(process_vars[i])
              elif (process_vars[i][0] == "name_right_binary_slice_var0"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_binary_slice_var0", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_binary_slice_var0", process_vars[i][1][1]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_binary_slice_var0", process_vars[i][1][1]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_binary_slice_var0", process_vars[i][1][0]])
                     elif (flag_process_vars == 3):
                            pass
              elif (process_vars[i][0] == "name_right_binary_slice_var1"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_binary_slice_var1", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_binary_slice_var1", process_vars[i][1][2]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_binary_slice_var1", process_vars[i][1][2]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_binary_slice_var1", process_vars[i][1][0]])
                     elif (flag_process_vars == 4):
                            pass
              elif (process_vars[i][0] == "name_right_binary_slice_var01"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][1]])
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][1]])
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 3):
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 4):
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][1]])
                     elif (flag_process_vars == 5):
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][1]])
                     elif (flag_process_vars == 6):
                            process_vars_d.append(["name_right_binary_slice_var01", process_vars[i][1][0]])
                     elif (flag_process_vars == 7):
                            pass
              elif (process_vars[i][0] == "name_right_item"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(process_vars[i])
              elif (process_vars[i][0] == "name_right_item_var"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_item_var", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_item_var", process_vars[i][1][1]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_item_var", process_vars[i][1][1]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_item_var", process_vars[i][1][0]])
                     elif (flag_process_vars == 3):
                            pass
              elif (process_vars[i][0] == "name_right_array_binary_item"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(process_vars[i])
              elif (process_vars[i][0] == "name_right_array_binary_item_var0"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_array_binary_item_var0", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_item_var0", process_vars[i][1][1]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_array_binary_item_var0", process_vars[i][1][1]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_array_binary_item_var0", process_vars[i][1][0]])
                     elif (flag_process_vars == 3):
                            pass
              elif (process_vars[i][0] == "name_right_array_binary_item_var1"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_array_binary_item_var1", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_item_var1", process_vars[i][1][2]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_array_binary_item_var1", process_vars[i][1][2]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_array_binary_item_var1", process_vars[i][1][0]])
                     elif (flag_process_vars == 3):
                            pass
              elif (process_vars[i][0] == "name_right_array_binary_item_var01"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][1]])
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][1]])
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 3):
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 4):
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][1]])
                     elif (flag_process_vars == 5):
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][1]])
                     elif (flag_process_vars == 6):
                            process_vars_d.append(["name_right_array_binary_item_var01", process_vars[i][1][0]])
                     elif (flag_process_vars == 7):
                            pass
              elif (process_vars[i][0] == "name_right_array_binary_slice"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(process_vars[i])
              elif (process_vars[i][0] == "name_right_array_binary_slice_var0"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_array_binary_slice_var0", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var0", process_vars[i][1][1]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_array_binary_slice_var0", process_vars[i][1][1]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_array_binary_slice_var0", process_vars[i][1][0]])
                     elif (flag_process_vars == 3):
                            pass
              elif (process_vars[i][0] == "name_right_array_binary_slice_var1"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_array_binary_slice_var1", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var1", process_vars[i][1][2]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_array_binary_slice_var1", process_vars[i][1][2]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_array_binary_slice_var1", process_vars[i][1][0]])
                     elif (flag_process_vars == 3):
                            pass
              elif (process_vars[i][0] == "name_right_array_binary_slice_var2"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_array_binary_slice_var2", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var2", process_vars[i][1][3]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_array_binary_slice_var2", process_vars[i][1][3]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_array_binary_slice_var2", process_vars[i][1][0]])
                     elif (flag_process_vars == 3):
                            pass
              elif (process_vars[i][0] == "name_right_array_binary_slice_var01"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][1]])
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][1]])
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 3):
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][2]])
                     elif (flag_process_vars == 4):
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][1]])
                     elif (flag_process_vars == 5):
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][1]])
                     elif (flag_process_vars == 6):
                            process_vars_d.append(["name_right_array_binary_slice_var01", process_vars[i][1][0]])
                     elif (flag_process_vars == 7):
                            pass
              elif (process_vars[i][0] == "name_right_array_binary_slice_var02"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][1]])
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][3]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][1]])
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][3]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][3]])
                     elif (flag_process_vars == 3):
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][3]])
                     elif (flag_process_vars == 4):
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][1]])
                     elif (flag_process_vars == 5):
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][1]])
                     elif (flag_process_vars == 6):
                            process_vars_d.append(["name_right_array_binary_slice_var02", process_vars[i][1][0]])
                     elif (flag_process_vars == 7):
                            pass
              elif (process_vars[i][0] == "name_right_array_binary_slice_var12"):
                     if (flag_process_vars == 0):
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][2]])
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][3]])
                     elif (flag_process_vars == 1):
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][2]])
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][3]])
                     elif (flag_process_vars == 2):
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][3]])
                     elif (flag_process_vars == 3):
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][3]])
                     elif (flag_process_vars == 4):
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][0]])
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][2]])
                     elif (flag_process_vars == 5):
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][2]])
                     elif (flag_process_vars == 6):
                            process_vars_d.append(["name_right_array_binary_slice_var12", process_vars[i][1][0]])
                     elif (flag_process_vars == 7):
                            pass

       process_vars = process_vars_d
#----------------------------------------------------------------------------------------------------------------------------------

       j = assign_lines_count

       for m in range(0, len(process_vars)):
              if ((process_vars[m][0] == "name_left") or (process_vars[m][0] == "name_right")):
                     t = process_vars[m][1].replace('=', '')
                     t = t.replace(' ', '')
              elif (process_vars[m][0] == "name_right_binary_slice"):
                     t = process_vars[m][1][0]
              elif (process_vars[m][0] == "name_right_binary_slice_var0"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_binary_slice_var1"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_binary_slice_var01"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_item"):
                     t = process_vars[m][1][0]
              elif (process_vars[m][0] == "name_right_item_var"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_array_binary_item"):
                     t = process_vars[m][1][0]
              elif (process_vars[m][0] == "name_right_array_binary_item_var0"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_array_binary_item_var1"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_array_binary_item_var01"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_array_binary_slice"):
                     t = process_vars[m][1][0]
              elif (process_vars[m][0] == "name_right_array_binary_slice_var0"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_array_binary_slice_var1"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_array_binary_slice_var2"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_array_binary_slice_var01"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_array_binary_slice_var02"):
                     t = process_vars[m][1]
              elif (process_vars[m][0] == "name_right_array_binary_slice_var12"):
                     t = process_vars[m][1]
              for i in range (0, len(signals)):
                     if (t == signals[i]['N']):
                            if (signals[i]['D'] == 'v'):
                                   L = signals[i]['L'].__doc__
                                   n = signals[i]['N'].__doc__
                                   if (m == 0):
                                          sp = ''
                                          while 1:
                                                 if (assign_lines[j][0] == "process_sens_list"):
                                                        assign_lines[j][0] = assign_lines[j][0] + "_var"
                                                        for k in range(0, assign_lines[j][4]):
                                                               sp = sp + ' '
                                                        assign_lines[j][1] = assign_lines[j][1].replace("begin", '')
                                                        assign_lines[j][1] = assign_lines[j][1] + "\n\n" + sp + "-- Variables"
                                                        assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "-------------------------------------------------------------------"
                                                        if (signals[i]['T'] == 'b'):
                                                               if (L.find("int") == 0):
                                                                      if (n.find("list") == 0):
                                                                             for k in range(len(signals_intr[i]['N'])):
                                                                                    if (signals[i].has_key('V') == False):
                                                                                           assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'][k] + ": std_logic;\n"
                                                                                    elif (signals[i].has_key('V') == True):
                                                                                           assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " + signals[i]['N'][k] + ": std_logic := '" + signals[i]['V'] + "';\n"
                                                                      elif (n.find("str") == 0):
                                                                             if (signals[i].has_key('V') == False):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'] + ": std_logic;\n"
                                                                             elif (signals[i].has_key('V') == True):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " + signals[i]['N'] + ": std_logic := '" + signals[i]['V'] + "';\n"
                                                               elif (L.find("list") == 0):
                                                                      if (n.find("list") == 0):
                                                                             for k in range(len(signals[i]['N'])):
                                                                                    if (signals[i].has_key('V') == False):
                                                                                           if (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                                                  assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'][k] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + str(int(signals[i]['L'][1])) + ");\n"
                                                                                           else:
                                                                                                  assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'][k] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " to " + str(int(signals[i]['L'][1])) + ");\n"
                                                                                    elif (signals[i].has_key('V') == True):
                                                                                           if (signals_intr[i]['L'][0] > signals_intr[i]['L'][1]):
                                                                                                  assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'][k] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + str(int(signals[i]['L'][1])) + ") := \"" + signals[i]['V'] + "\";\n"
                                                                                           else:
                                                                                                  assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'][k] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " to " + str(int(signals[i]['L'][1])) + ") := '" + signals[i]['V'] + "';\n"
                                                                      elif (n.find("str") == 0):
                                                                             if (signals[i].has_key('V') == False):
                                                                                    if (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                                           assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + str(int(signals[i]['L'][1])) + ");\n"
                                                                                    else:
                                                                                           assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " to " + str(int(signals[i]['L'][1])) + ");\n"
                                                                             elif (signals[i].has_key('V') == True):
                                                                                    if (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                                           assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + str(int(signals[i]['L'][1])) + ") := \"" + signals[i]['V'] + "\";\n"
                                                                                    else:
                                                                                           assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " to " + str(int(signals[i]['L'][1])) + ") := '" + signals[i]['V'] + "';\n"
                                                               break

                                                        elif (signals[i]['T'] == "int"):
                                                               if (n.find("str") == 0):
                                                                      if (signals[i].has_key('V') == False):
                                                                             assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'] + ": integer range " + str(signals[i]['L'][0]) + " to " + str(signals[i]['L'][1]) + ";\n"
                                                                      elif (signals[i].has_key('V') == True):
                                                                             assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'] + ": integer range " + str(signals[i]['L'][0]) + " to " + str(signals[i]['L'][1]) + " := " + str(signals[i]['V']) + ";\n"
                                                               elif (n.find("list") == 0):
                                                                      for k in range(len(signals[i]['N'])):      
                                                                             if (signals[i].has_key('V') == False):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'][k] + ": integer range " + str(signals[i]['L'][0]) + " to " + str(signals[i]['L'][1]) + ";\n"
                                                                             elif (signals_intr[i].has_key('V') == True):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " +  signals[i]['N'][k] + ": integer range " + str(signals[i]['L'][0]) + " to " + str(signals[i]['L'][1]) + " := " + str(signals[i]['V']) + ";\n"
                                                               break
                                                        
                                                        elif (signals[i]['T'] == "arrb"):
                                                               if (n.find("str") == 0):
                                                                      if (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                                                             assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "type type" + str(count0) + " is array (" + str(signals[i]['L'][0][0]) + " to " + str(signals[i]['L'][0][1]) + ") of std_logic_vector(" + str(signals_intr[i]['L'][1][0]) + " downto " + str(signals_intr[i]['L'][1][1]) + ");\n"
                                                                      elif (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                                                             assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "type type" + str(count0) + " is array (" + str(signals[i]['L'][0][0]) + " to " + str(signals[i]['L'][0][1]) + ") of std_logic_vector(" + str(signals_intr[i]['L'][1][0]) + " to " + str(signals_intr[i]['L'][1][1]) + ");\n"

                                                                      if (signals[i].has_key('V') == False):
                                                                             assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " + signals[i]['N'] + ": " + "type" + str(count0) + ";\n"
                                                                      elif (signals[i].has_key('V') == True):
                                                                             v = signals[i]['V'].__doc__
                                                                             if (v.find("str") == 0):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " + signals[i]['N'] + ": " + "type" + str(count0) + ": \"" + signals[i]['V'] + "\";\n"
                                                                             elif(v.find("list") == 0):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " + signals[i]['N'] + ": " + "type" + str(count0) + ": {"
                                                                                    for k in range(0, (signals[i]['L'][0][1] + 1)):
                                                                                           if (k == signals[i]['L'][0][1]):
                                                                                                  assign_lines[j][1] = assign_lines[j][1] + "\"" + signals[i]['V'][k] + "\"};\n"
                                                                                           elif (k != signals[i]['L'][0][1]):
                                                                                                  assign_lines[j][1] = assign_lines[j][1] + "\"" + signals[i]['V'][k] + "\", "
                                                               count0 = count0 + 1
                                                               break
                                                        elif (signals[i]['T'] == "arri"):
                                                               if (n.find("str") == 0):
                                                                      assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "type type" + str(count0) + " is array (" + str(signals[i]['L'][0][0]) + " to " + str(signals[i]['L'][0][1]) + ") of integer range " + str(signals[i]['L'][1][0]) + " to " + str(signals[i]['L'][1][1]) + ";\n"

                                                                      if (signals[i].has_key('V') == False):
                                                                             assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " + signals[i]['N'] + ": " + "type" + str(count0) + ";\n"
                                                                      elif (signals[i].has_key('V') == True):
                                                                             v = signals[i]['V'].__doc__
                                                                             if (v.find("str") == 0):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " + signals[i]['N'] + ": " + "type" + str(count0) + ": " + str(signals[i]['V']) + ";\n"
                                                                             elif(v.find("list") == 0):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "variable " + signals[i]['N'] + ": " + "type" + str(count0) + ": {"
                                                                                    for k in range(0, (signals_intr[i]['L'][0][1] + 1)):
                                                                                           if (k == signals[i]['L'][0][1]):
                                                                                                  assign_lines[j][1] = assign_lines[j][1] + signals[i]['V'][k] + "};\n"
                                                                                           elif (j != signals[i]['L'][0][1]):
                                                                                                  assign_lines[j][1] = assign_lines[j][1] + signals[i]['V'][k] + ", "
                                                               count0 = count0 + 1
                                                               break

                                                        elif (signals[i]['T'] == 's'):
                                                               v = signals[i]['V'].__doc__
                                                               assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "type state_type" + str(count1) + " is ("
                                                               if (v.find("str") == 0):
                                                                      assign_lines[j][1] = assign_lines[j][1] + signals[i]['V'] + ");\n"
                                                               elif (v.find("list") == 0):
                                                                      for k in range(len(signals[i]['V'])):
                                                                             if (k == (len(signals[i]['V']) - 1)):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + signals[i]['V'][k] + ");\n"
                                                                             else:
                                                                                    assign_lines[j][1] = assign_lines[j][1] + signals[i]['V'][k] + ", "
                                                               assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "signal " + args[i]['N'] + ": state_type" + str(count1) + ";\n"
                                                               count1 = count1 + 1
                                                               break
                                                               
                                                 elif (j == 0):
                                                        break
                                                 j = j - 1

                                                 
                                   elif (m != 0):
                                          if (signals[i]['T'] == 'b'):
                                                 if (L.find("int") == 0):
                                                        if (n.find("list") == 0):
                                                               for k in range(len(signals_intr[i]['N'])):
                                                                      if (signals[i].has_key('V') == False):
                                                                             assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'][k] + ": std_logic;\n"
                                                                      elif (signals[i].has_key('V') == True):
                                                                             assign_lines[j][1] = assign_lines[j][1]  + sp + "variable " + signals[i]['N'][k] + ": std_logic := '" + signals[i]['V'] + "';\n"
                                                        elif (n.find("str") == 0):
                                                               if (signals[i].has_key('V') == False):
                                                                      assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'] + ": std_logic;\n"
                                                               elif (signals[i].has_key('V') == True):
                                                                      assign_lines[j][1] = assign_lines[j][1] + sp + "variable " + signals[i]['N'] + ": std_logic := '" + signals[i]['V'] + "';\n"
                                                 elif (L.find("list") == 0):
                                                        if (n.find("list") == 0):
                                                               for k in range(len(signals[i]['N'])):
                                                                      if (signals[i].has_key('V') == False):
                                                                             if (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'][k] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + str(int(signals[i]['L'][1])) + ");\n"
                                                                             else:
                                                                                    assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'][k] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " to " + str(int(signals[i]['L'][1])) + ");\n"
                                                                      elif (signals[i].has_key('V') == True):
                                                                             if (signals_intr[i]['L'][0] > signals_intr[i]['L'][1]):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'][k] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + str(int(signals[i]['L'][1])) + ") := \"" + signals[i]['V'] + "\";\n"
                                                                             else:
                                                                                    assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'][k] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " to " + str(int(signals[i]['L'][1])) + ") := '" + signals[i]['V'] + "';\n"
                                                        elif (n.find("str") == 0):
                                                               if (signals[i].has_key('V') == False):
                                                                      if (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                             assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + str(int(signals[i]['L'][1])) + ");\n"
                                                                      else:
                                                                             assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " to " + str(int(signals[i]['L'][1])) + ");\n"
                                                               elif (signals[i].has_key('V') == True):
                                                                      if (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                             assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + str(int(signals[i]['L'][1])) + ") := \"" + signals[i]['V'] + "\";\n"
                                                                      else:
                                                                             assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'] + ": std_logic_vector(" + str(int(signals[i]['L'][0])) + " to " + str(int(signals[i]['L'][1])) + ") := '" + signals[i]['V'] + "';\n"

                                          elif (signals[i]['T'] == "int"):
                                                 if (n.find("str") == 0):
                                                        if (signals[i].has_key('V') == False):
                                                               assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'] + ": integer range " + str(signals[i]['L'][0]) + " to " + str(signals[i]['L'][1]) + ";\n"
                                                        elif (signals[i].has_key('V') == True):
                                                               assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'] + ": integer range " + str(signals[i]['L'][0]) + " to " + str(signals[i]['L'][1]) + " := " + str(signals[i]['V']) + ";\n"
                                                 elif (n.find("list") == 0):
                                                        for k in range(len(signals[i]['N'])):      
                                                               if (signals[i].has_key('V') == False):
                                                                      assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'][k] + ": integer range " + str(signals[i]['L'][0]) + " to " + str(signals[i]['L'][1]) + ";\n"
                                                               elif (signals_intr[i].has_key('V') == True):
                                                                      assign_lines[j][1] = assign_lines[j][1] + sp + "variable " +  signals[i]['N'][k] + ": integer range " + str(signals[i]['L'][0]) + " to " + str(signals[i]['L'][1]) + " := " + str(signals[i]['V']) + ";\n"
                                          
                                          elif (signals[i]['T'] == "arrb"):
                                                 if (n.find("str") == 0):
                                                        if (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                                               assign_lines[j][1] = assign_lines[j][1] + sp + "type typev" + str(count0) + " is array (" + str(signals[i]['L'][0][0]) + " to " + str(signals[i]['L'][0][1]) + ") of std_logic_vector(" + str(signals[i]['L'][1][0]) + " downto " + str(signals[i]['L'][1][1]) + ");\n"
                                                        elif (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                                               assign_lines[j][1] = assign_lines[j][1] + sp + "type typev" + str(count0) + " is array (" + str(signals[i]['L'][0][0]) + " to " + str(signals[i]['L'][0][1]) + ") of std_logic_vector(" + str(signals_intr[i]['L'][1][0]) + " to " + str(signals_intr[i]['L'][1][1]) + ");\n"

                                                        if (signals[i].has_key('V') == False):
                                                               assign_lines[j][1] = assign_lines[j][1] + sp + "variable " + signals[i]['N'] + ": " + "typev" + str(count0) + ";\n"
                                                        elif (signals[i].has_key('V') == True):
                                                               v = signals[i]['V'].__doc__
                                                               if (v.find("str") == 0):
                                                                      assign_lines[j][1] = assign_lines[j][1] + sp + "variable " + signals[i]['N'] + ": " + "typev" + str(count0) + ": \"" + signals[i]['V'] + "\";\n"
                                                               elif(v.find("list") == 0):
                                                                      assign_lines[j][1] = assign_lines[j][1] + sp + "variable " + signals[i]['N'] + ": " + "typev" + str(count0) + ": {"
                                                                      for k in range(0, (signals[i]['L'][0][1] + 1)):
                                                                             if (k == signals[i]['L'][0][1]):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + "\"" + signals[i]['V'][k] + "\"};\n"
                                                                             elif (k != signals[i]['L'][0][1]):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + "\"" + signals[i]['V'][k] + "\", "
                                                 count0 = count0 + 1
                        
                                          elif (signals[i]['T'] == "arri"):
                                                 if (n.find("str") == 0):
                                                        assign_lines[j][1] = assign_lines[j][1] + sp + "type typev" + str(count0) + " is array (" + str(signals[i]['L'][0][0]) + " to " + str(signals[i]['L'][0][1]) + ") of integer range " + str(signals[i]['L'][1][0]) + " to " + str(signals[i]['L'][1][1]) + ";\n"

                                                        if (signals[i].has_key('V') == False):
                                                               assign_lines[j][1] = assign_lines[j][1] + sp + "variable " + signals[i]['N'] + ": " + "typev" + str(count0) + ";\n"
                                                        elif (signals[i].has_key('V') == True):
                                                               v = signals[i]['V'].__doc__
                                                               if (v.find("str") == 0):
                                                                      assign_lines[j][1] = assign_lines[j][1] + sp + "variable " + signals[i]['N'] + ": " + "typev" + str(count0) + ": " + str(signals[i]['V']) + ";\n"
                                                               elif(v.find("list") == 0):
                                                                      assign_lines[j][1] = assign_lines[j][1] + sp + "variable " + signals[i]['N'] + ": " + "typev" + str(count0) + ": {"
                                                                      for k in range(0, (signals[i]['L'][0][1] + 1)):
                                                                             if (k == signals[i]['L'][0][1]):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + str(signals[i]['V'][k]) + "};\n"
                                                                             elif (j != signals[i]['L'][0][1]):
                                                                                    assign_lines[j][1] = assign_lines[j][1] + str(signals[i]['V'][k]) + ", "
                                                 count0 = count0 + 1

                                          elif (signals[i]['T'] == 's'):
                                                 v = signals[i]['V'].__doc__
                                                 assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "type state_typev" + str(count1) + " is ("
                                                 if (v.find("str") == 0):
                                                        assign_lines[j][1] = assign_lines[j][1] + signals[i]['V'] + ");\n"
                                                 elif (v.find("list") == 0):
                                                        for k in range(len(signals[i]['V'])):
                                                               if (k == (len(signals[i]['V']) - 1)):
                                                                      assign_lines[j][1] = assign_lines[j][1] + signals[i]['V'][k] + ");\n"
                                                               else:
                                                                      assign_lines[j][1] = assign_lines[j][1] + signals[i]['V'][k] + ", "
                                                 assign_lines[j][1] = assign_lines[j][1] + "\n" + sp + "signal " + args[i]['N'] + ": state_typev" + str(count1) + ";\n"
                                                 count1 = count1 + 1

       if (len(process_vars) > 0):                                                        
              assign_lines[j][1] = assign_lines[j][1] + sp + "-------------------------------------------------------------------"
              assign_lines[j][1] = assign_lines[j][1] + "\n\n" + sp + "begin\n\n"              

 


                                                


