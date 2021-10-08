// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Feb 17 20:53:18 2021
// Host        : DESKTOP-P7INVOJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/xlinx-projects/kn_rd_tb/kn_rd_tb.srcs/sources_1/bd/knight_rd_tb/ip/knight_rd_tb_kn_rd_0_1/knight_rd_tb_kn_rd_0_1_sim_netlist.v
// Design      : knight_rd_tb_kn_rd_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "knight_rd_tb_kn_rd_0_1,kn_rd_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "kn_rd_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module knight_rd_tb_kn_rd_0_1
   (led,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [3:0]led;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN knight_rd_tb_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN knight_rd_tb_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [3:0]led;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  knight_rd_tb_kn_rd_0_1_kn_rd_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .led(led),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "kn_rd_v1_0" *) 
module knight_rd_tb_kn_rd_0_1_kn_rd_v1_0
   (led,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_wdata,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output [3:0]led;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [3:0]led;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  knight_rd_tb_kn_rd_0_1_kn_rd_v1_0_S00_AXI kn_rd_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .led(led),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "kn_rd_v1_0_S00_AXI" *) 
module knight_rd_tb_kn_rd_0_1_kn_rd_v1_0_S00_AXI
   (led,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_wdata,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output [3:0]led;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [3:0]led;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  knight_rd_tb_kn_rd_0_1_user_logic U
       (.led(led),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_wdata(s00_axi_wdata[2:0]));
  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[0] ),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[10]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[11]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[12]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[13]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[14]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[15]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[16]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[17]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[18]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[20]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[21]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[22]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[23]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[24]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[25]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[26]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[27]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[28]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[30]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg2_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[4]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[5]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[6]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[7]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[8]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(led[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(led[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(led[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(led[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "user_logic" *) 
module knight_rd_tb_kn_rd_0_1_user_logic
   (led,
    s00_axi_wdata,
    s00_axi_aclk);
  output [3:0]led;
  input [2:0]s00_axi_wdata;
  input s00_axi_aclk;

  wire \FSM_onehot_n_s[0]_i_1_n_0 ;
  wire \FSM_onehot_n_s[1]_i_1_n_0 ;
  wire \FSM_onehot_n_s[2]_i_1_n_0 ;
  wire \FSM_onehot_n_s[3]_i_1_n_0 ;
  wire \FSM_onehot_n_s_reg_n_0_[0] ;
  wire \FSM_onehot_n_s_reg_n_0_[1] ;
  wire \FSM_onehot_n_s_reg_n_0_[2] ;
  wire \FSM_onehot_n_s_reg_n_0_[3] ;
  wire ck1;
  wire ck2_i_1_n_0;
  wire ck2_reg_n_0;
  wire ck3_i_1_n_0;
  wire ck3_reg_n_0;
  wire [31:0]count;
  wire \count[0]__0_i_1_n_0 ;
  wire \count[10]__0_i_1_n_0 ;
  wire \count[11]__0_i_1_n_0 ;
  wire \count[12]__0_i_1_n_0 ;
  wire \count[13]__0_i_1_n_0 ;
  wire \count[14]__0_i_1_n_0 ;
  wire \count[15]__0_i_1_n_0 ;
  wire \count[16]__0_i_1_n_0 ;
  wire \count[17]__0_i_1_n_0 ;
  wire \count[18]__0_i_1_n_0 ;
  wire \count[19]__0_i_1_n_0 ;
  wire \count[1]__0_i_1_n_0 ;
  wire \count[20]__0_i_1_n_0 ;
  wire \count[21]__0_i_1_n_0 ;
  wire \count[22]__0_i_1_n_0 ;
  wire \count[23]__0_i_1_n_0 ;
  wire \count[24]__0_i_1_n_0 ;
  wire \count[25]__0_i_1_n_0 ;
  wire \count[26]__0_i_1_n_0 ;
  wire \count[27]__0_i_1_n_0 ;
  wire \count[28]__0_i_1_n_0 ;
  wire \count[29]__0_i_1_n_0 ;
  wire \count[2]__0_i_1_n_0 ;
  wire \count[30]__0_i_1_n_0 ;
  wire \count[31]__0_i_10_n_0 ;
  wire \count[31]__0_i_1_n_0 ;
  wire \count[31]__0_i_2_n_0 ;
  wire \count[31]__0_i_3_n_0 ;
  wire \count[31]__0_i_4_n_0 ;
  wire \count[31]__0_i_5_n_0 ;
  wire \count[31]__0_i_7_n_0 ;
  wire \count[31]__0_i_8_n_0 ;
  wire \count[31]__0_i_9_n_0 ;
  wire \count[31]_i_10_n_0 ;
  wire \count[31]_i_2_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[31]_i_4_n_0 ;
  wire \count[31]_i_5_n_0 ;
  wire \count[31]_i_7_n_0 ;
  wire \count[31]_i_8_n_0 ;
  wire \count[31]_i_9_n_0 ;
  wire \count[3]__0_i_1_n_0 ;
  wire \count[4]__0_i_1_n_0 ;
  wire \count[5]__0_i_1_n_0 ;
  wire \count[6]__0_i_1_n_0 ;
  wire \count[7]__0_i_1_n_0 ;
  wire \count[8]__0_i_1_n_0 ;
  wire \count[9]__0_i_1_n_0 ;
  wire [31:0]count_0;
  wire \count_reg[0]__0_n_0 ;
  wire \count_reg[10]__0_n_0 ;
  wire \count_reg[11]__0_n_0 ;
  wire \count_reg[12]__0_i_2_n_0 ;
  wire \count_reg[12]__0_i_2_n_1 ;
  wire \count_reg[12]__0_i_2_n_2 ;
  wire \count_reg[12]__0_i_2_n_3 ;
  wire \count_reg[12]__0_i_2_n_4 ;
  wire \count_reg[12]__0_i_2_n_5 ;
  wire \count_reg[12]__0_i_2_n_6 ;
  wire \count_reg[12]__0_i_2_n_7 ;
  wire \count_reg[12]__0_n_0 ;
  wire \count_reg[12]_i_2_n_0 ;
  wire \count_reg[12]_i_2_n_1 ;
  wire \count_reg[12]_i_2_n_2 ;
  wire \count_reg[12]_i_2_n_3 ;
  wire \count_reg[13]__0_n_0 ;
  wire \count_reg[14]__0_n_0 ;
  wire \count_reg[15]__0_n_0 ;
  wire \count_reg[16]__0_i_2_n_0 ;
  wire \count_reg[16]__0_i_2_n_1 ;
  wire \count_reg[16]__0_i_2_n_2 ;
  wire \count_reg[16]__0_i_2_n_3 ;
  wire \count_reg[16]__0_i_2_n_4 ;
  wire \count_reg[16]__0_i_2_n_5 ;
  wire \count_reg[16]__0_i_2_n_6 ;
  wire \count_reg[16]__0_i_2_n_7 ;
  wire \count_reg[16]__0_n_0 ;
  wire \count_reg[16]_i_2_n_0 ;
  wire \count_reg[16]_i_2_n_1 ;
  wire \count_reg[16]_i_2_n_2 ;
  wire \count_reg[16]_i_2_n_3 ;
  wire \count_reg[17]__0_n_0 ;
  wire \count_reg[18]__0_n_0 ;
  wire \count_reg[19]__0_n_0 ;
  wire \count_reg[1]__0_n_0 ;
  wire \count_reg[20]__0_i_2_n_0 ;
  wire \count_reg[20]__0_i_2_n_1 ;
  wire \count_reg[20]__0_i_2_n_2 ;
  wire \count_reg[20]__0_i_2_n_3 ;
  wire \count_reg[20]__0_i_2_n_4 ;
  wire \count_reg[20]__0_i_2_n_5 ;
  wire \count_reg[20]__0_i_2_n_6 ;
  wire \count_reg[20]__0_i_2_n_7 ;
  wire \count_reg[20]__0_n_0 ;
  wire \count_reg[20]_i_2_n_0 ;
  wire \count_reg[20]_i_2_n_1 ;
  wire \count_reg[20]_i_2_n_2 ;
  wire \count_reg[20]_i_2_n_3 ;
  wire \count_reg[21]__0_n_0 ;
  wire \count_reg[22]__0_n_0 ;
  wire \count_reg[23]__0_n_0 ;
  wire \count_reg[24]__0_i_2_n_0 ;
  wire \count_reg[24]__0_i_2_n_1 ;
  wire \count_reg[24]__0_i_2_n_2 ;
  wire \count_reg[24]__0_i_2_n_3 ;
  wire \count_reg[24]__0_i_2_n_4 ;
  wire \count_reg[24]__0_i_2_n_5 ;
  wire \count_reg[24]__0_i_2_n_6 ;
  wire \count_reg[24]__0_i_2_n_7 ;
  wire \count_reg[24]__0_n_0 ;
  wire \count_reg[24]_i_2_n_0 ;
  wire \count_reg[24]_i_2_n_1 ;
  wire \count_reg[24]_i_2_n_2 ;
  wire \count_reg[24]_i_2_n_3 ;
  wire \count_reg[25]__0_n_0 ;
  wire \count_reg[26]__0_n_0 ;
  wire \count_reg[27]__0_n_0 ;
  wire \count_reg[28]__0_i_2_n_0 ;
  wire \count_reg[28]__0_i_2_n_1 ;
  wire \count_reg[28]__0_i_2_n_2 ;
  wire \count_reg[28]__0_i_2_n_3 ;
  wire \count_reg[28]__0_i_2_n_4 ;
  wire \count_reg[28]__0_i_2_n_5 ;
  wire \count_reg[28]__0_i_2_n_6 ;
  wire \count_reg[28]__0_i_2_n_7 ;
  wire \count_reg[28]__0_n_0 ;
  wire \count_reg[28]_i_2_n_0 ;
  wire \count_reg[28]_i_2_n_1 ;
  wire \count_reg[28]_i_2_n_2 ;
  wire \count_reg[28]_i_2_n_3 ;
  wire \count_reg[29]__0_n_0 ;
  wire \count_reg[2]__0_n_0 ;
  wire \count_reg[30]__0_n_0 ;
  wire \count_reg[31]__0_i_6_n_2 ;
  wire \count_reg[31]__0_i_6_n_3 ;
  wire \count_reg[31]__0_i_6_n_5 ;
  wire \count_reg[31]__0_i_6_n_6 ;
  wire \count_reg[31]__0_i_6_n_7 ;
  wire \count_reg[31]__0_n_0 ;
  wire \count_reg[31]_i_6_n_2 ;
  wire \count_reg[31]_i_6_n_3 ;
  wire \count_reg[3]__0_n_0 ;
  wire \count_reg[4]__0_i_2_n_0 ;
  wire \count_reg[4]__0_i_2_n_1 ;
  wire \count_reg[4]__0_i_2_n_2 ;
  wire \count_reg[4]__0_i_2_n_3 ;
  wire \count_reg[4]__0_i_2_n_4 ;
  wire \count_reg[4]__0_i_2_n_5 ;
  wire \count_reg[4]__0_i_2_n_6 ;
  wire \count_reg[4]__0_i_2_n_7 ;
  wire \count_reg[4]__0_n_0 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[4]_i_2_n_1 ;
  wire \count_reg[4]_i_2_n_2 ;
  wire \count_reg[4]_i_2_n_3 ;
  wire \count_reg[5]__0_n_0 ;
  wire \count_reg[6]__0_n_0 ;
  wire \count_reg[7]__0_n_0 ;
  wire \count_reg[8]__0_i_2_n_0 ;
  wire \count_reg[8]__0_i_2_n_1 ;
  wire \count_reg[8]__0_i_2_n_2 ;
  wire \count_reg[8]__0_i_2_n_3 ;
  wire \count_reg[8]__0_i_2_n_4 ;
  wire \count_reg[8]__0_i_2_n_5 ;
  wire \count_reg[8]__0_i_2_n_6 ;
  wire \count_reg[8]__0_i_2_n_7 ;
  wire \count_reg[8]__0_n_0 ;
  wire \count_reg[8]_i_2_n_0 ;
  wire \count_reg[8]_i_2_n_1 ;
  wire \count_reg[8]_i_2_n_2 ;
  wire \count_reg[8]_i_2_n_3 ;
  wire \count_reg[9]__0_n_0 ;
  wire [31:1]data0;
  wire [3:0]led;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_wdata;
  wire \z[3]_i_1_n_0 ;
  wire [3:2]\NLW_count_reg[31]__0_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[31]__0_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_count_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[31]_i_6_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_n_s[0]_i_1 
       (.I0(\FSM_onehot_n_s_reg_n_0_[1] ),
        .I1(s00_axi_wdata[1]),
        .I2(\FSM_onehot_n_s_reg_n_0_[3] ),
        .O(\FSM_onehot_n_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \FSM_onehot_n_s[1]_i_1 
       (.I0(\FSM_onehot_n_s_reg_n_0_[0] ),
        .I1(s00_axi_wdata[1]),
        .I2(\FSM_onehot_n_s_reg_n_0_[2] ),
        .O(\FSM_onehot_n_s[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \FSM_onehot_n_s[2]_i_1 
       (.I0(\FSM_onehot_n_s_reg_n_0_[1] ),
        .I1(s00_axi_wdata[1]),
        .I2(\FSM_onehot_n_s_reg_n_0_[3] ),
        .O(\FSM_onehot_n_s[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_n_s[3]_i_1 
       (.I0(\FSM_onehot_n_s_reg_n_0_[0] ),
        .I1(s00_axi_wdata[1]),
        .I2(\FSM_onehot_n_s_reg_n_0_[2] ),
        .O(\FSM_onehot_n_s[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s1:1000,s3:0010,s2:0100,s0:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_n_s_reg[0] 
       (.C(ck1),
        .CE(1'b1),
        .D(\FSM_onehot_n_s[0]_i_1_n_0 ),
        .Q(\FSM_onehot_n_s_reg_n_0_[0] ),
        .S(s00_axi_wdata[2]));
  (* FSM_ENCODED_STATES = "s1:1000,s3:0010,s2:0100,s0:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_n_s_reg[1] 
       (.C(ck1),
        .CE(1'b1),
        .D(\FSM_onehot_n_s[1]_i_1_n_0 ),
        .Q(\FSM_onehot_n_s_reg_n_0_[1] ),
        .R(s00_axi_wdata[2]));
  (* FSM_ENCODED_STATES = "s1:1000,s3:0010,s2:0100,s0:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_n_s_reg[2] 
       (.C(ck1),
        .CE(1'b1),
        .D(\FSM_onehot_n_s[2]_i_1_n_0 ),
        .Q(\FSM_onehot_n_s_reg_n_0_[2] ),
        .R(s00_axi_wdata[2]));
  (* FSM_ENCODED_STATES = "s1:1000,s3:0010,s2:0100,s0:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_n_s_reg[3] 
       (.C(ck1),
        .CE(1'b1),
        .D(\FSM_onehot_n_s[3]_i_1_n_0 ),
        .Q(\FSM_onehot_n_s_reg_n_0_[3] ),
        .R(s00_axi_wdata[2]));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    ck2_i_1
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(ck2_reg_n_0),
        .O(ck2_i_1_n_0));
  FDRE ck2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ck2_i_1_n_0),
        .Q(ck2_reg_n_0),
        .R(s00_axi_wdata[2]));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    ck3_i_1
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(ck3_reg_n_0),
        .O(ck3_i_1_n_0));
  FDRE ck3_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ck3_i_1_n_0),
        .Q(ck3_reg_n_0),
        .R(s00_axi_wdata[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]__0_i_1 
       (.I0(\count_reg[0]__0_n_0 ),
        .O(\count[0]__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[10]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[12]__0_i_2_n_6 ),
        .O(\count[10]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[10]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(count_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[11]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[12]__0_i_2_n_5 ),
        .O(\count[11]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[11]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(count_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[12]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[12]__0_i_2_n_4 ),
        .O(\count[12]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[12]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(count_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[13]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[16]__0_i_2_n_7 ),
        .O(\count[13]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[13]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(count_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[14]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[16]__0_i_2_n_6 ),
        .O(\count[14]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[14]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(count_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[15]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[16]__0_i_2_n_5 ),
        .O(\count[15]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[15]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(count_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[16]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[16]__0_i_2_n_4 ),
        .O(\count[16]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[16]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(count_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[17]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[20]__0_i_2_n_7 ),
        .O(\count[17]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[17]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(count_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[18]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[20]__0_i_2_n_6 ),
        .O(\count[18]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[18]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(count_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[19]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[20]__0_i_2_n_5 ),
        .O(\count[19]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[19]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(count_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[1]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[4]__0_i_2_n_7 ),
        .O(\count[1]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[1]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(count_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[20]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[20]__0_i_2_n_4 ),
        .O(\count[20]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[20]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(count_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[21]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[24]__0_i_2_n_7 ),
        .O(\count[21]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[21]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(count_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[22]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[24]__0_i_2_n_6 ),
        .O(\count[22]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[22]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(count_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[23]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[24]__0_i_2_n_5 ),
        .O(\count[23]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[23]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(count_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[24]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[24]__0_i_2_n_4 ),
        .O(\count[24]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[24]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(count_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[25]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[28]__0_i_2_n_7 ),
        .O(\count[25]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[25]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(count_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[26]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[28]__0_i_2_n_6 ),
        .O(\count[26]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[26]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(count_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[27]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[28]__0_i_2_n_5 ),
        .O(\count[27]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[27]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(count_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[28]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[28]__0_i_2_n_4 ),
        .O(\count[28]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[28]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(count_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[29]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[31]__0_i_6_n_7 ),
        .O(\count[29]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[29]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(count_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[2]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[4]__0_i_2_n_6 ),
        .O(\count[2]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[2]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(count_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[30]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[31]__0_i_6_n_6 ),
        .O(\count[30]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[30]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(count_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[31]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[31]__0_i_6_n_5 ),
        .O(\count[31]__0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \count[31]__0_i_10 
       (.I0(\count_reg[13]__0_n_0 ),
        .I1(\count_reg[12]__0_n_0 ),
        .I2(\count_reg[15]__0_n_0 ),
        .I3(\count_reg[14]__0_n_0 ),
        .O(\count[31]__0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \count[31]__0_i_2 
       (.I0(\count_reg[18]__0_n_0 ),
        .I1(\count_reg[19]__0_n_0 ),
        .I2(\count_reg[17]__0_n_0 ),
        .I3(\count_reg[16]__0_n_0 ),
        .I4(\count[31]__0_i_7_n_0 ),
        .O(\count[31]__0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]__0_i_3 
       (.I0(\count_reg[26]__0_n_0 ),
        .I1(\count_reg[27]__0_n_0 ),
        .I2(\count_reg[24]__0_n_0 ),
        .I3(\count_reg[25]__0_n_0 ),
        .I4(\count[31]__0_i_8_n_0 ),
        .O(\count[31]__0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \count[31]__0_i_4 
       (.I0(\count_reg[2]__0_n_0 ),
        .I1(\count_reg[3]__0_n_0 ),
        .I2(\count_reg[0]__0_n_0 ),
        .I3(\count_reg[1]__0_n_0 ),
        .I4(\count[31]__0_i_9_n_0 ),
        .O(\count[31]__0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \count[31]__0_i_5 
       (.I0(\count_reg[11]__0_n_0 ),
        .I1(\count_reg[10]__0_n_0 ),
        .I2(\count_reg[8]__0_n_0 ),
        .I3(\count_reg[9]__0_n_0 ),
        .I4(\count[31]__0_i_10_n_0 ),
        .O(\count[31]__0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count[31]__0_i_7 
       (.I0(\count_reg[21]__0_n_0 ),
        .I1(\count_reg[20]__0_n_0 ),
        .I2(\count_reg[23]__0_n_0 ),
        .I3(\count_reg[22]__0_n_0 ),
        .O(\count[31]__0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]__0_i_8 
       (.I0(\count_reg[29]__0_n_0 ),
        .I1(\count_reg[28]__0_n_0 ),
        .I2(\count_reg[31]__0_n_0 ),
        .I3(\count_reg[30]__0_n_0 ),
        .O(\count[31]__0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \count[31]__0_i_9 
       (.I0(\count_reg[5]__0_n_0 ),
        .I1(\count_reg[4]__0_n_0 ),
        .I2(\count_reg[7]__0_n_0 ),
        .I3(\count_reg[6]__0_n_0 ),
        .O(\count[31]__0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[31]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(count_0[31]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[31]_i_10 
       (.I0(count[12]),
        .I1(count[13]),
        .I2(count[15]),
        .I3(count[14]),
        .O(\count[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \count[31]_i_2 
       (.I0(count[18]),
        .I1(count[19]),
        .I2(count[16]),
        .I3(count[17]),
        .I4(\count[31]_i_7_n_0 ),
        .O(\count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_3 
       (.I0(count[26]),
        .I1(count[27]),
        .I2(count[24]),
        .I3(count[25]),
        .I4(\count[31]_i_8_n_0 ),
        .O(\count[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \count[31]_i_4 
       (.I0(count[2]),
        .I1(count[3]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(\count[31]_i_9_n_0 ),
        .O(\count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \count[31]_i_5 
       (.I0(count[11]),
        .I1(count[10]),
        .I2(count[8]),
        .I3(count[9]),
        .I4(\count[31]_i_10_n_0 ),
        .O(\count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[31]_i_7 
       (.I0(count[20]),
        .I1(count[21]),
        .I2(count[23]),
        .I3(count[22]),
        .O(\count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_8 
       (.I0(count[29]),
        .I1(count[28]),
        .I2(count[31]),
        .I3(count[30]),
        .O(\count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \count[31]_i_9 
       (.I0(count[5]),
        .I1(count[4]),
        .I2(count[6]),
        .I3(count[7]),
        .O(\count[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[3]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[4]__0_i_2_n_5 ),
        .O(\count[3]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[3]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(count_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[4]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[4]__0_i_2_n_4 ),
        .O(\count[4]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[4]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(count_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[5]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[8]__0_i_2_n_7 ),
        .O(\count[5]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[5]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(count_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[6]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[8]__0_i_2_n_6 ),
        .O(\count[6]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[6]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(count_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[7]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[8]__0_i_2_n_5 ),
        .O(\count[7]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[7]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(count_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[8]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[8]__0_i_2_n_4 ),
        .O(\count[8]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[8]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(count_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[9]__0_i_1 
       (.I0(\count[31]__0_i_2_n_0 ),
        .I1(\count[31]__0_i_3_n_0 ),
        .I2(\count[31]__0_i_4_n_0 ),
        .I3(\count[31]__0_i_5_n_0 ),
        .I4(\count_reg[12]__0_i_2_n_7 ),
        .O(\count[9]__0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[9]_i_1 
       (.I0(\count[31]_i_2_n_0 ),
        .I1(\count[31]_i_3_n_0 ),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_5_n_0 ),
        .I4(data0[9]),
        .O(count_0[9]));
  FDRE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[0]),
        .Q(count[0]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[0]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[0]__0_i_1_n_0 ),
        .Q(\count_reg[0]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[10]),
        .Q(count[10]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[10]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[10]__0_i_1_n_0 ),
        .Q(\count_reg[10]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[11]),
        .Q(count[11]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[11]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[11]__0_i_1_n_0 ),
        .Q(\count_reg[11]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[12]),
        .Q(count[12]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[12]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[12]__0_i_1_n_0 ),
        .Q(\count_reg[12]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  CARRY4 \count_reg[12]__0_i_2 
       (.CI(\count_reg[8]__0_i_2_n_0 ),
        .CO({\count_reg[12]__0_i_2_n_0 ,\count_reg[12]__0_i_2_n_1 ,\count_reg[12]__0_i_2_n_2 ,\count_reg[12]__0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]__0_i_2_n_4 ,\count_reg[12]__0_i_2_n_5 ,\count_reg[12]__0_i_2_n_6 ,\count_reg[12]__0_i_2_n_7 }),
        .S({\count_reg[12]__0_n_0 ,\count_reg[11]__0_n_0 ,\count_reg[10]__0_n_0 ,\count_reg[9]__0_n_0 }));
  CARRY4 \count_reg[12]_i_2 
       (.CI(\count_reg[8]_i_2_n_0 ),
        .CO({\count_reg[12]_i_2_n_0 ,\count_reg[12]_i_2_n_1 ,\count_reg[12]_i_2_n_2 ,\count_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(count[12:9]));
  FDRE \count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[13]),
        .Q(count[13]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[13]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[13]__0_i_1_n_0 ),
        .Q(\count_reg[13]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[14]),
        .Q(count[14]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[14]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[14]__0_i_1_n_0 ),
        .Q(\count_reg[14]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[15]),
        .Q(count[15]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[15]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[15]__0_i_1_n_0 ),
        .Q(\count_reg[15]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[16]),
        .Q(count[16]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[16]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[16]__0_i_1_n_0 ),
        .Q(\count_reg[16]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  CARRY4 \count_reg[16]__0_i_2 
       (.CI(\count_reg[12]__0_i_2_n_0 ),
        .CO({\count_reg[16]__0_i_2_n_0 ,\count_reg[16]__0_i_2_n_1 ,\count_reg[16]__0_i_2_n_2 ,\count_reg[16]__0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]__0_i_2_n_4 ,\count_reg[16]__0_i_2_n_5 ,\count_reg[16]__0_i_2_n_6 ,\count_reg[16]__0_i_2_n_7 }),
        .S({\count_reg[16]__0_n_0 ,\count_reg[15]__0_n_0 ,\count_reg[14]__0_n_0 ,\count_reg[13]__0_n_0 }));
  CARRY4 \count_reg[16]_i_2 
       (.CI(\count_reg[12]_i_2_n_0 ),
        .CO({\count_reg[16]_i_2_n_0 ,\count_reg[16]_i_2_n_1 ,\count_reg[16]_i_2_n_2 ,\count_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(count[16:13]));
  FDRE \count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[17]),
        .Q(count[17]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[17]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[17]__0_i_1_n_0 ),
        .Q(\count_reg[17]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[18]),
        .Q(count[18]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[18]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[18]__0_i_1_n_0 ),
        .Q(\count_reg[18]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[19]),
        .Q(count[19]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[19]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[19]__0_i_1_n_0 ),
        .Q(\count_reg[19]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[1]),
        .Q(count[1]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[1]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[1]__0_i_1_n_0 ),
        .Q(\count_reg[1]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[20]),
        .Q(count[20]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[20]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[20]__0_i_1_n_0 ),
        .Q(\count_reg[20]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  CARRY4 \count_reg[20]__0_i_2 
       (.CI(\count_reg[16]__0_i_2_n_0 ),
        .CO({\count_reg[20]__0_i_2_n_0 ,\count_reg[20]__0_i_2_n_1 ,\count_reg[20]__0_i_2_n_2 ,\count_reg[20]__0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]__0_i_2_n_4 ,\count_reg[20]__0_i_2_n_5 ,\count_reg[20]__0_i_2_n_6 ,\count_reg[20]__0_i_2_n_7 }),
        .S({\count_reg[20]__0_n_0 ,\count_reg[19]__0_n_0 ,\count_reg[18]__0_n_0 ,\count_reg[17]__0_n_0 }));
  CARRY4 \count_reg[20]_i_2 
       (.CI(\count_reg[16]_i_2_n_0 ),
        .CO({\count_reg[20]_i_2_n_0 ,\count_reg[20]_i_2_n_1 ,\count_reg[20]_i_2_n_2 ,\count_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(count[20:17]));
  FDRE \count_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[21]),
        .Q(count[21]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[21]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[21]__0_i_1_n_0 ),
        .Q(\count_reg[21]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[22]),
        .Q(count[22]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[22]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[22]__0_i_1_n_0 ),
        .Q(\count_reg[22]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[23]),
        .Q(count[23]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[23]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[23]__0_i_1_n_0 ),
        .Q(\count_reg[23]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[24]),
        .Q(count[24]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[24]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[24]__0_i_1_n_0 ),
        .Q(\count_reg[24]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  CARRY4 \count_reg[24]__0_i_2 
       (.CI(\count_reg[20]__0_i_2_n_0 ),
        .CO({\count_reg[24]__0_i_2_n_0 ,\count_reg[24]__0_i_2_n_1 ,\count_reg[24]__0_i_2_n_2 ,\count_reg[24]__0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]__0_i_2_n_4 ,\count_reg[24]__0_i_2_n_5 ,\count_reg[24]__0_i_2_n_6 ,\count_reg[24]__0_i_2_n_7 }),
        .S({\count_reg[24]__0_n_0 ,\count_reg[23]__0_n_0 ,\count_reg[22]__0_n_0 ,\count_reg[21]__0_n_0 }));
  CARRY4 \count_reg[24]_i_2 
       (.CI(\count_reg[20]_i_2_n_0 ),
        .CO({\count_reg[24]_i_2_n_0 ,\count_reg[24]_i_2_n_1 ,\count_reg[24]_i_2_n_2 ,\count_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(count[24:21]));
  FDRE \count_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[25]),
        .Q(count[25]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[25]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[25]__0_i_1_n_0 ),
        .Q(\count_reg[25]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[26]),
        .Q(count[26]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[26]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[26]__0_i_1_n_0 ),
        .Q(\count_reg[26]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[27]),
        .Q(count[27]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[27]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[27]__0_i_1_n_0 ),
        .Q(\count_reg[27]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[28]),
        .Q(count[28]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[28]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[28]__0_i_1_n_0 ),
        .Q(\count_reg[28]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  CARRY4 \count_reg[28]__0_i_2 
       (.CI(\count_reg[24]__0_i_2_n_0 ),
        .CO({\count_reg[28]__0_i_2_n_0 ,\count_reg[28]__0_i_2_n_1 ,\count_reg[28]__0_i_2_n_2 ,\count_reg[28]__0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]__0_i_2_n_4 ,\count_reg[28]__0_i_2_n_5 ,\count_reg[28]__0_i_2_n_6 ,\count_reg[28]__0_i_2_n_7 }),
        .S({\count_reg[28]__0_n_0 ,\count_reg[27]__0_n_0 ,\count_reg[26]__0_n_0 ,\count_reg[25]__0_n_0 }));
  CARRY4 \count_reg[28]_i_2 
       (.CI(\count_reg[24]_i_2_n_0 ),
        .CO({\count_reg[28]_i_2_n_0 ,\count_reg[28]_i_2_n_1 ,\count_reg[28]_i_2_n_2 ,\count_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(count[28:25]));
  FDRE \count_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[29]),
        .Q(count[29]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[29]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[29]__0_i_1_n_0 ),
        .Q(\count_reg[29]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[2]),
        .Q(count[2]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[2]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[2]__0_i_1_n_0 ),
        .Q(\count_reg[2]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[30]),
        .Q(count[30]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[30]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[30]__0_i_1_n_0 ),
        .Q(\count_reg[30]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[31]),
        .Q(count[31]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[31]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[31]__0_i_1_n_0 ),
        .Q(\count_reg[31]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  CARRY4 \count_reg[31]__0_i_6 
       (.CI(\count_reg[28]__0_i_2_n_0 ),
        .CO({\NLW_count_reg[31]__0_i_6_CO_UNCONNECTED [3:2],\count_reg[31]__0_i_6_n_2 ,\count_reg[31]__0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[31]__0_i_6_O_UNCONNECTED [3],\count_reg[31]__0_i_6_n_5 ,\count_reg[31]__0_i_6_n_6 ,\count_reg[31]__0_i_6_n_7 }),
        .S({1'b0,\count_reg[31]__0_n_0 ,\count_reg[30]__0_n_0 ,\count_reg[29]__0_n_0 }));
  CARRY4 \count_reg[31]_i_6 
       (.CI(\count_reg[28]_i_2_n_0 ),
        .CO({\NLW_count_reg[31]_i_6_CO_UNCONNECTED [3:2],\count_reg[31]_i_6_n_2 ,\count_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[31]_i_6_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,count[31:29]}));
  FDRE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[3]),
        .Q(count[3]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[3]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[3]__0_i_1_n_0 ),
        .Q(\count_reg[3]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[4]),
        .Q(count[4]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[4]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[4]__0_i_1_n_0 ),
        .Q(\count_reg[4]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  CARRY4 \count_reg[4]__0_i_2 
       (.CI(1'b0),
        .CO({\count_reg[4]__0_i_2_n_0 ,\count_reg[4]__0_i_2_n_1 ,\count_reg[4]__0_i_2_n_2 ,\count_reg[4]__0_i_2_n_3 }),
        .CYINIT(\count_reg[0]__0_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]__0_i_2_n_4 ,\count_reg[4]__0_i_2_n_5 ,\count_reg[4]__0_i_2_n_6 ,\count_reg[4]__0_i_2_n_7 }),
        .S({\count_reg[4]__0_n_0 ,\count_reg[3]__0_n_0 ,\count_reg[2]__0_n_0 ,\count_reg[1]__0_n_0 }));
  CARRY4 \count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_2_n_0 ,\count_reg[4]_i_2_n_1 ,\count_reg[4]_i_2_n_2 ,\count_reg[4]_i_2_n_3 }),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count[4:1]));
  FDRE \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[5]),
        .Q(count[5]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[5]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[5]__0_i_1_n_0 ),
        .Q(\count_reg[5]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[6]),
        .Q(count[6]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[6]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[6]__0_i_1_n_0 ),
        .Q(\count_reg[6]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[7]),
        .Q(count[7]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[7]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[7]__0_i_1_n_0 ),
        .Q(\count_reg[7]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[8]),
        .Q(count[8]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[8]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[8]__0_i_1_n_0 ),
        .Q(\count_reg[8]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  CARRY4 \count_reg[8]__0_i_2 
       (.CI(\count_reg[4]__0_i_2_n_0 ),
        .CO({\count_reg[8]__0_i_2_n_0 ,\count_reg[8]__0_i_2_n_1 ,\count_reg[8]__0_i_2_n_2 ,\count_reg[8]__0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]__0_i_2_n_4 ,\count_reg[8]__0_i_2_n_5 ,\count_reg[8]__0_i_2_n_6 ,\count_reg[8]__0_i_2_n_7 }),
        .S({\count_reg[8]__0_n_0 ,\count_reg[7]__0_n_0 ,\count_reg[6]__0_n_0 ,\count_reg[5]__0_n_0 }));
  CARRY4 \count_reg[8]_i_2 
       (.CI(\count_reg[4]_i_2_n_0 ),
        .CO({\count_reg[8]_i_2_n_0 ,\count_reg[8]_i_2_n_1 ,\count_reg[8]_i_2_n_2 ,\count_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count[8:5]));
  FDRE \count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_0[9]),
        .Q(count[9]),
        .R(s00_axi_wdata[2]));
  FDRE \count_reg[9]__0 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count[9]__0_i_1_n_0 ),
        .Q(\count_reg[9]__0_n_0 ),
        .R(s00_axi_wdata[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \z[3]_i_1 
       (.I0(s00_axi_wdata[2]),
        .O(\z[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \z[3]_i_2 
       (.I0(ck3_reg_n_0),
        .I1(s00_axi_wdata[0]),
        .I2(ck2_reg_n_0),
        .O(ck1));
  FDRE \z_reg[0] 
       (.C(ck1),
        .CE(\z[3]_i_1_n_0 ),
        .D(\FSM_onehot_n_s_reg_n_0_[0] ),
        .Q(led[0]),
        .R(1'b0));
  FDRE \z_reg[1] 
       (.C(ck1),
        .CE(\z[3]_i_1_n_0 ),
        .D(\FSM_onehot_n_s_reg_n_0_[3] ),
        .Q(led[1]),
        .R(1'b0));
  FDRE \z_reg[2] 
       (.C(ck1),
        .CE(\z[3]_i_1_n_0 ),
        .D(\FSM_onehot_n_s_reg_n_0_[2] ),
        .Q(led[2]),
        .R(1'b0));
  FDRE \z_reg[3] 
       (.C(ck1),
        .CE(\z[3]_i_1_n_0 ),
        .D(\FSM_onehot_n_s_reg_n_0_[1] ),
        .Q(led[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
