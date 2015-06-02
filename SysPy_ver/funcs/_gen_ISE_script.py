"""
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _gen_ISE_script.py

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

  Creating a tcl script for ISE
  
"""

import commands
import sys, os
from pdb import *



def gen_ISE_script(comp_names, attributes, config_options): 
       """
       FUNCTION: gen_ISE_script(a str, b{}, c{})
              a: component's name string
              b: dictionary containing design's attributes
              c: dictionary containing configuration file paths
              
       - Creating a tcl script for ISE.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       command = ''
       command_outp = ''
       script = ''
       script_temp_Leon3 = ''
       read_temp_Leon3= ''
       script_temp_AVR = ''
       read_temp_AVR = ''
       script_temp_minsoc = ''
       read_temp_minsoc = ''
       script_temp = ''
       read_temp = ''
       Leon3_flag = 0
       minsoc_flag = 0
       AVR_flag = 0
       Gillespie_flag = 0
#----------------------------------------------------------------------------------------------------------------------------------
       print "comp_names:", comp_names
       

       #command = 'mkdir ./SysPy/work/AVR_core'
       #command = "ls -l ./SysPy/work"
       command = "ls -l " + config_options["work_dir"] + "SysPy/work/"
       command_outp= commands.getoutput(command)
     
  
       
       if (command_outp .find("SysPy_ISE_script.tcl") != -1):
              #script = open("./SysPy/work/SysPy_ISE_script.tcl", 'a')
              script = open(config_options["work_dir"] + "SysPy/work/SysPy_ISE_script.tcl", 'a')
       else:
              #script = open("./SysPy/work/SysPy_ISE_script.tcl", 'w')
              script = open(config_options["work_dir"] + "SysPy/work/SysPy_ISE_script.tcl", 'w')

       for i in range(len(comp_names)):
              if (comp_names[i] == "leon3mp"):
                     print("leon3mp flag")
                     Leon3_flag = 1
              elif (comp_names[i] == "minsoc_wrapper"):
                     minsoc_flag = 1
              elif (comp_names[i] == "top_avr_core_v8"):
                     AVR_flag = 1
              elif (comp_names[i] == "FRM1XforLEONparam2v"):
                     print("FRM1X flag")
                     Gillespie_flag = 1
              elif (comp_names[i] == "FRM4XQuatroConnect"):
                     print("FRM4X flag")
                     Gillespie_flag = 1
              elif (comp_names[i] == "FRM4X_comp"):
                     print("FRM4X flag")
                     Gillespie_flag = 1
                     
                     
       if (Leon3_flag == 1):
              script_temp_Leon3 = open(config_options["syspy_dir"] + "Leon3_comps/Leon3_XST.tcl", 'r')              
              read_temp_Leon3 = script_temp_Leon3.read()
       elif (minsoc_flag == 1):
              script_temp_minsoc = open(config_options["syspy_dir"] + "minsoc_comps/minsoc_XST.tcl", 'r')              
              read_temp_minsoc = script_temp_minsoc.read()
       elif (AVR_flag == 1):
              script_temp_AVR = open(config_options["syspy_dir"] + "AVR_comps/AVR_XST.tcl", 'r')              
              read_temp_AVR = script_temp_AVR.read()
       else:
              script_temp = open(config_options["syspy_dir"] + "XST.tcl", 'r')              
              read_temp = script_temp.read()              

       if (Leon3_flag == 1):
              for i in range(len(comp_names)):
                     if (comp_names[i] != "leon3mp"):
                            if (comp_names[i] == "minsoc_wrapper"):
                                   script_temp_minsoc = open(config_options["syspy_dir"] + "minsoc_comps/minsoc_XST.tcl", 'r')
                                   read_temp_minsoc = script_temp_minsoc.read()
                                   read_temp_Leon3 = read_temp_Leon3.replace("custom_component_name", read_temp_minsoc + "custom_component_name")
                            elif (comp_names[i] == "top_avr_core_v8"):
                                   script_temp_AVR = open(config_options["syspy_dir"] + "AVR_comps/AVR_XST.tcl", 'r')
                                   read_temp_AVR = script_temp_AVR.read()
                                   read_temp_Leon3 = read_temp_Leon3.replace("custom_component_name", read_temp_AVR + "custom_component_name")
                            else:
                                   read_temp_Leon3 = read_temp_Leon3.replace("custom_component_name", "  " + config_options["work_dir"] + "SysPy/work/" + comp_names[i] + ".vhd \ \ncustom_component_name")
                                   read_temp_Leon3 = read_temp_Leon3.replace(" \ ", " \\") 
              
              if (attributes.has_key("FPGA_DEV")):
                     if (attributes["FPGA_DEV"] == "Spartan3"):
                            read_temp_Leon3 = read_temp_Leon3.replace("top_file_name", "\"" + comp_names[0] + "\"")
                            read_temp_Leon3 = read_temp_Leon3.replace("FPGA_family_name", "Spartan3A")
                            read_temp_Leon3 = read_temp_Leon3.replace("FPGA_device_name", "xc3s700a")
                            read_temp_Leon3 = read_temp_Leon3.replace("FPGA_device_package", "fg484")
                     elif (attributes["FPGA_DEV"] == "Virtex5"):
                            read_temp_Leon3 = read_temp_Leon3.replace("top_file_name", "\"" + comp_names[0] + "\"")
                            read_temp_Leon3 = read_temp_Leon3.replace("FPGA_family_name", "Virtex5")
                            read_temp_Leon3 = read_temp_Leon3.replace("FPGA_device_name", "xc5vlx110t")
                            read_temp_Leon3 = read_temp_Leon3.replace("FPGA_device_package", "ff1136")
                     else:
                            read_temp_Leon3 = read_temp_Leon3.replace("top_file_name", "\"" + comp_names[0] + "\"")
                            read_temp_Leon3 = read_temp_Leon3.replace("FPGA_family_name", "Spartan3A")
                            read_temp_Leon3 = read_temp_Leon3.replace("FPGA_device_name", "xc3s700a")
                            read_temp_Leon3 = read_temp_Leon3.replace("FPGA_device_package", "fg484")
              else:
                     read_temp_Leon3 = read_temp_Leon3.replace("top_file_name", "\"" + comp_names[0] + "\"")
                     read_temp_Leon3 = read_temp_Leon3.replace("FPGA_family_name", "Spartan3A")
                     read_temp_Leon3 = read_temp_Leon3.replace("FPGA_device_name", "xc3s700a")
                     read_temp_Leon3 = read_temp_Leon3.replace("FPGA_device_package", "fg484")

              ## Replace paths from config_options[]

       ## No processor              
       else:
              for i in range(len(comp_names)):
                     read_temp = read_temp.replace("custom_component_name", "  " + config_options["work_dir"] + "SysPy/work/" + comp_names[i] + ".vhd \ \ncustom_component_name")
                     read_temp = read_temp.replace(" \ ", " \\") 
              
              if (attributes.has_key("FPGA_DEV")):
                     if (attributes["FPGA_DEV"] == "Spartan3"):
                            read_temp = read_temp.replace("top_file_name", "\"" + comp_names[0] + "\"")
                            read_temp = read_temp.replace("FPGA_family_name", "Spartan3A")
                            read_temp = read_temp.replace("FPGA_device_name", "xc3s700a")
                            read_temp = read_temp.replace("FPGA_device_package", "fg484")
                     elif (attributes["FPGA_DEV"] == "Virtex5"):
                            read_temp = read_temp.replace("top_file_name", "\"" + comp_names[0] + "\"")
                            read_temp = read_temp.replace("FPGA_family_name", "Virtex5")
                            read_temp = read_temp.replace("FPGA_device_name", "xc5vlx110t")
                            read_temp = read_temp.replace("FPGA_device_package", "ff1136")
                     else:
                            read_temp = read_temp.replace("top_file_name", "\"" + comp_names[0] + "\"")
                            read_temp = read_temp.replace("FPGA_family_name", "Spartan3A")
                            read_temp = read_temp.replace("FPGA_device_name", "xc3s700a")
                            read_temp = read_temp.replace("FPGA_device_package", "fg484")
              else:
                     read_temp = read_temp.replace("top_file_name", "\"" + comp_names[0] + "\"")
                     read_temp = read_temp.replace("FPGA_family_name", "Spartan3A")
                     read_temp = read_temp.replace("FPGA_device_name", "xc3s700a")
                     read_temp = read_temp.replace("FPGA_device_package", "fg484")
              
       #elif ( (Leon3_flag == 0):
         
       if (Leon3_flag == 1):     
              if (Gillespie_flag == 1):  
                     script_temp_Gillespie_FRM1X = open(config_options["syspy_dir"] + "Gillespie_comps/Gillespie_script_temp.tcl", 'r') 
                     read_temp_Gillespie_FRM1X = script_temp_Gillespie_FRM1X.read()     
                     read_temp_Leon3 = read_temp_Leon3 + "\n" + read_temp_Gillespie_FRM1X

              read_temp_Leon3 = read_temp_Leon3.replace("\ncustom_component_name", '')
              read_temp_Leon3 = read_temp_Leon3.replace("custom_component_name", '')
              script.write(read_temp_Leon3)       
              script.close()
       
       else:    
              if (Gillespie_flag == 1):  
                     script_temp_Gillespie_FRM1X = open(config_options["syspy_dir"] + "Gillespie_comps/Gillespie_script_temp.tcl", 'r') 
                     read_temp_Gillespie_FRM1X = script_temp_Gillespie_FRM1X.read()     
                     read_temp = read_temp + "\n" + read_temp_Gillespie_FRM1X
 
              read_temp = read_temp.replace("\ncustom_component_name", '') 
              read_temp = read_temp.replace("custom_component_name", '')
              script.write(read_temp)       
              script.close()

              
