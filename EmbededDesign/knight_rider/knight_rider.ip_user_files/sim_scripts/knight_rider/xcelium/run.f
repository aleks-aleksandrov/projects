-makelib xcelium_lib/xilinx_vip -sv \
  "D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/XILINX/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/XILINX/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/XILINX/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_20 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ip/knight_rider_axi_gpio_0_0/sim/knight_rider_axi_gpio_0_0.vhd" \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ip/knight_rider_axi_gpio_1_0/sim/knight_rider_axi_gpio_1_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_1 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ip/knight_rider_xlconcat_0_0/sim/knight_rider_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_4 -sv \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ip/knight_rider_processing_system7_0_0/sim/knight_rider_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_19 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ip/knight_rider_xbar_0/sim/knight_rider_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_18 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ip/knight_rider_auto_pc_0/sim/knight_rider_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ip/knight_rider_rst_ps7_0_50M_0/sim/knight_rider_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_20 \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ipshared/e9c1/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/ip/knight_rider_axi_timer_0_0/sim/knight_rider_axi_timer_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../knight_rider.srcs/sources_1/bd/knight_rider/sim/knight_rider.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

