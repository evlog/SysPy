x =0.25

i = str(x).find('.')

x_int = str(x)[: i]

notation = "0.2"

i = notation.find('.')

not_int = notation[: i]

not_dec = notation[(i + 1) :]

range_min = 0

range_max = pow(2, int(not_int)) - pow(2, - int(not_dec))

print("range_max:", range_max)

y = int(round(x * pow(2, int(not_dec))))

y_bin = bin(y)

y_bin = y_bin.replace("0b", '')

y_bin = y_bin.lstrip('0')

y_bin = y_bin.rstrip('0')

x_int_bin = bin(int(x_int))

len_x_int_bin = len(x_int_bin) - 2

len_x_int_bin = int(not_int) - len_x_int_bin

if (len_x_int_bin > 0):
       for i in range(len_x_int_bin):
              y_bin = '0' + y_bin

len_y_bin = len(y_bin)

len_y_bin = int(not_int) + int(not_dec) - len_y_bin

if (len_y_bin > 0):
       for i in range(len_y_bin):
              y_bin = y_bin + '0'

print(y_bin)

