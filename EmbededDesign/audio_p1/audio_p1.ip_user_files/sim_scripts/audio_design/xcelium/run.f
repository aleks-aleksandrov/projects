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
-makelib xcelium_lib/axi_i2s_adi_v1_00_a \
  "../../../bd/audio_design/ipshared/922f/hdl/i2s_tx.vhd" \
  "../../../bd/audio_design/ipshared/922f/hdl/i2s_controller.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_design/ipshared/922f/hdl/axi_i2s_adi.vhd" \
-endlib
-makelib xcelium_lib/axi_i2s_adi_v1_00_a \
  "../../../bd/audio_design/ipshared/922f/hdl/fifo_synchronizer.vhd" \
  "../../../bd/audio_design/ipshared/922f/hdl/i2s_rx.vhd" \
  "../../../bd/audio_design/ipshared/922f/hdl/i2s_clkgen.vhd" \
-endlib
-makelib xcelium_lib/adi_common_v1_00_a \
  "../../../bd/audio_design/ipshared/922f/hdl/adi_common/axi_streaming_dma_rx_fifo.vhd" \
  "../../../bd/audio_design/ipshared/922f/hdl/adi_common/axi_ctrlif.vhd" \
  "../../../bd/audio_design/ipshared/922f/hdl/adi_common/pl330_dma_fifo.vhd" \
  "../../../bd/audio_design/ipshared/922f/hdl/adi_common/axi_streaming_dma_tx_fifo.vhd" \
  "../../../bd/audio_design/ipshared/922f/hdl/adi_common/dma_fifo.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_design/ip/audio_design_axi_i2s_adi_0_0/sim/audio_design_axi_i2s_adi_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_4 -sv \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_design/ip/audio_design_processing_system7_0_0/sim/audio_design_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_20 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_design/ip/audio_design_axi_gpio_0_0/sim/audio_design_axi_gpio_0_0.vhd" \
  "../../../bd/audio_design/ip/audio_design_axi_gpio_0_1/sim/audio_design_axi_gpio_0_1.vhd" \
  "../../../bd/audio_design/ip/audio_design_axi_gpio_0_2/sim/audio_design_axi_gpio_0_2.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_19 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_design/ip/audio_design_xbar_0/sim/audio_design_xbar_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_design/ip/audio_design_rst_ps7_0_100M_0/sim/audio_design_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_18 \
  "../../../../audio_p1.srcs/sources_1/bd/audio_design/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_design/ip/audio_design_auto_pc_0/sim/audio_design_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/audio_design/sim/audio_design.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

