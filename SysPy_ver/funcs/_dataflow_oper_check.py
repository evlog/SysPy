"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _dataflow_oper_check.py

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

  Checker function of arithmetic operatos in signal assignments.
"""

def dataflow_oper_check(token_struct, oper_supp):
       """
       FUNCTION: dataflow_oper_check(a(), b[])
              a: token's tupple
              b: supported operators list
              
       - Checking operators dataflow signal assignments.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------

       operator = token_struct[1]
      
## raising exeptions if a tracked arithmetic operator is not supported
#----------------------------------------------------------------------------------------------------------------------------------         
       flag_oper = 0
       if ((token_struct[0] == "arithm_oper") or (token_struct[0] == "shift_left_oper") or (token_struct[0] == "shift_right_oper")):
              for i in range (0, len(oper_supp)):
                     if (operator == oper_supp[i]):
                            flag_oper = 1

              if (flag_oper == 0):
                     pos = token_struct[2]
                     raise "Line " + str(pos) + ": arithmetic operator " + operator + " not supported."
#----------------------------------------------------------------------------------------------------------------------------------

## raising exeptions if a tracked logic operator is not supported
#----------------------------------------------------------------------------------------------------------------------------------         
       flag_oper = 0
       if (token_struct[0] == "logic_oper"):
              for i in range (0, len(oper_supp)):
                     if (operator == oper_supp[i]):
                            flag_oper = 1

              if (flag_oper == 0):
                     pos = token_struct[2]
                     raise "Line " + str(pos) + ": logic operator " + operator + " not supported."
#----------------------------------------------------------------------------------------------------------------------------------    





