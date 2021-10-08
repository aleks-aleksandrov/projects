// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 23 11:28:19 2020
// Host        : DESKTOP-P7INVOJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [3:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [7:0]P;

  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire [7:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "7" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "4" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "4" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "7" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [3:0]A;
  input [3:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [7:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire [7:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "4" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "7" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cngiiDO9hgkx3T5u4g3tB61LwbOAk74UX/48S0VGW/THlW4savA9aFd6MfEn0BGRbfO6y/Nz/Uzc
czouhgAJABDbqNgoVUpIbNGRqcLJE17OL/wF5OMzqzAbEG/Hzc/EMJMYso4r8+lKkia6QU0klX2j
h06O19wqKkID+sMtSIcwMiNlwNx8+yPeaENJ1EZK84yVXaMTZCsr9Wia6OZOU7T7jzQuTNv0+ioo
CtJLcAwzjE0obJPDZ5MJEhGib6X879EhNxn1ilfRR3/ARkcRbTjNs9JscJjNfY91SP1w2zw2ijT6
yPHdZXK4bhev0wOSPG5rSH09jmQRoQ3vgRhaIA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vXvPxzvgQZDWL2gGk1w4YzltG1MC2P0rFqAdcevUNT4vXz4iNh8vEun5afRLBdj40z0xTBuQdHiI
PtAswcahS88YKhX5S2601Y0l6S0gfz/s+ZJ9P2bUVOii8Vh8u+RRyNsRGrrE5FkvLMh7SUiZm3w3
p650AubNVQAQZvKISHfar922TyOwmfJ0sB3FC1x8DW0ztitu9iQp/0dYgfH26m7ikrfTEJGFmo1a
CSmKxkWUI8icaJTv4R9x6LNH+UpJc5z9IvkDDU0PpDdILte2o5vzq5RkYfuhm6gqfoblqQADrpJ8
sT4sD4sSvHVkx+Cie1fCTHgaRyiT7HXiy2GbEA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22256)
`pragma protect data_block
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
W2AuFvHIWFkYm4ydAiEp94pZiciepNDjCVQ=
`pragma protect end_protected
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
