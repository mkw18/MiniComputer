transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {imm_PC.vo}

vlog -vlog01compat -work work +incdir+C:/Users/SC/Documents/Sophomoreii/COAD/experiment/exp3/SingleCPU/imm_PC {C:/Users/SC/Documents/Sophomoreii/COAD/experiment/exp3/SingleCPU/imm_PC/imm_PC_test.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  imm_PC_test

add wave *
view structure
view signals
run -all
