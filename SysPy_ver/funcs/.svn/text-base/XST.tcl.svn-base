# where all output will be created
set compile_directory XST_prj

set hdl_files [ list \
  custom_component_name
]

if {![file isdirectory $compile_directory]} {
  file mkdir $compile_directory
}

cd $compile_directory

project new XST_prj

project set family FPGA_family_name
project set device FPGA_device_name
project set package FPGA_device_package
#project set speed -1
project set top_level_module_type "HDL"
project set synthesis_tool "XST (VHDL/Verilog)"
project set simulator "ISim (VHDL/Verilog)"
project set "Preferred Language" "VHDL"
#project set "Multiplier Style" Block
#project set "Mux Style" MUXF
#project set "RAM Style" Distributed
#project set "ROM Style" Auto 

foreach filename $hdl_files {
  xfile add ../$filename -copy
  puts "Adding file $filename to the project."
}

project set top "rtl" "system_wrapper"


#process run "Synthesize - XST"

#process run "Generate Programming File"

############################################


