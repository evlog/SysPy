##def txt2BRAM2(CFile):
##       """
##       FUNCTION: txt2BRAM2(a str)
##              a: text file name string
##              
##       - Initalizing a VHDL array with the contentes of a text file.
##       """
##

# Python's variable declerations
#----------------------------------------------------------------------------------------------------------------------------------
txtFile = ''
txtFile_name = ''
x = ''
s = ''
msg = ''
vhdFile_temp1 = ''
vhdFile_temp2 = ''
memFile = ''
memFilearr = []


bram0 = []
bram1 = []
bram2 = []
bram3 = []
bram4 = []
bram5 = []
bram6 = []
bram7 = []
bram8 = []
bram9 = []
bram10 = []
bram11 = []
bram12 = []
bram13 = []
bram14 = []
bram15 = []
bram16 = []
bram17 = []
bram18 = []
bram19 = []
bram20 = []
bram21 = []
bram22 = []
bram23 = []
bram24 = []
bram25 = []
bram26 = []
bram27 = []
bram28 = []
bram29 = []
bram30 = []
bram31 = []
bram32 = []
bram33 = []
bram34 = []
bram35 = []
bram36 = []
bram37 = []
bram38 = []
bram39 = []
bram40 = []
bram41 = []
bram42 = []
bram43 = []
bram44 = []
bram45 = []
bram46 = []
bram47 = []
bram48 = []
bram49 = []
bram50 = []
bram51 = []
bram52 = []
bram53 = []
bram54 = []
bram55 = []
bram56 = []
bram57 = []
bram58 = []
bram59 = []
bram60 = []
bram61 = []
bram62 = []
bram63 = []

bram_mem = [bram0, bram1, bram2, bram3, bram4, bram5, bram6, bram7,
            bram8, bram9, bram10, bram11, bram12, bram13, bram14, bram15,
            bram16, bram17, bram18, bram19, bram20, bram21, bram22, bram23,
            bram24, bram25, bram26, bram27, bram28, bram29, bram30, bram31,
            bram32, bram33, bram34, bram35, bram36, bram37, bram38, bram39,
            bram40, bram41, bram42, bram43, bram44, bram45, bram46, bram47,
            bram48, bram49, bram50, bram51, bram52, bram53, bram54, bram55,
            bram56, bram57, bram58, bram59, bram60, bram61, bram62, bram63]

#----------------------------------------------------------------------------------------------------------------------------------
msg = "File name: "
txtFile_name = raw_input(msg).strip()

txtFile = open("./" + txtFile_name + ".txt", 'r')

vhdFile_temp1 = open("./Initmems_temp1.vhd", 'r')
vhdFile_temp2 = open("./Initmems_temp2.vhd", 'r')
temp1 = vhdFile_temp1.read()
temp2 = vhdFile_temp2.read()
memFile = open("./Initmems.vhd", 'w')
memFile.write(temp1)

x = txtFile.read()

x = x.replace("\n", '')

for i in range(0, len(x), 40):
       memFilearr.append(x[i:(i+40)])

for i in range((512 - len(memFilearr))):
       if (i == (512 - (len(memFilearr)))):
              memFilearr.append("0000000000000000000000000000000000000000")
       else:
              memFilearr.append("0000000000000000000000000000000000000000")

#print memFilearr
#print len(memFilearr)

