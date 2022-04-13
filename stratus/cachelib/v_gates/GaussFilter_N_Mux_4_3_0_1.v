`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 21:35:26 CST (Apr 12 2022 13:35:26 UTC)

module GaussFilter_N_Mux_4_3_0_1(ctrl1, out1);
  input [1:0] ctrl1;
  output [3:0] out1;
  wire [1:0] ctrl1;
  wire [3:0] out1;
  wire n_0;
  assign out1[3] = 1'b0;
  NOR2X4 g16(.A (ctrl1[1]), .B (out1[1]), .Y (out1[2]));
  NOR2X4 g17(.A (n_0), .B (out1[1]), .Y (out1[0]));
  CLKINVX12 g18(.A (ctrl1[1]), .Y (n_0));
  CLKINVX20 g19(.A (ctrl1[0]), .Y (out1[1]));
endmodule

