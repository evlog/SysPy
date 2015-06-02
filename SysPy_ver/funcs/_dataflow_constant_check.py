"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _dataflow_constant_check.py

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

  Checker function of constant assignments.
"""

import operator

def dataflow_constant_check(token_struct, func):
       """
       FUNCTION: dataflow_constant_check(a()
              a: token's tupple
              b: string name of the design function
              
       - Checking dataflow constant assignments.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       bit = "01"
       const_name = ''
       pos = ''
#----------------------------------------------------------------------------------------------------------------------------------

       const_name = token_struct[1]
  
##       if (token_struct[0] = "const_integer"):
##              if (operator.isNumberType(int(token_strict[1]) = False)):
##                     pos = token_struct[2]
##                     raise "Line " + str(pos) + ": constant " + const_name + " not an integer."
              
