vlib work

vlog falling_edge_detect.v
vlog falling_edge_detect_tb.sv

vsim -novopt falling_edge_detect_tb

add wave -group tb  {/falling_edge_detect_tb/*}
add wave -group dut {/falling_edge_detect_tb/dut/*}

run -all