"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _func_check.py

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

  Checking if the declared function exists in "_func_lib.py" and storing in 
  "func_vars" the variables of the function.
  
"""

import libs._func_lib
reload(libs._func_lib)
import _MyExceptions
import os
from pdb import *

def func_check(token_struct, func, generics, config_options):
       """
       FUNCTION: struct_comp_check(a(), b str)
              a: token's tupple
              b: string name of the design function
              c: dictionary containing design's generic parameters
              d: dictionary containing configuration file path
              
       - Checking if the declared function exists in "_func_lib.py" and storing in "func_vars" the variables of the function.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       struct_lib_dir = ''
       func_name = ''
       pos = 0
       flag_func_name = 0
#----------------------------------------------------------------------------------------------------------------------------------

       func_name = token_struct[1]
       func_param = token_struct[2]
       pos = token_struct[3]

       func_lib_dir = dir(libs._func_lib)

# Checking the existence of the declared component in "_func_lib.py".
#----------------------------------------------------------------------------------------------------------------------------------  
       for i in range(len(func_lib_dir)):
              if (func_lib_dir[i] == func_name):
                      flag_func_name = 1

       if (flag_func_name == 0):
              raise _MyExceptions.MyExceptions("File: \"" + func + ".py\": Line " + str(pos) + ": function \"" + func_name + "\" doesnt exist in \"_func_lib.py\".")
#----------------------------------------------------------------------------------------------------------------------------------

# Creating an external file ("_comp_search.py") to access "_struct_lib.py".
#----------------------------------------------------------------------------------------------------------------------------------
       flag_is_file = os.path.isfile(config_options["syspy_dir"] + "/func_search.pyc")

       if (flag_is_file == True):
              os.remove(config_options["syspy_dir"] + "/func_search.pyc")
                        
       fpath = config_options["syspy_dir"] + "func_search" + ".py"
       pyFile = open(fpath, 'w')

       params = ''
       for i in range(len(func_param)):
              params = params + func_param[i] + ", "

       params = params[: (len(params) - 2)]


       pyFile.write("import libs._func_lib\nreload(libs._func_lib)\n")
       pyFile.write("def func_search():\n")
       pyFile.write("\tfunc_vars = libs._func_lib." + token_struct[1] + '(' + params + ")\n")
       pyFile.write("\tprint(\"func_search.func_vars:\", func_vars)\n")
       pyFile.write("\treturn func_vars")
       pyFile.close()
       
       import func_search
       reload(func_search)
       
       func_vars = func_search.func_search()

       return func_vars
 #----------------------------------------------------------------------------------------------------------------------------------      


