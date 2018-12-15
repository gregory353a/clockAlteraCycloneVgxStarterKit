vlib work

vlog counter_modulo.v
vlog counter_modulo_tb.sv

vsim -novopt counter_modulo_tb

add wave -group tb  {/counter_modulo_tb/*}
add wave -group dut {/counter_modulo_tb/dut/*}

run -all