onerror {quit -f}
vlib work
vlog -work work signExt.vo
vlog -work work signExt.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.signExt_vlg_vec_tst
vcd file -direction signExt.msim.vcd
vcd add -internal signExt_vlg_vec_tst/*
vcd add -internal signExt_vlg_vec_tst/i1/*
add wave /*
run -all
