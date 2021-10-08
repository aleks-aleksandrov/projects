vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_4
vlib questa_lib/msim/processing_system7_vip_v1_0_6
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 questa_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 questa_lib/msim/processing_system7_vip_v1_0_6
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/ec67/hdl" "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/70cf/hdl" "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ip/scutimer_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/ec67/hdl" "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/70cf/hdl" "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ip/scutimer_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/ec67/hdl" "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/70cf/hdl" "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ip/scutimer_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/ec67/hdl" "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ipshared/70cf/hdl" "+incdir+../../../../snoop_controller_timer.srcs/sources_1/bd/scutimer/ip/scutimer_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/scutimer/ip/scutimer_processing_system7_0_0/sim/scutimer_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/scutimer/sim/scutimer.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

