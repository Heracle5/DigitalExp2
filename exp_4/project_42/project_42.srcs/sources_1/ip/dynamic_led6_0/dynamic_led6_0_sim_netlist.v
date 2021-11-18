// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Nov 18 16:40:25 2021
// Host        : Uestc024 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/2019011211011/project_42/project_42.srcs/sources_1/ip/dynamic_led6_0/dynamic_led6_0_sim_netlist.v
// Design      : dynamic_led6_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dynamic_led6_0,dynamic_led6,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "dynamic_led6,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module dynamic_led6_0
   (disp_data_right0,
    disp_data_right1,
    disp_data_right2,
    disp_data_right3,
    disp_data_right4,
    disp_data_right5,
    clk,
    seg,
    dig);
  input [3:0]disp_data_right0;
  input [3:0]disp_data_right1;
  input [3:0]disp_data_right2;
  input [3:0]disp_data_right3;
  input [3:0]disp_data_right4;
  input [3:0]disp_data_right5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  output [7:0]seg;
  output [5:0]dig;

  wire \<const0> ;
  wire clk;
  wire [5:0]dig;
  wire [3:0]disp_data_right0;
  wire [3:0]disp_data_right1;
  wire [3:0]disp_data_right2;
  wire [3:0]disp_data_right3;
  wire [3:0]disp_data_right4;
  wire [3:0]disp_data_right5;
  wire [6:0]\^seg ;

  assign seg[7] = \<const0> ;
  assign seg[6:0] = \^seg [6:0];
  GND GND
       (.G(\<const0> ));
  dynamic_led6_0_dynamic_led6 inst
       (.clk(clk),
        .dig(dig),
        .disp_data_right0(disp_data_right0),
        .disp_data_right1(disp_data_right1),
        .disp_data_right2(disp_data_right2),
        .disp_data_right3(disp_data_right3),
        .disp_data_right4(disp_data_right4),
        .disp_data_right5(disp_data_right5),
        .seg(\^seg ));
endmodule

