// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 23 11:28:20 2020
// Host        : DESKTOP-P7INVOJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/xlinx-projects/multiplier_ip/multiplier_ip.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_gen_0
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
  mult_gen_0_mult_gen_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_14
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
  mult_gen_0_mult_gen_v12_0_14_viv i_mult
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
FwYtAMjMPosB0cktBAxStWDAdXzhZmjC89cVtgIH7oMrYMj+g36e1DTw7B/0GzvBJqE232AqwiA1
4QdHEcvPEWxwDiSp5q7nJ7k0FeQNRib6bpVhnd5ZkyNiw47iHhx6Qnu7pVcgZonuTrtWT49KK/YH
pGkGOrjR7D7qDAp1VbGHwsr4wnghNSfOiHoC1vB4Ke8luUlXHkydxEYC7cE9a7/jBlSfBRSPwWws
KW5fmjaGyHohsAKMefBIjwPIABl2luJPY9YFS/F/3hoKB3eVouoc6gxQNkyGF6lE69lNt5dUs1qy
sD/AgHGyYtYmUwSc5RbLzeLwQ9vX/8x0Mc3vAw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vwhE5FvnEK25+ZgeKh/JHRpcvbFQHyUiLMon77abBOQvpmx7qJrPV7gC8rVz82OdKDa9OlGzwyUS
BzdUl6HqnwVcSAcg0/4E45rAMFvLswVH+xjsifzw25ZexwR4FIvBQVS9YuRlNb/n5VLGL23lMC/f
LEjcuJPWF4Wm0qWpTOEoAyC54zGOCS62vua0q4SpePNA16sKB+laGJDUeFqhSaXqhUmfLHJGAzY7
DS7ttb+T8/zKHw1VqMaQcpy7LD/KOWbyXV8vEaVr01gBD0aS7Lo3wHWrbAG0SkjePSYI9AoMZRyw
WaKZK8vb1M9onKxArO/XLvPo8XE/cbnlNkwb6Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22240)
`pragma protect data_block
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
1TYf93KNDNkUdg==
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
