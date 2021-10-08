// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 16 13:32:23 2020
// Host        : DESKTOP-P7INVOJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/xlinx-projects/counters_example/counters_example.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    CE,
    SCLR,
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
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
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_12
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
  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
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
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
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
WJOYzrj7G9BaHgpuP1L4D1w6wVNunsJDDTh+T1ENNrrO1bqpyUpt/rVORqwp6R+YcRiolsW+XUkV
zytt28VIcXdSZsqZpTtocROMm2URwKDkBmKCwnWVPpjDBquyl+8caMEd8fuKAIXyjpPJOzvuQ3P3
0UjzIogzoMiZ+KIdjRNFQJSn+T35CHsG0O58VONrySzaI60IK1JuLIF+qAaHjLoOFV1SZvx4Ou4i
5eOHc4fjK9vpqo3N7BRTm1bHeU9MgaVsMzVPBPQI9IjqcPlZo7Kz80UQvvkUwM0T0Yr5+/2Rhd2W
46QlejemSYz4ApovBLPPzK3MMyV3RRGxPKlCcg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RXbEREwJ1stVxHcJFNYNK0UYHCUPUzupqUFZamoVzjD+dkkriKCTKAjDrLQepkEKMSbiwprEubB+
lsVHq/TEldV8h7KS9hWjAqrpbbVEkOeq4uUW3j7kwyskkLhu/qk43e1zy+UIx8Ti3YU3oOYbrYks
X/wPGBXEglnL+L+2C4R7WE3hqEc6K5f719GwaY5nHyQvp7B4hHP37nAM96x3930MzsD2tsaugjoc
pMSHw70T01CtHpCpPdyJMQ/fCUQ7U8B0rvkmNJZy2BM1FNGRampfcqdgyTefH6IjLqG/dNtPUG7S
71QJBxah/TCH1ItsSln/AaXbSTN5G5DjZ23qLA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6544)
`pragma protect data_block
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
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
