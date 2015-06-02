from pdb import *
import _fp_uns_to_bin2

def fir_filt_u(generics_func, func_variables):
       """
       FUNCTION: fir_filt_u(a{}, b str)
              a: dictionary containing function's generic values
              b: XML string file name 
              
       - Function generic's handler for "Gillespie_FRM4X".
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       filt_bin_param = ''
#----------------------------------------------------------------------------------------------------------------------------------


       print("func_variables:", func_variables)


       for i in func_variables["filt_param"]:
              filt_bin_param = filt_bin_param + _fp_uns_to_bin2.fp_uns_to_bin2(i, func_variables["fp_not"])

       generics_func["filt_param"] = "\"" + filt_bin_param + "\""

       return generics_func
