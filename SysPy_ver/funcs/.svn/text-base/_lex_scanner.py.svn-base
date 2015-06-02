from Plex import *
from pdb import *

# Python's variable declarations
#----------------------------------------------------------------------------------------------------------------------------------
letter = Range("AZaz") | Str('_')
digit = Range("09")
bit = Range("01") | Any("ZzXx") 
spaces = Any(" \t")
equ = Any('=')
underscore = Str('_')
arithm_oper = Any("+-*")
sign = Any("+-")
minus = Str('-')
double_dot = Str(':')
comma = Str(',')
logic_oper = Str("and") | Str("or") | Str("xor") | Str('~') | Str('&')
comp_oper = Any("<>") | Str("!=") | Str("==") | Str(">=") | Str("<=")
opening_bracket = Any('(')
closing_bracket = Any(')')
end_if_stat = Str(':')
sign_uns_not = Str("\"") + (Str("s") | Str("u")) + Str("\"")
fix_p_not = Str("\"") + Rep1(digit) + Str(".") + Rep1(digit) + Str("\"")
name_left = letter + Rep(letter | digit) + Rep(spaces) + (equ | comp_oper)
name_right = letter + Rep(letter | digit)
name = letter + Rep(letter | digit | underscore)
port_map_assign = name + Rep(spaces) + equ + Rep(spaces) + name
process_stat = Str("def") + Rep1(spaces) + Str("proc") + Str('_') + Rep(letter | digit)# + opening_bracket + Rep(name | Str(',') | spaces) + closing_bracket + Rep(spaces) + Str(':')
for_loop_stat = Str("for") + Rep1(spaces) + name + Rep1(spaces) + Str("in") + Rep1(spaces) + Str("range") + Rep(spaces) + Str('(') + Rep(spaces) + Rep1(digit) + Rep(spaces) + Rep1(comma) + Rep(spaces) + Rep1(digit) + Rep(spaces) + Str(')') + Rep(spaces) + Rep1(double_dot)
number = Rep1(digit)
float_number = Rep1(digit) + Str('.') + Rep1(digit)
binary_bit = Str("'") + bit + Str("'")
binary_bits = Str("\"") + Rep1(bit) + Str("\"")
name_right_binary_slice = name_right + Str('[') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(':') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(']')
name_left_binary_slice = letter + Rep(letter | digit) + Rep(spaces) + Str('[') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(':') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(']') + Rep(spaces) + (equ | comp_oper)
name_right_item = name_right + Str('[') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(']')
name_left_item =  letter + Rep(letter | digit) + Rep(spaces) + Str('[') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(']') + Rep(spaces) + (equ | comp_oper)
name_right_array_binary_item = name_right + Str('[') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(']') + Rep(spaces) + Str('[') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(']')
name_right_array_binary_slice = name_right + Str('[') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(']') + Rep(spaces) + Str('[') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(':') + Rep(spaces) + Rep(minus) + Rep(spaces) + (Rep1(digit) | name) + Rep(spaces) + Str(']')
open_key = Str("\"open\"")
shift_oper_left_sig =  letter + Rep(letter | digit) + Rep(spaces) + Str("<<")  + Rep(spaces) +  letter + Rep(letter | digit)
shift_oper_right_sig =  letter + Rep(letter | digit) + Rep(spaces) + Str(">>")  + Rep(spaces) +  letter + Rep(letter | digit)
shift_oper_left_bin =  letter + Rep(letter | digit) + Rep(spaces) + Str("<<")  + Rep(spaces) +  binary_bits
shift_oper_right_bin =  letter + Rep(letter | digit) + Rep(spaces) + Str(">>")  + Rep(spaces) +  binary_bits
dataflow_if_stat = Rep(spaces) + Str("if") + Rep(spaces)# + name_right + Rep(spaces) + comp_oper + Rep(spaces) + (name_right | digit | binary_bit | binary_bits) + Rep(spaces) + Str(':')
dataflow_elif_stat = Rep(spaces) + Str("elif") + Rep(spaces)# + name_right + Rep(spaces) + comp_oper + Rep(spaces) + (name_right | digit | binary_bit | binary_bits) + Rep(spaces) + Str(':')
dataflow_else_stat = Rep(spaces) + Str("else") + Rep(spaces) + Str(':')
indentation = Rep(Str(" ")) | Rep(Str("\t"))
comment = Str("#") + Rep(AnyBut("\n"))
lineterm = Str("\n") | Eof
#blank_line = Rep(spaces) + Str("\n")
blank_line = indentation + lineterm
escaped_newline = Str("\n")
sign_decl = name_left + Rep(spaces) + Any('{')
rising_edge_func = Rep(spaces) + Str("rising_edge") + opening_bracket + letter + Rep(letter | digit) + closing_bracket
conv_integer_func = Rep(spaces) + Str("conv_integer") + opening_bracket + (name | ((Str("\"") | Str('\'')) + Rep1(letter | bit | digit) + (Str("\"") | Str('\'')))) + closing_bracket
conv_std_logic_func = Rep(spaces) + Str("conv_std_logic") + opening_bracket + Rep(spaces) + (name |  (Rep1(digit)) | (Str('-') + Rep(spaces) + Rep1(digit))) + Rep(spaces) + comma + Rep(spaces) + Rep1(digit) + Rep(spaces) + closing_bracket
others_func =  Rep(spaces) + Str("others") + opening_bracket + Str("'") + Rep1(bit) + Str("'") + closing_bracket
struct_stat = Str("def") + Rep(spaces) + Str("struct") + Str('_')
#x =name + equ
#struct_stat_gen = Str("def") + Rep(spaces) + Str("struct") + Str('_') + name + Str('(') + Rep1((name + Rep(spaces) + equ + Rep(spaces) + Rep1(digit) + Rep(spaces) + comma + Rep(spaces)) | (name + Rep(spaces) + equ + Rep(spaces) + Rep1(digit) + Rep(spaces))) + Str(')')     
struct_stat_gen = Str("def") + Rep(spaces) + Str("struct") + Str('_') + name + Str('(') + Rep1((name + Rep(spaces) + equ + Rep(spaces) + Rep1(digit) + Rep(spaces) + comma + Rep(spaces)) | (name + Rep(spaces) + equ + Rep(spaces) + Rep1(digit) + Rep(spaces)) | (name + Rep(spaces) + equ + Rep(spaces) + Rep1(binary_bits) + Rep(spaces) + comma + Rep(spaces)) | (name + Rep(spaces) + equ + Rep(spaces) + Rep1(binary_bits) + Rep(spaces))) + Str(')') 

