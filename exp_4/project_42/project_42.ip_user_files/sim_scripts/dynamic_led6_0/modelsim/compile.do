vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../project_42.srcs/sources_1/ip/dynamic_led6_0/dynamic_led6.v" \
"../../../../project_42.srcs/sources_1/ip/dynamic_led6_0/sim/dynamic_led6_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

