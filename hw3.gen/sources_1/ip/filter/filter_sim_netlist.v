// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Nov 14 17:36:31 2023
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
qQlm14+zBm4deikoN7Y=
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
