onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dynamic_led6_0_opt

do {wave.do}

view wave
view structure
view signals

do {dynamic_led6_0.udo}

run -all

quit -force
