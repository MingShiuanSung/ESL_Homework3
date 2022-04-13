`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 14:50:57 CST (Apr 12 2022 06:50:57 UTC)

module GaussFilter_Div_8U_15_4(in1, out1);
  input [9:0] in1;
  output [7:0] out1;
  wire [9:0] in1;
  wire [7:0] out1;
  wire in1_26_2_, n_3, n_4, n_5, n_6, n_7, n_8, n_9;
  wire n_10, n_11, n_12, n_13, n_14, n_15, n_16, n_17;
  wire n_18, n_19, n_20, n_21, n_22, n_23, n_24, n_25;
  wire n_26, n_27, n_28, n_29, n_30, n_31, n_32, n_33;
  wire n_34, sub_74_2_n_0, sub_95_2_n_0, sub_116_2_n_0, sub_137_2_n_0,
       sub_158_2_n_0, sub_179_2_n_0, sub_200_2_n_0;
  wire sub_219_2_n_1;
  INVX1 g122(.A (in1_26_2_), .Y (out1[0]));
  XNOR2X1 g118(.A (in1[7]), .B (n_30), .Y (n_27));
  MX2XL g119(.A (n_29), .B (n_31), .S0 (n_30), .Y (n_28));
  XNOR2X1 g123(.A (in1[8]), .B (n_34), .Y (n_31));
  MX2XL g120(.A (n_33), .B (in1[9]), .S0 (n_34), .Y (n_32));
  XNOR2X1 g124(.A (in1[6]), .B (n_26), .Y (n_23));
  MX2XL g121(.A (n_25), .B (n_27), .S0 (n_26), .Y (n_24));
  XNOR2X1 g125(.A (in1[5]), .B (n_22), .Y (n_19));
  MX2XL g126(.A (n_21), .B (n_23), .S0 (n_22), .Y (n_20));
  XNOR2X1 g127(.A (in1[4]), .B (n_18), .Y (n_15));
  MX2XL g128(.A (n_17), .B (n_19), .S0 (n_18), .Y (n_16));
  INVX1 g109(.A (n_6), .Y (out1[1]));
  INVX1 g110(.A (n_30), .Y (out1[7]));
  INVX1 g111(.A (n_10), .Y (out1[2]));
  INVX1 g112(.A (n_22), .Y (out1[5]));
  INVX1 g113(.A (n_18), .Y (out1[4]));
  INVX1 g114(.A (n_14), .Y (out1[3]));
  INVX1 g115(.A (n_26), .Y (out1[6]));
  XNOR2X1 g129(.A (in1[3]), .B (n_14), .Y (n_11));
  MX2XL g130(.A (n_13), .B (n_15), .S0 (n_14), .Y (n_12));
  XNOR2X1 g131(.A (in1[2]), .B (n_10), .Y (n_7));
  MX2XL g132(.A (n_9), .B (n_11), .S0 (n_10), .Y (n_8));
  XNOR2X1 g133(.A (in1[1]), .B (n_6), .Y (n_3));
  MX2XL g134(.A (n_5), .B (n_7), .S0 (n_6), .Y (n_4));
  XNOR2X1 sub_137_2_g44(.A (n_20), .B (sub_137_2_n_0), .Y (n_18));
  ADDHX1 sub_137_2_g45(.A (n_19), .B (in1[4]), .CO (sub_137_2_n_0), .S
       (n_17));
  XNOR2X1 sub_74_2_g44(.A (n_32), .B (sub_74_2_n_0), .Y (n_30));
  ADDHX1 sub_74_2_g45(.A (n_31), .B (in1[7]), .CO (sub_74_2_n_0), .S
       (n_29));
  XOR2XL sub_219_2_g35(.A (n_4), .B (sub_219_2_n_1), .Y (in1_26_2_));
  NAND2X1 sub_219_2_g36(.A (n_3), .B (in1[0]), .Y (sub_219_2_n_1));
  XNOR2X1 sub_116_2_g44(.A (n_24), .B (sub_116_2_n_0), .Y (n_22));
  ADDHX1 sub_116_2_g45(.A (n_23), .B (in1[5]), .CO (sub_116_2_n_0), .S
       (n_21));
  XNOR2X1 sub_179_2_g44(.A (n_12), .B (sub_179_2_n_0), .Y (n_10));
  ADDHX1 sub_179_2_g45(.A (n_11), .B (in1[2]), .CO (sub_179_2_n_0), .S
       (n_9));
  XNOR2X1 sub_200_2_g44(.A (n_8), .B (sub_200_2_n_0), .Y (n_6));
  ADDHX1 sub_200_2_g45(.A (n_7), .B (in1[1]), .CO (sub_200_2_n_0), .S
       (n_5));
  XNOR2X1 sub_158_2_g44(.A (n_16), .B (sub_158_2_n_0), .Y (n_14));
  ADDHX1 sub_158_2_g45(.A (n_15), .B (in1[3]), .CO (sub_158_2_n_0), .S
       (n_13));
  XNOR2X1 sub_95_2_g44(.A (n_28), .B (sub_95_2_n_0), .Y (n_26));
  ADDHX1 sub_95_2_g45(.A (n_27), .B (in1[6]), .CO (sub_95_2_n_0), .S
       (n_25));
  XOR2XL sub_55_2_g27(.A (in1[9]), .B (in1[8]), .Y (n_33));
  NAND2X1 sub_55_2_g28(.A (in1[9]), .B (in1[8]), .Y (n_34));
endmodule


