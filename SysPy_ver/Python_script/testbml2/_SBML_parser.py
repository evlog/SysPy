import struct
import _txt2BRAM
import commands
import subprocess
from pdb import *

file_name = ["k_parameter.txt", "RT_reactant.txt", "RT_product.txt", "VT_reactant.txt", "VT_product.txt", "ST.txt", "fsize.txt"]
Gillespie_algorithm_values = ["FRM", "NRM"]
num_processor_values = ['1', '2', '4']
sim_mode_values = ['0', '1']
gen_seed_arr = []

msg = "XML file name: "
XMLFile_name = raw_input(msg).strip()

while ((XMLFile_name.find(".xml") == -1) and (XMLFile_name != '')):
	msg = "Please re-enter the name of XML file: "
	XMLFile_name = raw_input(msg).strip()

msg = "Simulation mode ([0, 1]): "
gen_sim_mode = raw_input(msg).strip()

flag = 0
while (gen_sim_mode != ''):
	for i in range(len(sim_mode_values)):
		if (gen_sim_mode == sim_mode_values[i]):
			flag = 1

	if (flag == 1):
		break

	msg = "Please re-enter simulation mode ([0, 1]): "
	gen_sim_mode = raw_input(msg).strip()

if (gen_sim_mode == ''):
       gen_sim_mode = '0'

msg = "Number of simulations ([1 - 65536]): "
gen_sim_num = raw_input(msg).strip()

flag = 0
while (gen_sim_num != ''):
	if ((int(gen_sim_num) >= 1) and (int(gen_sim_num) <= 65536)):
		flag = 1

	if (flag == 1):
		break

	msg = "Please re-enter number of simulations ([1 - 65536]): "
	gen_sim_num = raw_input(msg).strip()

if (gen_sim_num == ''):
       gen_sim_num = '1'

msg = "Number of processors ([1, 2, 4]): "
gen_num_proc = raw_input(msg).strip()

flag = 0
while (gen_num_proc != ''):	
	for i in range(len(num_processor_values)):
		if (gen_num_proc == num_processor_values[i]):
			flag = 1

	if (flag == 1):
		break

	msg = "Please re-enter the number of processors ([1, 2, 4]): "
	gen_num_proc = raw_input(msg).strip()

if (gen_num_proc == ''):
	gen_num_proc = '1'
	
msg = "Gillespie Algorithm ([FRM, NRM]): "
gen_algorithm = raw_input(msg).strip()

flag = 0
while (gen_algorithm != ''):	
	for i in range(len(Gillespie_algorithm_values)):
		if (gen_algorithm == Gillespie_algorithm_values[i]):
			flag = 1

	if (flag == 1):
		break

	msg = "Please re-enter the Gillespie Algorithm ([FRM, NRM]): "
	gen_algorithm = raw_input(msg).strip()

if (gen_algorithm == ''):
       gen_algorithm = "FRM"

if (gen_algorithm == "FRM"):
	if (gen_num_proc == '1'):
		Gillespie_comp = "proc_wrapper_FRM1X.vhd" 
		num_seed = 1
	elif (gen_num_proc == '2'):
		Gillespie_comp = "proc_wrapper_FRM2X.vhd"
		num_seed = 2
	elif (gen_num_proc == '4'):
		Gillespie_comp = "proc_wrapper_FRM4X.vhd"
		num_seed = 4
	else:
		Gillespie_comp = "proc_wrapper_FRM1X.vhd"
		num_seed = 2
elif (gen_algorithm == "NRM"):
	Gillespie_comp = "LEONplusFRM4XNRM4X_2param.vhd"
	num_seed = 4
else:
	Gillespie_comp = "proc_wrapper3.vhd"
	num_seed = 2



for i in range(num_seed):
	msg = "Random generator seed " + str(i) + " (0 - 255): "
	gen_seed = raw_input(msg).strip()

	flag = 0
	while (gen_seed != ''):
		if ((int(gen_seed) >= 0) and (int(gen_seed) <= 255)):
			flag = 1

		if (flag == 1):
			break

		msg = "Please re-enter Random generator seed " + str(i) + " (0 - 255): "
		gen_seed = raw_input(msg).strip()

	gen_seed_arr.append(gen_seed)
	
		
if (XMLFile_name != ''):
       commands.getoutput("./parser_Sbmlmy_size " + XMLFile_name)






       


