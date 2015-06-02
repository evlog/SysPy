from pdb import *
from copy import *

def generic_signals(args, generics, func):
       """
       FUNCTION: struct_comp_check(a[], b{})
              a: design's signal list
              b: generics' dictionary
              c: string name of the design function
              
       - Evaluating generics signals' width.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       generics_keys = []

#----------------------------------------------------------------------------------------------------------------------------------
       generics_keys = generics.keys()

       gen_flag = 0
       for i in range(len(generics_keys)):
              if (generics_keys[i] == func):
                     gen_flag = 1

       args_gen = list(args)
       
       if (gen_flag == 1):
              generics_keys = generics[func].keys()

              for i in range(len(generics_keys)):
                     exec(generics_keys[i] + '=' + str(generics[generics_keys[i]]))

              for i in range(len(args_gen) - 1):
                     a = args_gen[i]['L'].__doc__
                     if (a.find("list") == 0):
                            for j in range(len(args_gen[i]['L'])):
                                   b = args_gen[i]['L'][j].__doc__
                                   if (b.find("str") == 0):
                                          args_gen[i]['L'][j] = eval(args_gen[i]['L'][j])

       return args_gen
