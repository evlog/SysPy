# where all output will be created
set compile_directory Leon3_XST_prj

set hdl_files [ list \
  ../../SysPy_ver/Leon3_comps/ahbrom.vhd \
  ../../SysPy_ver/Leon3_comps/config.vhd \
  ../../SysPy_ver/Leon3_comps/io_buf.vhd \
  ../../SysPy_ver/Leon3_comps/leon3mp.vhd \
  ../../SysPy_ver/Leon3_comps/svga2ch7301c.vhd \
  ../../SysPy_ver/Leon3_comps/Leon3_wrapper.ucf \
  custom_component_name
]

# constraints with pin placements.
set constraints_file ../../SysPy_ver/Leon3_comps/Leon3_wrapper.ucf \

if {![file isdirectory $compile_directory]} {
  file mkdir $compile_directory
}

cd $compile_directory

project new Leon3_XST_prj

project set family FPGA_family_name
project set device FPGA_device_name
project set package FPGA_device_package
#project set speed -1
project set top_level_module_type "HDL"
project set synthesis_tool "XST (VHDL/Verilog)"
project set simulator "ISim (VHDL/Verilog)"
project set "Preferred Language" "VHDL"
project set "Other XST Command Line Options" "-uc ../../../SysPy_ver/Leon3_comps/leon3mp.xcf"
#project set "Multiplier Style" Block
#project set "Mux Style" MUXF
#project set "RAM Style" Distributed
#project set "ROM Style" Auto 

foreach filename $hdl_files {
  xfile add ../$filename -copy
  puts "Adding file $filename to the project."
}

project set top "rtl" top_file_name

# create other libraries than "work"
lib_vhdl new cypress
xfile add "../../../SysPy_ver/Leon3_comps/libs/cypress/ssram/components.vhd" -lib_vhdl cypress
xfile add "../../../SysPy_ver/Leon3_comps/libs/cypress/ssram/cy7c1354b.vhd" -lib_vhdl cypress
xfile add "../../../SysPy_ver/Leon3_comps/libs/cypress/ssram/cy7c1380d.vhd" -lib_vhdl cypress
xfile add "../../../SysPy_ver/Leon3_comps/libs/cypress/ssram/package_utility.vhd" -lib_vhdl cypress

lib_vhdl new esa
xfile add "../../../SysPy_ver/Leon3_comps/libs/esa/memoryctrl/mctrl.vhd" -lib_vhdl esa
xfile add "../../../SysPy_ver/Leon3_comps/libs/esa/memoryctrl/memoryctrl.vhd" -lib_vhdl esa

lib_vhdl new eth
xfile add "../../../SysPy_ver/Leon3_comps/libs/eth/comp/ethcomp.vhd" -lib_vhdl eth
xfile add "../../../SysPy_ver/Leon3_comps/libs/eth/core/eth_ahb_mst.vhd" -lib_vhdl eth
xfile add "../../../SysPy_ver/Leon3_comps/libs/eth/core/eth_rstgen.vhd" -lib_vhdl eth
xfile add "../../../SysPy_ver/Leon3_comps/libs/eth/core/grethc.vhd" -lib_vhdl eth
xfile add "../../../SysPy_ver/Leon3_comps/libs/eth/wrapper/greth_gbit_gen.vhd" -lib_vhdl eth
xfile add "../../../SysPy_ver/Leon3_comps/libs/eth/wrapper/greth_gen.vhd" -lib_vhdl eth
xfile add "../../../SysPy_ver/Leon3_comps/libs/eth/core/greth_pkg.vhd" -lib_vhdl eth
xfile add "../../../SysPy_ver/Leon3_comps/libs/eth/core/greth_rx.vhd" -lib_vhdl eth
xfile add "../../../SysPy_ver/Leon3_comps/libs/eth/core/greth_tx.vhd" -lib_vhdl eth

lib_vhdl new fmf
xfile add "../../../SysPy_ver/Leon3_comps/libs/fmf/utilities/conversions.vhd" -lib_vhdl fmf
xfile add "../../../SysPy_ver/Leon3_comps/libs/fmf/utilities/gen_utils.vhd" -lib_vhdl fmf
xfile add "../../../SysPy_ver/Leon3_comps/libs/fmf/fifo/idt7202.vhd" -lib_vhdl fmf
xfile add "../../../SysPy_ver/Leon3_comps/libs/fmf/flash/flash.vhd" -lib_vhdl fmf
xfile add "../../../SysPy_ver/Leon3_comps/libs/fmf/flash/m25p80.vhd" -lib_vhdl fmf
xfile add "../../../SysPy_ver/Leon3_comps/libs/fmf/flash/s25fl064a.vhd" -lib_vhdl fmf

