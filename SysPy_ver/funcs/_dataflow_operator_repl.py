"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _dataflow_operator_repl.py

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

  Operators replacement in the dataflow assignments.
"""

def dataflow_operator_repl(dataflow_assign):
       """
       FUNCTION: dataflow_operator_repl(a[])
              a: list with the data flow assignments
              
       Libraries statement of the *.vhd file.
       - Operators replacement in the dataflow assignments.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------

# remove space characters
#----------------------------------------------------------------------------------------------------------------------------------
       for i in range(0, len(dataflow_assign)):
              dataflow_assign[i][0] = dataflow_assign[i][0].replace(' ', '')
              if (dataflow_assign[i] != "\n"):
                     dataflow_assign[i][0] = dataflow_assign[i][0].replace("\n", '')
#----------------------------------------------------------------------------------------------------------------------------------

# replacement of arithmetic operands
#----------------------------------------------------------------------------------------------------------------------------------
       ## replacement in the data flow assignments of the '=' characters with " = "
       for i in range(0, len(dataflow_assign)):
              dataflow_assign[i][0] = dataflow_assign[i][0].replace('=', " <= ")

       ## replacement in the data flow assignments of the '+' characters with " + "
       for i in range(0, len(dataflow_assign)):
              dataflow_assign[i][0] = dataflow_assign[i][0].replace('+', " + ")

       ## replacement in the data flow assignments of the '+' characters with " + "
       for i in range(0, len(dataflow_assign)):
              dataflow_assign[i][0] = dataflow_assign[i][0].replace('-', " - ")

       ## replacement in the data flow assignments of the '*' characters with " * "
       for i in range(0, len(dataflow_assign)):
              dataflow_assign[i][0] = dataflow_assign[i][0].replace('*', " * ")
#----------------------------------------------------------------------------------------------------------------------------------

       for i in range(0, len(dataflow_assign)):
              dataflow_assign[i][0] = ("\t" + dataflow_assign[i][0] + ";\n")

       return dataflow_assign

       