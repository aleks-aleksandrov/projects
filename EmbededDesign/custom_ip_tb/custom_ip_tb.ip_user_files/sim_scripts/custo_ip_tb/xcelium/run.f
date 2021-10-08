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
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/custo_ip_tb/ipshared/8f22/hdl/led_driver_v1_0_S_AXI.vhd" \
  "../../../bd/custo_ip_tb/ipshared/8f22/src/myip.vhd" \
  "../../../bd/custo_ip_tb/ipshared/8f22/hdl/led_driver_v1_0.vhd" \
  "../../../bd/custo_ip_tb/ip/custo_ip_tb_led_driver_0_0/sim/custo_ip_tb_led_driver_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_4 -sv \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/custo_ip_tb/ip/custo_ip_tb_processing_system7_0_0/sim/custo_ip_tb_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/custo_ip_tb/ip/custo_ip_tb_rst_ps7_0_50M_0/sim/custo_ip_tb_rst_ps7_0_50M_0.vhd" \
  "../../../bd/custo_ip_tb/sim/custo_ip_tb.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_19 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/custo_ip_tb/ip/custo_ip_tb_xbar_0/sim/custo_ip_tb_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_18 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/custo_ip_tb/ip/custo_ip_tb_auto_pc_0/sim/custo_ip_tb_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_20 \
  "../../../../custom_ip_tb.srcs/sources_1/bd/custo_ip_tb/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/custo_ip_tb/ip/custo_ip_tb_axi_gpio_0_0/sim/custo_ip_tb_axi_gpio_0_0.vhd" \
  "../../../bd/custo_ip_tb/ip/custo_ip_tb_axi_gpio_0_1/sim/custo_ip_tb_axi_gpio_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

