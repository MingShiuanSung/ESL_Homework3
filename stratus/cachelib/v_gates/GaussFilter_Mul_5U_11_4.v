`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 14:50:56 CST (Apr 12 2022 06:50:56 UTC)

module GaussFilter_Mul_5U_11_4(in1, out1);
  input [2:0] in1;
  output [4:0] out1;
  wire [2:0] in1;
  wire [4:0] out1;
  wire const_mul_20_8_n_0, const_mul_20_8_n_2;
  assign out1[0] = in1[0];
  ADDHX1 const_mul_20_8_g55(.A (in1[2]), .B (const_mul_20_8_n_2), .CO
       (out1[4]), .S (out1[3]));
  ADDFX1 const_mul_20_8_g56(.A (const_mul_20_8_n_0), .B (in1[1]), .CI
       (in1[2]), .CO (const_mul_20_8_n_2), .S (out1[2]));
  ADDHX1 const_mul_20_8_g57(.A (in1[1]), .B (in1[0]), .CO
       (const_mul_20_8_n_0), .S (out1[1]));
endmodule

