onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sws_diagram_opt

do {wave.do}

view wave
view structure
view signals

do {sws_diagram.udo}

run -all

quit -force
