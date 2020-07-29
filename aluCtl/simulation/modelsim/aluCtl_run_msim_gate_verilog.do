transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {aluCtl.vo}

vlog -vlog01compat -work work +incdir+C:/Users/SC/Documents/Sophomoreii/COAD/experiment/exp4/MiniComputer/aluCtl {C:/Users/SC/Documents/Sophomoreii/COAD/experiment/exp4/MiniComputer/aluCtl/aluCtl_test.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  aluCtl_test

add wave *
view structure
view signals
run -all
