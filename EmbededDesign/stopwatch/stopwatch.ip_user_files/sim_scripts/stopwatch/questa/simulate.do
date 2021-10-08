onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib stopwatch_opt

do {wave.do}

view wave
view structure
view signals

do {stopwatch.udo}

run -all

quit -force
