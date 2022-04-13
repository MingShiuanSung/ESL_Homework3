`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 20:36:31 CST (Apr 12 2022 12:36:31 UTC)

module GaussFilter_N_Mux_8_2_10_1(in2, ctrl1, out1);
  input [7:0] in2;
  input ctrl1;
  output [7:0] out1;
  wire [7:0] in2;
  wire ctrl1;
  wire [7:0] out1;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  NAND2X4 g30(.A (ctrl1), .B (n_0), .Y (out1[5]));
  NAND2X4 g26(.A (ctrl1), .B (n_1), .Y (out1[6]));
  NAND2X4 g27(.A (ctrl1), .B (n_2), .Y (out1[7]));
  NAND2X4 g25(.A (ctrl1), .B (n_5), .Y (out1[4]));
  NAND2X4 g32(.A (ctrl1), .B (n_4), .Y (out1[1]));
  NAND2X4 g29(.A (ctrl1), .B (n_3), .Y (out1[2]));
  NAND2X4 g31(.A (ctrl1), .B (n_7), .Y (out1[3]));
  NAND2X4 g28(.A (ctrl1), .B (n_6), .Y (out1[0]));
  CLKINVX12 g35(.A (in2[3]), .Y (n_7));
  CLKINVX12 g37(.A (in2[0]), .Y (n_6));
  CLKINVX12 g33(.A (in2[4]), .Y (n_5));
  CLKINVX12 g38(.A (in2[1]), .Y (n_4));
  CLKINVX12 g36(.A (in2[2]), .Y (n_3));
  CLKINVX12 g40(.A (in2[7]), .Y (n_2));
  CLKINVX12 g34(.A (in2[6]), .Y (n_1));
  CLKINVX12 g39(.A (in2[5]), .Y (n_0));
endmodule

