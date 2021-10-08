onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib hw_3_p1_opt

do {wave.do}

view wave
view structure
view signals

do {hw_3_p1.udo}

run -all

quit -force
