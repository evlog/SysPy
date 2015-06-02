
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

hdi::project new -name ISE_func_comps -dir "/media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/patmp" -netlist "/media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/test_core_gen2_wrapper.ngc" -search_path { {/media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps} {ipcore_dir} }
hdi::project setArch -name ISE_func_comps -arch spartan3
hdi::param set -name project.paUcfFile -svalue "test_core_gen2_wrapper.ucf"
hdi::floorplan new -name floorplan_1 -part xc3s1000fg320-5 -project ISE_func_comps
hdi::floorplan importPlacement -project ISE_func_comps -floorplan floorplan_1 -file "/media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/test_core_gen2_wrapper.ncd"
hdi::pconst import -project ISE_func_comps -floorplan floorplan_1 -file "test_core_gen2_wrapper.ucf"
if {[catch {hdi::timing import -name results_1 -project ISE_func_comps -floorplan floorplan_1 -file "/media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/test_core_gen2_wrapper.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/media/My Passport/work/PhD/myHDL_tests/my_conversion/Plex_test/new_code_2/ISE_func_comps/test_core_gen2_wrapper.twx\": $eInfo"
}
