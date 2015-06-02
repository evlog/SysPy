from pdb import *
import commands

def hex2PM(CFile):
       """
       FUNCTION: signal_compatibility(a str)
              a: C file name string
              
       - Checking the compatibility of left signals against the right signals assignment.
       """
       
# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------
       #print(commands.getoutput('make -C ./proc_sw'))
       #set_trace()
       hexFile = open("./" + CFile + ".hex", 'r')

       vhdFile_temp1 = open("./XPM8Kx16_temp1.vhd", 'r')
       vhdFile_temp2 = open("./XPM8Kx16_temp2.vhd", 'r')
       temp1 = vhdFile_temp1.read()
       temp2 = vhdFile_temp2.read()
       memFile = open("./XPM8Kx16.vhd", 'w')
       memFile.write(temp1)

       x = ''
       y = ' '
       while(y != ''):
              y = hexFile.readline()
              y = y.replace("\n", '')
              y = y.replace(':', '')
              y = y.replace("\r", '')
              if (y[0:2] != "00"):
                     y = y[8:(len(y) - 2)]
                     print(y)
                     x = x + y
              

       #x = hexFile.read()

       #x = x.replace(':', '')
       #x = x.replace("\n", '')
       #x = x.replace("\r", '')
       memFilearr = []

       bram0h = []
       bram0l = []

       bram1h = []
       bram1l = []

       bram2h = []
       bram2l = []

       bram3h = []
       bram3l = []

       bram4h = []
       bram4l = []

       bram5h = []
       bram5l = []

       bram6h = []
       bram6l = []

       bram7h = []
       bram7l = []

       bram8h = []
       bram8l = []

       bram9h = []
       bram9l = []

       bram10h = []
       bram10l = []

       bram11h = []
       bram11l = []

       bram12h = []
       bram12l = []

       bram13h = []
       bram13l = []

       bram14h = []
       bram14l = []

       bram15h = []
       bram15l = []

       bram_mem = [bram0h, bram0l, bram1h, bram1l, bram2h, bram2l, bram3h, bram3l,
                   bram4h, bram4l, bram5h, bram5l, bram6h, bram6l, bram7h, bram7l,
                    bram8h, bram8l, bram9h, bram9l, bram10h, bram10l, bram11h, bram11l,
                    bram12h, bram12l, bram13h, bram13l, bram14h, bram14l, bram15h, bram15l]

       for i in range(0, len(x), 2):
              if (i != (len(x) - 1)):
                     memFilearr.append(x[i] + x[i+1])



       for i in range((16384 - len(memFilearr))):
              if (i == (16384 - (len(memFilearr)))):
                     memFilearr.append("00")
              else:
                     memFilearr.append("00")

       for i in range(0, len(memFilearr), 2):
              if (i < 1024):
                     bram_mem[0].append(memFilearr[i])
              elif ((i >= 1024) and (i < 2048)):
                     bram_mem[2].append(memFilearr[i])
              elif ((i >= 2048) and (i < 3072)):
                     bram_mem[4].append(memFilearr[i])
              elif ((i >= 3072) and (i < 4096)):
                     bram_mem[6].append(memFilearr[i])
              elif ((i >= 4096) and (i < 5120)):
                     bram_mem[8].append(memFilearr[i])
              elif ((i >= 5120) and (i < 6144)):
                     bram_mem[10].append(memFilearr[i])
              elif ((i >= 6144) and (i < 7168)):
                     bram_mem[12].append(memFilearr[i])
              elif ((i >= 7168) and (i < 8192)):
                     bram_mem[14].append(memFilearr[i])
              elif ((i >= 8192) and (i < 9216)):
                     bram_mem[16].append(memFilearr[i])
              elif ((i >= 9216) and (i < 10240)):
                     bram_mem[18].append(memFilearr[i])
              elif ((i >= 10240) and (i < 11264)):
                     bram_mem[20].append(memFilearr[i])
              elif ((i >= 11264) and (i < 12288)):
                     bram_mem[22].append(memFilearr[i])
              elif ((i >= 12288) and (i < 13312)):
                     bram_mem[24].append(memFilearr[i])
              elif ((i >= 13312) and (i < 14336)):
                     bram_mem[26].append(memFilearr[i])
              elif ((i >= 14336) and (i < 15360)):
                     bram_mem[28].append(memFilearr[i])
              elif (i >= 15360):
                     bram_mem[30].append(memFilearr[i])

       for i in range(1, len(memFilearr), 2):
              if (i < 1024):
                     bram_mem[1].append(memFilearr[i])
              elif ((i >= 1024) and (i < 2048)):
                     bram_mem[3].append(memFilearr[i])
              elif ((i >= 2048) and (i < 3072)):
                     bram_mem[5].append(memFilearr[i])
              elif ((i >= 3072) and (i < 4096)):
                     bram_mem[7].append(memFilearr[i])
              elif ((i >= 4096) and (i < 5120)):
                     bram_mem[9].append(memFilearr[i])
              elif ((i >= 5120) and (i < 6144)):
                     bram_mem[11].append(memFilearr[i])
              elif ((i >= 6144) and (i < 7168)):
                     bram_mem[13].append(memFilearr[i])
              elif ((i >= 7168) and (i < 8192)):
                     bram_mem[15].append(memFilearr[i])
              elif ((i >= 8192) and (i < 9216)):
                     bram_mem[17].append(memFilearr[i])
              elif ((i >= 9216) and (i < 10240)):
                     bram_mem[19].append(memFilearr[i])
              elif ((i >= 10240) and (i < 11264)):
                     bram_mem[21].append(memFilearr[i])
              elif ((i >= 11264) and (i < 12288)):
                     bram_mem[23].append(memFilearr[i])
              elif ((i >= 12288) and (i < 13312)):
                     bram_mem[25].append(memFilearr[i])
              elif ((i >= 13312) and (i < 14336)):
                     bram_mem[27].append(memFilearr[i])
              elif ((i >= 14336) and (i < 15360)):
                     bram_mem[29].append(memFilearr[i])
              elif (i >= 15360):
                     bram_mem[31].append(memFilearr[i])

       for i in range(len(bram_mem)):
              count = -1
              temp0 = []
              temp1 = []
              for j in range(len(bram_mem[i])):
                     count = count + 1
                     temp0.append(bram_mem[i][j])
                     if (count == 31):
                            temp0.reverse()
                            temp1 = temp1 + temp0
                            temp0 = []
                            count = -1
              bram_mem[i] = temp1

       s = ''
       #s = s + "WEBL_int <= WEBL(i) & WEBL(i);\n"
       # = s + "WEBH_int <= WEBH(i) & WEBH(i);\n\n"
       for i in range(0, 16):       
              s = s + "PMEM" + str(i) +": if i = " + str(i) + " generate\nRAM_ByteLow : RAMB18\ngeneric map (\n"
              s = s + "DOA_REG => 0,\n"  
              s = s + "DOB_REG => 0,\n"  
              s = s + "INIT_A => X\"00000\",\n" 
              s = s + "INIT_B => X\"00000\",\n" 
              s = s + "READ_WIDTH_A => 9,\n"
              s = s + "READ_WIDTH_B => 9,\n"
              s = s + "SIM_COLLISION_CHECK => \"ALL\",\n" 
              s = s + "--SIM_MODE => \"SAFE\",\n" 
              s = s + "SRVAL_A => X\"00000\",\n"  
              s = s + "SRVAL_B => X\"00000\",\n"   
              s = s + "WRITE_MODE_A => \"NO_CHANGE\",\n" 
              s = s + "WRITE_MODE_B => \"NO_CHANGE\",\n" 
              s = s + "WRITE_WIDTH_A => 9,\n"  
              s = s + "WRITE_WIDTH_B => 9,\n"

              count = -1
              for j in range(len(bram_mem[2 * i])):
                     if ((j % 32) == 0):
                            count = count + 1
                            hex_count = hex(count)
                            hex_count = hex_count.replace('x', '')
                            if (count == 0):
                                   s = s + "\nINIT_" + hex_count + " => X\""
                            else:
                                   s = s + "\",\nINIT_" + hex_count + " => X\""
                     elif ((j % 32) != 0):
                            if ((j % 32) == 1):
                                   s = s + bram_mem[2 * i][j - 1] + bram_mem[2 * i][j]
                            else:
                                   s = s + bram_mem[2 * i][j]

              for j in range(1536):
                     if ((j % 32) == 0):
                            count = count + 1
                            hex_count = hex(count)
                            hex_count = hex_count.replace('x', '')
                            hex_count = hex_count[1:]
                            if (count == 0):
                                   s = s + "\nINIT_" + hex_count + " => X\""
                            else:
                                   s = s + "\",\nINIT_" + hex_count + " => X\""
                     elif ((j % 32) != 0):
                            if ((j % 32) == 1):
                                   s = s + "0000"
                            else:
                                   s = s + "00"

              count = -1
              for j in range(256):
                     if ((j % 32) == 0):
                            count = count + 1
                            hex_count = hex(count)
                            hex_count = hex_count.replace('x', '')
                            if (count == 0):
                                   s = s + "\",\n\nINITP_" + hex_count + " => X\""
                            else:
                                   s = s + "\",\nINITP_" + hex_count + " => X\""
                     elif ((j % 32) != 0):
                            if ((j % 32) == 1):
                                   s = s + "0000"
                            else:
                                   s = s + "00"

              s = s + "\")\n\nport map (\n"
              s = s + "DOA => RAMBlDOut(i)(15 downto 0),\n"
              s = s + "DOB => open,\n"
              s = s + "DOPA => open,\n"  
              s = s + "DOPB => open,\n"  
              s = s + "ADDRA => address_int,\n" 
              s = s + "ADDRB => \"00000000000000\",\n"
              s = s + "CLKA => cp2,\n"
              s = s + "CLKB => '0',\n"  
              s = s + "DIA(7 downto 0) => din(7 downto 0),\n"
              s = s + "DIA(15 downto 8) => \"00000000\",\n"
              s = s + "DIB => \"0000000000000000\",\n" 
              s = s + "DIPA => \"00\",\n"  
              s = s + "DIPB => \"00\",\n" 
              s = s + "ENA => ce,\n" 
              s = s + "ENB => '0',\n" 
              s = s + "REGCEA => '0',\n"
              s = s + "REGCEB => '0',\n" 
              s = s + "SSRA => '0',\n" 
              s = s + "SSRB => '0',\n" 
              s = s + "WEA(0) => WEBL(i),\n"
              s = s + "WEA(1) => WEBL(i),\n" 
              s = s + "WEB => \"00\"\n);\n"  

              
              #s = s + "\")\nport map (\nDO => RAMBlDOut(i)(7 downto 0),\nADDR => address(8 downto 0),\nDI   => din(7 downto 0),\nEN   => ce,\nCLK  => cp2,\nWE   => WEBL(i),\nRST  => gnd\n);\n"

              s = s + "\nRAM_ByteHigh : RAMB18\ngeneric map (\n"
              s = s + "DOA_REG => 0,\n"  
              s = s + "DOB_REG => 0,\n"  
              s = s + "INIT_A => X\"00000\",\n" 
              s = s + "INIT_B => X\"00000\",\n" 
              s = s + "READ_WIDTH_A => 9,\n"
              s = s + "READ_WIDTH_B => 9,\n"
              s = s + "SIM_COLLISION_CHECK => \"ALL\",\n" 
              s = s + "--SIM_MODE => \"SAFE\",\n" 
              s = s + "SRVAL_A => X\"00000\",\n"  
              s = s + "SRVAL_B => X\"00000\",\n"   
              s = s + "WRITE_MODE_A => \"NO_CHANGE\",\n" 
              s = s + "WRITE_MODE_B => \"NO_CHANGE\",\n" 
              s = s + "WRITE_WIDTH_A => 9,\n"  
              s = s + "WRITE_WIDTH_B => 9,\n"  

              count = -1
              for j in range(len(bram_mem[(2 * i) + 1])):
                     if ((j % 32) == 0):
                            count = count + 1
                            hex_count = hex(count)
                            hex_count = hex_count.replace('x', '')
                            if (count == 0):
                                   s = s + "\nINIT_" + hex_count + " => X\""
                            else:
                                   s = s + "\",\nINIT_" + hex_count + " => X\""
                     elif ((j % 32) != 0):
                            if ((j % 32) == 1):
                                   s = s + bram_mem[(2 * i) + 1][j - 1] + bram_mem[(2 * i) + 1][j]
                            else:
                                   s = s + bram_mem[(2 * i) + 1][j]

              for j in range(1536):
                     if ((j % 32) == 0):
                            count = count + 1
                            hex_count = hex(count)
                            hex_count = hex_count.replace('x', '')
                            hex_count = hex_count[1:]
                            if (count == 0):
                                   s = s + "\nINIT_" + hex_count + " => X\""
                            else:
                                   s = s + "\",\nINIT_" + hex_count + " => X\""
                     elif ((j % 32) != 0):
                            if ((j % 32) == 1):
                                   s = s + "0000"
                            else:
                                   s = s + "00"

              count = -1
              for j in range(256):
                     if ((j % 32) == 0):
                            count = count + 1
                            hex_count = hex(count)
                            hex_count = hex_count.replace('x', '')
                            if (count == 0):
                                   s = s + "\",\n\nINITP_" + hex_count + " => X\""
                            else:
                                   s = s + "\",\nINITP_" + hex_count + " => X\""
                     elif ((j % 32) != 0):
                            if ((j % 32) == 1):
                                   s = s + "0000"
                            else:
                                   s = s + "00"

              s = s + "\")\n\nport map (\n"
              s = s + "DOA => RAMBlDOut(i)(31 downto 16),\n"
              s = s + "DOB => open,\n"
              s = s + "DOPA => open,\n"  
              s = s + "DOPB => open,\n"  
              s = s + "ADDRA => address_int,\n" 
              s = s + "ADDRB => \"00000000000000\",\n"
              s = s + "CLKA => cp2,\n"
              s = s + "CLKB => '0',\n"  
              s = s + "DIA(7 downto 0) => din(15 downto 8),\n"
              s = s + "DIA(15 downto 8) => \"00000000\",\n"
              s = s + "DIB => \"0000000000000000\",\n" 
              s = s + "DIPA => \"00\",\n"  
              s = s + "DIPB => \"00\",\n" 
              s = s + "ENA => ce,\n" 
              s = s + "ENB => '0',\n" 
              s = s + "REGCEA => '0',\n"
              s = s + "REGCEB => '0',\n" 
              s = s + "SSRA => '0',\n" 
              s = s + "SSRB => '0',\n" 
              s = s + "WEA(0) => WEBH(i),\n"
              s = s + "WEA(1) => WEBH(i),\n"
              s = s + "WEB => \"00\"\n);\n"  

              #s = s + "\")\nport map (\nDO => RAMBlDOut(i)(15 downto 8),\nADDR => address(8 downto 0),\nDI   => din(15 downto 8),\nEN   => ce,\nCLK  => cp2,\nWE   => WEBH(i),\nRST  => gnd\n);\n"
              s = s +"end generate;\n"



       memFile.write(s)
       memFile.write(temp2)
       memFile.close()
