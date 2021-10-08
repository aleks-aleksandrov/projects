// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 16 13:11:32 2020
// Host        : DESKTOP-P7INVOJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [3:0]Q;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VJCesV4N/gLaAWzMURc9R/5fLFQmVFhMDQEYTabUVGgQHgwD05/OKUN2dmg1HNkMljlYh0xni+ZX
ws4pz/fEF8VCiJTj3gESv3or7ieBaOjCJCI4sDPhrnnwmTVBuuyhPL63t3r6mfHG0K1CQ2qjFkrj
RZTOfVfnoiX1SeXUS3qoWcr6NX3sLJeUQBZzx+bs74Q1f6aXHRtl2Xy4KqNG4YCVzgpa3h4zGkk1
XtYCJe5TcdA7b2S66bHUapCWE9ZbYOVh3Be2yMAivtbrWlAnqHxdGknLyox8njwkrGLwPjmhPcWE
M8Y7frLT13g4PVea2Lh6frazUKhOqMrMF/LH9Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M+6U208uqeO4Om6dUsPuVIeqNFol1pUXjhN0FD2A0/5f0rvHH7qBZwLq00wYbxFU3qfjFncv5ixA
oEgv8U05Jp8WQqHXNoQXvqadnr4TzNbzq+TbjUxtSSFOw5O8wjVn7NC201rhrmt9G46BERMRVg21
2wC1nyUqemWlXVFO0+xUCVG2GD1Lz7WW6k/43eEHGuBxmh6/1mbS125DDsqsIWti79lxtXj2Tm4j
D2sQvREsmVH/qDVZCJSx5BFhcJIeWnwa0X/i6JnKR905J4kGlmF5s4VQkDbd8q0AbcEW937hpAAW
U4XPrLNUN4HO8NMuJ0BFkoLBPI6uuQLHKCFHmA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5936)
`pragma protect data_block
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
wKVC+gUFfrs=
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
