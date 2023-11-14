// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Nov 14 17:47:27 2023
// Host        : LAPTOP-DN3M17Z running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Sreenu/OneDrive - IIT
//               Delhi/A/COL215/Assignments/hw3/hw3.gen/sources_1/ip/img/img_stub.v}
// Design      : img
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_14,Vivado 2023.2" *)
module img(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[11:0],spo[7:0]" */;
  input [11:0]a;
  output [7:0]spo;
endmodule
