transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {mainCtl.vo}

vlog -vlog01compat -work work +incdir+C:/Users/SC/Documents/Sophomoreii/COAD/experiment/exp3/SingleCPU/mainCtl {C:/Users/SC/Documents/Sophomoreii/COAD/experiment/exp3/SingleCPU/mainCtl/mainCtl_test.v}

vsim -t 1ps -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  mainCtl_test

add wave *
view structure
view signals
run -all