txtFile_kparam = open(file_name[0], 'r')

x = ' '
kparam = []


while(x != ''):
    x = txtFile_kparam.readline().replace("\n", '')

    if (x != ''):
           y = float(x)
           s = struct.pack('>f', y)
           h = ''.join('%.x' % ord(c) for c in s)

           if(len(h) < 8):
                  for i in range(8 - len(h)):
                         h = h + '0'
           
           kparam.append(h)

txtFile_kparam.close()

txtFile_rtreactant = open(file_name[1], 'r')

x = ' '
rtreactant = []

while(x != ''):
       if (x != ''):
              x = txtFile_rtreactant.readline()
              s = x.split('\t')
              for i in range(len(s)):
                     if (s[i] == "\n"):
                            s[i] = '0'
              if len(s) < 3:
                     for i in range(3 - len(s)):
                            s.append('0')
                                       
              rtreactant.append(s)


              
if (rtreactant[(len(rtreactant) - 1)][0] == ''):
       rtreactant =rtreactant[:(len(rtreactant) - 1)]

txtFile_rtreactant.close()

txtFile_rtproduct = open(file_name[2], 'r')

x = ' '
rtproduct = []

while(x != ''):
       if (x != ''):
              x = txtFile_rtproduct.readline()
              s = x.split('\t')
              for i in range(len(s)):
                     if (s[i] == "\n"):
                            s[i] = '0'
              if len(s) < 5:
                     for i in range(5 - len(s)):
                            s.append('0')

              rtproduct.append(s)
              
if (rtproduct[(len(rtproduct) - 1)][0] == ''):
       rtproduct =rtproduct[:(len(rtproduct) - 1)]

txtFile_rtproduct.close()

RThex_arr = []
for i in range(len(rtreactant)):
       RThex_arr.append('')
       for j in range(len(rtreactant[i])):
              rtreactant[i][j] = hex(int(rtreactant[i][j], 10))
              rtreactant[i][j] =rtreactant[i][j].replace("0x", '')
              if (len(rtreactant[i][j]) < 8):
                     for k in range(8 - len(rtreactant[i][j])):
                            rtreactant[i][j] = '0' +  rtreactant[i][j]

              RThex_arr[i] = RThex_arr[i] + rtreactant[i][j]

       RThex_arr[i] = RThex_arr[i] + kparam[i]

       for j in range(len(rtproduct[i])):
              rtproduct[i][j] = hex(int(rtproduct[i][j], 10))
              rtproduct[i][j] =rtproduct[i][j].replace("0x", '')
              if (len(rtproduct[i][j]) < 8):
                     for k in range(8 - len(rtproduct[i][j])):
                            rtproduct[i][j] = '0' +  rtproduct[i][j]

              RThex_arr[i] = RThex_arr[i] + rtproduct[i][j]

#print VThex_arr

txtFile_RThex = open("RThex_values.txt", 'w')

for i in range(len(RThex_arr)):
       if (i != (len(RThex_arr) - 1)):
              txtFile_RThex.write(RThex_arr[i] + "\n")
       else:
              txtFile_RThex.write(RThex_arr[i])


txtFile_RThex.close()

txtFile_vtreactant = open(file_name[3], 'r')

x = ' '
vtreactant = []

while(x != ''):
       if (x != ''):
              x = txtFile_vtreactant.readline()
              s = x.split('\t')

              for i in range(len(s)):
                     if (s[i] == "\n"):
                            s[i] = '0'
              if len(s) < 3:
                     for i in range(3 - len(s)):
                            s.append('0')
              #print s
           
              for i in range(len(s)):# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
                     if ((s[i] != '0') and (s[i] != '')):
                            y = float(int(s[i], 10))
                            st = struct.pack('>f', y)
                            h = ''.join('%.x' % ord(c) for c in st)
                            if(len(h) < 8):
                                for j in range(8 - len(h)):
                                       h = h + '0'
                            s[i] = h
                            
                     elif (s[i] == '0'):
                            s[i] = '00000000'

                     elif (s[i] == ''):
                            s[i] = ''
              vtreactant.append(s)
              
if (vtreactant[(len(vtreactant) - 1)][0] == ''):
       vtreactant =vtreactant[:(len(vtreactant) - 1)]

txtFile_vtreactant.close()

txtFile_vtproduct = open(file_name[4], 'r')

x = ' '
vtproduct = []

