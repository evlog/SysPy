import _MyExceptions
reload(_MyExceptions)
from pdb import *
import commands

def leon3_sw_os(OSName, CFile, proc_os_name_dict, config_options):
       """
       FUNCTION: leon3_sw_os(a str, b[], c{}, d{})
              a: OS name string
              b: C file name(s) string list
              c: supported OSs dictionary
              d: dictionary containing configuration file path
              
       - Software compilation using GCC along with OS kernel for the Leon3 processor core.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
       command = ''
       command_output = ''
       Makefile_local_temp = ''
       read_Makefile_local_temp = ''
       Makefile_local = ''
       Makefile_temp = ''
       read_Makefile_temp = ''
       Makefile = ''
       config_temp = ''
       read_config_temp = ''
       config = ''
       config_help_temp = ''
       read_config_help_temp = ''
       config_help = ''
       flag_OS = 0
#----------------------------------------------------------------------------------------------------------------------------------

# Check if the declared OS is supported
#----------------------------------------------------------------------------------------------------------------------------------
       for i in proc_os_name_dict["leon3mp"]:
              if (i == OSName):
                     flag_OS = 1

       if (flag_OS == 0):
              raise _MyExceptions.MyExceptions("Operating system \"" + OSName + "\" not supported for Leon3 processor.")              
#----------------------------------------------------------------------------------------------------------------------------------

# Prepare Snapgear's directories and config files
#----------------------------------------------------------------------------------------------------------------------------------
       if (OSName == "snapgear"):
              command = "mkdir " + config_options["snapgear_dir"] + "/user/" + CFile[0]
              command_output = commands.getoutput(command)
    
       #command = "cp ./proc_sw/leon3/" + CFile[0] + ".c " "/opt/snapgear-2.6-p42/user/" + CFile[0] + '/'
       command = "cp " + config_options["work_dir"] + "proc_sw/leon3/" + CFile[0] + ".c " + config_options["snapgear_dir"] + "/user/" + CFile[0] + '/'
       command_output = commands.getoutput(command) 
       print "*********************", command_output
#----------  
       Makefile_local_temp = open(config_options["syspy_dir"] + "Leon3_comps/snapgear/Makefile_local_temp", 'r') 
       Makefile_local = open(config_options["snapgear_dir"] + "/user/" + CFile[0] + "/Makefile", 'w') 

       read_Makefile_local_temp = Makefile_local_temp.read()
       read_Makefile_local_temp = read_Makefile_local_temp.replace("exec_name", CFile[0])
       read_Makefile_local_temp = read_Makefile_local_temp.replace("obj_name", CFile[0] + ".o")

       Makefile_local.write(read_Makefile_local_temp)

       Makefile_local_temp.close()
       Makefile_local.close()
#----------
       Makefile_temp = open(config_options["syspy_dir"] + "Leon3_comps/snapgear/Makefile_temp", 'r') 
       Makefile = open(config_options["snapgear_dir"] + "user/Makefile", 'w')

       read_Makefile_temp = Makefile_temp.read()
       read_Makefile_temp = read_Makefile_temp.replace("userapp1", CFile[0].upper())   
       read_Makefile_temp = read_Makefile_temp.replace("userapp2", CFile[0])   

       Makefile.write(read_Makefile_temp)

       Makefile_temp.close()
       Makefile.close()
#----------
       config_temp = open(config_options["syspy_dir"] + "Leon3_comps/snapgear/config_temp.in", 'r') 
       config = open(config_options["snapgear_dir"] + "config/config.in", 'w')

       read_config_temp = config_temp.read()
       read_config_temp = read_config_temp.replace("userapp1", CFile[0])   
       read_config_temp = read_config_temp.replace("userapp2", CFile[0].upper())   

       config.write(read_config_temp)

       config_temp.close()
       config.close()
#----------
       config_help_temp = open(config_options["syspy_dir"] + "Leon3_comps/snapgear/Configure_temp.help", 'r') 
       config_help = open(config_options["snapgear_dir"] + "config/Configure.help", 'w')

       read_config_help_temp = config_help_temp.read()
       read_config_help_temp = read_config_help_temp.replace("userapp1", CFile[0].upper())   
       read_config_help_temp = read_config_help_temp.replace("userapp2", CFile[0])   

       config_help.write(read_config_help_temp)

       config_help_temp.close()
       config_help.close()
#----------
#----------------------------------------------------------------------------------------------------------------------------------
#       command = "sparc-elf-gcc -Wall -msoft-float -mcpu=v8 -g -o " 
     
#       for i in range(len(CFile)):
#              if (i == 0):
#                     command = command + "./SysPy_ver/proc_sw/leon3/" + CFile[i] + ' '
#                     command = command + "./SysPy_ver/proc_sw/leon3/" + CFile[i] + ".c "

#              else:
#                     command = command + "./SysPy_ver/proc_sw/leon3/" + CFile[i] + ".c "

#       command = command + "-luip -lm"
  
#       print("command:", command)

#       #command = "sparc-elf-gcc -Wall -msoft-float -mcpu=v8 -g -o ./proc_sw/leon3/" + CFile + " ./proc_sw/leon3/greth_api.c ./proc_sw/leon3/" + CFile + ".c -luip"
       
#       command_output = commands.getoutput(command)

#       print(command_output)

#       if (command_output.find("error:") != -1):
#              raise _MyExceptions.MyExceptions("C/C++ file compilation error.")
       

       
