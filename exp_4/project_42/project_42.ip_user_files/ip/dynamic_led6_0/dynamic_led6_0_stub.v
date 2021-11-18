// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Nov 18 16:40:25 2021
// Host        : Uestc024 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/2019011211011/project_42/project_42.srcs/sources_1/ip/dynamic_led6_0/dynamic_led6_0_stub.v
// Design      : dynamic_led6_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dynamic_led6,Vivado 2017.4" *)
module dynamic_led6_0(disp_data_right0, disp_data_right1, 
  disp_data_right2, disp_data_right3, disp_data_right4, disp_data_right5, clk, seg, dig)
/* synthesis syn_black_box black_box_pad_pin="disp_data_right0[3:0],disp_data_right1[3:0],disp_data_right2[3:0],disp_data_right3[3:0],disp_data_right4[3:0],disp_data_right5[3:0],clk,seg[7:0],dig[5:0]" */;
  input [3:0]disp_data_right0;
  input [3:0]disp_data_right1;
  input [3:0]disp_data_right2;
  input [3:0]disp_data_right3;
  input [3:0]disp_data_right4;
  input [3:0]disp_data_right5;
  input clk;
  output [7:0]seg;
  output [5:0]dig;
endmodule
