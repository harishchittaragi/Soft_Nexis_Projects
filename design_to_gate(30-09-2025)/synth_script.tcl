

# 1. Creating a new project
create_project synth_proj ./synth_proj -part xc7a35tcpg236-1 -force


# 2. Adding Verilog source file
add_files C:/Users/hrchi/VIVADO_PROJECTS/Soft_Nexis_Projects/Full_adder.v

# 3. Settting the top module name
set_property top Full_adder [current_fileset]

# 4. Running Synthesis
launch_runs synth_1
wait_on_run synth_1

# 5. for Opening synthesized design
open_run synth_1

# 6. Writing the synthesized netlist (Gate-level Verilog)
write_verilog -force ./synthesized_netlist.v

# 7. for Writing reports
report_utilization -file ./utilization_report.txt
report_timing_summary -file ./timing_report.txt
