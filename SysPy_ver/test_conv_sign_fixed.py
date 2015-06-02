x = 0.75

bits = len(bin(int(round(abs(x) * 4)))) - 2

print("bits:", bits)

i = str(x).find('.')

if (x  > 0 ):
       sign_bit = 0
else:
       sign_bit = 1

x_int = str(x)[: i]

print("x_int:", x_int)

notation = "1.6"

i = notation.find('.')

not_int = notation[: i]

not_dec = notation[(i + 1) :]

range_min =  - pow(2, int(not_int))

range_max = pow(2, int(not_int)) - pow(2, - int(not_dec))

print("range_min:", range_min)

print("range_max:", range_max)

N = int(not_int) + int(not_dec) + 1

M = pow(2, N)
for i in range(N - bits - 1):
       M -= pow(2, int(N - i - 1))

M = M * sign_bit 

print("M:", M)

y = int(round(x * pow(2, int(not_dec)))) + M#pow(2, int(N - 1)) * sign_bit

print('y:', y)

print('N:', N)

y_bin = bin(y)

print("y_bin:", y_bin)

y_bin = y_bin.replace("0b", '')

y_bin = y_bin.replace("-", '')

y_bin = y_bin.lstrip('0')

y_bin = y_bin.rstrip('0')

print("y_bin:", y_bin)

x_int_bin = bin(int(x_int))

print("x_int:", x_int_bin)

x_int_bin = x_int_bin.replace("0b", '')

x_int_bin = x_int_bin.replace("-", '')

len_x_int_bin = len(x_int_bin)

print("len_x_int_bin:", len_x_int_bin)

len_x_int_bin = int(not_int) - len_x_int_bin

print("len_x_int_bin:", len_x_int_bin)

if (len_x_int_bin > 0):
       for i in range(len_x_int_bin):
              y_bin = str(sign_bit) + y_bin
#else:
  #      y_bin = str(sign_bit) + y_bin

print("y_bin:", y_bin)

len_y_bin = len(y_bin)

if (sign_bit == 0):
       len_y_bin = int(not_int) + int(not_dec) + 0 - len_y_bin
elif (sign_bit == 1):
       len_y_bin = int(not_int) + int(not_dec) + 1 - len_y_bin

print("len_y_bin:", len_y_bin)

if (len_y_bin > 0):
       for i in range(len_y_bin):
              y_bin = y_bin + '0'


if (sign_bit == 0):
       y_bin = str(sign_bit) + y_bin


#if (sign_bit == 1):
  #     y_bin = y_bin.lstrip('0')

print(y_bin)
