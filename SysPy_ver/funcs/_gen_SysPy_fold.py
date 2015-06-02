"""
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _gen_SysPy_fold.py

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

  Generation of the working folder under SysPy.
  
"""

import commands
from pdb import *


def gen_SysPy_fold(vhdFile, attributes, CompLib, comp_variables, proc_name):
       """
       FUNCTION: signal_compatibility(a file, b(), c str, d, e int)
              a: VHDL output file 
              b: dictionary containing design's attributes
              c: component's library string
              d:
              e: int # of processor cores
              
       - Generation of the working folder under SysPy.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------
       attributes_keys = attributes.keys()
       FPGA_attr_flag = 0
       for i in range(len(attributes_keys)):
              if (attributes_keys[i] == "FPGA_DEV"):
                     a = attributes[attributes_keys[i]]
                     FPGA_attr_flag = 1

       if (FPGA_attr_flag == 1):
              if (a == "Spartan3"):
                     fpga_dev = "_S3"
              elif (a == "Virtex5"):
                     fpga_dev = "_V5"

       else:
              fpga_dev = "_S3"

       if (CompLib == "XCompLib"):
              command = 'cp ./SysPy_comp_lib/XCoreLib/' + comp_variables[len(comp_variables) - 1][2] + '/' + comp_variables[len(comp_variables) - 1][2] + fpga_dev+ ".xco" + ' ./SysPy/work/' + comp_variables[len(comp_variables) - 1][2] + fpga_dev + ".xco"
              commands.getoutput(command)

              command = 'cp ./SysPy_comp_lib/XCoreLib/' + comp_variables[len(comp_variables) - 1][2] + '/' + comp_variables[len(comp_variables) - 1][2] + fpga_dev + ".vho" + ' ./SysPy/work/' + comp_variables[len(comp_variables) - 1][2] + fpga_dev+ ".vho"
              commands.getoutput(command)

              command = 'cp ./SysPy_comp_lib/XCoreLib/' + comp_variables[len(comp_variables) - 1][2] + '/' + comp_variables[len(comp_variables) - 1][2] + fpga_dev + ".ngc" + ' ./SysPy/work/' + comp_variables[len(comp_variables) - 1][2] + fpga_dev + ".ngc"
              commands.getoutput(command)

              command = 'cp ./SysPy_comp_lib/XCoreLib/' + comp_variables[len(comp_variables) - 1][2] + '/' + comp_variables[len(comp_variables) - 1][2] + fpga_dev + ".vhd" + ' ./SysPy/work/' + comp_variables[len(comp_variables) - 1][2] + fpga_dev + ".vhd"
              commands.getoutput(command)

       if (proc_name == "top_avr_core_v8"):
              command = 'mkdir ./SysPy/work/AVR_core'
              commands.getoutput(command)
              command = 'cp ./proc_sw/XPM8Kx16.vhd ./SysPy/work/AVR_core/XPM8Kx16.vhd'
              commands.getoutput(command)
              command = 'cp ./AVR_comps/*.vhd ./SysPy/work/AVR_core/'
              commands.getoutput(command)
       elif (proc_name == "Leon3_wrapper"):
              command = 'mkdir ./SysPy/work/Leon3_core'
              commands.getoutput(command)
              command = 'cp ./Leon3_comps/*.vhd ./SysPy/work/Leon3_core/'
              commands.getoutput(command)
