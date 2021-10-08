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
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_4 -sv \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/knight_rd_tb/ip/knight_rd_tb_processing_system7_0_0/sim/knight_rd_tb_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/knight_rd_tb/ip/knight_rd_tb_rst_ps7_0_50M_0/sim/knight_rd_tb_rst_ps7_0_50M_0.vhd" \
  "../../../bd/knight_rd_tb/sim/knight_rd_tb.vhd" \
  "../../../bd/knight_rd_tb/ipshared/f762/hdl/kn_rd_v1_0_S00_AXI.vhd" \
  "../../../bd/knight_rd_tb/ipshared/f762/src/user_logic.vhd" \
  "../../../bd/knight_rd_tb/ipshared/f762/hdl/kn_rd_v1_0.vhd" \
  "../../../bd/knight_rd_tb/ip/knight_rd_tb_kn_rd_0_1/sim/knight_rd_tb_kn_rd_0_1.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_18 \
  "../../../../kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/knight_rd_tb/ip/knight_rd_tb_auto_pc_0/sim/knight_rd_tb_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

