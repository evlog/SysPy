"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _leon3_sw.py

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

  Software compilation using GCC for the Leon3 processor core.
"""

import _MyExceptions
reload(_MyExceptions)
from pdb import *
import commands

def leon3_sw(CFile):
       """
       FUNCTION: leon3_sw_os(a str)
              a: C file name string
              
       - Software compilation using GCC for the Leon3 processor core.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       command = ''
#----------------------------------------------------------------------------------------------------------------------------------
       command = "sparc-elf-gcc -Wall -msoft-float -mcpu=v8 -g -o " 
     
       for i in range(len(CFile)):
              if (i == 0):
                     command = command + "./proc_sw/leon3/" + CFile[i] + ' '
                     command = command + "./proc_sw/leon3/" + CFile[i] + ".c "

              else:
                     command = command + "./proc_sw/leon3/" + CFile[i] + ".c "

       command = command + "-luip -lm"
  

       #command = "sparc-elf-gcc -Wall -msoft-float -mcpu=v8 -g -o ./proc_sw/leon3/" + CFile + " ./proc_sw/leon3/greth_api.c ./proc_sw/leon3/" + CFile + ".c -luip"
       
       command_output = commands.getoutput(command)

       print(command_output)

       if (command_output.find("error:") != -1):
              raise _MyExceptions.MyExceptions("C/C++ file compilation error.")
       
       
