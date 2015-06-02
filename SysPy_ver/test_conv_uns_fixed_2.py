x =0.0

i = str(x).find('.')

x_int = str(x)[: i]

notation = "1.0"

i = notation.find('.')

not_int = notation[: i]

print("not_int0:", not_int)

not_dec = notation[(i + 1) :]

print("not_dec0:", not_dec)

##@@
if (not_int == '0'):
       not_int_b = '1'

range_min = 0

range_max = pow(2, int(not_int)) - pow(2, - int(not_dec))

print("range_max:", range_max)

##@@
if (x_int == '0'):
       y = int(round((x + 1) * pow(2, int(not_dec))))
elif (x_int != '0'):
       y = int(round(x * pow(2, int(not_dec))))

print("y0:", y)

y_bin = bin(y)

print("y_bin0:", y_bin)

y_bin = y_bin.replace("0b", '')

if (len(y_bin) != (int(not_int) + int(not_dec) + 1)):
       y_bin = y_bin.lstrip('0')

       y_bin = y_bin.rstrip('0')

       print("y_bin1:", y_bin)

       x_int_bin = bin(int(x_int))

       print("x_int_bin0:", x_int_bin)

       len_x_int_bin = len(x_int_bin) - 2

       print("len_x_int_bin0:", len_x_int_bin)

       len_x_int_bin = int(not_int) - len_x_int_bin

       print("len_x_int_bin1:", len_x_int_bin)

       if (len_x_int_bin > 0):
              for i in range(len_x_int_bin):
                     y_bin = '0' + y_bin

       len_y_bin = len(y_bin)

       print("len_y_bin0:", len_y_bin)

       len_y_bin = int(not_int) + int(not_dec) - len_y_bin

       print("len_y_bin1:", len_y_bin)

       if (len_y_bin > 0):
              for i in range(len_y_bin):
                     y_bin = y_bin + '0'
                     
       ##@@


##@@
if (x_int == '0'):# and (not_int != '0')):
       i = y_bin.find('1')
       y_bin = y_bin[: i] + '0' + y_bin[i + 1:]

if (not_int == '0'):
       y_bin = y_bin[1:]

print(y_bin)

