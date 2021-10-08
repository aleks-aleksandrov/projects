onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib custo_ip_tb_opt

do {wave.do}

view wave
view structure
view signals

do {custo_ip_tb.udo}

run -all

quit -force
