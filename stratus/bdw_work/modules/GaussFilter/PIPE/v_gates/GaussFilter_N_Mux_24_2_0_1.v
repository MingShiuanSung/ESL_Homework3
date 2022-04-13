`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 21:28:30 CST (Apr 12 2022 13:28:30 UTC)

module GaussFilter_N_Mux_24_2_0_1(in3, in2, ctrl1, out1);
  input [23:0] in3, in2;
  input ctrl1;
  output [23:0] out1;
  wire [23:0] in3, in2;
  wire ctrl1;
  wire [23:0] out1;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  OAI21X4 g254(.A0 (ctrl1), .A1 (n_16), .B0 (n_39), .Y (out1[22]));
  OAI21X4 g256(.A0 (ctrl1), .A1 (n_7), .B0 (n_24), .Y (out1[4]));
  OAI21X4 g257(.A0 (ctrl1), .A1 (n_21), .B0 (n_38), .Y (out1[3]));
  OAI21X4 g260(.A0 (ctrl1), .A1 (n_18), .B0 (n_40), .Y (out1[2]));
  OAI21X4 g262(.A0 (ctrl1), .A1 (n_3), .B0 (n_37), .Y (out1[1]));
  OAI21X4 g263(.A0 (ctrl1), .A1 (n_20), .B0 (n_34), .Y (out1[0]));
  OAI21X4 g247(.A0 (ctrl1), .A1 (n_1), .B0 (n_27), .Y (out1[23]));
  OAI21X4 g255(.A0 (ctrl1), .A1 (n_17), .B0 (n_44), .Y (out1[21]));
  OAI21X4 g242(.A0 (ctrl1), .A1 (n_23), .B0 (n_45), .Y (out1[20]));
  OAI21X4 g248(.A0 (ctrl1), .A1 (n_4), .B0 (n_26), .Y (out1[19]));
  OAI21X4 g258(.A0 (ctrl1), .A1 (n_22), .B0 (n_32), .Y (out1[18]));
  OAI21X4 g243(.A0 (ctrl1), .A1 (n_8), .B0 (n_43), .Y (out1[17]));
  OAI21X4 g244(.A0 (ctrl1), .A1 (n_11), .B0 (n_35), .Y (out1[10]));
  OAI21X4 g249(.A0 (ctrl1), .A1 (n_15), .B0 (n_25), .Y (out1[15]));
  OAI21X4 g252(.A0 (ctrl1), .A1 (n_5), .B0 (n_36), .Y (out1[14]));
  OAI21X4 g253(.A0 (ctrl1), .A1 (n_12), .B0 (n_30), .Y (out1[13]));
  OAI21X4 g261(.A0 (ctrl1), .A1 (n_19), .B0 (n_31), .Y (out1[12]));
  OAI21X4 g264(.A0 (ctrl1), .A1 (n_6), .B0 (n_28), .Y (out1[11]));
  OAI21X4 g245(.A0 (ctrl1), .A1 (n_13), .B0 (n_41), .Y (out1[16]));
  OAI21X4 g246(.A0 (ctrl1), .A1 (n_0), .B0 (n_29), .Y (out1[9]));
  OAI21X4 g241(.A0 (ctrl1), .A1 (n_9), .B0 (n_46), .Y (out1[8]));
  OAI21X4 g250(.A0 (ctrl1), .A1 (n_10), .B0 (n_47), .Y (out1[7]));
  OAI21X4 g251(.A0 (ctrl1), .A1 (n_2), .B0 (n_33), .Y (out1[6]));
  OAI21X4 g259(.A0 (ctrl1), .A1 (n_14), .B0 (n_42), .Y (out1[5]));
  NAND2X8 g274(.A (in2[7]), .B (ctrl1), .Y (n_47));
  NAND2X8 g273(.A (in2[8]), .B (ctrl1), .Y (n_46));
  NAND2X8 g269(.A (in2[20]), .B (ctrl1), .Y (n_45));
  NAND2X8 g282(.A (in2[21]), .B (ctrl1), .Y (n_44));
  NAND2X8 g267(.A (in2[17]), .B (ctrl1), .Y (n_43));
  NAND2X8 g283(.A (in2[5]), .B (ctrl1), .Y (n_42));
  NAND2X8 g265(.A (in2[16]), .B (ctrl1), .Y (n_41));
  NAND2X8 g284(.A (in2[2]), .B (ctrl1), .Y (n_40));
  NAND2X8 g266(.A (in2[22]), .B (ctrl1), .Y (n_39));
  NAND2X8 g285(.A (in2[3]), .B (ctrl1), .Y (n_38));
  NAND2X8 g275(.A (in2[1]), .B (ctrl1), .Y (n_37));
  NAND2X8 g279(.A (in2[14]), .B (ctrl1), .Y (n_36));
  NAND2X8 g268(.A (in2[10]), .B (ctrl1), .Y (n_35));
  NAND2X8 g286(.A (in2[0]), .B (ctrl1), .Y (n_34));
  NAND2X8 g276(.A (in2[6]), .B (ctrl1), .Y (n_33));
  NAND2X8 g287(.A (in2[18]), .B (ctrl1), .Y (n_32));
  NAND2X8 g288(.A (in2[12]), .B (ctrl1), .Y (n_31));
  NAND2X8 g281(.A (in2[13]), .B (ctrl1), .Y (n_30));
  NAND2X8 g270(.A (in2[9]), .B (ctrl1), .Y (n_29));
  NAND2X8 g277(.A (in2[11]), .B (ctrl1), .Y (n_28));
  NAND2X8 g271(.A (in2[23]), .B (ctrl1), .Y (n_27));
  NAND2X8 g278(.A (in2[19]), .B (ctrl1), .Y (n_26));
  NAND2X8 g272(.A (in2[15]), .B (ctrl1), .Y (n_25));
  NAND2X8 g280(.A (in2[4]), .B (ctrl1), .Y (n_24));
  CLKINVX4 g306(.A (in3[20]), .Y (n_23));
  CLKINVX4 g312(.A (in3[18]), .Y (n_22));
  CLKINVX4 g311(.A (in3[3]), .Y (n_21));
  CLKINVX4 g302(.A (in3[0]), .Y (n_20));
  CLKINVX4 g301(.A (in3[12]), .Y (n_19));
  CLKINVX4 g296(.A (in3[2]), .Y (n_18));
  CLKINVX4 g300(.A (in3[21]), .Y (n_17));
  CLKINVX4 g307(.A (in3[22]), .Y (n_16));
  CLKINVX4 g308(.A (in3[15]), .Y (n_15));
  CLKINVX4 g309(.A (in3[5]), .Y (n_14));
  CLKINVX4 g310(.A (in3[16]), .Y (n_13));
  CLKINVX4 g305(.A (in3[13]), .Y (n_12));
  CLKINVX4 g289(.A (in3[10]), .Y (n_11));
  CLKINVX4 g294(.A (in3[7]), .Y (n_10));
  CLKINVX4 g292(.A (in3[8]), .Y (n_9));
  CLKINVX4 g290(.A (in3[17]), .Y (n_8));
  CLKINVX4 g298(.A (in3[4]), .Y (n_7));
  CLKINVX4 g297(.A (in3[11]), .Y (n_6));
  CLKINVX4 g299(.A (in3[14]), .Y (n_5));
  CLKINVX4 g291(.A (in3[19]), .Y (n_4));
  CLKINVX4 g293(.A (in3[1]), .Y (n_3));
  CLKINVX4 g295(.A (in3[6]), .Y (n_2));
  CLKINVX4 g303(.A (in3[23]), .Y (n_1));
  CLKINVX4 g304(.A (in3[9]), .Y (n_0));
endmodule
