from pdb import *
import funcs._fp_sign_to_bin3

def fir_filt_s(generics_func, func_variables):
       """
       FUNCTION: fir_filt_s(a{}, b str)
              a: dictionary containing function's generic values
              b: XML string file name 
              
       - Function generic's handler for "Gillespie_FRM4X".
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       filt_bin_param = ''
#----------------------------------------------------------------------------------------------------------------------------------


       print("func_variables:", func_variables)

       #generics_func["filt_param"] = "\"0000000100001111\""

       #x = _fp_sign_to_bin3.fp_sign_to_bin3(3.25, "4.4")

       #print(x)

       for i in func_variables["filt_param"]:
              filt_bin_param = filt_bin_param + funcs._fp_sign_to_bin3.fp_sign_to_bin3(i, func_variables["fp_not"])

       generics_func["filt_param"] = "\"" + filt_bin_param + "\""

       return generics_func
