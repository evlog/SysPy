x = -3.75

##@@
not_int_b = ''

bits = len(bin(int(round(abs(x) * 4)))) - 2

print("bits:", bits)

i = str(x).find('.')

if (x  > 0 ):
       sign_bit = 0
else:
       sign_bit = 1

x_int = str(x)[: i]

print("x_int:", x_int)

notation = "2.2"

i = notation.find('.')

not_int = notation[: i]

##@@
if (not_int == '0'):
       not_int_b = '1'

not_dec = notation[(i + 1) :]

##@@
if (not_int == '0'):
       range_min =  - pow(2, int(not_int_b))
else:
       range_min =  - pow(2, int(not_int))
       
##@@
if (not_int == '0'):
       range_max = pow(2, int(not_int_b)) - pow(2, - int(not_dec))
else:
       range_max = pow(2, int(not_int)) - pow(2, - int(not_dec))
       
print("range_min:", range_min)

print("range_max:", range_max)

if (not_int == '0'):
       N = int(not_int_b) + int(not_dec) + 1
else:
       N = int(not_int) + int(not_dec) + 1

M = pow(2, N)
for i in range(N - bits - 1):
       M -= pow(2, int(N - i - 1))

M = M * sign_bit 

print("M:", M)

##@@
if ((x_int == '0') or (x_int == "-0")):
       if (sign_bit == 0):
              y = int(round((x + 1) * pow(2, int(not_dec))))  + M#pow(2, int(N - 1))# * sign_bit
       elif (sign_bit == 1):
              y = int(round((x - 0) * pow(2, int(not_dec)))) + pow(2, int(N - 1))# * sign_bit
else:
        if (sign_bit == 0):
              y = int(round(x * pow(2, int(not_dec)))) + M# + pow(2, int(N - 1))# * sign_bit
        elif (sign_bit == 1):
              y = int(round(x * pow(2, int(not_dec)))) + pow(2, int(N - 1))# * sign_bit
              
print('y:', y)

print('N:', N)

y_bin = bin(y)

print("y_bin0:", y_bin)

y_bin = y_bin.replace("0b", '')

y_bin = y_bin.replace("-", '')


y_bin = y_bin.lstrip('0')

y_bin = y_bin.rstrip('0')

print("y_bin1:", y_bin)

print("x_int:", x_int)

x_int_bin = bin(int(x_int))

print("x_int_bin:", x_int_bin)

x_int_bin = x_int_bin.replace("0b", '')

x_int_bin = x_int_bin.replace("-", '')

len_x_int_bin = len(x_int_bin)

print("len_x_int_bin0:", len_x_int_bin)

#if (x_int != '0'):
##@@
if (sign_bit == 0):
       len_x_int_bin = int(not_int) - len_x_int_bin
elif (sign_bit == 1):   
       len_x_int_bin = len_x_int_bin#int(not_int)

print("len_x_int_bin1:", len_x_int_bin)

##@@
if (len_x_int_bin > 0):
       for i in range(len_x_int_bin):
              if (sign_bit == 0):
                     y_bin = str(sign_bit) + y_bin
              elif (sign_bit == 1):
                     if (i == (len_x_int_bin - 1)): 
                            y_bin = str(sign_bit) + y_bin
                     else:
                            y_bin = '0' + y_bin
#else:               
  #      y_bin = str(sign_bit) + y_bin

print("y_bin2:", y_bin)


len_y_bin = len(y_bin)

if (sign_bit == 0):
       len_y_bin = int(not_int) + int(not_dec) + 0 - len_y_bin
elif (sign_bit == 1):
       len_y_bin = int(not_int) + int(not_dec) + 1 - len_y_bin

print("len_y_bin3:", len_y_bin)


if (len_y_bin > 0):
       for i in range(len_y_bin):
              y_bin = y_bin + '0'

##@@
if ((sign_bit == 0) and (len_y_bin != -1)):
        y_bin = str(sign_bit) + y_bin


##@@
if (x_int == '0'):
       i = y_bin.find('1')
       y_bin = y_bin[: i] + '0' + y_bin[i + 1:]

##@@
if (not_int_b == '0'):
       y_bin = y_bin[1:] 
       
#if (sign_bit == 1):
  #     y_bin = y_bin.lstrip('0')

print(y_bin)
