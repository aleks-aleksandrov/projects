vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_4
vlib activehdl/processing_system7_vip_v1_0_6
vlib activehdl/xbip_utils_v3_0_9
vlib activehdl/axi_utils_v2_0_5
vlib activehdl/xbip_pipe_v3_0_5
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_5
vlib activehdl/xbip_dsp48_multadd_v3_0_5
vlib activehdl/xbip_bram18k_v3_0_5
vlib activehdl/mult_gen_v12_0_14
vlib activehdl/floating_point_v7_1_7
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_3
vlib activehdl/lib_fifo_v1_0_12
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_20
vlib activehdl/axi_sg_v4_1_11
vlib activehdl/axi_dma_v7_1_19
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/smartconnect_v1_0
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_data_fifo_v2_1_17
vlib activehdl/axi_register_slice_v2_1_18
vlib activehdl/axi_protocol_converter_v2_1_18

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 activehdl/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 activehdl/processing_system7_vip_v1_0_6
vmap xbip_utils_v3_0_9 activehdl/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 activehdl/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 activehdl/xbip_pipe_v3_0_5
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 activehdl/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 activehdl/xbip_dsp48_multadd_v3_0_5
vmap xbip_bram18k_v3_0_5 activehdl/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 activehdl/mult_gen_v12_0_14
vmap floating_point_v7_1_7 activehdl/floating_point_v7_1_7
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_3 activehdl/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 activehdl/lib_fifo_v1_0_12
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_20 activehdl/axi_datamover_v5_1_20
vmap axi_sg_v4_1_11 activehdl/axi_sg_v4_1_11
vmap axi_dma_v7_1_19 activehdl/axi_dma_v7_1_19
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_17 activehdl/axi_data_fifo_v2_1_17
vmap axi_register_slice_v2_1_18 activehdl/axi_register_slice_v2_1_18
vmap axi_protocol_converter_v2_1_18 activehdl/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/XILINX/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"D:/XILINX/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/XILINX/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/XILINX/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/XILINX/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_processing_system7_0_0/sim/dma_design_processing_system7_0_0.v" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/a04b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b226/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_7 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/c63e/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/dma_design/ip/dma_design_floating_point_0_0/sim/dma_design_floating_point_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_11 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/efa7/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_19 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/09b0/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/dma_design/ip/dma_design_axi_dma_0_0/sim/dma_design_axi_dma_0_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_xlconcat_0_0/sim/dma_design_xlconcat_0_0.v" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/sim/bd_f1fb.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_f1fb_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_f1fb_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_f1fb_arsw_0.sv" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_f1fb_rsw_0.sv" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_f1fb_awsw_0.sv" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_f1fb_wsw_0.sv" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_f1fb_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_f1fb_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_f1fb_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_f1fb_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_f1fb_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
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

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_f1fb_m00s2a_0.sv" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_f1fb_m00arn_0.sv" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_f1fb_m00rn_0.sv" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_f1fb_m00awn_0.sv" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_f1fb_m00wn_0.sv" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_f1fb_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_f1fb_m00e_0.sv" \

vcom -work xil_defaultlib -93 \
"../../../bd/dma_design/ip/dma_design_smartconnect_0_0/sim/dma_design_smartconnect_0_0.vhd" \
"../../../bd/dma_design/ip/dma_design_rst_ps7_0_50M_0/sim/dma_design_rst_ps7_0_50M_0.vhd" \
"../../../bd/dma_design/sim/dma_design.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/ec67/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/70cf/hdl" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/979d/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ipshared/b2d0/hdl/verilog" "+incdir+../../../../dma_transfer_2.srcs/sources_1/bd/dma_design/ip/dma_design_processing_system7_0_0" "+incdir+D:/XILINX/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/dma_design/ip/dma_design_auto_pc_0/sim/dma_design_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

