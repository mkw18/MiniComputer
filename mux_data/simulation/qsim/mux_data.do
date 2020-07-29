onerror {quit -f}
vlib work
vlog -work work mux_data.vo
vlog -work work mux_data.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux_data_vlg_vec_tst
vcd file -direction mux_data.msim.vcd
vcd add -internal mux_data_vlg_vec_tst/*
vcd add -internal mux_data_vlg_vec_tst/i1/*
add wave /*
run -all