#x =name + equ #(name + Rep(spaces) + equ + Rep(spaces) + Rep1(digit) + Rep(spaces) + comma + Rep(spaces)) #| (name + Rep(spaces) + equ + Rep(spaces) + Rep1(digit) + Rep(spaces) + Rep(spaces)))
func_stat = Str("func") + Str('_') + name + Str('(') + Rep(spaces) + Rep(Str('[')) + Rep((Rep(spaces) + ((Str("\"") + name + Str("\"")) | name | number | (Rep(sign) + float_number) | fix_p_not | sign_uns_not) + Rep(spaces) +  comma + Rep(spaces)) | (Rep(spaces) + ((Str("\"") + name + Str("\"")) | name | number | (Rep(sign) + float_number) | fix_p_not | sign_uns_not) + Rep(spaces))) + Rep(Str(']')) + Rep(spaces) + Rep(comma) + Rep(spaces) + Rep(fix_p_not) + Rep(spaces) +  Str(')')



s0 = ''
s1 = ''
x = ''
#----------------------------------------------------------------------------------------------------------------------------------
class LexScanner(Scanner):
       def open_bracket_action(self, text):
              self.bracket_nesting_level = self.bracket_nesting_level + 1
              return ("opening_bracket")

       def close_bracket_action(self, text):
              self.bracket_nesting_level = self.bracket_nesting_level - 1
              return ("closing_bracket")

       def current_level(self):
              return self.indentation_stack[-1]

       def name_action(self, text):
              return self.indentation_stack[-1]

       def newline_action(self, text):
              if self.bracket_nesting_level == 0:
                      self.begin('indent')
                      return 'newline'

       def indentation_dataflow_if_action(self, text): 
              current_level = self.current_level()
              new_level = len(text)
              if new_level > current_level:
                     self.indent_to_dataflow_if_action(new_level)
              elif new_level < current_level:
                     self.dedent_to_dataflow_if_action(new_level)
              self.begin('')
              
       def indent_to_dataflow_if_action(self, new_level):
              self.indentation_stack.append(new_level)
              self.produce("INDENT_dataflow_if_action", self.current_level())

       def dedent_to_dataflow_if_action(self, new_level):
              while new_level < self.current_level():
                     self.indentation_stack.pop()
                     self.produce("DEDENT_dataflow_if_action", self.current_level())

       def indentation_action(self, text):
              current_level = self.current_level()
              new_level = len(text)
              if new_level > current_level:
                     self.indent_to(new_level)
              elif new_level < current_level:
                     self.dedent_to(new_level)
              self.begin('')

       def indent_to(self, new_level):
              self.indentation_stack.append(new_level)
              self.produce('INDENT', self.current_level())

       def dedent_to(self, new_level):
              while new_level < self.current_level():
                     self.indentation_stack.pop()
                     self.produce('DEDENT', self.current_level())

       def assign_action(self, text):
              self.begin('assign')
              return "name_left"

       def for_loop_stat_action(self, text):
              self.begin('for_loop_stat')
              i = text.find('(')
              j = text.find(',')
              k = text.find(" for ")
              m = text.find(" in ")

              s0 = text[(k + 4): m]
              s0 = s0.replace(' ', '')

              s1 = text[(i + 1): j]
              s1.replace(' ', '')

              s2 = text[(j + 1):]
              s2 = s2.replace(' ','')
              s2 = s2.replace(')', '')
              s2 = s2.replace(':', '')
              
              return "for_loop_stat", s0, s1, s2

       def dataflow_if_comp_left_action(self, text):
              self.begin('assign')
              return "name_left_dataflow_comp"

       def dataflow_if_comp_right_action(self, text):
              self.begin('assign')
              return "name_right_dataflow_comp"

       def dataflow_elif_comp_left_action(self, text):
              self.begin('assign')
              return "name_left_dataflow_comp"

       def dataflow_elif_comp_right_action(self, text):
              self.begin('assign')
              return "name_right_dataflow_comp"

       def dataflow_if_stat_action(self, text):
              text = text.replace("if", '')
              text = text.replace(':', '')
              text = text.replace(' ', '')
              self.begin("dataflow_if_stat")
              return "dataflow_if_stat", text

       def dataflow_elif_stat_action(self, text):
              text = text.replace("elif", '')
              text = text.replace(':', '')
              text = text.replace(' ', '')
              self.begin("dataflow_elif_stat")
              return "dataflow_elif_stat", text

       def dataflow_else_stat_action(self, text):
              text = text.replace("else", '')
              text = text.replace(':', '')
              text = text.replace(' ', '')
              self.begin("dataflow_else_stat")
              return "dataflow_else_stat", text

       def shift_oper_sig_action(self, text):
              if (text.find("<<") != -1):
                     j = text.find("<<")
              elif (text.find(">>") != -1):
                     j = text.find(">>")
                     
              x = text[0: (j - 0)]
              x = x.replace(' ', '')
              y = text[(j + 2): len(text)]
              y = y.replace(' ', '')

              if (text.find("<<") != -1):
                     return "shift_oper_left_sig", x, y,
              elif (text.find(">>") != -1):
                     return "shift_oper_right_sig", x, y,

       def shift_oper_bin_action(self, text):
              if (text.find("<<") != -1):
                     j = text.find("<<")
              elif (text.find(">>") != -1):
                     j = text.find(">>")
                     
              x = text[0: (j - 0)]
              x = x.replace(' ', '')
              y = text[(j + 2): len(text)]
              y = y.replace(' ', '')

              if (text.find("<<") != -1):
                     return "shift_oper_left_bin", x, y,
              elif (text.find(">>") != -1):
                     return "shift_oper_right_bin", x, y,

       def process_sens_list_action(self, text):
              self.begin("process_sens_list")
              return "process_sens_list", text

       def struct_def_action(self, text):
              self.begin("struct_def")
              return "struct_def", text

       def struct_def_gen_action(self, text):
		self.begin("struct_def_gen")
		i = text.find('(')
		j = text.find(')')

		text_gen = text[(i + 1):  (j)]
		comma_table = []
		gen_table1 = []
		gen_table2 = []
		for i in range(len(text_gen)):
			if (text_gen[i] == ','):
				comma_table.append(i)
				gen_table1.append('')

		gen_table1.append('')

		# Multiple generic parameters
		if (len(comma_table) > 0):
			for i in range(len(gen_table1)):
				if (i == 0):
				       gen_table1[i] = (text_gen[: (comma_table[i])].replace(' ', ''))
				elif (i == (len(gen_table1) - 1)):
				       gen_table1[i] = (text_gen[(comma_table[i - 1] + 1):].replace(' ', ''))
				else:
				       gen_table1[i] = (text_gen[(comma_table[i - 1] + 1): comma_table[i]].replace(' ', ''))
                                 
		# Single generic parameter
		elif (len(comma_table) == 0):
			gen_table1[0] = text_gen

		for i in range(len(gen_table1)):
			if (gen_table1[i].find('=') != -1):
				j = gen_table1[i].find('=')
				gen_table2.append(gen_table1[i][:j])
				gen_table2.append(gen_table1[i][(j + 1):])

		i = text.find('_')
		j = text.find('(')

		text_name = text[(i + 1):j]

		return "struct_def_gen", text_name, gen_table2

       def rising_edge_func_action(self, text):
              x = text
              x = x.replace("rising_edge", '')
              x = x.replace('(', '')
              x = x.replace(')', '')
              
              return "rising_edge_sig", x

       def others_func_action(self, text):
              x = text
              x = x.replace("others", '')
              x = x.replace('(', '')
              x = x.replace(')', '')
              x = x.replace(' ', '')
              x = x.replace("'", '')
              
              return "others", x

       def right_binary_slice_action(self, text):
              i = text.find('[')
              j = text.find(':')

              x = text[0: i]
              x = x.replace(' ', '')
                     
              s0 = text[i + 1: j ]
              s0 = s0.replace(' ', '')
              s1 = text[(j + 1): (len(text) - 1)]
              s1 = s1.replace(' ', '')

              try:
                     t = int(s0, 10)
              except ValueError:
                     try:
                            t = int(s1, 10)
                     except ValueError:
                            return "name_right_binary_slice_var01", x, s0, s1
                     else:
                            return "name_right_binary_slice_var0", x, s0, s1
              else:
                     try:
                            t = int(s1, 10)
                     except ValueError:
                            return "name_right_binary_slice_var1", x, s0, s1
                     else:
                            return "name_right_binary_slice", x, s0, s1

       def left_binary_slice_action(self, text):
              self.begin('assign')
              i = text.find('[')
              j = text.find(':')
              k = text.find(']')

              x = text[0: i]
              x = x.replace(' ', '')
                     
              s0 = text[i + 1: j ]
              s0 = s0.replace(' ', '')
              s1 = text[(j + 1): k]#(len(text) - 1)]
              s1 = s1.replace(' ', '')

              try:
                     t = int(s0, 10)
              except ValueError:
                     try:
                            t = int(s1, 10)
                     except ValueError:
                            return "name_left_binary_slice_var01", x, s0, s1
                     else:
                            return "name_left_binary_slice_var0", x, s0, s1
              else:
                     try:
                            t = int(s1, 10)
                     except ValueError:
                            return "name_left_binary_slice_var1", x, s0, s1
                     else:
                            return "name_left_binary_slice", x, s0, s1

       def right_item_action(self, text): 
              i = text.find('[')

              x = text[0: i]
              x = x.replace(' ', '')
                     
              s0 = text[(i + 1): (len(text) - 1)]
              s0 = s0.replace(' ', '')

              try:
                     t = int(s0, 10)
              except ValueError:
                     return "name_right_item_var", x, s0
              else:
                     return "name_right_item", x, s0

       def left_item_action(self, text):
              self.begin('assign')
              i = text.find('[')
              k = text.find(']')

              x = text[0: i]
              x = x.replace(' ', '')
                     
              s0 = text[(i + 1): k]#(len(text) - 1)]
              s0 = s0.replace(' ', '')
              s0 = s0.replace(']', '')

              try:
                     t = int(s0, 10)
              except ValueError:
                     return "name_left_item_var", x, s0
              else:
                     return "name_left_item", x, s0

       def array_binary_item_action(self, text): 
              i = text.find('[')
              j = text.find(']')

              x = text[0: i]
              x = x.replace(' ', '')
                     
              s0 = text[(i + 1): j]
              s0 = s0.replace(' ', '')

              s1 = text[(j + 1): ]
              s1 = s1.replace('[', '')
              s1 = s1.replace(']', '')
              s1 = s1.replace(' ', '')

              try:
                     t = int(s0, 10)
              except ValueError:
                     try:
                            t = int(s1, 10)
                     except ValueError:
                            return "name_right_array_binary_item_var01", x, s0, s1
                     else:
                            return "name_right_array_binary_item_var0", x, s0, s1
              else:
                     try:
                            t = int(s1, 10)
                     except ValueError:
                            return "name_right_array_binary_item_var1", x, s0, s1
                     else:
                            return "name_right_array_binary_item", x, s0, s1

       def array_binary_slice_action(self, text): 
              i = text.find('[')
              j = text.find(']')

              x = text[0: i]
              x = x.replace(' ', '')
                     
              s0 = text[(i + 1): j]
              s0 = s0.replace(' ', '')

              text2 = text[(j + 1):]

              i = text2.find('[')
              j = text2.find(':')

              s1 = text2[(i + 1): j]
              s1 = s1.replace(' ', '')

              s2 = text2[(j + 1):]
              s2 = s2.replace(' ', '')
              s2 = s2.replace(']', '')

              try:
                     t = int(s0, 10)
              except ValueError:
                     try:
                            t = int(s1, 10)
                     except ValueError:
                            try:
                                   t = int(s2, 10)
                            except ValueError:
                                   return "name_right_array_binary_slice_var012", x, s0, s1, s2
                            else:
                                   return "name_right_array_binary_slice_var01", x, s0, s1, s2
                     else:
                            try:
                                   t = int(s2, 10)
                            except ValueError:
                                   return "name_right_array_binary_slice_var02", x, s0, s1, s2
                            else:
                                   return "name_right_array_binary_slice_var0", x, s0, s1, s2
                                   
              else:
                     try:
                            t = int(s1, 10)
                     except ValueError:
                            try:
                                   t = int(s2, 10)
                            except ValueError:
                                   return "name_right_array_binary_slice_var12", x, s0, s1, s2
                            else:
                                   return "name_right_array_binary_slice_var1", x, s0, s1, s2
                     else:
                            try:
                                   t = int(s2, 10)
                            except ValueError:
                                   return "name_right_array_binary_slice_var2", x, s0, s1, s2
                            else:
                                   return "name_right_array_binary_slice", x, s0, s1, s2

       def conv_integer_func_action(self, text):
              x = text
              x = x.replace("conv_integer", '')
              x = x.replace('(', '')
              x = x.replace(')', '')
              x = x.replace(' ', '')

              return "conv_integer", x

       def conv_std_logic_func_action(self, text):
              x = text
              x = x.replace("conv_std_logic", '')
              x = x.replace('(', '')
              x = x.replace(')', '')
              x = x.replace(' ', '')
              i = x.find(',')                                                                       
              s0 = x[0: (i - 0)]
              s1 = x[(i + 1):]
              
              return "conv_std_logic", s0, s1

       def func_stat_action(self, text):
              i = text.find('(')
              j = text.find(')')

              text_func = text[(i + 1):  j]
              comma_table = []
              gen_table1 = []
              gen_table2 = []
              for i in range(len(text_func)):
                     if (text_func[i] == ','):
                            comma_table.append(i)
                            gen_table1.append('')

              gen_table1.append('')

              # Multiple generic parameters
              if (len(comma_table) > 0):
                     for i in range(len(gen_table1)):
                            if (i == 0):
                                   gen_table1[i] = (text_func[: (comma_table[i])].replace(' ', ''))
                            elif (i == (len(gen_table1) - 1)):
                                   gen_table1[i] = (text_func[(comma_table[i - 1] + 1):].replace(' ', ''))
                            else:
                                   gen_table1[i] = (text_func[(comma_table[i - 1] + 1): comma_table[i]].replace(' ', ''))
                                 
              # Single generic parameter
              elif (len(comma_table) == 0):
                     gen_table1[0] = text_func

              i = text.find('_')
              j = text.find('(')

              text_name = text[(i + 1):j]
              return "func_def", text_name, gen_table1

