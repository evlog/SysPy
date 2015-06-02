def simple_func():

       

       def proc_2(clk, rst):
              if rst == '1':
                     z = "0000"
                     state = s0
              elif clk == '1':#rising_edge(clk):
                     if state == s0:
                            z = "0000"
                            state = s1
                     elif state == s1:
                            z = "0001"
                            state = s2
                     elif state == s2:
                            z = "0011"
                            state = s2
                     elif state == s3:
                            z = "0100"
                            state = s0
 


xt = {'D': 'i', 'T': 'b', 'L': 1, 'N': ['x', 'y']}
y1t = {'D': 'i', 'T': 'b', 'L': [3, 0], 'N': "y1"}
clkt = {'D': 'i', 'T': 'b', 'L': 1, 'N': ["clk", "rst"]}
zt = {'D': 'o', 'T': 'b', 'L': [3, 0], 'N': 'z'}
z1t = {'D': 'intr', 'T': 'b', 'L': [3, 0], 'N': 'z1', 'V': "0011"}

st = {'D': 'intr', 'T': 's', 'L': 1, 'N': "state", 'V': ["s0", "s1", "s2", "s3"]}
