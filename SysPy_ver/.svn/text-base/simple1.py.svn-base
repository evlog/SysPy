from inspect import *
import SysPy_ver._toVHDL
reload(SysPy_ver._toVHDL)
import pdb
def simple1():


       def struct_and3():
              I0 = x0
              I1 = x1
              I2 = x2
              O = intr0

       def struct_and3():
              I0 = intr0
              I1 = x3
              I2 = x4
              O = y


# Design's atrributes
attributes = {"sign": '+'}
generics = {}
              
x = {'D': 'i', 'T': 'b', 'L': 1, 'N': ['x0', 'x1', 'x2', 'x3', 'x4']}
y = {'D': 'i', 'T': 'b', 'L': 1, 'N': 'y'}
intr0 = {'D': 'intr', 'T': 'b', 'L': 1, 'N': 'intr0'}




data_flow_code = getsourcelines(simple1)
#behavioral_code = getsourcelines(simple_proc)

SysPy_ver._toVHDL.toVHDL("simple1", attributes, generics, x, y, intr0, data_flow_code)
