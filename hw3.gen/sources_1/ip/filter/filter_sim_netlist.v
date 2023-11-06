// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Nov  6 22:20:25 2023
// Host        : LAPTOP-DN3M17Z running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Sreenu/OneDrive - IIT
//               Delhi/A/COL215/Assignments/hw3/hw3.gen/sources_1/ip/filter/filter_sim_netlist.v}
// Design      : filter
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "filter,dist_mem_gen_v8_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module filter
   (a,
    spo);
  input [3:0]a;
  output [7:0]spo;

  wire [3:0]a;
  wire [7:0]spo;
  wire [7:0]NLW_U0_dpo_UNCONNECTED;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "filter.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "8" *) 
  (* is_du_within_envelope = "true" *) 
  filter_dist_mem_gen_v8_0_14 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[7:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uwBH4JaTzmENPjp1VK18+NmHqz3idKCCPayqakkK6bYDVk0JtRfycJYNxbcnLmlw5yuLTcDXBBKk
FqBPE2n7wWKg9tfz2Y8PrWAvnbsIFMfxBK8sfWUf8PPnz8vUwwMHjbXUWcgCgvtygj/TbB+jcZ8Z
CjYnBZ8tNdKOO1iDLpQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ff7o4KDFniNgPFT3cDZtw4HhiKzFbOFtLXtuci0MZhgQ8oZ15BcuowAfxUJXngU8JkWI9cbWKkG8
h/PODwnWEt4eK4VDKRk6Hw3QkZiKAa1N3QupC8D5bR7vJ/+RhJwSayz9t2JpdZaEhKgCgqTcX6oZ
4fCEOmSTUWVob+DXV4UfaMyfVm5VI0wxZ7q0mjFx+pdkt56PuNREX9kH4a9Ma1P0sYo8XaTpANLa
JC6eXOuUQlp40M9F/NL1Xajpys0YfGx8AveMAFEyfRmHZs+NbXmny/79vednrm+FhwtS9LveegmF
NZW9jiiR+9Igeraaz+QXPc6JO/nCDTr4Fuwusg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
enb/INzHPP7GNdz8dyyqgVCJiMs9JXcjMywZXhzPersGm0A258UOUwtOqcF1rO7lnrKwTeWbNFVN
dO3BxXBpzGnYWUqDda208CYV9hTWFhfySQdX58qn1Z8QY5G7KniMCVjaGuPPCfToPOOdbAxR9XUp
XbMr0vrZKWxz8nBhGYc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RKZNANfa63/n14iwmSxsB/UeV76BNqjEiYgjlZ2LdFWOArCv6D+jhC4sjGMiaz8GJ8J5kQeiWB0Y
e1+zdHflgzODs6eVC82MlEcfgP0vdDIBn0PP8rVDg5O31eQuJ7n5zn4XJu+vzjpkvJIHKrktAsP4
jg+LRxcTOu0dILImk7Vwgyuwhi8OxNN+jBVbLVxdNj0l5aQMgRZlU/8FVh3u958SH7z/fHnwGaOw
P8QgNv0ZZblWvpxa8TJIwlgVb9354a0eyD9XsKy5VfuUG03nmputxNzUuIUmGtBGCqx+4D4pyCch
j/ixD5iiKRmeKD1/RtGzxmrJap7SAHMuzic1Hw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OQMD0qoDy+4W8+jfTV63GDTwmjWvJILCTofeYJTZqWc2KhrzQXwVMW48dTyIriC6bA4bmXD5BwcB
W2gGbVUvY1Y1+wEFEwYIC0LiPrJO0DhpM1JhP2vkxnTEwaODiEp5x3XqHgsiys0I2/9mE4z4Hlbl
jzftQ/8sVSYokhMp9eaIHk3HNCSBllv90qeBfH3fOdVI2gA1r/22PktttbkyKji24r7jM5o4aMIc
Sp6u0DCnD2cSPCuCuMW3A9sFRuTKbXiLAeeymFIAXHKYQgWXXOqmbKHrk4GviHQyz31C9d+hm6dh
RMtaCyWnhqo3QE/QxP0TsYk3CgkjDCU+KK/ozA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uV1eryjGs1SHbpKIAk5r3BY2SLKX9RlfGw6gbw/UtzBYt4U7vTBIy+x767ojEcmbGLos8kr8vilV
cnNOnsbu7vOAUIe+1PgpaPaCkv2OTPXaE0tfps6+Q6D3zB6j2a2FE1gRIPOniwAdlIn69jL2tuWD
M2BN1efQhi0lZHuKtTgzBOVXIg+zbTiH2k2kHWThOi6WayoBEny+g88wRi6pUBeB6aW3ezFYNmsl
zeOY9xmt+UhRMcr87DCcZdmjsIk6VrsIKF60y93pM0IoQ56iWpQ2OKZK+Ng9qC+pNHBEYEhiMQFb
kUesHtcFOIS7Ok6S9O9SMgf7lMQFOh9w0L31UA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GM2VxmvaiVBg1DsqOLewt6rcWtfH/Gj1QS7fUSMudF5qJ2fn+TXd8kcCwwrxdcXNXjoVi2As5jmL
yw1/NZreemrkS1YCJJDxmnE8CW2q9/4N4a79kApF1VfD5XdpaULhVn+Eb+jXCQFG+GEEOvnPb0Me
bbfRkfc0DAIWgtG2D81EQ28mg7KAWtsDpdUCi+BKdIAj8RXoTiQbFbiBeT7EiRIrz2PQF9nhQBfF
FjlrCNwDP4hRQJQeZcf/1Pl8SFyKGQb6iVF+VhhCVCunL7VBmzaCOW/gowPM7hRM2dvzmxcgeKfs
dZx/fy2rk1iokUi+3B+Jc6CycMWbHu8EfCh7iQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NSZoNMCco4gpYPcg8pb9mtee1JxEWDcDzt6wnS0LeSPMi2upLvQXnSQKMvJGGOKStJOcu1eu7x33
4Xa3ApbjbfZ+lgs1PYlyY4V+B2Lio1EEo1uzZVWFrVFvmknOZwj6Gcmj5N/osaiqKaeIw7NTTbyX
HNHOabVsQJ540qnP4u/nzS/h/AQcm0PFLadGZtHJZEzyQDSSdghD/y/OLprdBcInfQDwAxQuJpCy
ExX4lD2WMrCkymNBS9NMH0vYh4kvpYKRO/oHuGcOZVg0p8vfMmz/BJDHuxTcS3FpLT0WxGVcmUIk
cuqKQFiVwwgnW9AfYkbsMrwfl9po2pofaAY2JC5ZTMyO1qEfSu4fxTRJNnDRvW65KkMdJhZFa36p
82hcDlaYvBowndZfMc42Sxt+ZULFDTFN0HT50iteAG1yEvJ9jKBiJla+kDQJB0VD0kj4+k8aBug3
uPKVykvf1/Uaw8NoW591pML42qlh8v1RzAm6aDnPRdsDaCc5Dq9QDPuE

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oRNld8VrAuP/xHUguZzkh8+wROOItnvw1FQUP5KHjxeh8nudEYH2PGefTPsV73QyEruJanGifjCR
m8XHiIxqAY9fk4CAm+2n67YLFUEHjC1Qri9htrL4W5fnj7OIdzcwttvmGEuGOuYOFA98RcnR0jSL
Nyqq5u/eILCh2MiKiELfsBjRv/WckpboJ+gzO1btduECvdBGjsIcjjHiIzPwNSGxnX3G6zG9OiWq
hXP2Jh0Ril7rGbajit90p+gJpDpuLee/aOh0BUXbYYLU0YIXK8bskgMir7D6cfu5oWDKwYH6/YRR
tFjIhRzFsqwjtmaxUnGTZzxsWGazk+uFfHXl7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2864)
`pragma protect data_block
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
SAWTLcH82aIp6Dm6h5o=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