while(x != ''):
       if (x != ''):
              x = txtFile_vtproduct.readline()
              s = x.split('\t')

              for i in range(len(s)):
                     if (s[i] == "\n"):
                            s[i] = '0'
              if len(s) < 5:
                     for i in range(5 - len(s)):
                            s.append('0')
           
              for i in range(len(s)):
                     if ((s[i] != '0') and (s[i] != '')):
                            y = float(int(s[i], 10))
                            st = struct.pack('>f', y)
                            h = ''.join('%.x' % ord(c) for c in st)
                            if(len(h) < 8):
                                for j in range(8 - len(h)):
                                       h = h + '0'
                            s[i] = h
                            
                     elif (s[i] == '0'):
                            s[i] = '00000000'

                     elif (s[i] == ''):
                            s[i] = ''

              vtproduct.append(s)
              
if (vtproduct[(len(vtproduct) - 1)][0] == ''):
       vtproduct =vtproduct[:(len(vtproduct) - 1)]

txtFile_vtproduct.close()

VThex_arr = []
for i in range(len(vtreactant)):
       VThex_arr.append('')
       for j in range(len(vtreactant[i])):
              VThex_arr[i] = VThex_arr[i] + vtreactant[i][j]


       for j in range(len(vtproduct[i])):
              VThex_arr[i] = VThex_arr[i] + vtproduct[i][j]

#print VThex_arr

txtFile_VThex = open("VThex_values.txt", 'w')

for i in range(len(VThex_arr)):
       if (i != (len(VThex_arr) - 1)):
              txtFile_VThex.write(VThex_arr[i] + "\n")
       else:
              txtFile_VThex.write(VThex_arr[i])


txtFile_VThex.close()

txtFile_stparam = open(file_name[5], 'r')

x = ' '
stparam = []


while(x != ''):
    x = txtFile_stparam.readline().replace("\n", '')

    if (x != ''):
           y = float(x)
           s = struct.pack('>f', y)
           h = ''.join('%.x' % ord(c) for c in s)

           if(len(h) < 8):
                  for i in range(8 - len(h)):
                         h = h + '0'
           
           stparam.append(h)
           
txtFile_stparam.close()

SThex_arr = []
for i in range(len(stparam)):
       SThex_arr.append('')
       SThex_arr[i] = SThex_arr[i] + stparam[i]

txtFile_SThex = open("SThex_values.txt", 'w')

for i in range(len(SThex_arr)):
       if (i != (len(SThex_arr) - 1)):
              txtFile_SThex.write(SThex_arr[i] + "\n")
       else:
              txtFile_SThex.write(SThex_arr[i])


txtFile_SThex.close()


# Writing generic values to Gillespie's top entities
#----------------------------------------------------------------------------------------------------------------------------------
txtFile_fsize = open(file_name[6], 'r')

x = ' '
fsize= []


while(x != ''):
    x = txtFile_fsize.readline().replace("\n", '')

    if (x != ''):
           fsize.append(x)
           
txtFile_fsize.close()

gen_species = fsize[0]
gen_reactions = fsize[1]

txtFile_Gillespie_temp = open("../paramsocs/Leon3_comps_Gill_top/" + Gillespie_comp, 'r')

x = txtFile_Gillespie_temp.read()
x = x.replace("Species_value", gen_species)
x = x.replace("Reactions_value", gen_reactions)
x = x.replace("Number_of_processors", gen_num_proc)
x = x.replace("Sim_mode_value", gen_sim_mode)
x = x.replace("Number_of_sims", gen_sim_num)

for i in range(num_seed):
	x = x.replace("RNGseed_val" + str((i)), gen_seed_arr[i])

txtFile_Gillespie_temp.close()

txtFile_Gillespie_temp = open("../paramsocs/LEONGILL/" + Gillespie_comp, 'w')

txtFile_Gillespie_temp.write(x)
txtFile_Gillespie_temp.close()


print "gen_species", gen_species

if (int(gen_reactions) <= 64):
	gen_reactions_BRAM = 64
elif ((int(gen_reactions) > 64) and (int(gen_reactions) <= 128)):
	gen_reactions_BRAM = 128
elif ((int(gen_reactions) > 128) and (int(gen_reactions) <= 256)):
	gen_reactions_BRAM = 256
elif ((int(gen_reactions) > 256) and (int(gen_reactions) <= 512)):
	gen_reactions_BRAM = 512