lib_vhdl new gaisler  
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/ahbdpram.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/jtag/ahbjtag.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/jtag/ahbjtag_bsd.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/ahbmst.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/ahbmst2.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/ahbram.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/ahbrep.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/ahbstat.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/ahbtrace.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/ahbtrace_mb.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/uart/ahbuart.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/ahb_mst_iface.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/apbps2.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/uart/apbuart.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/apbvga.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/arith/arith.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/ata_device.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/cachemem.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/charrom.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/charrom_package.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/cpu_disasx.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/uart/dcom.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/uart/dcom_uart.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/ddr/ddr2buf.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/ddr/ddr2spa.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/ddr/ddr2spax.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/ddr/ddr2spax_ahb.vhd" -lib_vhdl gaisler  
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/ddr/ddr2spax_ddr.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/ddr/ddrsp16a.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/ddr/ddrsp32a.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/ddr/ddrsp64a.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/ddr/ddrspa.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/ddr/ddr_phy.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/delay_wire.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/arith/div32.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/dsu3.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/dsu3x.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/greth/ethernet_mac.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/gptimer.vhd" -lib_vhdl gaisler  
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/gracectrl.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/greth/greth.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/greth/grethm.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/greth/greth_gbit.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/grfpushwx.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/grfpwx.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/grfpwxsh.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/grgpio.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/grgpreg.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/grlfpwx.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/grsysmon.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/grusbdcsim.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/grusb_dclsim.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/i2cmst.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/i2cmst_gen.vhd" -lib_vhdl gaisler  
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/i2cslv.vhd" -lib_vhdl gaisler  
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/irqmp.vhd" -lib_vhdl gaisler  
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/iu3.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/jtag/jtag.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/jtag/jtagcom.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/jtag/jtagtst.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/leon3.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/leon3cg.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/leon3s.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/leon3sh.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/libcache.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/uart/libdcom.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/libiu.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/jtag/libjtagcom.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/libmmu.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/libproc3.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/logan.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/memctrl/memctrl.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mfpwx.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/misc.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmu.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmuconfig.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmuiface.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmulru.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmulrue.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmutlb.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmutlbcam.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmutw.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmu_acache.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmu_cache.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmu_dcache.vhd" -lib_vhdl gaisler  
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/mmu_icache.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/arith/mul32.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/net/net.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/phy.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/proc3.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/pwm_check.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/rstgen.vhd" -lib_vhdl gaisler 
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/memctrl/sdctrl.vhd" -lib_vhdl gaisler  
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/memctrl/sdctrl64.vhd" -lib_vhdl gaisler   
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/memctrl/sdmctrl.vhd" -lib_vhdl gaisler   
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/sim.vhd" -lib_vhdl gaisler  
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/spictrl.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/memctrl/spimctrl.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/spi_flash.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/sram.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/sram16.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/memctrl/srctrl.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/svgactrl.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/leon3/tbufmem.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/uart/uart.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/sim/usbsim.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/wild.vhd" -lib_vhdl gaisler
xfile add "../../../SysPy_ver/Leon3_comps/libs/gaisler/misc/wild2ahb.vhd" -lib_vhdl gaisler

lib_vhdl new grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/ahbctrl.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/amba.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/amba_tp.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/apbctrl.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/at/at_ahbs.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/at/at_ahb_ctrl.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/at/at_ahb_mst.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/at/at_ahb_mst_pkg.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/at/at_ahb_slv.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/at/at_ahb_slv_pkg.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/at/at_pkg.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/at/at_util.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/stdlib/config.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/sparc/cpu_disas.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/defmst.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/devices.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/dma2ahb.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/dma2ahb_pkg.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/amba/dma2ahb_tp.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/modgen/leaves.vhd" -lib_vhdl grlib  
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/modgen/multlib.vhd" -lib_vhdl grlib  
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/sparc/sparc.vhd" -lib_vhdl grlib   
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/sparc/sparc_disas.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/stdlib/stdio.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/stdlib/stdlib.vhd" -lib_vhdl grlib
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/stdlib/testlib.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/util/util.vhd" -lib_vhdl grlib 
xfile add "../../../SysPy_ver/Leon3_comps/libs/grlib/stdlib/version.vhd" -lib_vhdl grlib 

