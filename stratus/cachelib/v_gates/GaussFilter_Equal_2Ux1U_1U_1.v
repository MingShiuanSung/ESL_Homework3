`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 21:35:26 CST (Apr 12 2022 13:35:26 UTC)

module GaussFilter_Equal_2Ux1U_1U_1(in2, in1, out1);
  input [1:0] in2;
  input in1;
  output out1;
  wire [1:0] in2;
  wire in1;
  wire out1;
  wire n_0, n_1, n_2, n_3;
  AOI21X2 g27(.A0 (n_2), .A1 (n_3), .B0 (in2[1]), .Y (out1));
  NAND2X2 g29(.A (n_1), .B (n_0), .Y (n_3));
  NAND2X2 g28(.A (in2[0]), .B (in1), .Y (n_2));
  CLKINVX4 g30(.A (in2[0]), .Y (n_1));
  CLKINVX2 g31(.A (in1), .Y (n_0));
endmodule