#       def struct_port_map_action(self, text):
 #             self.begin("struct_port_map")
 #             return "struct_port_map"
      
       def eof(self):
              self.dedent_to(0)
              
       lexicon = Lexicon([
              (opening_bracket, open_bracket_action),
              (closing_bracket, close_bracket_action),
              (name, IGNORE),
              (name_left, assign_action),
              (name_left_binary_slice, left_binary_slice_action),
              (name_right_binary_slice, right_binary_slice_action),
              (name_right_item, right_item_action),
              (name_left_item, left_item_action),
              (name_right_array_binary_item, array_binary_item_action),
              (name_right_array_binary_slice, array_binary_slice_action),
              (for_loop_stat, for_loop_stat_action),
              (dataflow_if_stat, dataflow_if_stat_action),
              (dataflow_elif_stat, dataflow_elif_stat_action),
              (dataflow_else_stat, dataflow_else_stat_action),
              (process_stat, process_sens_list_action),
              (struct_stat, struct_def_action),
              (struct_stat_gen, struct_def_gen_action),
              (func_stat , func_stat_action),
              (sign_decl, IGNORE),
              (number, IGNORE),
              (lineterm, newline_action),
              (rising_edge_func, rising_edge_func_action),
              (others_func, others_func_action),
              (comment, IGNORE),
              (spaces, IGNORE),
              #(escaped_newline, IGNORE),
              (blank_line, "blank_line"),
              (AnyChar,   IGNORE),
              State('indent', [
                     (indentation,   indentation_action),
                     (comment,         IGNORE),
                     (lineterm, newline_action),
                     (blank_line,    "blank_line"),
              ]),
              State("indent_data_flow_if", [
                     (indentation,   indentation_dataflow_if_action),
                     (comment, IGNORE),
                     (lineterm, newline_action),
                     (blank_line, "blank_line"),
              ]),
              State("assign", [
                     (lineterm, newline_action),
                     #(lineterm, Begin('indent')),
                     (logic_oper, "logic_oper"),
                     (name_left, dataflow_if_comp_left_action),
                     (name_right, "name_right"),
                     (name_left_binary_slice, left_binary_slice_action),
                     (name_right_binary_slice, right_binary_slice_action),
                     (name_right_item, right_item_action),
                     (name_left_item, left_item_action),
                     (name_right_array_binary_item, array_binary_item_action),
                     (name_right_array_binary_slice, array_binary_slice_action),
                     (number, "const_integer"),
                     (binary_bit, "const_binary_bit"),
                     (binary_bits, "const_binary_bits"),
                     (open_key, "open_key"),
                     (shift_oper_left_sig, shift_oper_sig_action),
                     (shift_oper_right_sig, shift_oper_sig_action),
                     (shift_oper_left_bin, shift_oper_bin_action),
                     (shift_oper_right_bin, shift_oper_bin_action),
                     (arithm_oper, "arithm_oper"),
                     (conv_integer_func, conv_integer_func_action),
                     (others_func, others_func_action),
                     (conv_std_logic_func, conv_std_logic_func_action),
                     (func_stat , func_stat_action),
                     (spaces, IGNORE),
                     (comment, IGNORE),
                     (double_dot, IGNORE),
                     (lineterm, newline_action),
                     (opening_bracket, open_bracket_action),
                     (closing_bracket, close_bracket_action),
              ]),

              State("for_loop_stat", [
                     (lineterm, Begin('indent')),
                     (logic_oper, "logic_oper"),
                     (name_left, dataflow_if_comp_left_action),
                     (name_right, dataflow_if_comp_right_action),
                     (name_right_binary_slice, right_binary_slice_action),
                     (name_left_binary_slice, left_binary_slice_action),
                     (name_right_item, right_item_action),
                     (name_left_item, left_item_action),
                     (name_right_array_binary_item, array_binary_item_action),
                     (name_right_array_binary_slice, array_binary_slice_action),
                     (number, "const_integer"),
                     (binary_bit, "const_binary_bit"),
                     (binary_bits, "const_binary_bits"),
                     (shift_oper_left_sig, shift_oper_sig_action),
                     (shift_oper_right_sig, shift_oper_sig_action),
                     (shift_oper_left_bin, shift_oper_bin_action),
                     (shift_oper_right_bin, shift_oper_bin_action),
                     (arithm_oper, "arithm_oper"),
                     (comp_oper, "comp_oper"),
                     (rising_edge_func, rising_edge_func_action),
                     (others_func, others_func_action),
                     (func_stat , func_stat_action),
                     (opening_bracket, open_bracket_action),
                     (closing_bracket, close_bracket_action),
                     (double_dot, IGNORE),
                     (spaces, IGNORE),
                     (comment, IGNORE),
                     (blank_line, IGNORE),
                     (lineterm, newline_action),
              ]),

              State("dataflow_if_stat", [
                     (lineterm, Begin('indent')),
                     (logic_oper, "logic_oper"),
                     (name_left, dataflow_if_comp_left_action),
                     (name_right, dataflow_if_comp_right_action),
                     (name_right_binary_slice, right_binary_slice_action),
                     (name_left_binary_slice, left_binary_slice_action),
                     (name_right_item, right_item_action),
                     (name_left_item, left_item_action),
                     (name_right_array_binary_item, array_binary_item_action),
                     (name_right_array_binary_slice, array_binary_slice_action),
                     (number, "const_integer"),
                     (binary_bit, "const_binary_bit"),
                     (binary_bits, "const_binary_bits"),
                     (shift_oper_left_sig, shift_oper_sig_action),
                     (shift_oper_right_sig, shift_oper_sig_action),
                     (shift_oper_left_bin, shift_oper_bin_action),
                     (shift_oper_right_bin, shift_oper_bin_action),
                     (arithm_oper, "arithm_oper"),
                     (comp_oper, "comp_oper"),
                     (rising_edge_func, rising_edge_func_action),
                     (others_func, others_func_action),
                     (func_stat , func_stat_action),
                     (opening_bracket, open_bracket_action),
                     (closing_bracket, close_bracket_action),
                     (double_dot, IGNORE),
                     (spaces, IGNORE),
                     (comment, IGNORE),
                     (blank_line, IGNORE),
                     (lineterm, newline_action),
              ]),

              State("dataflow_elif_stat", [
                     (lineterm, Begin('indent')),
                     (logic_oper, "logic_oper"),
                     (name_left, dataflow_elif_comp_left_action),
                     (name_right, dataflow_elif_comp_right_action),
                     (name_right_binary_slice, right_binary_slice_action),
                     (name_left_binary_slice, left_binary_slice_action),
                     (name_right_item, right_item_action),
                     (name_left_item, left_item_action),
                     (name_right_array_binary_item, array_binary_item_action),
                     (name_right_array_binary_slice, array_binary_slice_action),
                     (number, "const_integer"),
                     (binary_bit, "const_binary_bit"),
                     (binary_bits, "const_binary_bits"),
                     (shift_oper_left_sig, shift_oper_sig_action),
                     (shift_oper_right_sig, shift_oper_sig_action),
                     (shift_oper_left_bin, shift_oper_bin_action),
                     (shift_oper_right_bin, shift_oper_bin_action),
                     (arithm_oper, "arithm_oper"),
                     (comp_oper, "comp_oper"),
                     (rising_edge_func, rising_edge_func_action),
                     (others_func, others_func_action),
                     (func_stat , func_stat_action),
                     (opening_bracket, open_bracket_action),
                     (closing_bracket, close_bracket_action),
                     (double_dot, IGNORE),
                     (spaces, IGNORE),
                     (comment, IGNORE),
                     (blank_line, IGNORE),
                     (lineterm, newline_action),

              ]),

              State("dataflow_else_stat", [
                     (lineterm, Begin('indent')),
                     (logic_oper, "logic_oper"),
                     (name_left, assign_action),
                     (name_right, "name_right"),
                     (name_right_binary_slice, right_binary_slice_action),
                     (name_left_binary_slice, left_binary_slice_action),
                     (name_right_item, right_item_action),
                     (name_left_item, left_item_action),
                     (name_right_array_binary_item, array_binary_item_action),
                     (name_right_array_binary_slice, array_binary_slice_action),
                     (number, "const_integer"),
                     (binary_bit, "const_binary_bit"),
                     (binary_bits, "const_binary_bits"),
                     (shift_oper_left_sig, shift_oper_sig_action),
                     (others_func, others_func_action),
                     (shift_oper_right_sig, shift_oper_sig_action),
                     (shift_oper_left_bin, shift_oper_bin_action),
                     (shift_oper_right_bin, shift_oper_bin_action),
                     (func_stat , func_stat_action),
                     (arithm_oper, "arithm_oper"),
                     (spaces, IGNORE),
                     (comment, IGNORE),
                     (blank_line, IGNORE),
                     (lineterm, newline_action),

              ]),

              State("process_sens_list", [
                     (lineterm, Begin('indent')),
                     (opening_bracket, open_bracket_action),
                     (closing_bracket, close_bracket_action),
                     (double_dot, IGNORE),
                     (comma, IGNORE),
                     (spaces, IGNORE),
                     (name, "name_sens_list"),
              ]),
              State("struct_def", [
                     (lineterm, Begin('indent')),
                     (opening_bracket, IGNORE),
                     (closing_bracket, IGNORE),
                     (double_dot, IGNORE),
                     (spaces, IGNORE),
                     (name, "struct_name_declaration"),
              ]),
              State("struct_def_gen", [
                     (lineterm, Begin('indent')),
                     (opening_bracket, IGNORE),
                     (closing_bracket, IGNORE),
                     (double_dot, IGNORE),
                     (spaces, IGNORE),
              ]),
              
       

 #             State("struct_port_map", [
 #                    (lineterm, Begin('indent')),
 #                    (port_map_assign, "port_map_assign"),
 #             ]),            
       ])


       def __init__(self, filename, name):
              Scanner.__init__(self, self.lexicon, filename, name)
              self.indentation_stack = [0]
              self.bracket_nesting_level = 0
              self.begin('indent')
