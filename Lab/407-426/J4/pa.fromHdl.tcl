
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name J4 -dir "D:/407-426/J4/planAhead_run_2" -part xc3s400pq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "rippleAdder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {FullAdder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {RippleAdder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top rippleAdder $srcset
add_files [list {rippleAdder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400pq208-5
