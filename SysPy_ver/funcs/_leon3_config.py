"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _leon3_config.py

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

  Edit Leon3 processor's VHDL configuration file.
"""

import _MyExceptions
reload(_MyExceptions)
from pdb import *

def leon3_config(attributes, config_options):
       """
       FUNCTION: leon3_config(a {}, b{})
              a: dictionary containing design's attributes
              b: dictionary containing configuration file paths
              
       - Edit processor's VHDL configuration file.
       """
	 
# Python's variable declarations
#--------------------------------------------------------------------------------------------------------------------------------
       ClockMul = ''
       ClockDiv = ''
       ClockMulDef = 8
       ClockDivDef = 10
       SysFreq = ''
       ProcFreq = ''
       Leon3ConfigFile = ''
       Leon3ConfigFileRead = ''
       Leon3ConfigFilePath = ''
#--------------------------------------------------------------------------------------------------------------------------------

# Caclulate the div and mul clock generator parameters
#----------------------------------------------------------------------------------------------------------------------------------


       #print config_options

       if ((attributes.has_key("SYS_FREQ")) and (attributes.has_key("PROC_FREQ"))):
              SysFreq = attributes["SYS_FREQ"]
              ProcFreq = attributes["PROC_FREQ"]

              if (SysFreq == 100):
                     if (ProcFreq == 80):
                            ClockMul = 8
                            ClockDiv = 10
                     elif (ProcFreq == 120):
                            ClockMul = 6
                            ClockDiv = 5

       
              ConfigFilePath = config_options["syspy_dir"] + "Leon3_comps/config_temp.vhd"
              Leon3ConfigFile = open(ConfigFilePath, 'r')
              Leon3ConfigFileRead = Leon3ConfigFile.read()
              Leon3ConfigFile.close()

              Leon3ConfigFileRead = Leon3ConfigFileRead + "\n-- Clock generator\n  constant CFG_CLKMUL : integer := (" + str(ClockMul) + ");\n" + "  constant CFG_CLKDIV : integer := (" + str(ClockDiv) + ");\nend;"

              ConfigFilePath = config_options["syspy_dir"] + "Leon3_comps/config.vhd"
              Leon3ConfigFile = open(ConfigFilePath, 'w')
              Leon3ConfigFile.write(Leon3ConfigFileRead)

              Leon3ConfigFile.close()

       else:
              ConfigFilePath = config_options["syspy_dir"] + "Leon3_comps/config_temp.vhd"
              Leon3ConfigFile = open(ConfigFilePath, 'r')
              Leon3ConfigFileRead = Leon3ConfigFile.read()
              Leon3ConfigFile.close()

              Leon3ConfigFileRead = Leon3ConfigFileRead + "\n-- Clock generator\n  constant CFG_CLKMUL : integer := (" + str(ClockMulDef) + ");\n" + "  constant CFG_CLKDIV : integer := (" + str(ClockDivDef) + ");\nend;"

              ConfigFilePath = config_options["syspy_dir"] + "Leon3_comps/config.vhd"
              Leon3ConfigFile = open(ConfigFilePath, 'w')
              Leon3ConfigFile.write(Leon3ConfigFileRead)              
