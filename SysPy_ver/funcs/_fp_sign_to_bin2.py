"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _fp_sign_to_bin2.py

Created by:   Evangelos Logaras


*****************************************************************************
                                                                            *
                      C O P Y R I G H T   N O T I C E                       *
                                                                            *
*****************************************************************************

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; 
  version 2.1 of the License, a copy of which is available from
  http://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  
  USA


*****************************************************************************
                                                                            *
                           D E S C R I P T I O N                            *
                                                                            *
*****************************************************************************

  Convertion of signed floating point numbers to binary.
  
"""

from pdb import *
def fp_sign_to_bin2(fp_num, fp_not):
       """
       FUNCTION: fp_sign_to_bin2(a float, b str)
              a:  floating point number 
              b: floating point notation as string
              
       - Convertion of signed floating point numbers to binary. 
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       fp_range_min = 0.0
       fp_range_min = 0.0
       sign_bit = 0
       fp_num_int = ''
       fp_bin = ''
       fp_num_int_bin = ''
       len_fp_num_int_bin =0
#----------------------------------------------------------------------------------------------------------------------------------
       i = str(fp_num).find('.')

       fp_num = float(fp_num)

       fp_num_int = str(fp_num)[: i]

       fp_not = fp_not.replace("\"", '')

       i = fp_not.find('.')

       fp_not_int = fp_not[: i]

       if (fp_num  >= 0 ):
              sign_bit = 0
       elif (fp_num  < 0 ):
              sign_bit = 1

       fp_not_dec = fp_not[(i + 1) :]

       fp_range_min = - pow(2, int(fp_not_int))

       fp_range_max = pow(2, int(fp_not_int)) - pow(2, - int(fp_not_dec))

       if (fp_num_int == '0'):       
              fp_bin = int(round((fp_num + 1) * pow(2, int(fp_not_dec))))
       elif (fp_num_int != '0'):       
              fp_bin = int(round(fp_num * pow(2, int(fp_not_dec))))

       if (sign_bit == 1):
              fp_bin = pow(2, int(fp_not_int) + int(fp_not_dec) + 1)  - abs(fp_bin)

       fp_bin = bin(fp_bin)

       fp_bin = fp_bin.replace("0b", '')

       fp_bin = fp_bin.replace('-', '')

       if (len(fp_bin) != (int(fp_not_int) + int(fp_not_dec) + 1)):
              fp_bin = fp_bin.lstrip('0')

              fp_bin = fp_bin.rstrip('0')

              fp_num_int_bin = bin(int(fp_num_int))

              len_fp_num_int_bin = len(fp_num_int_bin) - 2

              len_fp_num_int_bin = int(fp_not_int) - len_fp_num_int_bin

              if (len_fp_num_int_bin > 0):
                     for i in range(len_fp_num_int_bin):
                            fp_bin = '0' + fp_bin

              len_fp_bin = len(fp_bin)

              len_fp_bin = int(fp_not_int) + int(fp_not_dec) - len_fp_bin

              if (len_fp_bin > 0):
                     for i in range(len_fp_bin):
                            fp_bin = fp_bin + '0'

              if (fp_not_int == '0'):
                     fp_bin = fp_bin[1:]

              if ((sign_bit == 0) or ((sign_bit == 1) and (fp_not_int == '0'))):
                     fp_bin = str(sign_bit) + fp_bin

       if (fp_num_int == '0'):
              i = fp_bin.find('1')
              fp_bin = fp_bin[: i] + '0' + fp_bin[i + 1:]

                     

       return fp_bin