(* ORIG_REF_NAME = "dynamic_led6" *) 
module dynamic_led6_0_dynamic_led6
   (dig,
    seg,
    clk,
    disp_data_right4,
    disp_data_right5,
    disp_data_right1,
    disp_data_right3,
    disp_data_right0,
    disp_data_right2);
  output [5:0]dig;
  output [6:0]seg;
  input clk;
  input [3:0]disp_data_right4;
  input [3:0]disp_data_right5;
  input [3:0]disp_data_right1;
  input [3:0]disp_data_right3;
  input [3:0]disp_data_right0;
  input [3:0]disp_data_right2;

  wire clk;
  wire clk_div;
  wire clk_div_0;
  wire [24:0]clk_div_cnt;
  wire \clk_div_cnt[24]_i_3_n_0 ;
  wire \clk_div_cnt[24]_i_4_n_0 ;
  wire \clk_div_cnt[24]_i_5_n_0 ;
  wire \clk_div_cnt[24]_i_6_n_0 ;
  wire \clk_div_cnt[24]_i_7_n_0 ;
  wire \clk_div_cnt[24]_i_8_n_0 ;
  wire \clk_div_cnt[24]_i_9_n_0 ;
  wire [0:0]clk_div_cnt_1;
  wire \clk_div_cnt_reg[12]_i_1_n_0 ;
  wire \clk_div_cnt_reg[12]_i_1_n_1 ;
  wire \clk_div_cnt_reg[12]_i_1_n_2 ;
  wire \clk_div_cnt_reg[12]_i_1_n_3 ;
  wire \clk_div_cnt_reg[16]_i_1_n_0 ;
  wire \clk_div_cnt_reg[16]_i_1_n_1 ;
  wire \clk_div_cnt_reg[16]_i_1_n_2 ;
  wire \clk_div_cnt_reg[16]_i_1_n_3 ;
  wire \clk_div_cnt_reg[20]_i_1_n_0 ;
  wire \clk_div_cnt_reg[20]_i_1_n_1 ;
  wire \clk_div_cnt_reg[20]_i_1_n_2 ;
  wire \clk_div_cnt_reg[20]_i_1_n_3 ;
  wire \clk_div_cnt_reg[24]_i_2_n_1 ;
  wire \clk_div_cnt_reg[24]_i_2_n_2 ;
  wire \clk_div_cnt_reg[24]_i_2_n_3 ;
  wire \clk_div_cnt_reg[4]_i_1_n_0 ;
  wire \clk_div_cnt_reg[4]_i_1_n_1 ;
  wire \clk_div_cnt_reg[4]_i_1_n_2 ;
  wire \clk_div_cnt_reg[4]_i_1_n_3 ;
  wire \clk_div_cnt_reg[8]_i_1_n_0 ;
  wire \clk_div_cnt_reg[8]_i_1_n_1 ;
  wire \clk_div_cnt_reg[8]_i_1_n_2 ;
  wire \clk_div_cnt_reg[8]_i_1_n_3 ;
  wire clk_div_i_1_n_0;
  wire [2:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire [24:1]data0;
  wire [5:0]dig;
  wire [3:0]disp_data_right0;
  wire [3:0]disp_data_right1;
  wire [3:0]disp_data_right2;
  wire [3:0]disp_data_right3;
  wire [3:0]disp_data_right4;
  wire [3:0]disp_data_right5;
  wire [6:0]seg;
  wire \seg[6]_INST_0_i_5_n_0 ;
  wire \seg[6]_INST_0_i_6_n_0 ;
  wire \seg[6]_INST_0_i_7_n_0 ;
  wire \seg[6]_INST_0_i_8_n_0 ;
  wire [3:0]sel0;
  wire [3:3]\NLW_clk_div_cnt_reg[24]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div_cnt[0]_i_1 
       (.I0(clk_div_cnt[0]),
        .O(clk_div_cnt_1));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div_cnt[24]_i_1 
       (.I0(\clk_div_cnt[24]_i_3_n_0 ),
        .O(clk_div_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_div_cnt[24]_i_3 
       (.I0(\clk_div_cnt[24]_i_4_n_0 ),
        .I1(\clk_div_cnt[24]_i_5_n_0 ),
        .I2(\clk_div_cnt[24]_i_6_n_0 ),
        .I3(\clk_div_cnt[24]_i_7_n_0 ),
        .I4(\clk_div_cnt[24]_i_8_n_0 ),
        .I5(\clk_div_cnt[24]_i_9_n_0 ),
        .O(\clk_div_cnt[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_div_cnt[24]_i_4 
       (.I0(clk_div_cnt[16]),
        .I1(clk_div_cnt[15]),
        .I2(clk_div_cnt[18]),
        .I3(clk_div_cnt[17]),
        .O(\clk_div_cnt[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_div_cnt[24]_i_5 
       (.I0(clk_div_cnt[20]),
        .I1(clk_div_cnt[19]),
        .I2(clk_div_cnt[22]),
        .I3(clk_div_cnt[21]),
        .O(\clk_div_cnt[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \clk_div_cnt[24]_i_6 
       (.I0(clk_div_cnt[8]),
        .I1(clk_div_cnt[7]),
        .I2(clk_div_cnt[10]),
        .I3(clk_div_cnt[9]),
        .O(\clk_div_cnt[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \clk_div_cnt[24]_i_7 
       (.I0(clk_div_cnt[12]),
        .I1(clk_div_cnt[11]),
        .I2(clk_div_cnt[14]),
        .I3(clk_div_cnt[13]),
        .O(\clk_div_cnt[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \clk_div_cnt[24]_i_8 
       (.I0(clk_div_cnt[4]),
        .I1(clk_div_cnt[3]),
        .I2(clk_div_cnt[5]),
        .I3(clk_div_cnt[6]),
        .O(\clk_div_cnt[24]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \clk_div_cnt[24]_i_9 
       (.I0(clk_div_cnt[0]),
        .I1(clk_div_cnt[23]),
        .I2(clk_div_cnt[24]),
        .I3(clk_div_cnt[2]),
        .I4(clk_div_cnt[1]),
        .O(\clk_div_cnt[24]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_div_cnt_1),
        .Q(clk_div_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(clk_div_cnt[10]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(clk_div_cnt[11]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(clk_div_cnt[12]),
        .R(clk_div_0));
  CARRY4 \clk_div_cnt_reg[12]_i_1 
       (.CI(\clk_div_cnt_reg[8]_i_1_n_0 ),
        .CO({\clk_div_cnt_reg[12]_i_1_n_0 ,\clk_div_cnt_reg[12]_i_1_n_1 ,\clk_div_cnt_reg[12]_i_1_n_2 ,\clk_div_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(clk_div_cnt[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(clk_div_cnt[13]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(clk_div_cnt[14]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(clk_div_cnt[15]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(clk_div_cnt[16]),
        .R(clk_div_0));
  CARRY4 \clk_div_cnt_reg[16]_i_1 
       (.CI(\clk_div_cnt_reg[12]_i_1_n_0 ),
        .CO({\clk_div_cnt_reg[16]_i_1_n_0 ,\clk_div_cnt_reg[16]_i_1_n_1 ,\clk_div_cnt_reg[16]_i_1_n_2 ,\clk_div_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(clk_div_cnt[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(clk_div_cnt[17]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(clk_div_cnt[18]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(clk_div_cnt[19]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(clk_div_cnt[1]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(clk_div_cnt[20]),
        .R(clk_div_0));
  CARRY4 \clk_div_cnt_reg[20]_i_1 
       (.CI(\clk_div_cnt_reg[16]_i_1_n_0 ),
        .CO({\clk_div_cnt_reg[20]_i_1_n_0 ,\clk_div_cnt_reg[20]_i_1_n_1 ,\clk_div_cnt_reg[20]_i_1_n_2 ,\clk_div_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(clk_div_cnt[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(clk_div_cnt[21]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(clk_div_cnt[22]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[23]),
        .Q(clk_div_cnt[23]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[24]),
        .Q(clk_div_cnt[24]),
        .R(clk_div_0));
  CARRY4 \clk_div_cnt_reg[24]_i_2 
       (.CI(\clk_div_cnt_reg[20]_i_1_n_0 ),
        .CO({\NLW_clk_div_cnt_reg[24]_i_2_CO_UNCONNECTED [3],\clk_div_cnt_reg[24]_i_2_n_1 ,\clk_div_cnt_reg[24]_i_2_n_2 ,\clk_div_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(clk_div_cnt[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(clk_div_cnt[2]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(clk_div_cnt[3]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(clk_div_cnt[4]),
        .R(clk_div_0));
  CARRY4 \clk_div_cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\clk_div_cnt_reg[4]_i_1_n_0 ,\clk_div_cnt_reg[4]_i_1_n_1 ,\clk_div_cnt_reg[4]_i_1_n_2 ,\clk_div_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(clk_div_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(clk_div_cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(clk_div_cnt[5]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(clk_div_cnt[6]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(clk_div_cnt[7]),
        .R(clk_div_0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(clk_div_cnt[8]),
        .R(clk_div_0));
  CARRY4 \clk_div_cnt_reg[8]_i_1 
       (.CI(\clk_div_cnt_reg[4]_i_1_n_0 ),
        .CO({\clk_div_cnt_reg[8]_i_1_n_0 ,\clk_div_cnt_reg[8]_i_1_n_1 ,\clk_div_cnt_reg[8]_i_1_n_2 ,\clk_div_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(clk_div_cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(clk_div_cnt[9]),
        .R(clk_div_0));
  LUT2 #(
    .INIT(4'h9)) 
    clk_div_i_1
       (.I0(\clk_div_cnt[24]_i_3_n_0 ),
        .I1(clk_div),
        .O(clk_div_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_div_i_1_n_0),
        .Q(clk_div),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \cnt[0]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[1]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h18)) 
    \cnt[2]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(\cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_div),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_div),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_div),
        .CE(1'b1),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \dig[0]_INST_0 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .O(dig[0]));
  LUT3 #(
    .INIT(8'hFD)) 
    \dig[1]_INST_0 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .O(dig[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \dig[2]_INST_0 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(dig[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \dig[3]_INST_0 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .O(dig[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \dig[4]_INST_0 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .O(dig[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \dig[5]_INST_0 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .O(dig[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9FED)) 
    \seg[0]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h479F)) 
    \seg[1]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h75FB)) 
    \seg[2]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg[3]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFD45)) 
    \seg[4]_INST_0 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC6EF)) 
    \seg[5]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(seg[5]));
  LUT4 #(
    .INIT(16'hFD6E)) 
    \seg[6]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(seg[6]));
  LUT6 #(
    .INIT(64'h00F0CCF000F0AAF0)) 
    \seg[6]_INST_0_i_1 
       (.I0(disp_data_right4[2]),
        .I1(disp_data_right5[2]),
        .I2(\seg[6]_INST_0_i_5_n_0 ),
        .I3(cnt[2]),
        .I4(cnt[1]),
        .I5(cnt[0]),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'h00F0CCF000F0AAF0)) 
    \seg[6]_INST_0_i_2 
       (.I0(disp_data_right4[1]),
        .I1(disp_data_right5[1]),
        .I2(\seg[6]_INST_0_i_6_n_0 ),
        .I3(cnt[2]),
        .I4(cnt[1]),
        .I5(cnt[0]),
        .O(sel0[1]));
  LUT6 #(
    .INIT(64'h00F0CCF000F0AAF0)) 
    \seg[6]_INST_0_i_3 
       (.I0(disp_data_right4[0]),
        .I1(disp_data_right5[0]),
        .I2(\seg[6]_INST_0_i_7_n_0 ),
        .I3(cnt[2]),
        .I4(cnt[1]),
        .I5(cnt[0]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'h00F0CCF000F0AAF0)) 
    \seg[6]_INST_0_i_4 
       (.I0(disp_data_right4[3]),
        .I1(disp_data_right5[3]),
        .I2(\seg[6]_INST_0_i_8_n_0 ),
        .I3(cnt[2]),
        .I4(cnt[1]),
        .I5(cnt[0]),
        .O(sel0[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg[6]_INST_0_i_5 
       (.I0(disp_data_right1[2]),
        .I1(disp_data_right3[2]),
        .I2(disp_data_right0[2]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .I5(disp_data_right2[2]),
        .O(\seg[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg[6]_INST_0_i_6 
       (.I0(disp_data_right1[1]),
        .I1(disp_data_right3[1]),
        .I2(disp_data_right0[1]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .I5(disp_data_right2[1]),
        .O(\seg[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg[6]_INST_0_i_7 
       (.I0(disp_data_right1[0]),
        .I1(disp_data_right3[0]),
        .I2(disp_data_right0[0]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .I5(disp_data_right2[0]),
        .O(\seg[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg[6]_INST_0_i_8 
       (.I0(disp_data_right1[3]),
        .I1(disp_data_right3[3]),
        .I2(disp_data_right0[3]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .I5(disp_data_right2[3]),
        .O(\seg[6]_INST_0_i_8_n_0 ));
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
