`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 21:28:26 CST (Apr 12 2022 13:28:26 UTC)

module GaussFilter_gen_busy_r_4_0(in1, in2, in3, in4, out1);
  input in1, in2, in3, in4;
  output [2:0] out1;
  wire in1, in2, in3, in4;
  wire [2:0] out1;
  wire n_0;
  INVX1 g24(.A (out1[0]), .Y (out1[1]));
  AOI21X1 g25(.A0 (in4), .A1 (n_0), .B0 (in3), .Y (out1[0]));
  NAND2BX1 g26(.AN (in3), .B (n_0), .Y (out1[2]));
  OAI21X1 g27(.A0 (in1), .A1 (in4), .B0 (in2), .Y (n_0));
endmodule