elif ((int(gen_reactions) > 512) and (int(gen_reactions) <= 1024)):
	gen_reactions_BRAM = 1024
	
if (int(gen_species) <= 64):
	gen_species_BRAM = 64
elif ((int(gen_species) > 64) and (int(gen_species) <= 128)):
	gen_species_BRAM = 128
elif ((int(gen_species) > 128) and (int(gen_species) <= 256)):
	gen_species_BRAM = 256
elif ((int(gen_species) > 256) and (int(gen_species) <= 512)):
	gen_species_BRAM = 512
elif ((int(gen_species) > 512) and (int(gen_species) <= 1024)):
	gen_species_BRAM = 1024

# Generate the flag table ("OT.txt")
#----------------------------------------------------------------------------------------------------------------------------------
flag_table = []
flag_table_bin = []
for i in range(len(rtreactant)):     
       if (int(rtreactant[i][0], 16) > 0):
              if (int(rtreactant[i][1], 16) > 0):
                     if (int(rtreactant[i][2], 16) > 0):
                            if (int(rtreactant[i][0], 16) == int(rtreactant[i][1], 16) == int(rtreactant[i][2], 16)):
                                   flag_table.append('5')
                            elif (int(rtreactant[i][1], 16) == int(rtreactant[i][2], 16)):
                                   flag_table.append('6')
                            elif (int(rtreactant[i][0], 16) == int(rtreactant[i][2], 16)):
                                   flag_table.append('7')
                            else:
                                   flag_table.append('3')
                     elif (int(rtreactant[i][2], 16) == 0):
                            flag_table.append('2')
                     if (int(rtreactant[i][0], 16) == int(rtreactant[i][1], 16)):
                            flag_table.append('4')
              elif (int(rtreactant[i][1], 16) == 0):
                     flag_table.append('0')

print flag_table
set_trace()

OTFile = open("OT.txt", 'w')

for i in range(len(flag_table)):
       if (i == (len(flag_table) - 1)):
              if (flag_table[i] == '0'):
                     OTFile.write("000")
              elif (flag_table[i] == '1'):
                     OTFile.write("001")
              elif (flag_table[i] == '2'):
                     OTFile.write("010")
              elif (flag_table[i] == '3'):
                     OTFile.write("011")
              elif (flag_table[i] == '4'):
                     OTFile.write("100")
              elif (flag_table[i] == '5'):
                     OTFile.write("101")
              elif (flag_table[i] == '6'):
                     OTFile.write("110")
              elif (flag_table[i] == '7'):
                     OTFile.write("111")
       else:
              if (flag_table[i] == '0'):
                     OTFile.write("000\n")
              elif (flag_table[i] == '1'):
                     OTFile.write("001\n")
              elif (flag_table[i] == '2'):
                     OTFile.write("010\n")
              elif (flag_table[i] == '3'):
                     OTFile.write("011\n")
              elif (flag_table[i] == '4'):
                     OTFile.write("100\n")
              elif (flag_table[i] == '5'):
                     OTFile.write("101\n")
              elif (flag_table[i] == '6'):
                     OTFile.write("110\n")
              elif (flag_table[i] == '7'):
                     OTFile.write("111\n")

OTFile.close()       



_txt2BRAM.txt2BRAM_func0("RThex_values.txt", gen_reactions_BRAM, gen_species_BRAM, int(gen_num_proc))
_txt2BRAM.txt2BRAM_func1("VThex_values.txt", gen_reactions_BRAM, gen_species_BRAM)
_txt2BRAM.txt2BRAM_func2("SThex_values.txt", gen_reactions_BRAM, gen_species_BRAM, int(gen_num_proc))
_txt2BRAM.txt2BRAM_func3("OT.txt", gen_reactions, gen_species_BRAM)

tclFile_temp = open("ISE_script_temp.tcl", 'r')
tcl_temp = tclFile_temp.read()
tclFile = open("ISE_script.tcl", 'w')
tcl_temp = tcl_temp.replace("top_level_entity_vhd", Gillespie_comp)
tcl_temp = tcl_temp.replace("top_level_entity", "\"" + Gillespie_comp.replace(".vhd", '') + "\"")
tclFile.write(tcl_temp)
tclFile_temp.close()
tclFile.close()

#commands.getstatusoutput("xtclsh ISE_script.tcl")
#subprocess.check_call(["xtclsh", "ISE_script.tcl"])

