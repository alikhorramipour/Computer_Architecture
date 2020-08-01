
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name J2 -dir "D:/407-426/J2/planAhead_run_3" -part xc3s400pq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Comparator4.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Comparator4.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Comparator4 $srcset
add_files [list {Comparator4.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400pq208-5
