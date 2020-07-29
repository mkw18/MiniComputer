onerror {quit -f}
vlib work
vlog -work work mux_WriteAddr.vo
vlog -work work mux_WriteAddr.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux_WriteAddr_vlg_vec_tst
vcd file -direction mux_WriteAddr.msim.vcd
vcd add -internal mux_WriteAddr_vlg_vec_tst/*
vcd add -internal mux_WriteAddr_vlg_vec_tst/i1/*
add wave /*
run -all
