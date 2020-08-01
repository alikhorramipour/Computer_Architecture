
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name J1 -dir "D:/407-426/J1/planAhead_run_2" -part xc3s400pq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "full_adder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {xor.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {and.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {or.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {half_adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {full_adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top full_adder $srcset
add_files [list {full_adder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400pq208-5
