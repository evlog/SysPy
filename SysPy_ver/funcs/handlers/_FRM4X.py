import sys, os
from pdb import *

def FRM4X(generics_func, func_param, config_options):
       """
       FUNCTION: _FRM4X(a{}, b str, c{})
              a: dictionary containing function's generic values
              b: XML string file name 
              c: dictionary containing configuration file paths
              
       - Function generic's handler for "Gillespie_FRM4X".
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------

       sys.path.append(config_options["syspy_dir"] + "Python_script/testbml2/")
       import _SBML_parser_SysPy
       reload(_SBML_parser_SysPy)

       func_param[0] = func_param[0].replace('"', '')

       print "func_param:", func_param[0]
       print "K:", generics_func['K']
       print "Tsim:", generics_func["Tsim"]
       print "RNGseed1:", generics_func["RNGseed1"]

       _SBML_parser_SysPy.SBML_parser_SysPy(func_param[0], generics_func['K'], generics_func["Tsim"], '1', "FRM", [generics_func["RNGseed1"], generics_func["RNGseed2"], generics_func["RNGseed3"], generics_func["RNGseed4"]], config_options)

       generics_func['M'] = '60'
       generics_func['N'] = '70'
       generics_func['P'] = '1'

       return generics_func
