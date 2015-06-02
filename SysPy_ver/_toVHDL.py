"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    toVHDL.py

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

  Main function in SysPy called to generate RTL descriptions in VHDL.

"""

# Python's import declerations
#----------------------------------------------------------------------------------------------------------------------------------
import sys
import ConfigParser
sys.path.append(sys.path[0] + '/SysPy_ver/libs')
sys.path.append(sys.path[0] + '/SysPy_ver/funcs')
#print sys.path

import funcs._entity_header
reload(funcs._entity_header)
import funcs._lex_scanner
reload(funcs. _lex_scanner)
import funcs._signal_declaration_check
reload(funcs._signal_declaration_check)
import funcs._dataflow_signal_check
reload(funcs._dataflow_signal_check)
import funcs._dataflow_oper_check
reload(funcs._dataflow_oper_check)
import funcs._struct_comp_check
reload(funcs._struct_comp_check)
import funcs._func_check
reload(funcs._func_check)
import funcs._struct_comp_declaration
reload(funcs._struct_comp_declaration)
import funcs._port_map_assignment_check
reload(funcs._port_map_assignment_check)
import funcs._port_map_left_signals_check
reload(funcs._port_map_left_signals_check)
import funcs._signal_compatibility
reload(funcs._signal_compatibility)
import funcs._fp_uns_to_bin
reload(funcs._fp_uns_to_bin)
import funcs._fp_sign_to_bin
reload(funcs._fp_sign_to_bin)
import funcs._var_declaration
reload(funcs._var_declaration)
import funcs._generic_signals
reload(funcs._generic_signals)
import funcs._MyExceptions
reload(funcs._MyExceptions)
import funcs._SysPyWarnings
reload(funcs._SysPyWarnings)
import funcs._gen_SysPy_fold
reload(funcs._gen_SysPy_fold)
import funcs._hex2PM
reload(funcs._hex2PM)
import funcs._leon3_sw
reload(funcs._leon3_sw)
import funcs._leon3_sw_os
reload(funcs._leon3_sw_os)
import funcs._leon3_config
reload(funcs._leon3_config)
import funcs._gen_ISE_script
reload(funcs._gen_ISE_script)
import funcs._beh_sim
reload(funcs._beh_sim)
import funcs._IPXACTGenerator
reload(funcs._IPXACTGenerator)

from pdb import *
import warnings, sys
import commands
#----------------------------------------------------------------------------------------------------------------------------------

def toVHDL(func, attributes, generics, *args):
       """
       FUNCTION: toVHDL(a str, b{})
              a: name of the callee function (args_gen = argsdesign function)
              b: dictionary containing design's attributes
              c: I/O and internal signals + code of the design function (as a list)
              
       - Conversion of a design from Python to VHDL description.
       """
       
       print("Started SysPy design tool.\n\nGenerating design files...\n\n")

# Define default values for missing attributes
#----------------------------------------------------------------------------------------------------------------------------------
       attributes_keys = attributes.keys()

       simulation_attr_flag = 0
       for i in range(len(attributes_keys)):
              if (attributes_keys[i] == "simulation"):
                     simulation_attr_flag = 1  

#----------------------------------------------------------------------------------------------------------------------------------  

# Reading values from the configuration file
#----------------------------------------------------------------------------------------------------------------------------------                          
       config_file_path = "./SysPy.ini"
       try:
              configFile = open(config_file_path, 'r')
       except IOError:
              raise funcs._MyExceptions.MyExceptions("File :\"" +  func + ".py\": \"SysPy.ini\" configuration file not found.")
       else:
              Config = ConfigParser.ConfigParser()
              Config.read(config_file_path)
              config_sections = Config.sections()
              config_options = {}
              for i in config_sections:
                     options = Config.options(i)
                     for j in options:
                            config_options[j] = Config.get(i, j)
              configFile.close()

#---------------------------------------------------------------------------------------------------------------------------------- 

# Python's variable declarations
#----------------------------------------------------------------------------------------------------------------------------------


       commands.getoutput('mkdir ' + config_options["work_dir"] + '/SysPy')
       commands.getoutput('mkdir ' + config_options["work_dir"] + '/SysPy/work')

       #fpath = func + ".txt"
       fpath = config_options["work_dir"] + "/SysPy/work/" + func + ".vhd"

       if (simulation_attr_flag == 0):
              vhdFile = open(fpath, 'w')
       elif (simulation_attr_flag == 1):
              vhdFile = ''
       
#----------------------------------------------------------------------------------------------------------------------------------
        
# libraries statement and entity decleration of the *.vhd. Storing all the declared signals in
# the appropriate lists
#----------------------------------------------------------------------------------------------------------------------------------   
       entity_header_obj = funcs._entity_header.entity_header(func, vhdFile, args, attributes, generics, simulation_attr_flag, config_options)
       
       signals_i = entity_header_obj.next()
       signals_o = entity_header_obj.next()
       signals_io = entity_header_obj.next()
       signals_intr = entity_header_obj.next()
       signals = entity_header_obj.next()
       
       args_gen = funcs._generic_signals.generic_signals(args, generics, func)
       
       funcs._signal_declaration_check.signal_declaration_check(args_gen, func)
       
       arithm_oper_supp = ['=', '+', '-', '*', "<<", ">>"]
       logic_oper_supp = ["and", "or", "xor", '~', '&']
       comp_oper_supp = ['<', '>', "!="]
       assign_lines = []
       port_map_lines = []
       dataflow_if_stat = []
       dataflow_elif_stat = []
       dataflow_else_stat = []
       beh_if_stat = []
       beh_elif_stat = []
       beh_else_stat = []
       for_loop_indentation_level = []
       beh_if_indentation_level = []
       beh_elif_indentation_level = []
       beh_else_indentation_level = []
       CompLib = ''
       comp_signals = []
       comp_variables = []
       func_variables = []
       used_components = []
       port_map_assignment_signals = []
       comp_left_signals = []
       process_vars = []
       comp_name = ''
       left_signal = ''
       arithm_oper = ''
       right_signal = []
       generic_comp_val = ''
       generic_comp = ''
       fir_filt_param = []
       fir_filt_param_bin = ''
       sp = ''                                    
       proc_name_list = ["top_avr_core_v8", "leon3mp"]
       proc_os_name_dict = {"leon3mp": ["snapgear"], "top_avr_core_v8":[]}
       proc_sw_dict = {}
       proc_os_dict = {}
       comp_names = []
       top_entities_file = ''
       top_entity_name = ''
#----------------------------------------------------------------------------------------------------------------------------------

# creating a scanner object to trace all the signals in data flow assignments
#----------------------------------------------------------------------------------------------------------------------------------

       print("signals_i:", signals_i)
       print(args[len(args) - 1])
       filename = func + ".py"
       f = open(filename, "r")
       
       ## Appending the top entity name to comp_name[], for the creation of the ISE tcl script
       comp_names.append(func)
       scanner = funcs._lex_scanner.LexScanner(f, filename)
       
       ## Appending the top entity name to "topp_entities.txt" file. The first entry is the top module name
       top_entities_file = open(config_options["syspy_dir"] + "top_entities.txt", 'a')
       top_entities_file.write(func + "\n")
       top_entities_file.close()

       indentation_level = 0
       flag_func_indent = 0
       flag_dataflow_if_stat = 0
       flag_dataflow_if_body = 0
       flag_dataflow_elif_stat = 0
       flag_dataflow_else_stat = 0
       flag_process_sens_list = 0
       flag_process_body = 0
       flag_beh_if_stat = 0
       flag_beh_if_body_nest_count = 0
       flag_beh_elif_stat = 0
       flag_beh_elif_body_nest_count = 0
       flag_beh_else_stat = 0
       flag_beh_else_body_nest_count = 0
       flag_for_loop_stat = 0
       flag_for_loop_nest_count = 0
       assign_lines_count = -1
       port_map_lines_count = -1
       process_indentation_level = 0
       dataflow_if_stat_lines_count = -1
       dataflow_elif_stat_lines_count = -1
       dataflow_else_stat_lines_count = -1
       beh_if_stat_lines_count = -1
       beh_elif_stat_lines_count = -1
       beh_else_stat_lines_count = -1
       used_components_flag = 0
       flag_struct = 0
       flag_mkdir = 0
       comp_count = -1
       count_custom_comp = 0
       lines_count = 0
       proc_core_count = 0
       
       if (simulation_attr_flag == 0):
              while 1:
                     token = scanner.read()
                     pos = scanner.position()
                     print(token, pos)

                     ## trace the starting line of the design function
                     if ((flag_func_indent == 0) and (token[0] == "INDENT")):
                            flag_func_indent = 1
                            func_start_line = pos[1]
                            func_indentation_level = token[1]
                            indentation_level = token[1]

                     ## track the identation level
                     if ((flag_func_indent == 1) and  (indentation_level >= func_indentation_level)):
                            if (token[0] == "newline"):
                                   funcs._signal_compatibility.signal_compatibility(left_signal, right_signal, signals, arithm_oper, func)
                                   right_signal = []                            

                            elif (token[0] == "INDENT"):
                                   indentation_level = token[1]

                                   if (flag_process_sens_list == 1):
                                          flag_process_sens_list = 0
                                          flag_process_body = 1
                                          process_vars = []
                                          print("flag_process_body:", flag_process_body)

                                          i = len(assign_lines[assign_lines_count][1])
                                          
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1][:i - 3] + assign_lines[assign_lines_count][1][i - 3].replace(assign_lines[assign_lines_count][1][i - 3], ')') + " begin"

                                   if (flag_beh_if_stat == 1):
                                          flag_beh_if_body_nest_count += 1
                                          print("flag_beh_if_body:", flag_beh_if_body_nest_count)
                                          flag_beh_if_stat = 0
                                          t = "if " + beh_if_stat[0][1] + " then\n"
                                          assign_lines_count += 1
                                          assign_lines.append(["beh_if_stat", t, beh_if_stat[0][2], beh_if_stat[0][3], beh_if_stat[0][4]])

                                   if (flag_beh_elif_stat == 1):
                                          flag_beh_elif_body_nest_count += 1
                                          print("flag_beh_elif_body:", flag_beh_elif_body_nest_count)
                                          flag_beh_elif_stat = 0
                                          t = "elsif " + beh_elif_stat[0][1] + " then\n"
                                          assign_lines_count += 1
                                          assign_lines.append(["beh_elif_stat", t, beh_elif_stat[0][2], beh_elif_stat[0][3], beh_elif_stat[0][4]])

                                   if (flag_beh_else_stat == 1):
                                          flag_beh_else_body_nest_count += 1
                                          print("flag_beh_else_body:", flag_beh_else_body_nest_count)
                                          flag_beh_else_stat = 0
                                          t = "else \n"
                                          assign_lines_count += 1
                                          assign_lines.append(["beh_else_stat", t, beh_else_stat[0][2], beh_else_stat[0][3], beh_else_stat[0][4]])

                                   if (flag_for_loop_stat == 1):
                                          flag_for_loop_nest_count += 1
                                          flag_for_loop_stat = 0
                                   
                            elif (token[0] == "DEDENT"):
                                   indentation_level = token[1]

                                   if (flag_dataflow_if_stat == 1):
                                          flag_dataflow_if_stat = 0
                                          t = dataflow_if_stat[1][1] + " when " + dataflow_if_stat[0][1] 
                                          assign_lines_count += 1
                                          assign_lines.append(["dataflow_if_stat", t, dataflow_if_stat[0][2], dataflow_if_stat[0][3], dataflow_if_stat[0][4]])
                                   elif (flag_dataflow_elif_stat == 1):
                                          flag_dataflow_elif_stat = 0
                                          print("flag_dataflow_elif_stat = 0")
                                          t = dataflow_elif_stat[1][1] + " when " + dataflow_elif_stat[0][1]
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + " else"
                                          assign_lines_count += 1
                                          assign_lines.append(["dataflow_elif_stat", t, dataflow_elif_stat[0][2], dataflow_elif_stat[0][3], dataflow_elif_stat[0][4]])
                                          i = assign_lines[assign_lines_count][1].find('=')
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1].replace(assign_lines[assign_lines_count][1][:i + 1], '')
                                   elif (flag_dataflow_else_stat == 1):
                                          flag_dataflow_else_stat = 0
                                          print("flag_dataflow_else_stat = 0")
                                          t = dataflow_else_stat[1][1]
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + " else"
                                          assign_lines_count += 1
                                          assign_lines.append(["dataflow_else_stat", t, dataflow_else_stat[0][2], dataflow_else_stat[0][3], dataflow_else_stat[0][4]])
                                          i = assign_lines[assign_lines_count][1].find('=')
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1].replace(assign_lines[assign_lines_count][1][:i + 1], '')
                                   elif (flag_process_body == 1):
                                          if (indentation_level == process_indentation_level):
                                                 flag_process_body = 0
                                                 funcs._var_declaration.var_declaration(assign_lines_count, token_struct, assign_lines, signals, process_vars)
                                                 assign_lines_count += 1
                                                 assign_lines.append(["end_process", "end process", pos[1], pos[2], indentation_level])
                                   if (flag_for_loop_nest_count > 0):
                                          l = for_loop_indentation_level.pop()
                                          if (indentation_level == l):
                                                 flag_for_loop_nest_count -= 1
                                                 signals.pop()
                                                 assign_lines_count += 1
                                                 assign_lines.append(["end_for_loop", "end loop", pos[1], pos[2], indentation_level])
                                          else:
                                                 for_loop_indentation_level.append(l)
                                   if (flag_beh_if_body_nest_count > 0):
                                          l = beh_if_indentation_level.pop()
                                          if (indentation_level == l): 
                                                 flag_beh_if_body_nest_count -= 1
                                                 print("flag_beh_if_body:", flag_beh_if_body_nest_count)
                                                 assign_lines_count += 1
                                                 assign_lines.append(["end_if", "end if", pos[1], pos[2], indentation_level])                                               
                                          else:
                                               beh_if_indentation_level.append(l)  
                                   if (flag_beh_elif_body_nest_count > 0):
                                          l = beh_elif_indentation_level.pop()
                                          if ((indentation_level == l)):
                                                 # erasing the previous "end if" statement
                                                 i = len(assign_lines) - 1
                                                 while 1:
                                                        if ((assign_lines[i][0] == "end_if") and (assign_lines[i][4] == indentation_level)):
                                                               assign_lines[i][0] = "blank_line"
                                                               assign_lines[i][1] = ""
                                                               assign_lines[i][4] = 0
                                                               break
                                                        elif (i == 0):
                                                               break
                                                        i = i - 1
                                                 flag_beh_elif_body_nest_count -= 1
                                                 print("flag_beh_elif_body:", flag_beh_elif_body_nest_count)
                                                 assign_lines_count += 1
                                                 assign_lines.append(["end_if", "end if", pos[1], pos[2], indentation_level])
                                          else:
                                               beh_elif_indentation_level.append(l)  
                                   if (flag_beh_else_body_nest_count > 0):
                                          l = beh_else_indentation_level.pop()
                                          if (indentation_level == l):
                                                 # erasing the previous "end if" statement
                                                 i = len(assign_lines) - 1
                                                 while 1:
                                                        #elegxw kai indentation level gia na dhmiorgw kai tis nested domes
                                                        if ((assign_lines[i][0] == "end_if") and (assign_lines[i][4] == indentation_level)):
                                                               assign_lines[i][0] = "blank_line"
                                                               assign_lines[i][1] = ""
                                                               assign_lines[i][4] = 0
                                                               break
                                                        elif (i == 0):
                                                               break
                                                        i = i - 1
                                                 flag_beh_else_body_nest_count -= 1
                                                 print("flag_beh_else_body:", flag_beh_elif_body_nest_count)
                                                 assign_lines_count += 1
                                                 assign_lines.append(["end_if", "end if", pos[1], pos[2], indentation_level])
                                          else:
                                               beh_else_indentation_level.append(l)
                                   if (flag_struct == 1):
                                          flag_struct = 0
                                          print("comp_left_signals:", comp_left_signals)
                                          if (comp_variables != False):
                                                 funcs._port_map_left_signals_check.port_map_left_signals_check(comp_left_signals, comp_signals, func, comp_name)

                                          #lines_count = assign_lines_count
                                          lines_count = port_map_lines_count
                                          #while(assign_lines[lines_count][0] != "port_map_assignment"):
                                                 #lines_count = lines_count - 1
                                          
                                          #while(assign_lines[lines_count][0] != "port_map_assignment"):
                                          while(port_map_lines[lines_count][0] != "port_map_assignment"):
                                                 lines_count = lines_count - 1

                                          
                                          #print("assign_lines:",  assign_lines[lines_count][1])
                                          #assign_lines[lines_count][1] = assign_lines[lines_count][1].replace(',', ");\n")
                                          port_map_lines[lines_count][1] = port_map_lines[lines_count][1].replace(',', ");\n")
                   
                            elif (token[0] == "opening_bracket"):
                                   if (flag_dataflow_if_stat == 1):
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_elif_stat == 1):
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[1]
                                   elif (flag_beh_if_stat == 1):
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[1]
                                   elif (flag_beh_elif_stat == 1):
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[1]
                                   else:
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1]
                                                
                            elif (token[0] == "closing_bracket"):
                                   if (flag_dataflow_if_stat == 1):
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_elif_stat == 1):
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[1]
                                   elif (flag_beh_if_stat == 1):
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[1]
                                   elif (flag_beh_elif_stat == 1):
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[1]
                                   else:
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1]
                                   
                            elif (token[0] == "name_left"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   left_signal = token_struct
                                   

                                   ## variable tracking
                                   ##-----------------------------------------------------------
                                   t = token[1].replace('=', '')
                                   t = t.replace(' ', '')
                                   v_flag = 0
                                   for i in range (0, len(signals)):
                                          if (t == signals[i]['N']):
                                                 if (signals[i]['D'] == 'v'):
                                                        v_flag = 1
                                                        if (flag_process_body == 1):
                                                               process_vars.append(token_struct)
                                                        elif (flag_process_body == 0):
                                                               raise funcs._MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Variable \"" + signals[i]['N'] + "\" must be assigned only inside a process.")
                                   ##-----------------------------------------------------------

                                   ## tracking the line position of dataflow assignments
                                   if (token[1].find('=') != -1):
                                          if (flag_dataflow_if_stat == 1):
                                                 funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                                 dataflow_if_stat_lines_count += 1
                                                 t = token[1].replace(' ','')
                                                 t = token[1].replace('=', " <= ")
                                                 dataflow_if_stat.append(["dataflow_assignment", t, pos[1], pos[2], indentation_level])
                                          elif (flag_dataflow_elif_stat == 1):
                                                 funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                                 dataflow_elif_stat_lines_count += 1
                                                 t = token[1].replace(' ','')
                                                 t = token[1].replace('=', " <= ")
                                                 dataflow_elif_stat.append(["dataflow_assignment", t, pos[1], pos[2], indentation_level])
                                          elif (flag_dataflow_else_stat == 1):
                                                 funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                                 dataflow_else_stat_lines_count += 1
                                                 t = token[1].replace(' ','')                            
                                                 t = token[1].replace('=', " <= ")
                                                 dataflow_else_stat.append(["dataflow_assignment", t, pos[1], pos[2], indentation_level])
                                          elif (flag_beh_if_body_nest_count > 0):
                                                 funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                                 assign_lines_count += 1
                                                 t = token[1].replace(' ','')
                                                 if (v_flag == 0):
                                                        t = token[1].replace('=', " <= ")
                                                 elif (v_flag == 1):
                                                        t = token[1].replace('=', " := ")
                                                 assign_lines.append(["beh_assignment", t, pos[1], pos[2], indentation_level])
                                          elif (flag_beh_elif_body_nest_count > 0):
                                                 funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                                 assign_lines_count += 1
                                                 t = token[1].replace(' ','')
                                                 if (v_flag == 0):
                                                       t = token[1].replace('=', " <= ")
                                                 elif (v_flag == 1):
                                                        t = token[1].replace('=', " := ")
                                                 assign_lines.append(["beh_assignment", t, pos[1], pos[2], indentation_level])
                                          elif (flag_struct == 1):
                                                 #assign_lines_count += 1
                                                 port_map_lines_count += 1
                                                 t = token[1].replace(' ','')
                                                 t = token[1].replace('=', " => ")
                                                 port_map_assignment_signals = []
                                                 port_map_assignment_signals.append(token_struct)
                                                 comp_left_signals.append(token_struct)
                                                 #assign_lines.append(["port_map_assignment", t, pos[1], pos[2], indentation_level])
                                                 port_map_lines.append(["port_map_assignment", t, pos[1], pos[2], indentation_level])
                                          else:
                                                 funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                                 assign_lines_count += 1
                                                 t = token[1].replace(' ','')
                                                 t = token[1].replace('=', " <= ")
                                                 assign_lines.append(["dataflow_assignment", t, pos[1], pos[2], indentation_level])
                                
                            elif (token[0] == "name_right"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)

                                   ## variable tracking
                                   ##-----------------------------------------------------------
                                   t = token[1].replace('=', '')
                                   t = t.replace(' ', '')
                                   for i in range (0, len(signals)):
                                          if (t == signals[i]['N']):
                                                 if (signals[i]['D'] == 'v'):
                                                        if (flag_process_body == 1):
                                                               process_vars.append(token_struct)
                                                        elif (flag_process_body == 0):
                                                               raise funcs._MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Variable \"" + signals[i]['N'] + "\" must be assigned only inside a process.")
                                   ##-----------------------------------------------------------

                                   if (flag_dataflow_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_sport_map_lines.appendignal, token_struct, signals, func)
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)                                   
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_else_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[1]
                                   elif (flag_beh_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[1]
                                   elif (flag_beh_if_body_nest_count > 0):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1]
                                   elif (flag_beh_elif_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[1]
                                   elif (flag_struct == 1):
                                          port_map_assignment_signals.append(token_struct)
                                          #if (comp_variables != False):dataflow_signal_check
                                            #     funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name, generic_comp, generic_comp_val)
                                          #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1] + ",\n"
                                          port_map_lines[port_map_lines_count][1] = port_map_lines[port_map_lines_count][1] + token[1] + ",\n"
                                   else:
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1]
                                          
                            elif ((token[0][0] == "name_left_binary_slice")):
                                   token_struct = (token[0][0], [token[0][1], token[0][2], token[0][3]], pos[1], pos[2], indentation_level)
                                   left_signal = token_struct
                                   #funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   if (int(token[0][2]) < int(token[0][3])):
                                          t =  token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ") <= "
                                   elif (int(token[0][2]) > int(token[0][3])):
                                          t =  token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ") <= "

                                   assign_lines_count += 1
                                   assign_lines.append(["dataflow_assignment", t, pos[1], pos[2], indentation_level])
                                   #funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   #right_signal.append(token_struct)
                                   #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                   #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                   
                            elif ((token[0][0] == "name_right_binary_slice") or (token[0][0] == "name_right_binary_slice_var0") or (token[0][0] == "name_right_binary_slice_var1") or (token[0][0] == "name_right_binary_slice_var01")):
                                   token_struct = (token[0][0], [token[0][1], token[0][2], token[0][3]], pos[1], pos[2], indentation_level)
                                   print("slice_token_struct:", token_struct)

                                   ## variable tracking
                                   ##-----------------------------------------------------------
                                   n = token_struct[1][0]
                                   var0 = token_struct[1][1]
                                   var1 =  token_struct[1][2]
                                   for i in range (0, len(signals)):
                                          if ((n == signals[i]['N']) or (str(var0) == signals[i]['N']) or (str(var1) == signals[i]['N'])):
                                                 if (signals[i]['D'] == 'v'):
                                                        if (flag_process_body == 1):
                                                               process_vars.append(token_struct)
                                                        elif (flag_process_body == 0):
                                                               raise funcs._MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Variable \"" + signals[i]['N'] + "\" must be used only inside a process.")
                                   ##-----------------------------------------------------------

                                   if (flag_dataflow_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          if (token[0][0] == "name_right_binary_slice"):
                                                 if (int(token[0][2]) < int(token[0][3])):
                                                        dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                 elif (int(token[0][2]) > int(token[0][3])):
                                                        dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ') = '
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if ( token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][0] < signals[i]['L'][1]):
                                                                      dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                               elif (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                      dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'             
                                   elif (flag_dataflow_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          if (token[0][0] == "name_right_binary_slice"):
                                                 if (int(token[0][2]) < int(token[0][3])):
                                                        dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                 elif (int(token[0][2]) > int(token[0][3])):
                                                        dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][0] < signals[i]['L'][1]):
                                                                      dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                               elif (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                      dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'
                                   elif (flag_dataflow_else_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          if (token[0][0] == "name_right_binary_slice"):
                                                 if (int(token[0][2]) < int(token[0][3])):
                                                        dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                 elif (int(token[0][2]) > int(token[0][3])):
                                                        dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'

                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][0] < signals[i]['L'][1]):
                                                                      dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                               elif (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                      dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'

                                   elif (flag_beh_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          if (token[0][0] == "name_right_binary_slice"):
                                                 if (int(token[0][2]) < int(token[0][3])):
                                                        beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                 elif (int(token[0][2]) > int(token[0][3])):
                                                        beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][0] < signals[i]['L'][1]):
                                                                      beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                               elif (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                      beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'
                                   elif (flag_beh_if_body_nest_count > 0):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          if (token[0][0] == "name_right_binary_slice"):
                                                 if (int(token[0][2]) < int(token[0][3])):
                                                        assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                 elif (int(token[0][2]) > int(token[0][3])):
                                                        assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][0] < signals[i]['L'][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                               elif (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'
                                   elif (flag_beh_elif_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          if (token[0][0] == "name_right_binary_slice"):
                                                 if (int(token[0][2]) < int(token[0][3])):
                                                        beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                 elif (int(token[0][2]) > int(token[0][3])):
                                                        beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][0] < signals[i]['L'][1]):
                                                                      beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                               elif (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                      beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'
                                   elif (flag_struct == 1):
                                          port_map_assignment_signals.append(token_struct)
                                          #right_signal.append(token_struct)
                                         # if (comp_variables != False):
                                           #      funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name, generic_comp, generic_comp_val)
                                          if (token[0][0] == "name_right_binary_slice"):
                                                 if (int(token[0][2]) < int(token[0][3])):
                                                        #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + "),\n"
                                                        port_map_lines[port_map_lines_count][1] = port_map_lines[port_map_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + "),\n"
                                                 elif (int(token[0][2]) > int(token[0][3])):
                                                        #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + "),\n"
                                                        port_map_lines[port_map_lines_count][1] = port_map_lines[port_map_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + "),\n"
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][0] < signals[i]['L'][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + "),\n"
                                                               elif (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + "),\n"
                                   else:
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          if (token[0][0] == "name_right_binary_slice"):
                                                 if (int(token[0][2]) < int(token[0][3])):
                                                        assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                 elif (int(token[0][2]) > int(token[0][3])):
                                                        assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][0] < signals[i]['L'][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " to " + token[0][3] + ')'
                                                               elif (signals[i]['L'][0] > signals[i]['L'][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + " downto " + token[0][3] + ')'

                            elif ((token[0][0] == "name_right_item") or (token[0][0] == "name_right_item_var")):
                                   token_struct = (token[0][0], [token[0][1], token[0][2]], pos[1], pos[2], indentation_level)

                                   ## variable tracking
                                   ##-----------------------------------------------------------
                                   n = token_struct[1][0]
                                   var0 = token_struct[1][1]
                                   for i in range (0, len(signals)):
                                          if ((n == signals[i]['N']) or (str(var0) == signals[i]['N'])):
                                                 if (signals[i]['D'] == 'v'):
                                                        if (flag_process_body == 1):
                                                               process_vars.append(token_struct)
                                                        elif (flag_process_body == 0):
                                                               raise funcs._MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Variable \"" + signals[i]['N'] + "\" must be used only inside a process.")
                                   ##-----------------------------------------------------------
                                   if (flag_dataflow_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signleft_signal = token_structal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'

                                   elif (flag_dataflow_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                   elif (flag_dataflow_else_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                   elif (flag_beh_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                   elif (flag_beh_if_body_nest_count > 0):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                   elif (flag_beh_elif_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                   elif (flag_struct == 1):
                                          port_map_assignment_signals.append(token_struct)
                                          #right_signal.append(token_struct)
                                          #funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name, generic_comp, generic_comp_val)
                                          #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + "),\n"
                                          port_map_lines[port_map_lines_count][1] = port_map_lines[port_map_lines_count][1] + token[0][1] + '(' + token[0][2] + "),\n"
                                   else:
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'

                            elif ((token[0][0] == "name_left_item") or (token[0][0] == "name_left_item_var")):
                                   token_struct = (token[0][0], [token[0][1], token[0][2]], pos[1], pos[2], indentation_level)
                                   left_signal = token_struct

                                   ## variable tracking
                                   ##-----------------------------------------------------------
                                   n = token_struct[1][0]
                                   var0 = token_struct[1][1]
                                   for i in range (0, len(signals)):
                                          if ((n == signals[i]['N']) or (str(var0) == signals[i]['N'])):
                                                 if (signals[i]['D'] == 'v'):
                                                        if (flag_process_body == 1):
                                                               process_vars.append(token_struct)
                                                        elif (flag_process_body == 0):
                                                               raise funcs._MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Variable \"" + signals[i]['N'] + "\" must be used only inside a process.")
                                   ##-----------------------------------------------------------

                                   if (flag_dataflow_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          #right_signal.append(token_struct)
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ') = ' 

                                   elif (flag_dataflow_elif_stat == 1):
                                          #right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, tokenfuncs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                   elif (flag_dataflow_else_stat == 1):
                                          #right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                   elif (flag_beh_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          #right_signal.append(token_struct)
                                          #dataflow_if_stat_lines_count += 1
                                          t = token[1].replace(' ','')
                                          
                                          if (t.find("==") != -1):
                                                 t = t.replace("==", ' = ')
                                          elif (t.find("!=") != -1):
                                                  t = t.replace("!=", "  /= ")
                                          elif (t.find(">=") != -1):
                                                  t = t.replace(">=", " >= ")
                                          elif (t.find("<=") != -1):
                                                  t = t.replace("<=", " <= ")
                                          elif (t.find('>') != -1):
                                                  t = t.replace('>', ' > ')
                                          elif (t.find('<') != -1):
                                                  t = t.replace('<', ' < ')

                                          t = t.replace('[', '(')
                                          t = t.replace(']', ')')

                                          #dataflow_if_stat.append(["beh_assignment", t, pos[1], pos[2], indentation_level])
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + t#oken[0][1] + '(' + token[0][2] + ')'
                                   elif (flag_beh_if_body_nest_count > 0):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          #right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          #beh_if_stat_lines_count += 1
                                          #t = token[1].replace(' ','')
                                          #t = token[1].replace('=', " <= ")
                                          #beh_if_stat.append(["beh_assignment", t, pos[1], pos[2], indentation_level])
                                          assign_lines_count += 1
                                          #t = token[1].replace(' ','')
                                          #t = token[1].replace('=', " <= ")
                                          t =  token[0][1] + '(' + token[0][2] + ") <= "
                                          assign_lines.append(["beh_assignment", t, pos[1], pos[2], indentation_level])
                                          #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                          #assign_lines.append(token[0][1] + '(' + token[0][2] + ')')funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   elif (flag_beh_elif_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          #right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                   elif (flag_beh_elif_body_nest_count > 0):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          #right_signal.append(token_struct)name_right_binary_slice
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          #beh_if_stat_lines_count += 1
                                          #t = token[1].replace(' ','')
                                          #t = token[1].replace('=', " <= ")
                                          #beh_if_stat.append(["beh_assignment", t, pos[1], pos[2], indentation_level])
                                          assign_lines_count += 1
                                          #t = token[1].replace(' ','')
                                          #t = token[1].replace('=', " <= ")
                                          t =  token[0][1] + '(' + token[0][2] + ") <= "
                                          assign_lines.append(["beh_assignment", t, pos[1], pos[2], indentation_level])
                                          #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'
                                          #assign_lines.append(token[0][1] + '(' + token[0][2] + ')')
                                   elif (flag_struct == 1):
                                          port_map_assignment_signals.append(token_struct)
                                          #right_signal.append(token_struct)
                                          #funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name, generic_comp, generic_comp_val)
                                          #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + "),\n"
                                          #port_map_lines[port_map_lines_count][1] = port_map_lines[port_map_lines_count][1] + token[0][1] + '(' + token[0][2] + "),\n"
                                          port_map_lines_count += 1
                                          t = token[1].replace(' ','')
                                          t = token[1].replace('=', " => ")
                                          port_map_assignment_signals = []
                                          #port_map_assignment_signals.append(token_struct)
                                          #comp_left_signals.append(token_struct)
                                          t = token[0][1] + '(' + token[0][2] + ") => "
                                          port_map_lines.append(["port_map_assignment", t, pos[1], pos[2], indentation_level])
                                   else:
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          #right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          t =  token[0][1] + '(' + token[0][2] + ") <= "
                                          assign_lines_count += 1
                                          assign_lines.append(["beh_assignment", t, pos[1], pos[2], indentation_level])
                                          #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ')'

                            elif ((token[0][0] == "name_right_array_binary_item") or (token[0][0] == "name_right_array_binary_item_var0") or (token[0][0] == "name_right_array_binary_item_var1") or (token[0][0] == "name_right_array_binary_item_var01")):
                                   token_struct = (token[0][0], [token[0][1], token[0][2], token[0][3]], pos[1], pos[2], indentation_level)

                                   ## variable tracking
                                   ##-----------------------------------------------------------
                                   n = token_struct[1][0]
                                   var0 = token_struct[1][1]
                                   var1 =  token_struct[1][2]
                                   for i in range (0, len(signals)):
                                          if ((n == signals[i]['N']) or (str(var0) == signals[i]['N']) or (str(var1) == signals[i]['N'])):
                                                 if (signals[i]['D'] == 'v'):
                                                        if (flag_process_body == 1):
                                                               process_vars.append(token_struct)
                                                        elif (flag_process_body == 0):
                                                               raise funcs._MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Variable \"" + signals[i]['N'] + "\" must be used only inside a process.")
                                   ##-----------------------------------------------------------

                                   if (flag_dataflow_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + ')'

                                   elif (flag_dataflow_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + ')'
                                   elif (flag_dataflow_else_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + ')'
                                   elif (flag_beh_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + ')'
                                   elif (flag_beh_if_body_nest_count > 0):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + ')'
                                   elif (flag_beh_elif_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + ')'
                                   elif (flag_struct == 1):
                                          port_map_assignment_signals.append(token_struct)
                                          #right_signal.append(token_struct)
                                          funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name)
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + "),\n"
                                   else:
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + ')'

                            elif ((token[0][0] == "name_right_array_binary_slice") or (token[0][0] == "name_right_array_binary_slice_var0") or (token[0][0] == "name_right_array_binary_slice_var1") or (token[0][0] == "name_right_array_binary_slice_var2") or (token[0][0] == "name_right_array_binary_slice_var01") or (token[0][0] == "name_right_array_binary_slice_var02") or (token[0][0] == "name_right_array_binary_slice_var12") or (token[0][0] == "name_right_array_binary_slice_var012")):
                                   token_struct = (token[0][0], [token[0][1], token[0][2], token[0][3], token[0][4]], pos[1], pos[2], indentation_level)

                                   ## variable tracking
                                   ##-----------------------------------------------------------
                                   n = token_struct[1][0]
                                   var0 = token_struct[1][1]
                                   var1 =  token_struct[1][2]
                                   var2 =  token_struct[1][3]
                                   for i in range (0, len(signals)):
                                          if ((n == signals[i]['N']) or (str(var0) == signals[i]['N']) or (str(var1) == signals[i]['N']) or (str(var2) == signals[i]['N'])):
                                                 if (signals[i]['D'] == 'v'):
                                                        if (flag_process_body == 1):
                                                               process_vars.append(token_struct)
                                                        elif (flag_process_body == 0):
                                                               raise funcs._MyExceptions.MyExceptions("File: \"" +  func +".py\": " + "Variable \"" + signals[i]['N'] + "\" must be used only inside a process.")
                                   ##-----------------------------------------------------------

                                   if (flag_dataflow_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          if ((token[0][0] == "name_right_array_binary_slice") or (token[0][0] == "name_right_array_binary_slice_var0")):
                                                  if (int(token[0][3]) < int(token[0][4])):
                                                        dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                  elif (int(token[0][3]) > int(token[0][4])):
                                                        dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                                                      dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                               elif (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                                                      dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                   elif (flag_dataflow_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          if ((token[0][0] == "name_right_array_binary_slice") or (token[0][0] == "name_right_array_binary_slice_var0")):
                                                  if (int(token[0][3]) < int(token[0][4])):
                                                        dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                  elif (int(token[0][3]) > int(token[0][4])):
                                                        dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                                                      dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                               elif (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                                                      dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                   elif (flag_dataflow_else_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          if ((token[0][0] == "name_right_array_binary_slice") or (token[0][0] == "name_right_array_binary_slice_var0")):
                                                  if (int(token[0][3]) < int(token[0][4])):
                                                        dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'  
                                                  elif (int(token[0][3]) > int(token[0][4])):
                                                        dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                                                      dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                               elif (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                                                      dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                   elif (flag_beh_if_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          if ((token[0][0] == "name_right_array_binary_slice") or (token[0][0] == "name_right_array_binary_slice_var0")):
                                                  if (int(token[0][3]) < int(token[0][4])):
                                                        beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                  elif (int(token[0][3]) > int(token[0][4])):
                                                        beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                                                      beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                               elif (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                                                      beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                   elif (flag_beh_if_body_nest_count > 0):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          if ((token[0][0] == "name_right_array_binary_slice") or (token[0][0] == "name_right_array_binary_slice_var0")):
                                                  if (int(token[0][3]) < int(token[0][4])):
                                                        assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                  elif (int(token[0][3]) > int(token[0][4])):
                                                        assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                               elif (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                   elif (flag_beh_elif_stat == 1):
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          if ((token[0][0] == "name_right_array_binary_slice") or (token[0][0] == "name_right_array_binary_slice_var0")):
                                                  if (int(token[0][3]) < int(token[0][4])):
                                                        beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                  elif (int(token[0][3]) > int(token[0][4])):
                                                        beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                                                      beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                               elif (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                                                      beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                   elif (flag_struct == 1):
                                          port_map_assignment_signals.append(token_struct)
                                          #right_signal.append(token_struct)
                                          funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name)
                                          if ((token[0][0] == "name_right_array_binary_slice") or (token[0][0] == "name_right_array_binary_slice_var0")):
                                                  if (int(token[0][3]) < int(token[0][4])):
                                                        assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + "),\n"
                                                  elif (int(token[0][3]) > int(token[0][4])):
                                                        assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + "),\n"
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + "),\n"
                                                               elif (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + "),\n"                     
                                   else:
                                          funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                          right_signal.append(token_struct)
                                          if ((token[0][0] == "name_right_array_binary_slice") or (token[0][0] == "name_right_array_binary_slice_var0")):
                                                  if (int(token[0][3]) < int(token[0][4])):
                                                        assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                  elif (int(token[0][3]) > int(token[0][4])):
                                                        assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'
                                          else:
                                                 for i in range (0, len(signals)):
                                                        if (token[0][1] == signals[i]['N']):
                                                               if (signals[i]['L'][1][0] < signals[i]['L'][1][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " to " + token[0][4] + ')'
                                                               elif (signals[i]['L'][1][0] > signals[i]['L'][1][1]):
                                                                      assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[0][1] + '(' + token[0][2] + ")(" + token[0][3] + " downto " + token[0][4] + ')'                     
                            elif (token[0] == "name_left_dataflow_comp"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   left_signal = token_struct

                                   if (token[1].find("==") != -1):
                                          t = token[1].replace("==", '= ')
                                   elif (token[1].find("!=") != -1):
                                           t = token[1].replace("!=", " /= ")
                                   elif (token[1].find(">=") != -1):
                                           t = token[1].replace(">=", ">= ")
                                   elif (token[1].find("<=") != -1):
                                           t = token[1].replace("<=", "<= ")
                                   elif (token[1].find('>') != -1):
                                           t = token[1].replace('>', '> ')
                                   elif (token[1].find('<') != -1):
                                           t = token[1].replace('<', '< ')
                                   else:
                                          t = token[1]
                                   
                                   if (flag_dataflow_if_stat == 1):
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + t
                                   elif (flag_dataflow_elif_stat == 1):
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + t
                                   elif (flag_beh_if_stat == 1):
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + t
                                   elif (flag_beh_elif_stat == 1):
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + t

                            elif (token[0] == "name_right_dataflow_comp"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   right_signal.append(token_struct)
                                   #funcs._signal_compatibility.signal_cpompatibility(left_signal, token_struct, signals, func)

                                   if (flag_dataflow_if_stat == 1):
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_elif_stat == 1):
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[1]
                                   elif (flag_beh_if_stat == 1):
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[1]
                                   elif (flag_beh_elif_stat == 1):
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = behprocess_sens_list_elif_stat[beh_elif_stat_lines_count][1] + token[1]

                            elif(token[0] == "name_sens_list"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)

                                   assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1] + ", "

                            elif(token[0] == "struct_name_declaration"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)

                                   ## Determining FPGA device family
                                   attributes_keys = attributes.keys()
                                   FPGA_attr_flag = 0
                                   for i in range(len(attributes_keys)):
                                          if (attributes_keys[i] == "FPGA_DEV"):
                                                 a = attributes[attributes_keys[i]]
                                                 FPGA_attr_flag = 1

                                   if (FPGA_attr_flag == 1):
                                          if (a == "Spartan3"):
                                                 fpga_dev = "_S3"
                                          elif (a == "Virtex5"):
                                                 fpga_dev = "_V5"

                                   else:
                                          fpga_dev = "_S3"
                                   
                                   ## Checking if the declared component exists in "_struct_lib.py" and storing in "comp_vars" the variables of the component.
                                   comp_variables = funcs._struct_comp_check.struct_comp_check(token_struct, func, config_options)
                                   


                                   if (comp_variables != False):
                                          ## Appending the top entity name to comp_name[], for the creation of the ISE tcl script
                                          CompLib = comp_variables[len(comp_variables) - 1][0]
                                          if(CompLib != "unisim_VCOMP"):
                                                 comp_names.append(token_struct[1])                                   
                                          generic_comp = comp_variables[len(comp_variables) - 1][1]
                                          comp_name = comp_variables[len(comp_variables) - 1][2] + "_U" + str(comp_count)
                                          comp_signals = comp_variables[0:len(comp_variables) - 1]


                                          ## Count the # of processor cores
                                          for i in range(len(proc_name_list)):
                                                 if (comp_variables[len(comp_variables) - 1][2] == proc_name_list[i]):#"top_avr_core_v8"):
                                                        proc_core_count = proc_core_count + 1
                                                        proc_sw_dict[proc_name_list[i]] = attributes["PROC_SW"][proc_name_list[i]]#[proc_core_count - 1]
                                                        if ("PROC_OS" in attributes):
                                                               proc_os_dict[proc_name_list[i]] = attributes["PROC_OS"][proc_name_list[i]]

                                          print("token_structt:", token_struct)
                                          print("comp_variabless:", comp_variables)
                                          print("comp_signalss:", comp_signals)
                                          print("comp_namee:", comp_name)
                                          print("CompLib:", CompLib)
                            
                                          funcs._signal_declaration_check.signal_declaration_check(comp_variables, "_struct_lib")
                                          ## checking for component declaration duplication
                                          used_components_flag = 0
                                          for i in range(len(used_components)):
                                                 if (token[1] == used_components[i]):
                                                        used_components_flag = 1

                                          used_components.append(token[1])

                                                 
                                          if (((CompLib == "custom") or (CompLib == "XCompLib") or (proc_core_count > 0))  and (used_components_flag == 0)):
                                                 if (count_custom_comp == 0):
                                                        if ((CompLib == "XCompLib") and (flag_mkdir ==  0)):
                                                               #commands.getoutput('rm -r SysPy')
                                                               commands.getoutput('mkdir SysPy')
                                                               commands.getoutput('mkdir ./SysPy/work')
                                                               flag_mkdir = 1

                                                        #elif ((proc_core_count > 0) and (flag_mkdir == 0)):
                                                        elif ((proc_core_count > 0) and (flag_mkdir == 0)):
                                                               for i in range(len(proc_name_list)):
                                                                      if (comp_variables[len(comp_variables) - 1][2] == proc_name_list[i]):#"top_avr_core_v8"):
                                                                             #commands.getoutput('rm -r SysPy')
                                                                             commands.getoutput('mkdir SysPy')
                                                                             commands.getoutput('mkdir ./SysPy/work')
                                                                             flag_mkdir = 1

                                                               
                                                                             
                                                                             if (comp_variables[len(comp_variables) - 1][2] == "top_avr_core_v8"):
                                                                                    funcs._hex2PM.hex2PM(proc_sw_dict["top_avr_core_v8"])
                                                                             elif (comp_variables[len(comp_variables) - 1][2] == "leon3mp"):
                                                                                    if ("PROC_OS" in attributes):
                                                                                           funcs._leon3_sw_os.leon3_sw_os(proc_os_dict["leon3mp"], proc_sw_dict["leon3mp"], proc_os_name_dict, config_options)
                                                                                    else:
                                                                                           funcs._leon3_sw.leon3_sw(proc_sw_dict["leon3mp"])
                                                                                           funcs._leon3_config.leon3_config(attributes, config_options)

                                                                             #for i in range(proc_core_count):
                                                                                #    if (proc_sw_dict.has_key("top_avr_core_v8")):
                                                                                   #        funcs._hex2PM.hex2PM(proc_sw_dict["top_avr_core_v8"])
                                                                                   # elif (proc_sw_dict.has_key("leon3_wrapper")):
                                                                                      #     funcs._leon3_sw.leon3_sw(proc_sw_dict["leon3_wrapper"])
                                                                                           
                                                               
                                                        vhdFile.write("\n-- Structural components") 
                                                        vhdFile.write("\n--------------------------------------------------------------------------")
       ################################
                                                 else:
                                                        if ((proc_core_count > 0)): 
                                                               for i in range(len(proc_name_list)):
                                                                      if (comp_variables[len(comp_variables) - 1][2] == proc_name_list[i]):#"top_avr_core_v8"):
                                                                             if (comp_variables[len(comp_variables) - 1][2] == "top_avr_core_v8"):
                                                                                    funcs._hex2PM.hex2PM(proc_sw_dict["top_avr_core_v8"])
                                                                             elif (comp_variables[len(comp_variables) - 1][2] == "leon3mp"):
                                                                                    print("proc_sw_dict:", proc_sw_dict)
                                                                                    funcs._leon3_config.leon3_config(attributes, config_options)

                                                                                    funcs._leon3_sw.leon3_sw(proc_sw_dict["leon3mp"])
                                                                             #for i in range(proc_core_count):
                                                                                #    if (proc_sw_dict.has_key("top_avr_core_v8")):
                                                                                   #        funcs._hex2PM.hex2PM(proc_sw_dict["top_avr_core_v8"])
                                                                                   # elif (proc_sw_dict.has_key("Leon3_wrapper")):
                                                                                      #     funcs._leon3_sw.leon3_sw(proc_sw_dict["Leon3_wrapper"])
                                                               

       ##################################
                                                        

                                                 ## Copying the XCoreLib files to the "SysPy" folder
                                                 #if (proc_sw_dict.has_key("top_avr_core_v8")):
                                                 if (proc_sw_dict.has_key(comp_variables[len(comp_variables) - 1][2])):
                                                 #if (comp_variables[len(comp_variables) - 1][2] == "top_avr_core_v8"):
                                                        funcs._gen_SysPy_fold.gen_SysPy_fold(vhdFile, attributes, CompLib, comp_variables, comp_variables[len(comp_variables) - 1][2])       
                                                        #funcs._gen_ISE_script.gen_ISE_script(comp_variables[len(comp_variables) - 1][2], attributes)      
                                                 #elif (comp_variables[len(comp_variables) - 1][2] == "Leon3_wrapper"):
                                                    #    funcs._gen_SysPy_fold.gen_SysPy_fold(vhdFile, attributes, CompLib, comp_variables, "Leon3_wrapper")       
                                                       # funcs._gen_ISE_script.gen_ISE_script("Leon3_wrapper", attributes)  

                                                 count_custom_comp = count_custom_comp + 1
                                                 #warnings.showwarning = customwarn
                                                 #warnings.warn("structural warning")
                                                 if (CompLib == "custom"): 
                                                        print("SysPy Warning: File :\"" +  func +".py\": Line: " + str(pos[1]) + ": A VHDL description of component \"" + comp_name + "\" must be provided by the user.")
                                                        print(commands.getoutput('python ' + comp_variables[len(comp_variables) - 1][2]  + '.py'))
                                                        print(commands.getoutput('cp ./' + comp_variables[len(comp_variables) - 1][2]  + '.vhd ./SysPy/work/' + comp_variables[len(comp_variables) - 1][2]  + '.vhd' ))
                                                        

                                                 if (CompLib == "XCompLib"):
                                                        vhdFile.write("\ncomponent " + token[1] + fpga_dev + "\n")
                                                 else:
                                                        vhdFile.write("\ncomponent " + token[1] + "\n")
              ##                                   if (generic_comp == True):
              ##                                          vhdFile.write("\t generic_comp (")
              ##                                          for i in range (1, len(gprint("SysPy Warning: File :\"" +  func +".py\": Line: " + str(pos[1]) + ": Structural warning.")       eneric_comp)):
              ##                                                 if (i != len(generic_comp) - 1):
              ##                                                        vhdFile.write(generic_comp[i] + " ,")
              ##                                                 else:
              ##                                                        vhdFile.write(generic_comp[i] + ": integer);\n")
                                                 vhdFile.write("\t Port (\n")
                                                 funcs._struct_comp_declaration.struct_comp_declaration(comp_variables,  vhdFile)

                                          #assign_lines_count += 1
                                   port_map_lines_count += 1
                                          #assign_lines.append(["port_map",  token[1] + "_U" + str(comp_count) + ": " + token[1] + " port map (\n", pos[1], pos[2], indentation_level])
                                   if (CompLib == "XCompLib"):
                                          port_map_lines.append(["port_map",  token[1] + "_U" + str(comp_count) + ": " + token[1] + fpga_dev + " port map (\n", pos[1], pos[2], indentation_level])
                                   else:
                                          port_map_lines.append(["port_map",  token[1] + "_U" + str(comp_count) + ": " + token[1] + " port map (\n", pos[1], pos[2], indentation_level])

                            elif (token[0][0] == "struct_def_gen"):
                                   token_struct = (token[0][0], token[0][1], token[0][2], pos[1], pos[2], indentation_level)
                                   flag_struct = 1

                                   comp_left_signals = []
                                   comp_count += 1

                                   comp_variables = funcs._struct_comp_check.struct_comp_check(token_struct, func, config_options)
                                   #print("comp_variables:", comp_variables)
                                   if (comp_variables != False):
                                          ## Appending the top entity name to comp_name[], for the creation of the ISE tcl script
                                          CompLib = comp_variables[len(comp_variables) - 1][0]
                                          if(CompLib != "unisim_VCOMP"):
                                                 comp_names.append(token_struct[1])
                                          generic_comp = comp_variables[len(comp_variables) - 1][1]
                                          comp_name = comp_variables[len(comp_variables) - 1][2] + "_U" + str(comp_count)
                                          comp_signals = comp_variables[0:len(comp_variables) - 1]

                                          ## Count the # of processor cores
                                          if (comp_variables[len(comp_variables) - 1][2] == "avr_core"):
                                                 proc_core_count = proc_core_count + 1

                                          print("token_structt:", token_struct)
                                          print("comp_variabless:", comp_variables)
                                          print("comp_signalss:", comp_signals)
                                          print("comp_namee:", comp_name)
                                          print("generic_comp:", generic_comp)
                                          print("CompLib:", CompLib)
                                          funcs._signal_declaration_check.signal_declaration_check(comp_variables, "_struct_lib")

                                         ## checking for component declaration duplication
                                          used_components_flag = 0
                                          j = token[1].find('(') 
                                          for i in range(len(used_components)):
                                                 if (token[1][: j] == used_components[i]):
                                                        used_components_flag = 1

                                         
                                          used_components.append(token[1][: j])
                                   
                                          if (((CompLib == "custom") or (CompLib == "XCompLib"))  and (used_components_flag == 0)):
                                                 commands.getoutput('mkdir SysPy')
                                                 commands.getoutput('mkdir ./SysPy/work')
                                                 if (count_custom_comp == 0):
                                                        vhdFile.write("\n-- Structural components") 
                                                        vhdFile.write("\n--------------------------------------------------------------------------")

                                                 count_custom_comp = count_custom_comp + 1
                                                 #warnings.showwarning = funcs._SysPyWarnings.customwarn11/1/2012:
                                                 #warnings.warn("structural warning")
                                                 if (CompLib == "custom"):
                                                        #print("SysPy Warning: File :\"" +  func +".py\": Line: " + str(pos[1]) + ": Component \"" + comp_variables[len(comp_variables) - 1][2] + "\" must be provided by the user.")
                                                        print("SysPy Warning: File :\"" +  func +".py\": Line: " + str(pos[1]) + ": A VHDL description of component \"" + comp_name + "\" must be provided by the user.") 
                                                        print(commands.getoutput('python ' + comp_variables[len(comp_variables) - 1][2]  + '.py'))
                                                        print(commands.getoutput('cp ./' + comp_variables[len(comp_variables) - 1][2]  + '.vhd ./SysPy/work/' + comp_variables[len(comp_variables) - 1][2]  + '.vhd' ))

                                                 vhdFile.write("\ncomponent " + token[0][1] + "\n")
                                                 if (generic_comp[0] == True):
                                                        vhdFile.write("\t generic (")
                                                        for i in range (1, len(generic_comp)):
                                                               if (i != len(generic_comp) - 1):
                                                                      vhdFile.write(generic_comp[i] + " ,")
                                                               else:
                                                                      vhdFile.write(generic_comp[i] + ": integer);\n")
                                                 vhdFile.write("\t Port (\n")
                                                 funcs._struct_comp_declaration.struct_comp_declaration(comp_variables,  vhdFile)

                                   generic_comp_val = ''
                                   generic_comp_val = " generic map("
                                   print("token_struct[2]:", token_struct[2])
                                   for i in range(len(token_struct[2])):
                                          if (i % 2 == 0):
                                                  generic_comp_val += token_struct[2][i] + " => " + token_struct[2][i + 1] + ','

                                   generic_comp_val = generic_comp_val[0:(len(generic_comp_val) - 1)]
                                   #assign_lines_count += 1
                                   port_map_lines_count += 1
                                   #assign_lines.append(["generic_comp_map",  token_struct[1] + "_U" + str(comp_count) + ": " + token_struct[1] + generic_comp_val + ')', pos[1], pos[2], indentation_level])
                                   port_map_lines.append(["generic map",  token_struct[1] + "_U" + str(comp_count) + ": " + token_struct[1] + generic_comp_val + ')', pos[1], pos[2], indentation_level])
                                   #print(assign_lines)
                                   #assign_lines_count += 1
                                   port_map_lines_count += 1
                                   port_map_lines.append(["port_map",  "\n\tport map (\n", pos[1], pos[2], indentation_level])

                            elif (token[0][0] == "func_def"):
                                   token_struct = (token[0][0], token[0][1], token[0][2], pos[1], pos[2], indentation_level)
                                   func_name = token_struct[1]
                                   func_param = token_struct[2]

                                   func_variables = funcs._func_check.func_check(token_struct, func, generics[func_name], config_options)

                                   comp_names.append(func_variables["Comp_name"])
                                   
                                   print "func_param:", func_param
                                   print "func_variables:", func_variables
                                   
                                   if (func_name == "Gillespie_FRM1X"):
                                          exec "import funcs.handlers._" + func_name + "\ngenerics_func = funcs.handlers._" + func_name + '.' + func_name + "(generics[func_name], func_param, config_options)"
                                   elif (func_name == "Gillespie_FRM4X"):
                                          exec "import funcs.handlers._" + func_name + "\ngenerics_func = funcs.handlers._" + func_name + '.' + func_name + "(generics[func_name], func_param, config_options)"
                                   elif (func_name == "FRM4X"):
                                          exec "import funcs.handlers._" + func_name + "\ngenerics_func = funcs.handlers._" + func_name + '.' + func_name + "(generics[func_name], func_param, config_options)"                           
                                   elif (func_name == "HAL_FSM"):
                                          exec "import funcs.handlers._" + func_name + "\ngenerics_func = funcs.handlers._" + func_name + '.' + func_name + "(generics[func_name])"                            
                                   elif (func_name == "fir_filt_s"):
                                          generics["fir_filt_s"]['m'] = (len(func_param) - 1)
                                          exec "import funcs.handlers._" + func_name + "\ngenerics_func = funcs.handlers._" + func_name + '.' + func_name + "(generics[func_name], func_variables)"    
                                   elif (func_name == "fir_filt_u"):
                                          generics["fir_filt_u"]['m'] = (len(func_param) - 1)
                                          exec "import funcs.handlers._" + func_name + "\ngenerics_func = funcs.handlers._" + func_name + '.' + func_name + "(generics[func_name], func_variables)"                                   
                                   else:
                                          generics_func = generics[func_name]

                                   #new_generics = {}

                                   #for i in generics:
                                    #      if new_generics.has_key(i) == False:
                                     #            new_generics
                                                                     



                                   generics_list = generics_func.keys()

                                   generics_struct = []
                                   for i in range(len(generics_list)):
                                          generics_struct.append(generics_list[i])
                                          generics_struct.append(str(generics_func[generics_list[i]]))

                                   print "generics_struct:", generics_struct

                                   ## Call function handler
                                   #x = "import funcs.handlers._" + func_name + "\nextra_generics = funcs.handlers._" + func_name + '.' + func_name + "()"

                                   comp_count += 1
                                   token_struct_comp = ("struct_def_gen", func_variables["Comp_name"], generics_struct, pos[1], pos[2], indentation_level)

                                   comp_variables = funcs._struct_comp_check.struct_comp_check(token_struct_comp, func, config_options)
                                   CompLib = comp_variables[len(comp_variables) - 1][0]
                                   generic_comp = comp_variables[len(comp_variables) - 1][1]
                                   comp_name = comp_variables[len(comp_variables) - 1][2] + "_U" + str(comp_count)
                                   comp_signals = comp_variables[0:len(comp_variables) - 1]


                                   ## checking for component declaration duplication
                                   used_components_flag = 0
                                   for i in range(len(used_components)):
                                          if (token_struct_comp[1] == used_components[i]):
                                                 used_components_flag = 1

                                   used_components.append(token_struct_comp[1])


                                   if ((CompLib == "custom") and (used_components_flag == 0)):
                                          #if (func_param[5] == "\"u\""):
                                          vhdFile.write("\ncomponent " + token_struct_comp[1] + "\n")
                                          #elif (func_param[5] == "\"s\""):
                                          #       vhdFile.write("\ncomponent " + token_struct_comp[1] + "_s\n")
                                          if (generic_comp[0] == True):
                                                 vhdFile.write("\t generic (")
                                                 for i in range (1, len(generic_comp)):
                                                        if (i != len(generic_comp) - 1):
                                                               vhdFile.write(generic_comp[i] + " ,")
                                                        else:
                                                               vhdFile.write(generic_comp[i] + ": integer);\n")

                                   if ((CompLib == "custom") and (used_components_flag == 0)):
                                          vhdFile.write("\t Port (\n")
                                          funcs._struct_comp_declaration.struct_comp_declaration(comp_variables,  vhdFile)

                                   generic_comp_val = ''
                                   generic_comp_val = " generic map("
                                          
                                   for i in range(len(token_struct_comp[2])):
                                          if (i % 2 == 0):
                                                  generic_comp_val += token_struct_comp[2][i] + " => " + token_struct_comp[2][i + 1] + ", "

                                   #print("generic_comp_val:", generic_comp_val)
                                   generic_comp_val = generic_comp_val[0:(len(generic_comp_val) - 2)]
                                   #assign_lines_count += 1
                                   port_map_lines_count += 1     

                                   if (port_map_lines_count == 0):
                                          ## Empty line before the 1st component declaration
                                          port_map_lines.append(["generic_comp_map", "\n" + "       " + token_struct_comp[1] + "_U" + str(comp_count) + ": " + token_struct_comp[1] + generic_comp_val + ')', pos[1], pos[2], 7])
                                   else:
                                          port_map_lines.append(["generic_comp_map", token_struct_comp[1] + "_U" + str(comp_count) + ": " + token_struct_comp[1] + generic_comp_val + ')', pos[1], pos[2], 7])  

                                   port_map_lines_count += 1
                                   #assign_lines_count += 1
                                   port_map_lines.append(["port_map",  "port map (\n", pos[1], pos[2], 7])

                                   for i in range(len(comp_signals)):
                                          n = comp_signals[i]['N'].__doc__
                                          if (n.find("str") == 0):
                                                 port_map_lines_count += 1
                                                 port_map_lines.append(["port_map",  comp_signals[i]['N'] + " => " +  comp_signals[i]['N'] + ",\n", pos[1], pos[2], 14])
                                          elif (n.find("list") == 0):
                                                 for j in range(len(comp_signals[i]['N'])):
                                                        port_map_lines_count += 1
                                                        port_map_lines.append(["port_map",  comp_signals[i]['N'][j] + " => " +  comp_signals[i]['N'][j] + ",\n", pos[1], pos[2], 14])
               
                  
                                   port_map_lines[len(port_map_lines) - 1][1] = port_map_lines[len(port_map_lines) - 1][1].replace(",\n", '')
                                   port_map_lines[len(port_map_lines) - 1][1] = port_map_lines[len(port_map_lines) - 1][1] + ");\n\n"
                                   #port_map_lines[len(port_map_lines) - 1] = port_map_lines[len(port_map_lines) - 1][:len(port_map_lines[len(port_map_lines) - 1]) - 1]

                                   
                                   


                                   if (CompLib == "custom"):
                                          print("SysPy Warning: File :\"" +  func +".py\": Line: " + str(pos[1]) + ": A VHDL description of component \"" + comp_name + "\" must be provided by the user.")  
                                          print("current dir:" + commands.getoutput('pwd'))
                                          print(commands.getoutput('python ' + func_variables["Comp_name"]  + '.py'))

                                                                             
                                          print(commands.getoutput('cp ' + func_variables["Comp_name"]  + '.vhd ./SysPy/work/'))                              
                                          #print(commands.getoutput('cp ./' + comp_variables[len(comp_variables) - 1][2]  + '.vhd ./SysPy/work/' + comp_variables[len(comp_variables) - 1][2]  + '.vhd' ))      
			           	
                                       
                            elif (token[0] == "const_integer"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   #funcs._dataflow_constant_check.dataflow_constant_check(token_struct)
                                   if (flag_dataflow_if_stat == 1):
                                          right_signal.append(token_struct)
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_else_stat == 1):
                                          right_signal.append(token_struct)
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[1]
                                   elif (flag_beh_if_stat == 1):
                                          right_signal.append(token_struct)
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[1]
                                   elif (flag_beh_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[1]
                                   elif (flag_beh_else_stat == 1):
                                          right_signal.append(token_struct)
                                          beh_else_stat[beh_else_stat_lines_count][1] = beh_else_stat[beh_else_stat_lines_count][1] + token[1]
                                   elif (flag_struct == 1):
                                          port_map_assignment_signals.append(token_struct)
                                          funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name, generic_comp, generic_comp_val)
                                   else:
                                          right_signal.append(token_struct)
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1]

                            elif(token[0][0] == "conv_integer"):
                                   token_struct = (token[0][0], token[0][1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   right_signal.append(token_struct)

                                   assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1]

                            elif(token[0][0] == "others"):
                                   token_struct = (token[0][0], token[0][1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   right_signal.append(token_struct)

                                   if (flag_beh_if_stat == 1):
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + '(' + token[0][0] + " => '" + token[0][1] + "')" 
                                   else:
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + '(' + token[0][0] + " => '" + token[0][1] + "')" 

                            elif(token[0][0] == "conv_std_logic"):
                                   token_struct = (token[0][0], token[0][1], token[0][2], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   right_signal.append(token_struct)

                                   assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + "conv_std_logic_vector(" + token[0][1] + ", " + token[0][2] + ')'

                            elif (token[0] == "const_binary_bit"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   #funcs._dataflow_constant_check.dataflow_constant_check(token_struct)
                                   if (flag_dataflow_if_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_else_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[1]
                                   elif (flag_beh_if_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[1]
                                   elif (flag_beh_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[1]
                                   elif (flag_struct == 1):
                                          port_map_assignment_signals.append(token_struct)
                                          funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name, generic_comp, generic_comp_val)
                                          #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1] + ",\n"
                                          port_map_lines[port_map_lines_count][1] = port_map_lines[port_map_lines_count][1] + token[1] + ",\n"
                                   else:
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1]

                            elif (token[0] == "const_binary_bits"):     
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   #funcs._dataflow_constant_check.dataflow_constant_check(token_struct)
                                   if (flag_dataflow_if_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + token[1]
                                   elif (flag_dataflow_else_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + token[1]
                                   elif (flag_beh_if_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + token[1]
                                   elif (flag_beh_elif_stat == 1):
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + token[1]
                                   elif (flag_struct == 1):
                                          port_map_assignment_signals.append(token_struct)
                                          funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name, generic_comp, generic_comp_val)
                                          #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1] + ",\n"
                                          port_map_lines[port_map_lines_count][1] = port_map_lines[port_map_lines_count][1] + token[1] + ",\n"
                                   else:
                                          right_signal.append(token_struct)
                                          #funcs._signal_compatibility.signal_compatibility(left_signal, token_struct, signals, func)
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + token[1]

                            elif (token[0] == "open_key"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   if (flag_struct == 1):
                                          port_map_assignment_signals.append(token_struct)
                                          funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name, generic_comp, generic_comp_val)
                                          #funcs._port_map_assignment_check.port_map_assignment_check(signals, comp_signals, port_map_assignment_signals, func, comp_name)
                                          t = token[1].replace("\"", '')
                                          t = t.replace("\"", '')
                                          port_map_lines[port_map_lines_count][1] = port_map_lines[port_map_lines_count][1] + t + ",\n"
                                          #assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + t + ",\n"
              
                            
                            elif (token[0] == "arithm_oper"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_oper_check.dataflow_oper_check(token_struct, arithm_oper_supp)
                                   arithm_oper = token_struct
                                   #if (flag_dataflow_if_stat == 1):port_map_lines_count
                                    #       dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + ' ' + token[1] + ' ' 
                                   #elif (flag_dataflow_elif_stat == 1):
                                    #       dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + ' ' + token[1] + ' ' 
                                   #elif (flag_dataflow_else_stat == 1):
                                    #       dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + ' ' + token[1] + ' ' 
                                   #else:
                                   assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + ' ' + token[1] + ' '

                            elif (token[0] == "logic_oper"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_oper_check.dataflow_oper_check(token_struct, logic_oper_supp)

                                   if (token[1] == "and"):
                                          t = "and"
                                   elif(token[1] == "or"):
                                          t = "or"
                                   elif(token[1] == "xor"):
                                          t = "xor"
                                   elif(token[1] == '~'):
                                          t = "not"
                                   elif(token[1] == '&'):
                                          t = '&'

                                   if (flag_dataflow_if_stat == 1):
                                           dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + ' ' + t + ' ' 
                                   elif (flag_dataflow_elif_stat == 1):
                                           dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + ' ' + t + ' ' 
                                   elif (flag_dataflow_else_stat == 1):
                                           dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + ' ' + t + ' '
                                   elif (flag_beh_if_stat == 1):
                                           beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + ' ' + t + ' '
                                   elif (flag_beh_elif_stat == 1):
                                           beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + ' ' + t + ' '
                                   elif (flag_beh_else_stat == 1):
                                           beh_else_stat[beh_else_stat_lines_count][1] = beh_else_stat[beh_else_stat_lines_count][1] + ' ' + t + ' ' 
                                   else:
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + ' ' + t + ' '

                            elif (token[0] == "comp_oper"):             
                                   assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + ' ' + token[1] + ' '

                            elif (token[0][0] == "shift_oper_left_sig"):
                                   token_struct = (token[0][0], "<<", pos[1], pos[2], indentation_level)
                                   funcs._dataflow_oper_check.dataflow_oper_check(token_struct, arithm_oper_supp)

                                   #elegxos twn shmatwn pou dhlonontai ston telesth ths olisthishs
                                   token_struct = ("name_right", token[0][1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)

                                   token_struct = ("name_right", token[0][2], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   
                                   if (flag_dataflow_if_stat == 1):
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_dataflow_elif_stat == 1):
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_dataflow_else_stat == 1):
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_if_stat == 1):
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_elif_stat == 1):
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_else_stat == 1):
                                          beh_else_stat[beh_else_stat_lines_count][1] = beh_else_stat[beh_else_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   else:
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'

                            elif (token[0][0] == "shift_oper_right_sig"):
                                   token_struct = (token[0][0], ">>", pos[1], pos[2], indentation_level)
                                   funcs._dataflow_oper_check.dataflow_oper_check(token_struct, arithm_oper_supp)

                                   token_struct = ("name_right", token[0][1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)

                                   token_struct = ("name_right", token[0][2], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)

                                   if (flag_dataflow_if_stat == 1):
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_dataflow_elif_stat == 1):
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_dataflow_else_stat == 1):
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_if_stat == 1):
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_elif_stat == 1):
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_else_stat == 1):
                                          beh_else_stat[beh_else_stat_lines_count][1] = beh_else_stat[beh_else_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   else:                              
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'

                            elif (token[0][0] == "shift_oper_left_bin"):
                                   token_struct = (token[0][0], "<<", pos[1], pos[2], indentation_level)
                                   funcs._dataflow_oper_check.dataflow_oper_check(token_struct, arithm_oper_supp)

                                   #elegxos twn shmatwn pou dhlonontai ston telesth ths olisthishs
                                   token_struct = ("name_right", token[0][1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   
                                   if (flag_dataflow_if_stat == 1):
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_dataflow_elif_stat == 1):
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_dataflow_else_stat == 1):
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_if_stat == 1):
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_elif_stat == 1):
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_else_stat == 1):
                                          beh_else_stat[beh_else_stat_lines_count][1] = beh_else_stat[beh_else_stat_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'
                                   else:
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + "SHL(" + token[0][1] + ", " + token[0][2] + ')'

                            elif (token[0][0] == "shift_oper_right_bin"):
                                   token_struct = (token[0][0], ">>", pos[1], pos[2], indentation_level)
                                   funcs._dataflow_oper_check.dataflow_oper_check(token_struct, arithm_oper_supp)

                                   #elegxos twn shmatwn pou dhlonontai ston telesth ths olisthishs
                                   token_struct = ("name_right", token[0][1], pos[1], pos[2], indentation_level)
                                   funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                   
                                   if (flag_dataflow_if_stat == 1):
                                          dataflow_if_stat[dataflow_if_stat_lines_count][1] = dataflow_if_stat[dataflow_if_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_dataflow_elif_stat == 1):
                                          dataflow_elif_stat[dataflow_elif_stat_lines_count][1] = dataflow_elif_stat[dataflow_elif_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_dataflow_else_stat == 1):
                                          dataflow_else_stat[dataflow_else_stat_lines_count][1] = dataflow_else_stat[dataflow_else_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_if_stat == 1):
                                          beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_elif_stat == 1):
                                          beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   elif (flag_beh_else_stat == 1):
                                          beh_else_stat[beh_else_stat_lines_count][1] = beh_else_stat[beh_else_stat_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'
                                   else:
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + "SHR(" + token[0][1] + ", " + token[0][2] + ')'

                            elif (token[0][0] == "for_loop_stat"):
                                   if (flag_process_body == 1):
                                          token_struct = (token[0][0], token[0][1], token[0][2], token[0][3], pos[1], pos[2], indentation_level)
                                          signals.append({'D': 'vf', 'T': "int", 'L': [int(token[0][2]), int(token[0][3])], 'N': token[0][1]})
                                          flag_for_loop_stat = 1
                                          for_loop_indentation_level.append(indentation_level)
                                          assign_lines_count += 1
                                          assign_lines.append(["for_loop_stat", "for " + token[0][1] + " in range " + token[0][2] + " to " + token[0][3] + " loop\n", pos[1], pos[2], indentation_level])
                                   elif (flag_process_body == 0):
                                          raise funcs._MyExceptions.MyExceptions("File :\"" +  func +".py\": Line: " + str(pos[1]) + ": For loop statements are allowed only inside a process.")           
                                          

                            elif (token[0][0] == "dataflow_if_stat"):
                                   if (flag_process_body == 0):
                                          #assign_lines_count += 1
                                          token_struct = (token[0][0], token[0][1], pos[1], pos[2], indentation_level)
                                          #funcs._dataflow_constant_check.dataflow_constant_check(token_struct)
                                          dataflow_if_stat = []
                                          dataflow_if_stat_lines_count = -1
                                          dataflow_if_stat_lines_count += 1
                                          flag_dataflow_if_stat = 1
                                          flag_dataflow_if_body = 1
                                          print("flag_dataflow_if_stat = 1")
                                          dataflow_if_stat.append(["dataflow_if_stat", token[0][1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                          #assign_lines.append(["dataflow_if_stat", token[0][1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                   elif (flag_process_body == 1):
                                          flag_beh_if_stat = 1
                                          token_struct = (token[0][0], token[0][1], pos[1], pos[2], indentation_level)
                                          beh_if_stat = []
                                          beh_if_stat_lines_count = -1
                                          beh_if_stat_lines_count += 1
                                          #beh_if_indentation_level = indentation_level
                                          beh_if_indentation_level.append(indentation_level)
                                          print("beh_if_indentation_level:", beh_if_indentation_level)
                                          print("flag_beh_if_stat:", flag_beh_if_stat)
                                          beh_if_stat.append(["beh_if_stat", token[0][1].replace(' ', ''), pos[1], pos[2], indentation_level])

                            elif (token[0][0] == "dataflow_elif_stat"):
                                   if (flag_process_body == 0):
                                          #assign_lines_count += 1
                                          token_struct = (token[0][0], token[0][1], pos[1], pos[2], indentation_level)
                                          #funcs._dataflow_constant_check.dataflow_constant_check(token_struct)
                                          dataflow_elif_stat = []
                                          dataflow_elif_stat_lines_count = -1
                                          dataflow_elif_stat_lines_count += 1
                                          flag_dataflow_elif_stat = 1
                                          print("flag_dataflow_elif_stat = 1")
                                          dataflow_elif_stat.append(["dataflow_elif_stat", token[0][1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                          #assign_lines.append(["dataflow_if_stat", token[0][1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                   elif (flag_process_body == 1):
                                          flag_beh_elif_stat = 1
                                          token_struct = (token[0][0], token[0][1], pos[1], pos[2], indentation_level)
                                          beh_elif_stat = []
                                          beh_elif_stat_lines_count = -1
                                          beh_elif_stat_lines_count += 1
                                          #beh_elif_indentation_level = indentation_level
                                          beh_elif_indentation_level.append(indentation_level)
                                          print("beh_elif_indentation_level:", beh_elif_indentation_level)
                                          print("flag_beh_elif_stat:", flag_beh_elif_stat)
                                          beh_elif_stat.append(["beh_elif_stat", token[0][1].replace(' ', ''), pos[1], pos[2], indentation_level])

                            elif (token[0][0] == "dataflow_else_stat"):
                                   if (flag_process_body == 0):
                                          #assign_lines_count += 1
                                          token_struct = (token[0][0], token[0][1], pos[1], pos[2], indentation_level)
                                          #funcs._dataflow_constant_check.dataflow_constant_check(token_struct)
                                          dataflow_else_stat = []
                                          dataflow_else_stat_lines_count = -1
                                          dataflow_else_stat_lines_count += 1
                                          flag_dataflow_else_stat = 1
                                          print("flag_dataflow_else_stat = 1")
                                          dataflow_else_stat.append(["dataflow_else_stat", token[0][1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                          #assign_lines.append(["dataflow_if_stat", token[0][1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                   elif (flag_process_body == 1):
                                          flag_beh_else_stat = 1
                                          token_struct = (token[0][0], token[0][1], pos[1], pos[2], indentation_level)
                                          beh_else_stat = []
                                          beh_else_stat_lines_count = -1
                                          beh_else_stat_lines_count += 1
                                          #beh_else_indentation_level = indentation_level
                                          beh_else_indentation_level.append(indentation_level)
                                          print("beh_else_indentation_level:", beh_else_indentation_level)
                                          print("flag_beh_else_stat:", flag_beh_else_stat)
                                          beh_else_stat.append(["beh_else_stat", token[0][1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                   
                            elif (token[0][0] == "process_sens_list"):
                                   flag_process_sens_list = 1
                                   assign_lines_count += 1
                                   process_indentation_level = indentation_level
                                   assign_lines.append(["process_sens_list", token[0][1][4:] + ": process", pos[1], pos[2], indentation_level])

                            elif (token[0][0] == "rising_edge_sig"):
                                   if (flag_process_body == 1):
                                          if (flag_beh_if_stat == 1):
                                                 token_struct = ("rising_edge_sig", token[0][1], pos[1], pos[2], indentation_level)
                                                 funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                                 beh_if_stat[beh_if_stat_lines_count][1] = beh_if_stat[beh_if_stat_lines_count][1] + "rising_edge(" + token[0][1] + ')'
                                          elif (flag_beh_elif_stat == 1):
                                                 token_struct = ("rising_edge_sig", token[0][1], pos[1], pos[2], indentation_level)
                                                 funcs._dataflow_signal_check.dataflow_signal_check(token_struct, signals, func)
                                                 beh_elif_stat[beh_elif_stat_lines_count][1] = beh_elif_stat[beh_elif_stat_lines_count][1] + "rising_edge(" + token[0][1] + ')'
                                   else:        
                                          raise "Line " + str(pos[1]) + ": \"rising_edge\" statement is allowed only in if/else statement inside a process."
                                                           
                            elif (token[0][0] == "struct_def"):
                                   flag_struct = 1
                                   print("flag_struct:", flag_struct)
                                   comp_left_signals = []
                                   comp_count += 1
                                   #assign_lines_count += 1
                                   #process_indentation_level = indentation_level
                                   #assign_lines.append(["struct_def", token[0][1], pos[1], pos[2], indentation_level])

                            elif (token[0] == "blank_line"):
                                   token_struct = (token[0], token[1], pos[1], pos[2], indentation_level)
                                   #assign_lines_count += 1
                                   #assign_lines.append(["blank_line", token[1].replace(' ', ''), pos[1], pos[2], indentation_level])

                                   if (flag_dataflow_if_stat == 1):
                                          flag_dataflow_if_stat = 0
                                          print("flag_dataflow_if_stat = 0")
                                          t = dataflow_if_stat[1][1] + " when " + dataflow_if_stat[0][1]
                                          assign_lines_count += 1
                                          assign_lines.append(["dataflow_if_stat", t, dataflow_if_stat[0][2], dataflow_if_stat[0][3], dataflow_if_stat[0][4]])
                                          #assign_lines.append(["blank_line", token[1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                   elif (flag_dataflow_elif_stat == 1):
                                          flag_dataflow_elif_stat = 0
                                          print("flag_dataflow_elif_stat = 0")
                                          t = dataflow_elif_stat[1][1] + " when " + dataflow_elif_stat[0][1]
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + " else"
                                          assign_lines_count += 1
                                          assign_lines.append(["dataflow_elif_stat", t, dataflow_elif_stat[0][2], dataflow_elif_stat[0][3], dataflow_elif_stat[0][4]])
                                          i = assign_lines[assign_lines_count][1].find('=')
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1].replace(assign_lines[assign_lines_count][1][:i + 1], '')
                                          #assign_lines.append(["blank_line", token[1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                   elif (flag_dataflow_else_stat == 1):
                                          flag_dataflow_else_stat = 0
                                          print("flag_dataflow_else_stat = 0")
                                          t = dataflow_else_stat[1][1]
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1] + " else"
                                          assign_lines_count += 1
                                          assign_lines.append(["dataflow_else_stat", t, dataflow_else_stat[0][2], dataflow_else_stat[0][3], dataflow_else_stat[0][4]])
                                          i = assign_lines[assign_lines_count][1].find('=')
                                          assign_lines[assign_lines_count][1] = assign_lines[assign_lines_count][1].replace(assign_lines[assign_lines_count][1][:i + 1], '')
                                          #assign_lines.append(["blank_line", token[1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                   else:
                                          assign_lines_count += 1
                                          assign_lines.append(["blank_line", token[1].replace(' ', ''), pos[1], pos[2], indentation_level])
                                   

                     if token[0] is None:
                                   break

       elif (simulation_attr_flag == 1):
              funcs._beh_sim.beh_sim(func, attributes, signals_i, signals_o, signals_intr, signals, args[len(args) - 1][0], config_options)
#----------------------------------------------------------------------------------------------------------------------------------


       
       print("attributes.has_key(simulation)", ~attributes.has_key("simulation"))
       print("assign_lines:", assign_lines)
       print("dataflow_if_stat:", dataflow_if_stat)
       print("beh_if_stat:", beh_if_stat)
       print("beh_elif_stat:", beh_elif_stat)
       print("beh_else_stat:", beh_else_stat)
       print("dataflow_elif_stat:", dataflow_elif_stat)
       print("dataflow_else_stat:", dataflow_else_stat)

#       print("assign_lines_test:", assign_lines[5][0])

       if (simulation_attr_flag == 0):
              # keywords decleration for VHDL
              if (count_custom_comp != 0 ):
                     vhdFile.write("--------------------------------------------------------------------------\n")
              vhdFile.write("\nbegin\n\n")

       assign_lines = assign_lines + port_map_lines
       
       for i in range(0, len(assign_lines)):
              if ((assign_lines[i][0] == "dataflow_assignment") or (assign_lines[i][0] == "dataflow_if_stat") or (assign_lines[i][0] == "dataflow_elif_stat") or (assign_lines[i][0] == "dataflow_else_stat") or (assign_lines[i][0] == "process_sens_list") or (assign_lines[i][0] == "end_if") or (assign_lines[i][0] == "beh_assignment")):
                     while (assign_lines[i][1].find("\n") != -1):
                            assign_lines[i][1] = assign_lines[i][1].replace("\n", '')
                     assign_lines[i][1] = assign_lines[i][1] + ";\n"

              if (assign_lines[i][0] == "end_process"):
                     assign_lines[i][1] = assign_lines[i][1] + ";\n\n"

              if (assign_lines[i][0] == "end_for_loop"):
                     assign_lines[i][1] = assign_lines[i][1] + ";\n"

              if (assign_lines[i][1].find("generic map") != - 1):
                     assign_lines[i][1] = assign_lines[i][1] + "\n"
                     
              if (assign_lines[i][1].find("else") != - 1):
                     assign_lines[i][1] = assign_lines[i][1].replace(';', '')

              if ((assign_lines[i][1].find("process") != - 1) and (assign_lines[i][1].find("begin") != - 1) and (assign_lines[i][0] == "process_sens_list")):
                     assign_lines[i][1] = assign_lines[i][1].replace(';', '')
                    
              identation_spaces = ""       
              for j in range(0, assign_lines[i][4]):
                     if ((assign_lines[i][0] == "dataflow_elif_stat") or (assign_lines[i][0] == "dataflow_else_stat")):
                            identation_spaces =  identation_spaces + '  '
                     else:
                            identation_spaces =  identation_spaces + ' '
                     
              vhdFile.write(identation_spaces + assign_lines[i][1])


       if (simulation_attr_flag == 0):
              vhdFile.write("end " + func + "_arch;")
              vhdFile.close()

       top_entities_file = open(config_options["syspy_dir"] + "top_entities.txt", 'r')
       
       ## Reading the top entity name
       top_entity_name = top_entities_file.readline()
       top_entity_name = top_entity_name.replace("\n", '')

       commands.getoutput('cp ./' + func  + '.vhd ' + config_options["work_dir"] + 'SysPy/work/' + func  + '.vhd' )
       
       print("************************************\n" + "System Python (SysPy)\n" + "Author: Evangelos Logaras\n" + "************************************\n\n") 
       
       print("Generated VHDL files:" + config_options["work_dir"] + "SysPy/work/" + func + ".vhd")



# Creating the tcl script - deleting "top_entities.ctc" entries
#----------------------------------------------------------------------------------------------------------------------------------   
       if(func == top_entity_name):   
              funcs._gen_ISE_script.gen_ISE_script(comp_names, attributes, config_options)
              top_entities_file.close()
              top_entities_file = open(config_options["syspy_dir"] + "top_entities.txt", 'w')
              top_entities_file.close()
              print("Generated Tcl script:" + config_options["work_dir"] + "SysPy/work/" + func + ".tcl")
#----------------------------------------------------------------------------------------------------------------------------------   

       # Generate IPXACT description              
       funcs._IPXACTGenerator.IPXACTGenerator(func, signals_i, signals_o, signals_io, config_options)
       print("Generated IP-XACT model files:" + config_options["work_dir"] + "SysPy/work/" + func + ".xml")



