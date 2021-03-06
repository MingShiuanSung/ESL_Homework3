`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 21:20:21 CST (Apr 12 2022 13:20:21 UTC)

module GaussFilter_N_Mux_29_2_0_4(in2, ctrl1, out1);
  input [28:0] in2;
  input ctrl1;
  output [28:0] out1;
  wire [28:0] in2;
  wire ctrl1;
  wire [28:0] out1;
  NOR2BX1 g280(.AN (in2[17]), .B (ctrl1), .Y (out1[17]));
  NOR2BX1 g263(.AN (in2[27]), .B (ctrl1), .Y (out1[27]));
  NOR2BX1 g278(.AN (in2[26]), .B (ctrl1), .Y (out1[26]));
  NOR2BX1 g264(.AN (in2[25]), .B (ctrl1), .Y (out1[25]));
  NOR2BX1 g271(.AN (in2[24]), .B (ctrl1), .Y (out1[24]));
  NOR2BX1 g279(.AN (in2[23]), .B (ctrl1), .Y (out1[23]));
  NOR2BX1 g286(.AN (in2[22]), .B (ctrl1), .Y (out1[22]));
  NOR2BX1 g265(.AN (in2[21]), .B (ctrl1), .Y (out1[21]));
  NOR2BX1 g277(.AN (in2[6]), .B (ctrl1), .Y (out1[6]));
  NOR2BX1 g268(.AN (in2[20]), .B (ctrl1), .Y (out1[20]));
  NOR2BX1 g272(.AN (in2[19]), .B (ctrl1), .Y (out1[19]));
  NOR2BX1 g262(.AN (in2[18]), .B (ctrl1), .Y (out1[18]));
  NOR2BX1 g270(.AN (in2[10]), .B (ctrl1), .Y (out1[10]));
  NOR2BX1 g275(.AN (in2[28]), .B (ctrl1), .Y (out1[28]));
  NOR2BX1 g274(.AN (in2[8]), .B (ctrl1), .Y (out1[8]));
  NOR2BX1 g287(.AN (in2[15]), .B (ctrl1), .Y (out1[15]));
  NOR2BX1 g290(.AN (in2[14]), .B (ctrl1), .Y (out1[14]));
  NOR2BX1 g266(.AN (in2[13]), .B (ctrl1), .Y (out1[13]));
  NOR2BX1 g267(.AN (in2[12]), .B (ctrl1), .Y (out1[12]));
  NOR2BX1 g269(.AN (in2[11]), .B (ctrl1), .Y (out1[11]));
  NOR2BX1 g273(.AN (in2[9]), .B (ctrl1), .Y (out1[9]));
  NOR2BX1 g276(.AN (in2[16]), .B (ctrl1), .Y (out1[16]));
  NOR2BX1 g283(.AN (in2[7]), .B (ctrl1), .Y (out1[7]));
  NOR2BX1 g281(.AN (in2[5]), .B (ctrl1), .Y (out1[5]));
  NOR2BX1 g282(.AN (in2[4]), .B (ctrl1), .Y (out1[4]));
  NOR2BX1 g284(.AN (in2[3]), .B (ctrl1), .Y (out1[3]));
  NOR2BX1 g285(.AN (in2[2]), .B (ctrl1), .Y (out1[2]));
  NOR2BX1 g288(.AN (in2[1]), .B (ctrl1), .Y (out1[1]));
  NOR2BX1 g289(.AN (in2[0]), .B (ctrl1), .Y (out1[0]));
endmodule


