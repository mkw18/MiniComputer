onerror {quit -f}
vlib work
vlog -work work mux_M2R.vo
vlog -work work mux_M2R.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux_M2R_vlg_vec_tst
vcd file -direction mux_M2R.msim.vcd
vcd add -internal mux_M2R_vlg_vec_tst/*
vcd add -internal mux_M2R_vlg_vec_tst/i1/*
add wave /*
run -all
