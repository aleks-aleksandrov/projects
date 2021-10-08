// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 16 13:32:23 2020
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
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
bBYzazqfPR7hUKnSzLXq1yE4+jvayc2qlCpxd6N1UUv+vgstqLHLP7Z0yloQrAhHwG7gsJy9BURg
8J0QoIYWTbQb4oqFhzgBDTfdShQMyQefWVMWLlHkusDbvTvXxzWpkRILvS3xDXvQg/xn0t4CK+K4
8/YjhYqfssksxyg4sOsPRBdQ/bnr+MRvCvqqJnTJegxhx7QgaI2EBQeiXa0wLU1HSqecvRiggRzK
LQAOkKzWyK8UMJ+sEtOI27/3aYizCyQrp/j+HZemsECc2D9YxcekohWT2/6Dy/XqkqBTZMkJ63sF
f/L+gOt0KRnH+l9l7nNcGOKF4NGGYFj3aYS5QA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VL+H0TKIimLqC95iNESv4RtkbPifE9Asp/B9gGzib30gYEaH0mVTQK1CZqMKxVltA4Rt58u9zRy6
jMZ+dW1t+IEmBWf1TAWB/ko8kWNNrkZBjG3vW1LefrmSDOK4kBkE+6prsfB6nZdD/m4JwGQUmwku
pk2YSLziYbV+znsOMtKGMKmz0yzVA4B2xAuw5tJ5K7AAA5Y/yG2WfAeaHSDVISIzh4IztgZ2KUw7
NYQzBIu1eTkvNfGVpLtYjoHc3i2oPzGvLJpbZ71fQX35PJuFglDw7bebTQEPSqc0BpkD+13jv+jP
F2u+ZkOuXh8Hp4XHBx9qFWCzsOWE/sHEEhMZDg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6480)
`pragma protect data_block
jaFUNuNaaj2cRrUOs5ECroX2V947Ji+/Swrug9ixEMppQfyIUqupKdFVytTVC7U01n6A+UodAdgM
FJbtJDC7sVTqoF5u7EdRmA4ZKaXhDqtYz7RxJRQXhID1W9MvG+WCR4AEQ+TkUbR4ttlD5sgKeNtZ
KTQvLp/S+owU987LlkbR723nZUh79lqFMqiYBtZ8hggAov5Pj5jg532NQupkWQ6YF4JIrY6BdWTA
8g7UrlBsJCWI6hT1eVd5Z3zM9V9bOF/JXlFd68YFsbLqhfBTXxkVZrrkfoQtBsIAFcRU30VSzl2k
9gnJTEqDH8uAqCItejDDop8I7cW8Gw63Ogd62wDezAEoZ2U4OPF2Nb39L7GmySw0+U3grywhZ+9F
UsgRimOV4Aym/woJDCVx1sK3HOELrwS32GbpB7jNK4n3AVNB8y7OpocfxPn/sztTe4oDIJqFY3NA
/QJ3FFEokwEloC14cJSQduNfePEP9PvcGcpcpCQZ9FBdNofTk5ahILbXLM/BKnkwS7XEqJcyrPR4
kWFydkzehk2IWdsTqfrrKK3li67OdOmZyQAeXUKaglOFnQp/L2VOH2VoU+ozSkSJJWdqZkMsIzFp
t6QJCL2SlKT1YLQlQQBplbbK/Ig9Q0sWWCmSdTSPYA9Rit4WHf7IdlGuGSMsqV6WPGbjgFGC4SzL
n4JNgu9qupKOEtN3wHA2BZZyP94mTGiBozop50mM5wsiZdzszaUoSQw/PMjzWBG1HSBSQf4xLsXw
gdt5LFaCuam53AKVCH/3cHnwCwGRLc44GW2nCGXhQNAAQ+tY7j/CzQUhEHJsjV/EIpKWd+NBncJv
OBXBiC9i6WbPYi6Qxs3bu56gy1mVLP2l3aR0hCfXnEOSzAUJXqSyzFdT1Lsav9ft2XfeIreTGkKj
SsX4gWkLpyogtvkV3K7KS+MYdq++TspN5G1vhK7ojGTA+yAA7yhZ9rW1slMi4Cv8G0zVKc85nuPX
l0B/0+9gKoJ7Dy1Vx3QiugY0mP9YM2e5MB7+AQ99SVZd0NdF8a+oqblOzYzpz+KsvKgeGvwFw5uV
brR+aPozJrQDPvqNTMhiZZ0yR0TGERQzENEbC4OhMuZxTsGFt8qLXIWmlQYo8z+SwWVqPeuNKqGi
x++pwtrbaUQYSekZ8FSy2jI6dLggPBX24LisXDwEBkrtTLQEWhWrXCqqwx7Amr0DA6Vl1sbxp2Id
JuYhk3gslwUI/TuP/tqObepuxzx3C/9JD9ZOVF/E2qj+bROe30z8DR2zwu754U7M86cBUhrTBxeg
zq+utBay1PmsX6djiTKPLiKJPBhVFtyyS9WeY40jcS6Pr36Fk4wP7IroWQxfF7WhYRrbgpkL6SBd
A/2Dbd23b5Hl5rooPhgPXeJ1m8hyuce6zoQg2Ua2BKr7Yk4GM0FxDNsq5LL0ft5n8Ep7zapIP0Zm
Cefw+taFiXeW3r+Z5h+ddLKBorq1XMC2IbSLsWWzFnAKIJVC8FkU97glOMR5hThsaGShqqvEDTIO
55H8K2xe+MjO9Zw2+ZFR2GXrJllT3MV15apq/0t6gBtf8ZvtzZhoBylAgmcIoIONM5sUaLgGt2qs
QBtW6TXGbznfFOSbCxeGmQDsnmiIBRvf8ImYApTC1gXqhLbPkYncrMbGrumX88+aOGl1j+S8CONy
AVYyTDV7Cn3PTL/StyYJmOuXOWa9+6nTFcDfbSALXvY47egVajBp85uUsE/2R/LQhfGQlmFqrG4h
KEk3zLjhklTxIPQmfnMzgYfVQoGqyHs4C4TnUZU3o5AlCGNBoygIRtc7IjKP14nsvnF4E03m5dAr
XRweKAYANY1dBKPy18MUhSYcEm5QctOYeX06Uw9krGTa6NIYB0pRbKGa67WW7B4N4zN1jmtaSEZo
Cs1Ag5xGUKEUzdqKdqNsneMot0jQnjDgyKMxO4IaAL2Oa16LHM/pasMlzV/Ywnqa/aVXTq5j03V9
GZ07Yazqn2jqn4NqFAyJT2QJP/XoMDewepaGJQBOgtCNCNsY+2ZAmR/I+N3xU2PKVEnnp08WBB8x
Z+OWNezz4QcZnR6bEMlhRbOxA1dEt1Uonm18MS9AL55JD6esiaK3LlaiZGMc3eDftjt4Ym2+HkIE
8gZQol/nnQ4da+ytgDtgUT8tanAOfE4b5eoeReXT0mIJmuT1655XVSn1rGRIHBPTKYvVHkG78fWA
83CTorj1Gk8/9YGpZ1i1MrVvyefaJuISrSgY2fCjpnCkTcjFzFntgdDR+hFBLBut+yHicakxLzY1
2ZdXtFVyAXbprtcq4+CiIxJkkxtdTGPDtDZ0lLMS/HWgs3u/tWOTrZLnCsxokgIo+9SjwhWXT6Ay
r16NPmVxm1bpz3VpPKhuFnuvacwzN+5Ex8RY9wi1d2uOI13KlrulMVI5i6pcwG0DaN1nSaXYeajB
diRpETP2YaJROax3q0q5ZLZK0BXzVnzCnAJmwDRLgQ4cTGQzxZC6K8+F9w8QcHjbllk9Kuxvt5SB
P8BSBT6ZN7fHjGvY5oeGOwVA0HSajAJwVadqfSS1ggtLCckS2czmJOGwNFK/Hn5jmueK3On9n4te
K4woBUpivTghHnd91y+kWthPivu86uMTr9WVt8gBJFN8dwDcoQ4ltAqGvdXPtAwbKDd6PWZKpAlu
LqjqPzuTMI9IJOyXXU/WGDLSiMwSubrS8YHsnvgHg0wZ18d57HQSiXBPCxir2L7ZGyFnAsYFfLgg
RXHznu8SoojzNIPwNAirMbZl/tQjh7X2dKbFGy5O2mKDF++ZYBmi9rXnd38GmuQWv5MAKKZS7Qnb
M2wUye6vLw+AA4wpA/RNdqKIa/1aZ1+CGWH/U5/HjfE9l5cvqGHYghGTIaYjXm8Zi7puTddHE59I
FIMCXJltb1HZoxBxb/zzz4m09eKoOYqTuahxVTFC+7aTkkiJZSwezJR5bJ7xtuKYN6shU7JI3Z7z
6zrjQDP+2M9FrTba/3GBzIn/KgKt3JAe63x7Qph5gRLz7JXLzN4eQ6YdvfbIAkWxhndTIPHnWIvC
9oT5Ad1AG6r3ETamv02bkmxUUc3f4RNFAVwIBPB4V82mE3TlWATpo6XajSPKaIewYno21HnzL1pX
EldW1H2uFP3xtZwcvL6Owlw0Fd9D1Zn7mxYkRmJ20XKOfCAWfLSlpX3AAAsDXt23AtSslgfBmB3L
H+5PIk+puHHPoQMeucjWsDzkRiw7iNz4BOdkaWClXFDbeYE3xIEZ7h4MLS4g31/pu/DpM2DR3Efx
n45cNBxGXNZ2Q3noxKmhifVTtTPGbG9irTiQJApXI7G6BKnw8YUX5W4LH+Q+eCMERJK9WUR9UKTN
yjFdRmSI/semMV5rECLuYHrWVUB1zpNoCqdznxrvfF/XaBNcZNg43pnfqL0BRk6CimWSA7h6IbYM
1kt5Yp7icOLjRSNwjkm7Cp6aFTMnsoxANNOW65Z0n9q/R6Nlq5cCyijUOQwMTUYAlGgCEFdmqsJ8
02qBPLW58iXK8Os9q9IfQcOCSraFVgCC+yLPiMj4P6UV1ttYBKosTRB8akB06XVUdSgboXUKlkbq
0aXxmvEVJ5A4AlJKI5GE4WpTQYktfAzo0l0CkpY0vLsw7ywBxcHEytNr29Bd6PymiX14LxzC3Rd/
N6JJqiIrpgJG1wQcfvTCmEBHStwqkAAFguHYQbckMtwvEg9++bo+3UwUGIGktjSzKyfXO9zTTReN
qyW8O1NG/9eb+3quVtsuTR0cAb4eLdhD/rpyKHx5tsJyXdOLfzoHZSOi//Sp4Qd+XDoWIphd2VO3
UPrsdQFSJ33741AbBXbze81Kuu4943yWlGOV/MUyl7Z+KcKMvnBrvPNCGcKO1uNWBBaSE//tjAjK
SOH/UA3RtPef2dKxDCUqiisq+yI9TGtPU46WmCm6XSjFnIPXsNbr9+DHhfKJ/iYtgYWEHN54AU+7
3/RIAQrtE7sAEfnezqdMEAyFoKUcv98yqqscveXxVS76M5lc/ITQWsIzbGKBMF+2z8wHo04KjIRu
zPj3i/KKSnba3rR+Dri37JOBsEJNA2PAplPkyALuphKa6u37l27pHnq67LDtiStEVuzflZnHpIEw
MtQaZrij5tcp0Bv/XeXCQlsYsHuCqqTrcbk4Y477QS0uzHUp6noYUshclGr+nmAG8nBuAXUfGG+E
Ay7o88h/nhSlcx69INMl2YRUfeoQBz3ov/cazqHslBIXsdZ1I914DFJEQk/YapeShgRJAkrVHu9V
O2ffsfCcPhL8gEYtjBzoO+juoOIKD60xDfY9IzkHBbVC8USKE1SqWJfh3Y3HkWJbn4f5hqQEm/kM
bPCfqEieFhM3zXPuO7eOsONAmd9ZsUyoalC2hdrP6e3ZcONSiFeWkjySnZV8aGSr0CCSaf+3QODo
Ok3oCTmHCA+rS7GQqbVANPlVwoNTWAQe5k+4UBIzqx/Rzz9TAzR1lDwzDdokcMZPpgW5PvGHl1IX
OFy35dcRLZJlRElLJ2BOWdQLj7/WixmhKVTd3ujCr8K/AARubTIcT3zPF+mDJgG1KbytkI5XFZ1b
QiMB48TQXxdsXq2nojQQORLULlEJRmg3xpQOB8FaRUeLJO4XqLU0OtgCaBjuaYAUX9YaFpobVr+E
CicgXAPfumHLGgPUIflkkZFP+ft9+avs6sNUGpU/nUy2jUejhdkV2nL9AfczNQb80wfdeM7tTU0T
ffEiKPUMlK7j7i0J2BdW/3+ScPxkqVo58wUo0NMWXeqwBPWlo8F4XXtd+bF8YOfw97EehUSloI2v
DyL0dmIHzw3cpQKXwmLW0bm1F95odhfyPAb6j6G8xISlbWlIvoblN/96B29XhG1M6pkc69FEcWeO
zZ4SZCDyCNbNZCcF7E2yDTbgOWt9Gf41H73X98hyzZM2CjcnsP87aO2sdlrEjvmRITCAdsmNm8jJ
wPF5lrA4PXPDuwWD/EKx9iCqHs8nznTewsKt6NkwVCGNEj7RpEINhsU5itwEhL7crwYeUnDA9/cR
sTO+GNpbrpab0xyzSK/anPRyVg2DWJVKXGpjj1FZvCILr/nPx4t/l0x9/def8dZHvC2MnzDrotKe
u0nN3wbZ9EsrEMcDpF4CQJLxS3wF54q/npwHQQ4y7aGX0vbqi/ytpCLMMSc2q1rUsPoVhclAve2k
jVvhGXbevNdn339yAo1W27AtQCganwuiTLpkvk17MGMcQbw3YVFfU/p+mO8TY4Sb2PU9h675Y5jy
WnYiqSXPr+ZOc8fChlSwf0Uz3xwlxUYbUZoifJKS1dXBCsb5aEF69zGTbb3sfKaILcUGyetT177x
02YkQMyb6IEn8lDIuJM8JIsts0728bo3uEBBH0lAJ4bPP1iXmdUR/AAgBnK65Bg1EjCBmNrNcKLb
0fI4BKO5YvBh5fNHYltVax13hBEyXpF4c1n4bS30Xd1Clavxxn8G+FtHJlMV5LmzOyxshUKyKK6I
NbwN6IvkEjm9FPI9bj7WFT6zW1jGnblRrE0dVNQO0A07tv1ZeFWbikK79uN93DlYE1F/745BYs8f
urkpfRdr2nZKtLKe1/v4Ktv9mJj4pFyXT9XR1DW0vPb2c3ykeSWrhz7otWnvi3LUO4qXC1dSK3ZA
Vhg5brGlwAFlj8DSsJ+CRyFAVaCwJTI3O6OkCGMY7803V6+9sVtFsQT1wqSfmw103EC8DvP43dxi
iDo1ckiDJ7kfxu0TWeCbLSTDgONXYD/jsTW432T2hWlgsfHmWh/kByRliGBrmD8kMAS7YOxu9GnF
M9zl8KXp5ZLI4et1ehvPRJ+3l1/7Qdr4ibj5kWpCGf8ekRZhW3d69/VciBHs2MUMLvneWJ31Mulp
BThv1Aa0EHn21XvXkFWe2pEu47HQoJTm72R6zMx518WwnNZld/ZzZBRQ+XMLfdmzOfk6AGqL/yeK
SxZBvhfVWp/QrHFtHWSlgt9PIY/Sy1AB33lKyFr8u/XoXi26xDRzcKyzRaa2kU1MANeNG7Z55rSF
gDYo/RzOuVEtN6zdQxoLcWUyDqs1CCCfFhbGL4+PcnI4VWpsopnrk6D19/PnPlbwqVrzC4Iz8OsO
INkrX3p/OhpIbM6kuHLuumVriWOtrOe3EEVMUkZunv7Fg8GsfTcpRusbHpdmcvj73q0Bghq7bf92
H2jMwLUEqJTNy8A4qwTXoHxwVguA7V0ogczQsWuNJ44qw/BzXWxOJiWx1mswgn77MVeYILkXxKP/
LeEDUTQ1HeBdcF4RkGfJOMGxW+apRGO/VDdu3gUVdnUMTQ24flUJK95s3u+PKBvNCfZUnxutffSt
acRhNiQCHxkSn9Dpxx5yVOG8mFkpPc+yptljHF5o0laSmsSvf/BR2gaKueDaw9p0HtAKOq7A+SLV
TXp0RyTTHyC7WjP0LinXtXR3M32kYkWFoacpCnptLdbnKBe4qyLNNE7MtXRMm7BRddN4ALqZ74pe
qJZxI9Po54H7M+cApMekHdhv/XRMQOZOMfNARITrdsYArSo1yMHy2qgiTbqpaAXruV1g/2X4w0/b
UDlDloxiw20Wg7OktrzjwQ+6xioLTJKvHPJKw4gqZkeLFZt8Yk6F/FyZdkI4CInO7OZhyM54KJkH
G0AbGnHCW7tlY8gjSk1p9j2U/eTt1CCQjlX3qmXJZmxFhHugx9tenEXZdLFpU8eHndJ1NvETYe+L
eS+KLYilVyK+s6R/w/femwOhRx1H3buOU+ofeKDKaehmGMqEYk5TCgIXiAqPpd9BEBDoWLUDQgvp
KZ6RFDdpZtmJBiBLwyPuLusZZvM5cpq05J9eUR4NR+Jh5IEgI6r7A5Rdi+iMTgXhNS0U1SZyfCvi
XrMaYkH+/6xTmrtPT0731SgDjzEjt+P6ghLwxoahktEJmFMfmlhVZcuMWzuLq/g/bZnnHP9ek6Yy
PROeJC1mY8102M45/sHTbWpjtSCWZq+kfTG6weNNlU5SXxwdqJRRNjGLIbQeopxlVZfgjmT5xM1c
gx7X7twTWxM5NECfxb68KviYRP/5YBcd+9iHISYFjg9eTELDA8Ryc3W750SD0SSl32bHYLBOpQWx
IJo1gUmoxvyiRurMGiXrQE+ApSQv/EOwBqRPUF0cv953oaYQai1zwP8GJ3gpMh+Xe9mm1GODc2r6
4qhOyLQPYXz18+9ukWAARBrnrvJflGjPyJTbV1oFslGCpYYSZdyOurOypaaVpOQ8JkudZ77AcPlh
wx4ol+cU5v12fnLaAVWhyOcAyZo8Xba3yDt/dlCrGnFeEBhvyywp+4nqxmVosalZalDfn+J4NGWJ
ZTZsrVBqGP4X+0gp3EKqEJtjdjnQcXa7BD2F5QH66opg2/cmupMiy56bUQP+N2vG1Sx/ofwgJJMs
gc2VDpQ1506l6g8Auxfw/HAJO3FqoZV9nhm2/Tu98mZ2/ZlpyBQkTkgoLZ/qZuHIOD8zDlGlloU5
o1wpP/yYZXN347KT44UXr+zVp1SgEoSo53QSZOBSYDyfUAuHwPIHpRe2c12PK7CuzLdFaHGhqyid
GenC+1eps3LSCp8EuPd8TEBQLi5laqedq8aR1hh+QjF9q7kzm6/vHJSac+DmPrN8jnaLVzqpMJjV
ysCDqJHbgzKegMMKe6YorxR0pWgKBUcnz7Wc183PxgxrO6U40kXTrL/5a3aLebh5n7XeiYxljUXx
/tZYLL+7aDIfo4Fan7SDhoFFJkuJTZMNtN0JWpURSvrHsMP2lYLWJW9ZE2geigiLrtoQXqswPHAC
/7K45/wGWUKeu58u7vNa12+b61B33bw/7JAwg73KOKJXFQxAldlINlBqOF6mAF/VBr0AIHEIgFpW
V4408+oX00hXwMWP/gGbl/Xi2SQ6xT9maHK9Xjf398rySkB82UPZhoNrEhbwoiyPfynllHaUWWal
GiwzcX13Q8s0ngTmKWjdU4mIjO+Nzx7Ot5ccDd2a5nFIc/QwFDhsu55gOR8JY4cBRmErTMmCFhbG
KQjMpAv1whApmrtUHGsA8Y/fB8rSfGIjlfqGmRgoZgLLXmZEzPcEMuLUOhbw0RfaWzdT4JrWRoQp
KkMFGHtc3/JRSAKqO/8JmN9tGw1q+xl3ncfIgp6F4xtevW4xrtJ06vr8UvgCpqtM5XP0PP9HRSs/
CBNZ/Y6Aq1faTHiIrmDRq7397hySe4mUE96/x3a51DjB9x/vMaXqCsVpSux0zu+1+w77r0Sodb5O
a40k6GLO4wJL4HmdckwUSOldlEEwQX3jStfP3FqfEwRapNCwAQyzQ1aoc8XigYnIHtqMnqASgflo
uJVxarsnurH8AhgTSKAr071cFXbLw7qq3IH7nixJV1gm6/8SD2mJNA2fOVZYd1g31O+zdI/+9l19
/2Bd0z1/7A1CvOmKFCcTi04r3gwNERgQmLJhkkt942L75gKMg7EJ3Fd1u4vsC70LZ0it3uNoNR/g
/B0qzwQyE2fH8H60LIWFhlZ9hoxkJ2zF78cGT3abpX5BNP5FX1QZFyVIyAmMrFg07XqEL99rThTe
YqGSFmwfcc+CdKvDmd1p8iRUVdO1NEfvgEIJqBtLOKFegNVS3C1PnyssmEiwWQ+wyBRwq5gflDLE
2fjz6/7ryWv0c29yny/Ubp4edeXxlBNdhcoQhpf2V2y6d3zv1sYX
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
