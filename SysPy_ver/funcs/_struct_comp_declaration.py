"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _struct_comp_declaration.py

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

  Declaring the component in the architectural body.
"""

def struct_comp_declaration(comp_signals,  vhdFile):
       """
       FUNCTION: struct_comp_declaration(a[])
              a: component's signal list
               b: VHDL output file
               
       - Declaring the component in the architectural body.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       signals_i = [] # input signals list
       signals_i_b = [] # input bus signals list
       signals_o = [] # output signals list
       signals_o_b = [] # output bus signals list
       signals_io = []
       signals_io_b = []
       signals = [] # list containing all signals in the appropriate order for declaration
#----------------------------------------------------------------------------------------------------------------------------------

# copy of the signals to the appropriate signal list
#----------------------------------------------------------------------------------------------------------------------------------
       if (comp_signals != False):
              for i in range(len(comp_signals) - 1):
                     n = comp_signals[i]['N'].__doc__
                     L = comp_signals[i]['L'].__doc__
                     if (comp_signals[i]['D'] == 'i'):
                            if (n.find("str") == 0):
                                   if (L.find("int") == 0):
                                          signals_i.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N']})
                                   elif (L.find("list") == 0):
                                          signals_i_b.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N']})
                            elif (n.find("list") == 0):
                                   for j in range(len(comp_signals[i]['N'])):
                                          if (L.find("int") == 0):
                                                 signals_i.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N'][j]})
                                          elif (L.find("list") == 0):
                                                  signals_i_b.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N'][j]})
                     elif (comp_signals[i]['D'] == 'o'):
                            if (n.find("str") == 0):
                                   if (L.find("int") == 0):
                                          signals_o.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N']})
                                   elif (L.find("list") == 0):
                                          signals_o_b.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N']})
                            elif (n.find("list") == 0):
                                   for j in range(len(comp_signals[i]['N'])):
                                          if (L.find("int") == 0):
                                                 signals_o.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N'][j]})
                                          elif (L.find("list") == 0):
                                                 signals_o_b.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N'][j]})
                     elif (comp_signals[i]['D'] == "io"):
                            if (n.find("str") == 0):
                                   if (L.find("int") == 0):
                                          signals_io.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N']})
                                   elif (L.find("list") == 0):
                                          signals_io_b.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N']})
                            elif (n.find("list") == 0):
                                   for j in range(len(comp_signals[i]['N'])):
                                          if (L.find("int") == 0):
                                                 signals_io.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N'][j]})
                                          elif (L.find("list") == 0):
                                                 signals_io_b.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N'][j]})
                                           
       signals = signals_i + signals_i_b + signals_o + signals_o_b + signals_io + signals_io_b
                                           
# extraction of the I/O signals for the component declaration
#----------------------------------------------------------------------------------------------------------------------------------              
       for i in range(len(signals)):
              vhdFile.write("\t\t" + signals[i]['N'] + ": ")
              L = signals[i]['L'].__doc__
              if (signals[i]['D'] == 'i'):
                     vhdFile.write("in ")
              elif (signals[i]['D'] == 'o'):
                     vhdFile.write("out ")
              elif (signals[i]['D'] == 'io'):
                     vhdFile.write("inout ")

              if (i != (len(signals) - 1)):
                     if (L.find("int") == 0):
                            vhdFile.write("std_logic;\n")
                     elif (L.find("list") == 0):
                            L0 = signals[i]['L'][0].__doc__
                            L1 = signals[i]['L'][1].__doc__
                            if ((L0.find("int") == 0) and (L1.find("int") == 0)):
                                   if (signals[i]['L'][0] > signals[i]['L'][1]): 
                                          vhdFile.write("std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + str(int(signals[i]['L'][1])) + ");\n")
                                   else:
                                          vhdFile.write("std_logic_vector(" + str(int(signals[i]['L'][0])) + " to " + str(int(signals[i]['L'][1])) + ");\n")
                            elif ((L0.find("str") == 0) and (L1.find("int") == 0)):
                                   vhdFile.write("std_logic_vector(" + signals[i]['L'][0] + " downto " + str(int(signals[i]['L'][1])) + ");\n")
                            elif ((L0.find("int") == 0) and (L1.find("str") == 0)):
                                   vhdFile.write("std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + signals[i]['L'][1] + ");\n")
                            elif ((L0.find("str") == 0) and (L1.find("str") == 0)):
                                   vhdFile.write("std_logic_vector(" + signals[i]['L'][0] + " downto " + signals[i]['L'][1] + ");\n")
              else:
                     if (L.find("int") == 0):
                             vhdFile.write("std_logic);\n")
                     elif (L.find("list") == 0):
                            L0 = signals[i]['L'][0].__doc__
                            L1 = signals[i]['L'][1].__doc__
                            if ((L0.find("int") == 0) and (L1.find("int") == 0)):
                                   if (signals[i]['L'][0] > signals[i]['L'][1]): 
                                          vhdFile.write("std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + str(int(signals[i]['L'][1])) + "));\n")
                                   else:
                                          vhdFile.write("std_logic_vector(" + str(int(signals[i]['L'][0])) + " to " + str(int(signals[i]['L'][1])) + "));\n")
                            elif ((L0.find("str") == 0) and (L1.find("int") == 0)):
                                   vhdFile.write("std_logic_vector(" + signals[i]['L'][0] + " downto " + str(int(signals[i]['L'][1])) + "));\n")
                            elif ((L0.find("int") == 0) and (L1.find("str") == 0)):
                                   vhdFile.write("std_logic_vector(" + str(int(signals[i]['L'][0])) + " downto " + signals[i]['L'][1] + "));\n")
                            elif ((L0.find("str") == 0) and (L1.find("str") == 0)):
                                   vhdFile.write("std_logic_vector(" + signals[i]['L'][0] + " downto " + signals[i]['L'][1] + "));\n")
#----------------------------------------------------------------------------------------------------------------------------------
                                   
# keywords decleration for VHDL
#----------------------------------------------------------------------------------------------------------------------------------
       vhdFile.write("end component;\n\n")


              
                                           
                             
