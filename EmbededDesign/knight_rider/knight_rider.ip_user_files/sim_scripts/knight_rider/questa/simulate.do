onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib knight_rider_opt

do {wave.do}

view wave
view structure
view signals

do {knight_rider.udo}

run -all

quit -force
