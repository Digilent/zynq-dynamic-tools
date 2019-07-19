##xsct dt_overlay.tcl hw_description.hdf ps7_cortexa9_0 $DTB_REPO/device-tree-xlnx/ output_dir
set xml_path [lindex $argv 0]
set proc_1 [lindex $argv 1]
set repo_path [lindex $argv 2]
set out_dir [lindex $argv 3]

puts "*********************************************************************************"
puts "xml_path: $xml_path , proc: $proc_1 ,  out_dir : $out_dir local repo path : $repo_path"

set err_code 0
set hw [hsi open_hw_design $xml_path]
hsi set_repo_path $repo_path
hsi create_sw_design sw1 -proc ${proc_1} -os device_tree
hsi set_property CONFIG.dt_overlay true [hsi get_os]
hsi generate_bsp -dir ${out_dir}
hsi close_hw_design $hw
exit $err_code
