`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 20:36:33 CST (Apr 12 2022 12:36:33 UTC)

module GaussFilter_Add_64S_9_1(in2, in1, out1);
  input [63:0] in2, in1;
  output [63:0] out1;
  wire [63:0] in2, in1;
  wire [63:0] out1;
  wire inc_add_23_2_n_0;
  assign out1[1] = 1'b0;
  assign out1[2] = 1'b0;
  assign out1[3] = 1'b0;
  assign out1[4] = 1'b0;
  assign out1[5] = 1'b0;
  assign out1[6] = 1'b0;
  assign out1[7] = 1'b0;
  assign out1[8] = 1'b0;
  assign out1[9] = 1'b0;
  assign out1[10] = 1'b0;
  assign out1[11] = 1'b0;
  assign out1[12] = 1'b0;
  assign out1[13] = 1'b0;
  assign out1[14] = 1'b0;
  assign out1[15] = 1'b0;
  assign out1[16] = 1'b0;
  assign out1[17] = 1'b0;
  assign out1[18] = 1'b0;
  assign out1[19] = 1'b0;
  assign out1[20] = 1'b0;
  assign out1[21] = 1'b0;
  assign out1[22] = 1'b0;
  assign out1[23] = 1'b0;
  assign out1[24] = 1'b0;
  assign out1[25] = 1'b0;
  assign out1[26] = 1'b0;
  assign out1[27] = 1'b0;
  assign out1[28] = 1'b0;
  assign out1[29] = 1'b0;
  assign out1[30] = 1'b0;
  assign out1[31] = 1'b0;
  assign out1[32] = 1'b0;
  assign out1[33] = 1'b0;
  assign out1[34] = 1'b0;
  assign out1[35] = 1'b0;
  assign out1[36] = 1'b0;
  assign out1[37] = 1'b0;
  assign out1[38] = 1'b0;
  assign out1[39] = 1'b0;
  assign out1[40] = 1'b0;
  assign out1[41] = 1'b0;
  assign out1[42] = 1'b0;
  assign out1[43] = 1'b0;
  assign out1[44] = 1'b0;
  assign out1[45] = 1'b0;
  assign out1[46] = 1'b0;
  assign out1[47] = 1'b0;
  assign out1[48] = 1'b0;
  assign out1[49] = 1'b0;
  assign out1[50] = 1'b0;
  assign out1[51] = 1'b0;
  assign out1[52] = 1'b0;
  assign out1[53] = 1'b0;
  assign out1[54] = 1'b0;
  assign out1[55] = 1'b0;
  assign out1[56] = 1'b0;
  assign out1[57] = 1'b0;
  assign out1[58] = 1'b0;
  assign out1[59] = 1'b0;
  assign out1[60] = 1'b0;
  assign out1[61] = 1'b0;
  assign out1[62] = 1'b0;
  assign out1[63] = 1'b0;
  MXI2X1 inc_add_23_2_g7(.A (inc_add_23_2_n_0), .B (in1[0]), .S0
       (in2[0]), .Y (out1[0]));
  CLKINVX4 inc_add_23_2_g8(.A (in1[0]), .Y (inc_add_23_2_n_0));
endmodule


