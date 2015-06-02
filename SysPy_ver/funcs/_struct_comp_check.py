"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _struct_comp_check.py

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

  Checking if the declared component exists in "_struct_lib.py" and storing in "comp_vars" the variables of the component.
"""

import libs._struct_lib
reload(libs._struct_lib)
import _MyExceptions
import os
import warnings, sys
from pdb import *


def struct_comp_check(token_struct, func, config_options):
       """
       FUNCTION: struct_comp_check(a(), b str)
              a: token's tupple
              b: string name of the design function
              c: dictionary containing configuration file path
              
       - Checking if the declared component exists in "_struct_lib.py" and storing in "comp_vars" the variables of the component.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       struct_lib_dir = ''
       pos = 0
       comp_name = ''
       flag_comp_name = 0
       flag_is_file = ''
       generics_val = ''
#----------------------------------------------------------------------------------------------------------------------------------
       if (token_struct[0] == "struct_name_declaration"):
              comp_name = token_struct[1]
              pos = token_struct[2]
       elif (token_struct[0] == "struct_def_gen"):
              comp_name = token_struct[1]
              pos = token_struct[3]
              
       struct_lib_dir = dir(libs._struct_lib)
       print("token_struct[0]:", token_struct[0])
       #print(" struct_lib_dir:",  struct_lib_dir)
       
# Checking the existence of the declared component in "_struct_lib.py".
#----------------------------------------------------------------------------------------------------------------------------------  
       for i in range(len(struct_lib_dir)):
              if (struct_lib_dir[i] == comp_name):
                      flag_comp_name = 1

       if (flag_comp_name == 0):
              #raise funcs._MyExceptions.MyExceptions("File: \"" + func + ".py\": Line " + str(pos) + ": component \"" + comp_name + "\" doesnt exist in \"_struct_lib.py\".")
              #print("SysPy Warning: File :\"" +  func +".py\": Line: " + str(pos[1]) + ": Structural warning.")       
              print("SysPy Warning: File: \"" + func + ".py\": Line " + str(pos) + ": component \"" + comp_name + "\" does not exist in \"_struct_lib.py\".")
#----------------------------------------------------------------------------------------------------------------------------------

# Creating an external file ("_comp_search.py") to access "_struct_lib.py".
#----------------------------------------------------------------------------------------------------------------------------------
       if (flag_comp_name == 1):
              flag_is_file = os.path.isfile(config_options["syspy_dir"] + "/comp_search.pyc")

              if (flag_is_file == True):
                     os.remove(config_options["syspy_dir"] + "/comp_search.pyc")
                               
              fpath = config_options["syspy_dir"] + "comp_search" + ".py"
              pyFile = open(fpath, 'w')

              # copying generic parameters to "generic_val"
              if (token_struct[0] == "struct_def_gen"):
                     for i in range(len(token_struct[2])):
                            if (i % 2 == 0):
                                    generics_val += token_struct[2][i] + " = " + token_struct[2][i + 1] + ','


              generics_val = generics_val[0: (len(generics_val) - 1)]
              print("generics_val:", generics_val)

              pyFile.write("import libs._struct_lib\nreload(libs._struct_lib)\n")
              pyFile.write("def comp_search():\n")
              if (token_struct[1].find("XCoreLib") != -1):
                     pyFile.write("\tcomp_vars = libs._struct_lib." + token_struct[1] + "(" + generics_val +")\n")
              else:
                     pyFile.write("\tcomp_vars = libs._struct_lib." + token_struct[1] + "(" + generics_val +")\n")
              pyFile.write("\tprint(\"comp_search.comp_vars:\", comp_vars)\n")
              pyFile.write("\treturn comp_vars")
              pyFile.close()
              
              import comp_search
              reload(comp_search)
              
              comp_vars = comp_search.comp_search()

              return comp_vars
       elif (flag_comp_name == 0):
              return False
 #----------------------------------------------------------------------------------------------------------------------------------      
