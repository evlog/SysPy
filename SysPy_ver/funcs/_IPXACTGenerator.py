"""
*****************************************************************************
                                                                            *
                    H E A D E R   I N F O R M A T I O N                     *
                                                                            *
*****************************************************************************
Project Name: SysPy (System Python)
              http://cgi.di.uoa.gr/~evlog/syspy.html

File Name:    _IPXACTGenerator.py

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

  Generate IPXACT model of a module.
"""

import _MyExceptions
reload(_MyExceptions) 
import time
from pdb import *
def IPXACTGenerator(func, signals_i, signals_o, signals_io, config_options):
       """
       FUNCTION: IPXACTGenerator(a str, b([], c[], d[], e{})
              a: string name of the design function
              b: input signals' list
              c: input signals' list
              d: input signals' list
              e: dictionary containing configuration file paths
              
       Generate IPXACT model of a module.
       """
       
       # Python's variable declarations
       #----------------------------------------------------------------------------------------------------------------------------------

       #----------------------------------------------------------------------------------------------------------------------------------

       # Open IPXACT file
       IPXACTFile = open(config_options["work_dir"] + "/SysPy/work/" + func + ".xml", 'w')
      
       # Write IPXACT header and module's name
       #----------------------------------------------------------------------------------------------------------------------------------
       IPXACTFile.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
       IPXACTFile.write("<spirit:component xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:spirit=\"http://www.spiritconsortium.org/XMLSchema/SPIRIT/1685-2009\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.spiritconsortium.org/XMLSchema/SPIRIT/1685-2009 http://www.spiritconsortium.org/XMLSchema/SPIRIT/1685-2009/index.xsd\">\n")
       IPXACTFile.write("\t<spirit:name>" + func + "</spirit:name>\n")
       IPXACTFile.write("\t<spirit:model>\n")
       IPXACTFile.write("\t\t<spirit:views>\n")
       IPXACTFile.write("\t\t\t<spirit:view>\n")
       IPXACTFile.write("\t\t\t\t<spirit:name>vhdlwrapper</spirit:name>\n")
       IPXACTFile.write("\t\t\t\t<spirit:envIdentifier>:modelsim.mentor.com:</spirit:envIdentifier>\n")
       IPXACTFile.write("\t\t\t\t<spirit:envIdentifier>:vcs.synopsys.com:</spirit:envIdentifier>\n")
       IPXACTFile.write("\t\t\t\t<spirit:envIdentifier>:designcompiler.synopsys.com:</spirit:envIdentifier>\n")
       IPXACTFile.write("\t\t\t\t<spirit:language>VHDL</spirit:language>\n")
       IPXACTFile.write("\t\t\t\t<spirit:modelName>" + func + "</spirit:modelName>\n")
       IPXACTFile.write("\t\t\t\t<spirit:fileSetRef>\n")
       IPXACTFile.write("\t\t\t\t\t<spirit:localName>fs-vhdlwrapper</spirit:localName>\n")
       IPXACTFile.write("\t\t\t\t</spirit:fileSetRef>\n")
       IPXACTFile.write("\t\t\t</spirit:view>\n")
       IPXACTFile.write("\t\t</spirit:views>\n")
       #----------------------------------------------------------------------------------------------------------------------------------

       # Write IPXACT ports declaration
       #----------------------------------------------------------------------------------------------------------------------------------       
       IPXACTFile.write("\t\t<spirit:ports>\n")
             
       ## Input signals
       for i in signals_i:
              IPXACTFile.write("\t\t\t<spirit:port>\n")  
              IPXACTFile.write("\t\t\t\t<spirit:name>" + i['N'] + "</spirit:name>\n")
              IPXACTFile.write("\t\t\t\t<spirit:wire>\n")         
              IPXACTFile.write("\t\t\t\t\t<spirit:direction>in</spirit:direction>\n")
              
              L = i['L'].__doc__
              
              if (L.find("list") == 0):
              
                     IPXACTFile.write("\t\t\t\t\t<spirit:vector>\n")       
                     IPXACTFile.write("\t\t\t\t\t\t<spirit:left>" + str(i['L'][0]) + "</spirit:left> \n") 
                     IPXACTFile.write("\t\t\t\t\t\t<spirit:right>" + str(i['L'][1]) + "</spirit:right> \n") 
                     IPXACTFile.write("\t\t\t\t\t</spirit:vector>\n")
              
              IPXACTFile.write("\t\t\t\t\t<spirit:wireTypeDefs>\n")  
              IPXACTFile.write("\t\t\t\t\t\t<spirit:wireTypeDef/>\n")  
              IPXACTFile.write("\t\t\t\t\t</spirit:wireTypeDefs>\n")  
              
              IPXACTFile.write("\t\t\t\t</spirit:wire>\n")              
              IPXACTFile.write("\t\t\t</spirit:port>\n") 
       
       ## Output signals       
       for i in signals_o:
              IPXACTFile.write("\t\t\t<spirit:port>\n")  
              IPXACTFile.write("\t\t\t\t<spirit:name>" + i['N'] + "</spirit:name>\n")
              IPXACTFile.write("\t\t\t\t<spirit:wire>\n")         
              IPXACTFile.write("\t\t\t\t\t<spirit:direction>out</spirit:direction>\n")
              
              L = i['L'].__doc__
              
              if (L.find("list") == 0):
              
                     IPXACTFile.write("\t\t\t\t\t<spirit:vector>\n")       
                     IPXACTFile.write("\t\t\t\t\t\t<spirit:left>" + str(i['L'][0]) + "</spirit:left> \n") 
                     IPXACTFile.write("\t\t\t\t\t\t<spirit:right>" + str(i['L'][1]) + "</spirit:right> \n") 
                     IPXACTFile.write("\t\t\t\t\t</spirit:vector>\n")
              
              IPXACTFile.write("\t\t\t\t\t<spirit:wireTypeDefs>\n")  
              IPXACTFile.write("\t\t\t\t\t\t<spirit:wireTypeDef/>\n")  
              IPXACTFile.write("\t\t\t\t\t</spirit:wireTypeDefs>\n")  
              
              IPXACTFile.write("\t\t\t\t</spirit:wire>\n")              
              IPXACTFile.write("\t\t\t</spirit:port>\n")   
  
              
       IPXACTFile.write("\t\t</spirit:ports>\n")    
       #----------------------------------------------------------------------------------------------------------------------------------   
       
       IPXACTFile.write("\t</spirit:model>\n")   
       IPXACTFile.write("\t<spirit:fileSets>\n")
       IPXACTFile.write("\t\t<spirit:fileSet>\n")  
       IPXACTFile.write("\t\t\t<spirit:name>fs-vhdlwrapper</spirit:name>\n")   
       
       IPXACTFile.write("\t\t\t<spirit:file>\n")  
       IPXACTFile.write("\t\t\t\t<spirit:name>" + config_options["work_dir"] + "/SysPy/work/" + func + ".vhd" + "</spirit:name>\n")   
       IPXACTFile.write("\t\t\t\t<spirit:fileType>vhdlSource</spirit:fileType>\n") 
       IPXACTFile.write("\t\t\t\t<spirit:logicalName>" + func + "_lib</spirit:logicalName>\n") 
       IPXACTFile.write("\t\t\t</spirit:file>\n") 
       IPXACTFile.write("\t\t</spirit:fileSet>\n")
       IPXACTFile.write("\t</spirit:fileSets>\n")  
       IPXACTFile.write("\t<spirit:description>Generated by SysPy, " + time.ctime() + ", Author: Evangelos Logaras</spirit:description>\n")       
       IPXACTFile.write("</spirit:component>")    
       
       IPXACTFile.close()       
                        
                      
