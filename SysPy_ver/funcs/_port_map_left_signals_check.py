"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _port_map_left_signals_check.py

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

  Checking the compatibility of left signals against the right signals assignment.
"""

import _MyExceptions
reload(_MyExceptions)

def port_map_left_signals_check(comp_left_signals, comp_signals, func, comp_name):
       """
       FUNCTION: struct_comp_check(a[], b[], c str, d str)
              a: component's signal list
              b: assigned signals list
              c: string name of the design function
              d: string name of the component
              
       - Checking the compatibility of left signals against the right signals assignment.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       comp_signals_ex = []
       comp_left_signals_ex = []
       flag_comp_left_signals = 0
       comp_left_signals_count = 0
#----------------------------------------------------------------------------------------------------------------------------------

       print("port_map_left_signals_check, comp_left_signals:", comp_left_signals)
       print("port_map_left_signals_check, comp_signals:", comp_signals)

# Extracting all component's signals in "comp_signals_ex" list
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(comp_signals)):
              n = comp_signals[i]['N'].__doc__
              if (n.find("str") == 0):
                     comp_signals_ex.append(comp_signals[i])
              elif (n.find("list") == 0):
                     for j in range(len(comp_signals[i]['N'])):
                            comp_signals_ex.append({'D': comp_signals[i]['D'], 'T': comp_signals[i]['T'], 'L': comp_signals[i]['L'], 'N': comp_signals[i]['N'][j]})     

       for i in range(len(comp_left_signals)):
              comp_left_signals_ex.append(comp_left_signals[i][1])
              comp_left_signals_ex[i] =  comp_left_signals_ex[i].replace('=', '')
              comp_left_signals_ex[i] =  comp_left_signals_ex[i].replace(' ', '')
#----------------------------------------------------------------------------------------------------------------------------------

       print("port_map_left_signals_check, comp_left_signals_ex:", comp_left_signals_ex)
       print("port_map_left_signals_check, comp_signals:_ex", comp_signals_ex)

# Checking if an input signal of a component hasn't been assigned in a port map declaration.
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(comp_signals_ex)):
              flag_comp_left_signals = 0
              for j in range(len(comp_left_signals_ex)):
                     if (comp_signals_ex[i]['N'] == comp_left_signals_ex[j]):
                            flag_comp_left_signals = 1
              if (flag_comp_left_signals == 0):
                     if (comp_signals_ex[i]['D'] == 'i'):
                            raise _MyExceptions.MyExceptions("File :\"" +  func + ".py: input signal \"" + comp_signals_ex[i]['N'] + "\" of component \"" + comp_name + "\" has not been assigned a value.")              
#----------------------------------------------------------------------------------------------------------------------------------

# Checking for multiple assignments of a component's signal in a port map declaration.
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(len(comp_left_signals_ex)):
              comp_left_signals_count = 0
              for j in range(len(comp_left_signals_ex)):
                     if (comp_left_signals_ex[i] == comp_left_signals_ex[j]):
                            comp_left_signals_count += 1
              if (comp_left_signals_count > 1):
                     raise _MyExceptions.MyExceptions("File :\"" +  func + ".py: signal \"" + comp_left_signals_ex[i] + "\" of component \"" + comp_name + "\" has been assigned " + str(comp_left_signals_count) + " times.") 
#----------------------------------------------------------------------------------------------------------------------------------                      

                     
