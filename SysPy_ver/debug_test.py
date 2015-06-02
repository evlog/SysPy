from inspect import *
import _toVHDL
reload(_toVHDL)
def debug_test():

       b[3:2] = ctr
       b[1] = ctr

# Design's atrributes
attributes = {"sign": '+'}
generics = {} 
       
iosigs0 = {'D': 'i', 'T': 'b', 'L': 1, 'N': "ctr"}
iosigs1 = {'D': 'i', 'T': 'b', 'L': [7, 0], 'N': "a"}
iosigs2 = {'D': 'o', 'T': 'b', 'L': [7, 0], 'N': "b"}

code = getsourcelines(debug_test)

_toVHDL.toVHDL("debug_test", attributes, generics, iosigs0, iosigs1, iosigs2, code)
