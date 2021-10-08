onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib blinking_led_design_opt

do {wave.do}

view wave
view structure
view signals

do {blinking_led_design.udo}

run -all

quit -force
