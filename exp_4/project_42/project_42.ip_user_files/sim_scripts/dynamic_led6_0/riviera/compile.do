vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../project_42.srcs/sources_1/ip/dynamic_led6_0/dynamic_led6.v" \
"../../../../project_42.srcs/sources_1/ip/dynamic_led6_0/sim/dynamic_led6_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

