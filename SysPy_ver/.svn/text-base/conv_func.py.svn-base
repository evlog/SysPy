from inspect import *
import _toVHDL
import simple_func as s 
reload(_toVHDL)
#reload(simple_func)




data_flow_code = getsourcelines(s)
#behavioral_code = getsourcelines(simple_proc)

_toVHDL.toVHDL("simple_func", s.xt, s.y1t, s.zt, s.z1t, s.clkt, s.st, data_flow_code)



