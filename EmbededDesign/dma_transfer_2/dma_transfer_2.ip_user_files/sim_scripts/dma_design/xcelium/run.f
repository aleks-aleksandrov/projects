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
  "D:/XILINX/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/XILINX/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/XILINX/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_4 -sv \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dma_design/ip/dma_design_processing_system7_0_0/sim/dma_design_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_9 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_5 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_5 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_5 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/a04b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_5 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b226/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_5 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_14 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_7 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/c63e/hdl/floating_point_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dma_design/ip/dma_design_floating_point_0_0/sim/dma_design_floating_point_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_12 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_20 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_11 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/efa7/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_19 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/09b0/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dma_design/ip/dma_design_axi_dma_0_0/sim/dma_design_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_1 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dma_design/ip/dma_design_xlconcat_0_0/sim/dma_design_xlconcat_0_0.v" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/sim/bd_f1fb.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_5 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_f1fb_one_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_f1fb_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_f1fb_arsw_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_f1fb_rsw_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_f1fb_awsw_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_f1fb_wsw_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_f1fb_bsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_f1fb_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_f1fb_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_f1fb_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_f1fb_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_f1fb_sarn_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_f1fb_srn_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_f1fb_sawn_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_f1fb_swn_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_f1fb_sbn_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_f1fb_s01mmu_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_f1fb_s01tr_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_f1fb_s01sic_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_f1fb_s01a2s_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_f1fb_sarn_1.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_f1fb_srn_1.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_f1fb_s02mmu_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_f1fb_s02tr_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_f1fb_s02sic_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_f1fb_s02a2s_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_f1fb_sawn_1.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_f1fb_swn_1.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_f1fb_sbn_1.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_f1fb_m00s2a_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_f1fb_m00arn_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_f1fb_m00rn_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_f1fb_m00awn_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_f1fb_m00wn_0.sv" \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_f1fb_m00bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_f1fb_m00e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dma_design/ip/dma_design_smartconnect_0_0/sim/dma_design_smartconnect_0_0.vhd" \
  "../../../bd/dma_design/ip/dma_design_rst_ps7_0_50M_0/sim/dma_design_rst_ps7_0_50M_0.vhd" \
  "../../../bd/dma_design/sim/dma_design.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_18 \
  "../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/dma_design/ip/dma_design_auto_pc_0/sim/dma_design_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

