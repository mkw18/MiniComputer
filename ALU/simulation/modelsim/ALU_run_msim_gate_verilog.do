transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ALU.vo}

vlog -vlog01compat -work work +incdir+C:/Users/SC/Documents/Sophomoreii/COAD/experiment/exp3/SingleCPU/ALU {C:/Users/SC/Documents/Sophomoreii/COAD/experiment/exp3/SingleCPU/ALU/ALU_test.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  ALU_test

add wave *
view structure
view signals
run -all