lib_vhdl new gsi
xfile add "../../../SysPy_ver/Leon3_comps/libs/gsi/ssram/core_burst.vhd" -lib_vhdl gsi
xfile add "../../../SysPy_ver/Leon3_comps/libs/gsi/ssram/functions.vhd" -lib_vhdl gsi
xfile add "../../../SysPy_ver/Leon3_comps/libs/gsi/ssram/g880e18bt.vhd" -lib_vhdl gsi

lib_vhdl new hynix
xfile add "../../../SysPy_ver/Leon3_comps/libs/hynix/ddr2/components.vhd" -lib_vhdl hynix
xfile add "../../../SysPy_ver/Leon3_comps/libs/hynix/ddr2/HY5PS121621F.vhd" -lib_vhdl hynix
xfile add "../../../SysPy_ver/Leon3_comps/libs/hynix/ddr2/HY5PS121621F_PACK.vhd" -lib_vhdl hynix

lib_vhdl new micron
xfile add "../../../SysPy_ver/Leon3_comps/libs/micron/sdram/components.vhd" -lib_vhdl micron
xfile add "../../../SysPy_ver/Leon3_comps/libs/micron/ddr/mt46v16m16.vhd" -lib_vhdl micron
xfile add "../../../SysPy_ver/Leon3_comps/libs/micron/sdram/mt48lc16m16a2.vhd" -lib_vhdl micron

lib_vhdl new opencores
xfile add "../../../SysPy_ver/Leon3_comps/libs/opencores/i2c/i2coc.vhd" -lib_vhdl opencores
xfile add "../../../SysPy_ver/Leon3_comps/libs/opencores/i2c/i2c_master_bit_ctrl.vhd" -lib_vhdl opencores
xfile add "../../../SysPy_ver/Leon3_comps/libs/opencores/i2c/i2c_master_byte_ctrl.vhd" -lib_vhdl opencores
xfile add "../../../SysPy_ver/Leon3_comps/libs/opencores/occomp/occomp.vhd" -lib_vhdl opencores

lib_vhdl new synplify
xfile add "../../../SysPy_ver/Leon3_comps/libs/synplify/sim/synattr.vhd" -lib_vhdl synplify
xfile add "../../../SysPy_ver/Leon3_comps/libs/synplify/sim/synplify.vhd" -lib_vhdl synplify

lib_vhdl new techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/allclkgen.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/allddr.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/allmem.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/allpads.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/alltap.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/buffer_unisim.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/clkand.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/clkgen.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/clkgen_unisim.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/clkmux.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/clkpad.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/clkpad_ds.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/cpu_disas_net.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/ddrphy.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/inferred/ddr_inferred.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/ddr_ireg.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/ddr_oreg.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/inferred/ddr_phy_inferred.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/ddr_phy_unisim.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/ddr_unisim.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/gencomp/gencomp.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/grfpw_net.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/grgates.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/grlfpw_net.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/grspwc2_net.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/grspwc2_unisim.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/grspwc_net.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/grspwc_unisim.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/grusbhc_unisim.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/inpad.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/inpad_ddr.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/inpad_ds.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/iodpad.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/iopad.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/iopad_ddr.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/iopad_ds.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/lvds_combo.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/inferred/memory_inferred.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/memory_unisim.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/mul_61x61.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/inferred/mul_inferred.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/mul_unisim.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/nandtree.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/gencomp/netcomp.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/odpad.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/outpad.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/outpad_ddr.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/outpad_ds.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/pads_unisim.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/regfile_3p.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/ringosc.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/skew_outpad.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/ssrctrl_unisim.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/syncfifo.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/syncram.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/syncram64.vhd" -lib_vhdl techmap
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/syncram128.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/syncram128.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/syncram156bw.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/syncram_2p.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/syncram_dp.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/sysmon_unisim.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/system_monitor.vhd" -lib_vhdl techmap  
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/tap.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/unisim/tap_unisim.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/techbuf.vhd" -lib_vhdl techmap 
xfile add "../../../SysPy_ver/Leon3_comps/libs/techmap/maps/toutpad.vhd" -lib_vhdl techmap 

#process run "Synthesize - XST"

#process run "Generate Programming File"

############################################


