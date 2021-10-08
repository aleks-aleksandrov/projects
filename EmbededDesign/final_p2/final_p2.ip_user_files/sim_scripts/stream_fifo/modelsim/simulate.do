onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_3 -L lib_fifo_v1_0_12 -L axi_fifo_mm_s_v4_2_0 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L generic_baseblocks_v2_1_0 -L axi_data_fifo_v2_1_17 -L axi_register_slice_v2_1_18 -L axi_protocol_converter_v2_1_18 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.stream_fifo xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {stream_fifo.udo}

run -all

quit -force
