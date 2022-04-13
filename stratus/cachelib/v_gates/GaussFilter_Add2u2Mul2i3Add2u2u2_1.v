`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 14:51:47 CST (Apr 12 2022 06:51:47 UTC)

module GaussFilter_Add2u2Mul2i3Add2u2u2_1(in3, in2, in1, out1);
  input [1:0] in3, in2, in1;
  output [4:0] out1;
  wire [1:0] in3, in2, in1;
  wire [4:0] out1;
  wire add_26_2_n_0, add_26_2_n_1, add_26_2_n_4, add_26_2_n_5,
       add_26_2_n_6, add_26_2_n_7, add_26_2_n_8, add_26_2_n_11;
  wire add_26_2_n_21, csa_tree_add_32_2_groupi_n_0,
       csa_tree_add_32_2_groupi_n_1, csa_tree_add_32_2_groupi_n_3,
       csa_tree_add_32_2_groupi_n_4, csa_tree_add_32_2_groupi_n_5,
       csa_tree_add_32_2_groupi_n_6, csa_tree_add_32_2_groupi_n_7;
  wire csa_tree_add_32_2_groupi_n_8, csa_tree_add_32_2_groupi_n_10,
       csa_tree_add_32_2_groupi_n_11, csa_tree_add_32_2_groupi_n_12,
       csa_tree_add_32_2_groupi_n_14, csa_tree_add_32_2_groupi_n_15,
       csa_tree_add_32_2_groupi_n_16, csa_tree_add_32_2_groupi_n_18;
  wire csa_tree_add_32_2_groupi_n_21, csa_tree_add_32_2_groupi_n_22,
       csa_tree_add_32_2_groupi_n_30, csa_tree_add_32_2_groupi_n_32,
       n_0, n_1, n_2;
  OAI21X1 add_26_2_g27(.A0 (add_26_2_n_6), .A1 (add_26_2_n_21), .B0
       (add_26_2_n_7), .Y (n_2));
  NAND2X1 add_26_2_g33(.A (add_26_2_n_7), .B (add_26_2_n_8), .Y
       (add_26_2_n_11));
  NAND2X1 add_26_2_g34(.A (add_26_2_n_0), .B (add_26_2_n_1), .Y (n_0));
  NAND2X2 add_26_2_g37(.A (add_26_2_n_5), .B (add_26_2_n_4), .Y
       (add_26_2_n_8));
  NAND2X2 add_26_2_g39(.A (in3[1]), .B (in2[1]), .Y (add_26_2_n_7));
  NAND2X2 add_26_2_g40(.A (in3[0]), .B (in2[0]), .Y (add_26_2_n_6));
  CLKINVX3 add_26_2_g41(.A (in3[1]), .Y (add_26_2_n_5));
  INVX2 add_26_2_g42(.A (in2[1]), .Y (add_26_2_n_4));
  NAND2BX1 add_26_2_g46(.AN (in2[0]), .B (in3[0]), .Y (add_26_2_n_1));
  NAND2BX1 add_26_2_g47(.AN (in3[0]), .B (in2[0]), .Y (add_26_2_n_0));
  CLKXOR2X1 add_26_2_g48(.A (add_26_2_n_6), .B (add_26_2_n_11), .Y
       (n_1));
  INVXL add_26_2_fopt(.A (add_26_2_n_8), .Y (add_26_2_n_21));
  OAI21X1 csa_tree_add_32_2_groupi_g150(.A0
       (csa_tree_add_32_2_groupi_n_12), .A1
       (csa_tree_add_32_2_groupi_n_22), .B0
       (csa_tree_add_32_2_groupi_n_30), .Y (out1[4]));
  MXI2X1 csa_tree_add_32_2_groupi_g151(.A
       (csa_tree_add_32_2_groupi_n_15), .B
       (csa_tree_add_32_2_groupi_n_16), .S0
       (csa_tree_add_32_2_groupi_n_21), .Y (out1[3]));
  AOI21X1 csa_tree_add_32_2_groupi_g152(.A0
       (csa_tree_add_32_2_groupi_n_11), .A1
       (csa_tree_add_32_2_groupi_n_18), .B0
       (csa_tree_add_32_2_groupi_n_10), .Y
       (csa_tree_add_32_2_groupi_n_22));
  AOI21X1 csa_tree_add_32_2_groupi_g153(.A0
       (csa_tree_add_32_2_groupi_n_11), .A1
       (csa_tree_add_32_2_groupi_n_18), .B0
       (csa_tree_add_32_2_groupi_n_10), .Y
       (csa_tree_add_32_2_groupi_n_21));
  MXI2XL csa_tree_add_32_2_groupi_g154(.A
       (csa_tree_add_32_2_groupi_n_32), .B
       (csa_tree_add_32_2_groupi_n_18), .S0
       (csa_tree_add_32_2_groupi_n_14), .Y (out1[2]));
  ADDFX1 csa_tree_add_32_2_groupi_g156(.A
       (csa_tree_add_32_2_groupi_n_8), .B (n_1), .CI
       (csa_tree_add_32_2_groupi_n_0), .CO
       (csa_tree_add_32_2_groupi_n_18), .S (out1[1]));
  INVXL csa_tree_add_32_2_groupi_g157(.A
       (csa_tree_add_32_2_groupi_n_15), .Y
       (csa_tree_add_32_2_groupi_n_16));
  NOR2BX1 csa_tree_add_32_2_groupi_g158(.AN
       (csa_tree_add_32_2_groupi_n_30), .B
       (csa_tree_add_32_2_groupi_n_12), .Y
       (csa_tree_add_32_2_groupi_n_15));
  NOR2BX1 csa_tree_add_32_2_groupi_g159(.AN
       (csa_tree_add_32_2_groupi_n_11), .B
       (csa_tree_add_32_2_groupi_n_10), .Y
       (csa_tree_add_32_2_groupi_n_14));
  NAND2X1 csa_tree_add_32_2_groupi_g162(.A
       (csa_tree_add_32_2_groupi_n_6), .B
       (csa_tree_add_32_2_groupi_n_7), .Y
       (csa_tree_add_32_2_groupi_n_11));
  NOR2X1 csa_tree_add_32_2_groupi_g163(.A
       (csa_tree_add_32_2_groupi_n_6), .B
       (csa_tree_add_32_2_groupi_n_7), .Y
       (csa_tree_add_32_2_groupi_n_10));
  ADDHX1 csa_tree_add_32_2_groupi_g164(.A (n_0), .B (in1[0]), .CO
       (csa_tree_add_32_2_groupi_n_8), .S (out1[0]));
  MXI2X1 csa_tree_add_32_2_groupi_g166(.A (n_2), .B
       (csa_tree_add_32_2_groupi_n_3), .S0 (n_1), .Y
       (csa_tree_add_32_2_groupi_n_7));
  NAND2X1 csa_tree_add_32_2_groupi_g167(.A (n_0), .B (in1[1]), .Y
       (csa_tree_add_32_2_groupi_n_6));
  INVXL csa_tree_add_32_2_groupi_fopt(.A
       (csa_tree_add_32_2_groupi_n_4), .Y
       (csa_tree_add_32_2_groupi_n_5));
  INVXL csa_tree_add_32_2_groupi_fopt171(.A (n_2), .Y
       (csa_tree_add_32_2_groupi_n_4));
  INVX1 csa_tree_add_32_2_groupi_fopt172(.A (n_2), .Y
       (csa_tree_add_32_2_groupi_n_3));
  INVXL csa_tree_add_32_2_groupi_fopt175(.A (n_2), .Y
       (csa_tree_add_32_2_groupi_n_1));
  XOR2XL csa_tree_add_32_2_groupi_g2(.A (in1[1]), .B (n_0), .Y
       (csa_tree_add_32_2_groupi_n_0));
  CLKBUFX2 csa_tree_add_32_2_groupi_g176(.A
       (csa_tree_add_32_2_groupi_n_1), .Y
       (csa_tree_add_32_2_groupi_n_12));
  NAND2X1 csa_tree_add_32_2_groupi_g177(.A
       (csa_tree_add_32_2_groupi_n_5), .B (n_1), .Y
       (csa_tree_add_32_2_groupi_n_30));
  INVXL csa_tree_add_32_2_groupi_fopt178(.A
       (csa_tree_add_32_2_groupi_n_18), .Y
       (csa_tree_add_32_2_groupi_n_32));
endmodule