for i in range(0, len(memFilearr)):
       if (i < 8):
              bram_mem[0].append(memFilearr[i])
       elif ((i >= 8) and (i < 16)):
              bram_mem[1].append(memFilearr[i])
       elif ((i >= 16) and (i < 24)):
              bram_mem[2].append(memFilearr[i])
       elif ((i >= 24) and (i < 32)):
              bram_mem[3].append(memFilearr[i])
       elif ((i >= 32) and (i < 40)):
              bram_mem[4].append(memFilearr[i])
       elif ((i >= 40) and (i < 48)):
              bram_mem[5].append(memFilearr[i])
       elif ((i >= 48) and (i < 56)):
              bram_mem[6].append(memFilearr[i])
       elif ((i >= 56) and (i < 64)):
              bram_mem[7].append(memFilearr[i])
       elif ((i >= 64) and (i < 72)):
              bram_mem[8].append(memFilearr[i])
       elif ((i >= 72) and (i < 80)):
              bram_mem[9].append(memFilearr[i])
       elif ((i >= 80) and (i < 88)):
              bram_mem[10].append(memFilearr[i])
       elif ((i >= 88) and (i < 96)):
              bram_mem[11].append(memFilearr[i])
       elif ((i >= 96) and (i < 104)):
              bram_mem[12].append(memFilearr[i])
       elif ((i >= 104) and (i < 112)):
              bram_mem[13].append(memFilearr[i])
       elif ((i >= 112) and (i < 120)):
              bram_mem[14].append(memFilearr[i])
       elif ((i >= 120) and (i < 128)):
              bram_mem[15].append(memFilearr[i])
       elif ((i >= 128) and (i < 136)):
              bram_mem[16].append(memFilearr[i])
       elif ((i >= 136) and (i < 144)):
              bram_mem[17].append(memFilearr[i])
       elif ((i >= 144) and (i < 152)):
              bram_mem[18].append(memFilearr[i])
       elif ((i >= 152) and (i < 160)):
              bram_mem[19].append(memFilearr[i])
       elif ((i >= 160) and (i < 168)):
              bram_mem[20].append(memFilearr[i])
       elif ((i >= 168) and (i < 176)):
              bram_mem[21].append(memFilearr[i])
       elif ((i >= 176) and (i < 184)):
              bram_mem[22].append(memFilearr[i])
       elif ((i >= 184) and (i < 192)):
              bram_mem[23].append(memFilearr[i])
       elif ((i >= 192) and (i < 200)):
              bram_mem[24].append(memFilearr[i])
       elif ((i >= 200) and (i < 208)):
              bram_mem[25].append(memFilearr[i])
       elif ((i >= 208) and (i < 216)):
              bram_mem[26].append(memFilearr[i])
       elif ((i >= 216) and (i < 224)):
              bram_mem[27].append(memFilearr[i])
       elif ((i >= 224) and (i < 232)):
              bram_mem[28].append(memFilearr[i])
       elif ((i >= 232) and (i < 240)):
              bram_mem[29].append(memFilearr[i])
       elif ((i >= 240) and (i < 248)):
              bram_mem[30].append(memFilearr[i])
       elif ((i >= 248) and (i < 256)):
              bram_mem[31].append(memFilearr[i])
       elif ((i >= 256) and (i < 264)):
              bram_mem[32].append(memFilearr[i])
       elif ((i >= 264) and (i < 272)):
              bram_mem[33].append(memFilearr[i])
       elif ((i >= 272) and (i < 280)):
              bram_mem[34].append(memFilearr[i])
       elif ((i >= 280) and (i < 288)):
              bram_mem[35].append(memFilearr[i])
       elif ((i >= 288) and (i < 296)):
              bram_mem[36].append(memFilearr[i])
       elif ((i >= 296) and (i < 304)):
              bram_mem[37].append(memFilearr[i])
       elif ((i >= 304) and (i < 312)):
              bram_mem[38].append(memFilearr[i])
       elif ((i >= 312) and (i < 320)):
              bram_mem[39].append(memFilearr[i])
       elif ((i >= 320) and (i < 328)):
              bram_mem[40].append(memFilearr[i])
       elif ((i >= 328) and (i < 336)):
              bram_mem[41].append(memFilearr[i])
       elif ((i >= 336) and (i < 344)):
              bram_mem[42].append(memFilearr[i])
       elif ((i >= 344) and (i < 352)):
              bram_mem[43].append(memFilearr[i])
       elif ((i >= 352) and (i < 360)):
              bram_mem[44].append(memFilearr[i])
       elif ((i >= 360) and (i < 368)):
              bram_mem[45].append(memFilearr[i])
       elif ((i >= 368) and (i < 376)):
              bram_mem[46].append(memFilearr[i])
       elif ((i >= 376) and (i < 384)):
              bram_mem[47].append(memFilearr[i])
       elif ((i >= 384) and (i < 392)):
              bram_mem[48].append(memFilearr[i])
       elif ((i >= 392) and (i < 400)):
              bram_mem[49].append(memFilearr[i])
       elif ((i >= 400) and (i < 408)):
              bram_mem[50].append(memFilearr[i])
       elif ((i >= 408) and (i < 416)):
              bram_mem[51].append(memFilearr[i])
       elif ((i >= 416) and (i < 424)):
              bram_mem[52].append(memFilearr[i])
       elif ((i >= 424) and (i < 432)):
              bram_mem[53].append(memFilearr[i])
       elif ((i >= 432) and (i < 440)):
              bram_mem[54].append(memFilearr[i])
       elif ((i >= 440) and (i < 448)):
              bram_mem[55].append(memFilearr[i])
       elif ((i >= 448) and (i < 456)):
              bram_mem[56].append(memFilearr[i])
       elif ((i >= 456) and (i < 464)):
              bram_mem[57].append(memFilearr[i])
       elif ((i >= 464) and (i < 472)):
              bram_mem[58].append(memFilearr[i])
       elif ((i >= 472) and (i < 480)):
              bram_mem[59].append(memFilearr[i])
       elif ((i >= 480) and (i < 488)):
              bram_mem[60].append(memFilearr[i])
       elif ((i >= 488) and (i < 496)):
              bram_mem[61].append(memFilearr[i])
       elif ((i >= 496) and (i < 504)):
              bram_mem[62].append(memFilearr[i])
       elif ((i >= 504) and (i < 512)):
              bram_mem[63].append(memFilearr[i])


for i in range(0, 64):
       s = s + "\n  "

       for j in range(len(bram_mem[i])):
              s = s + "X\"" + bram_mem[i][j] + "\","

s = s[:(len(s) - 1)]
                            
memFile.write(s)
memFile.write("\n" + temp2)
memFile.close()
