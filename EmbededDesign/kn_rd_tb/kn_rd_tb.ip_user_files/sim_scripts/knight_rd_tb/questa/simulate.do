onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib knight_rd_tb_opt

do {wave.do}

view wave
view structure
view signals

do {knight_rd_tb.udo}

run -all

quit -force
