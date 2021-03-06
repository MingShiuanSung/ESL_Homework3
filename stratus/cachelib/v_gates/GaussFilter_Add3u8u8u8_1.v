`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 14:52:05 CST (Apr 12 2022 06:52:05 UTC)

module GaussFilter_Add3u8u8u8_1(in3, in2, in1, out1);
  input [7:0] in3, in2, in1;
  output [9:0] out1;
  wire [7:0] in3, in2, in1;
  wire [9:0] out1;
  wire csa_tree_add_28_2_groupi_n_0, csa_tree_add_28_2_groupi_n_1,
       csa_tree_add_28_2_groupi_n_2, csa_tree_add_28_2_groupi_n_3,
       csa_tree_add_28_2_groupi_n_4, csa_tree_add_28_2_groupi_n_11,
       csa_tree_add_28_2_groupi_n_12, csa_tree_add_28_2_groupi_n_13;
  wire csa_tree_add_28_2_groupi_n_14, csa_tree_add_28_2_groupi_n_15,
       csa_tree_add_28_2_groupi_n_16, csa_tree_add_28_2_groupi_n_17,
       csa_tree_add_28_2_groupi_n_18, csa_tree_add_28_2_groupi_n_19,
       csa_tree_add_28_2_groupi_n_21, csa_tree_add_28_2_groupi_n_22;
  wire csa_tree_add_28_2_groupi_n_23, csa_tree_add_28_2_groupi_n_24,
       csa_tree_add_28_2_groupi_n_25, csa_tree_add_28_2_groupi_n_26,
       csa_tree_add_28_2_groupi_n_27, csa_tree_add_28_2_groupi_n_28,
       csa_tree_add_28_2_groupi_n_29, csa_tree_add_28_2_groupi_n_30;
  wire csa_tree_add_28_2_groupi_n_31, csa_tree_add_28_2_groupi_n_32,
       csa_tree_add_28_2_groupi_n_33, csa_tree_add_28_2_groupi_n_34,
       csa_tree_add_28_2_groupi_n_35, csa_tree_add_28_2_groupi_n_36,
       csa_tree_add_28_2_groupi_n_37, csa_tree_add_28_2_groupi_n_38;
  wire csa_tree_add_28_2_groupi_n_39, csa_tree_add_28_2_groupi_n_40,
       csa_tree_add_28_2_groupi_n_41, csa_tree_add_28_2_groupi_n_42,
       csa_tree_add_28_2_groupi_n_43, csa_tree_add_28_2_groupi_n_44,
       csa_tree_add_28_2_groupi_n_45, csa_tree_add_28_2_groupi_n_46;
  wire csa_tree_add_28_2_groupi_n_47, csa_tree_add_28_2_groupi_n_49,
       csa_tree_add_28_2_groupi_n_50, csa_tree_add_28_2_groupi_n_51,
       csa_tree_add_28_2_groupi_n_52, csa_tree_add_28_2_groupi_n_53,
       csa_tree_add_28_2_groupi_n_54, csa_tree_add_28_2_groupi_n_55;
  wire csa_tree_add_28_2_groupi_n_57, csa_tree_add_28_2_groupi_n_58,
       csa_tree_add_28_2_groupi_n_59, csa_tree_add_28_2_groupi_n_60,
       csa_tree_add_28_2_groupi_n_61, csa_tree_add_28_2_groupi_n_62,
       csa_tree_add_28_2_groupi_n_63, csa_tree_add_28_2_groupi_n_64;
  wire csa_tree_add_28_2_groupi_n_65, csa_tree_add_28_2_groupi_n_67,
       csa_tree_add_28_2_groupi_n_68, csa_tree_add_28_2_groupi_n_69,
       csa_tree_add_28_2_groupi_n_70, csa_tree_add_28_2_groupi_n_71,
       csa_tree_add_28_2_groupi_n_72, csa_tree_add_28_2_groupi_n_73;
  wire csa_tree_add_28_2_groupi_n_100, csa_tree_add_28_2_groupi_n_101,
       csa_tree_add_28_2_groupi_n_103, csa_tree_add_28_2_groupi_n_104,
       csa_tree_add_28_2_groupi_n_105, csa_tree_add_28_2_groupi_n_107;
  MXI2XL csa_tree_add_28_2_groupi_g648(.A
       (csa_tree_add_28_2_groupi_n_24), .B
       (csa_tree_add_28_2_groupi_n_25), .S0
       (csa_tree_add_28_2_groupi_n_73), .Y (out1[8]));
  NOR2X1 csa_tree_add_28_2_groupi_g652(.A
       (csa_tree_add_28_2_groupi_n_25), .B
       (csa_tree_add_28_2_groupi_n_73), .Y (out1[9]));
  NOR2X1 csa_tree_add_28_2_groupi_g653(.A
       (csa_tree_add_28_2_groupi_n_62), .B
       (csa_tree_add_28_2_groupi_n_69), .Y
       (csa_tree_add_28_2_groupi_n_73));
  AOI21X1 csa_tree_add_28_2_groupi_g654(.A0
       (csa_tree_add_28_2_groupi_n_3), .A1
       (csa_tree_add_28_2_groupi_n_101), .B0
       (csa_tree_add_28_2_groupi_n_107), .Y
       (csa_tree_add_28_2_groupi_n_72));
  AOI21X1 csa_tree_add_28_2_groupi_g655(.A0
       (csa_tree_add_28_2_groupi_n_29), .A1
       (csa_tree_add_28_2_groupi_n_101), .B0
       (csa_tree_add_28_2_groupi_n_2), .Y
       (csa_tree_add_28_2_groupi_n_71));
  NOR2X1 csa_tree_add_28_2_groupi_g657(.A
       (csa_tree_add_28_2_groupi_n_65), .B
       (csa_tree_add_28_2_groupi_n_68), .Y
       (csa_tree_add_28_2_groupi_n_70));
  NOR2X1 csa_tree_add_28_2_groupi_g658(.A
       (csa_tree_add_28_2_groupi_n_61), .B
       (csa_tree_add_28_2_groupi_n_67), .Y
       (csa_tree_add_28_2_groupi_n_69));
  NOR2X1 csa_tree_add_28_2_groupi_g659(.A
       (csa_tree_add_28_2_groupi_n_54), .B
       (csa_tree_add_28_2_groupi_n_67), .Y
       (csa_tree_add_28_2_groupi_n_68));
  NOR2X2 csa_tree_add_28_2_groupi_g662(.A
       (csa_tree_add_28_2_groupi_n_58), .B
       (csa_tree_add_28_2_groupi_n_63), .Y
       (csa_tree_add_28_2_groupi_n_67));
  OAI21X1 csa_tree_add_28_2_groupi_g663(.A0
       (csa_tree_add_28_2_groupi_n_36), .A1
       (csa_tree_add_28_2_groupi_n_47), .B0
       (csa_tree_add_28_2_groupi_n_39), .Y
       (csa_tree_add_28_2_groupi_n_65));
  AOI21X1 csa_tree_add_28_2_groupi_g664(.A0
       (csa_tree_add_28_2_groupi_n_38), .A1
       (csa_tree_add_28_2_groupi_n_104), .B0
       (csa_tree_add_28_2_groupi_n_37), .Y
       (csa_tree_add_28_2_groupi_n_64));
  NOR2X2 csa_tree_add_28_2_groupi_g665(.A
       (csa_tree_add_28_2_groupi_n_44), .B
       (csa_tree_add_28_2_groupi_n_60), .Y
       (csa_tree_add_28_2_groupi_n_63));
  OAI21X1 csa_tree_add_28_2_groupi_g667(.A0
       (csa_tree_add_28_2_groupi_n_51), .A1
       (csa_tree_add_28_2_groupi_n_47), .B0
       (csa_tree_add_28_2_groupi_n_59), .Y
       (csa_tree_add_28_2_groupi_n_62));
  NAND2X1 csa_tree_add_28_2_groupi_g668(.A
       (csa_tree_add_28_2_groupi_n_50), .B
       (csa_tree_add_28_2_groupi_n_3), .Y
       (csa_tree_add_28_2_groupi_n_61));
  NAND2X2 csa_tree_add_28_2_groupi_g669(.A
       (csa_tree_add_28_2_groupi_n_38), .B
       (csa_tree_add_28_2_groupi_n_57), .Y
       (csa_tree_add_28_2_groupi_n_60));
  AOI21X1 csa_tree_add_28_2_groupi_g670(.A0
       (csa_tree_add_28_2_groupi_n_4), .A1
       (csa_tree_add_28_2_groupi_n_43), .B0
       (csa_tree_add_28_2_groupi_n_41), .Y
       (csa_tree_add_28_2_groupi_n_59));
  OAI21X1 csa_tree_add_28_2_groupi_g671(.A0
       (csa_tree_add_28_2_groupi_n_1), .A1
       (csa_tree_add_28_2_groupi_n_44), .B0
       (csa_tree_add_28_2_groupi_n_40), .Y
       (csa_tree_add_28_2_groupi_n_58));
  ADDFHX1 csa_tree_add_28_2_groupi_g673(.A
       (csa_tree_add_28_2_groupi_n_19), .B (in3[1]), .CI
       (csa_tree_add_28_2_groupi_n_0), .CO
       (csa_tree_add_28_2_groupi_n_57), .S (out1[1]));
  NOR2BX1 csa_tree_add_28_2_groupi_g675(.AN
       (csa_tree_add_28_2_groupi_n_43), .B
       (csa_tree_add_28_2_groupi_n_41), .Y
       (csa_tree_add_28_2_groupi_n_55));
  NAND2BX1 csa_tree_add_28_2_groupi_g676(.AN
       (csa_tree_add_28_2_groupi_n_36), .B
       (csa_tree_add_28_2_groupi_n_3), .Y
       (csa_tree_add_28_2_groupi_n_54));
  NOR2X1 csa_tree_add_28_2_groupi_g678(.A
       (csa_tree_add_28_2_groupi_n_4), .B
       (csa_tree_add_28_2_groupi_n_36), .Y
       (csa_tree_add_28_2_groupi_n_53));
  NOR2BX1 csa_tree_add_28_2_groupi_g680(.AN
       (csa_tree_add_28_2_groupi_n_40), .B
       (csa_tree_add_28_2_groupi_n_44), .Y
       (csa_tree_add_28_2_groupi_n_52));
  INVX1 csa_tree_add_28_2_groupi_g681(.A
       (csa_tree_add_28_2_groupi_n_50), .Y
       (csa_tree_add_28_2_groupi_n_51));
  NOR2X1 csa_tree_add_28_2_groupi_g682(.A
       (csa_tree_add_28_2_groupi_n_42), .B
       (csa_tree_add_28_2_groupi_n_36), .Y
       (csa_tree_add_28_2_groupi_n_50));
  NOR2BX1 csa_tree_add_28_2_groupi_g683(.AN
       (csa_tree_add_28_2_groupi_n_38), .B
       (csa_tree_add_28_2_groupi_n_37), .Y
       (csa_tree_add_28_2_groupi_n_49));
  AOI21X1 csa_tree_add_28_2_groupi_g685(.A0
       (csa_tree_add_28_2_groupi_n_2), .A1
       (csa_tree_add_28_2_groupi_n_30), .B0
       (csa_tree_add_28_2_groupi_n_27), .Y
       (csa_tree_add_28_2_groupi_n_47));
  INVX1 csa_tree_add_28_2_groupi_g688(.A
       (csa_tree_add_28_2_groupi_n_42), .Y
       (csa_tree_add_28_2_groupi_n_43));
  NOR2BX1 csa_tree_add_28_2_groupi_g689(.AN
       (csa_tree_add_28_2_groupi_n_29), .B
       (csa_tree_add_28_2_groupi_n_2), .Y
       (csa_tree_add_28_2_groupi_n_46));
  NOR2BX1 csa_tree_add_28_2_groupi_g690(.AN
       (csa_tree_add_28_2_groupi_n_30), .B
       (csa_tree_add_28_2_groupi_n_27), .Y
       (csa_tree_add_28_2_groupi_n_45));
  NOR2X2 csa_tree_add_28_2_groupi_g692(.A
       (csa_tree_add_28_2_groupi_n_31), .B
       (csa_tree_add_28_2_groupi_n_18), .Y
       (csa_tree_add_28_2_groupi_n_44));
  NOR2X1 csa_tree_add_28_2_groupi_g693(.A
       (csa_tree_add_28_2_groupi_n_34), .B
       (csa_tree_add_28_2_groupi_n_26), .Y
       (csa_tree_add_28_2_groupi_n_42));
  INVX1 csa_tree_add_28_2_groupi_g694(.A
       (csa_tree_add_28_2_groupi_n_4), .Y
       (csa_tree_add_28_2_groupi_n_39));
  INVX1 csa_tree_add_28_2_groupi_g695(.A
       (csa_tree_add_28_2_groupi_n_1), .Y
       (csa_tree_add_28_2_groupi_n_37));
  AND2X1 csa_tree_add_28_2_groupi_g696(.A
       (csa_tree_add_28_2_groupi_n_34), .B
       (csa_tree_add_28_2_groupi_n_26), .Y
       (csa_tree_add_28_2_groupi_n_41));
  NAND2X1 csa_tree_add_28_2_groupi_g697(.A
       (csa_tree_add_28_2_groupi_n_31), .B
       (csa_tree_add_28_2_groupi_n_18), .Y
       (csa_tree_add_28_2_groupi_n_40));
  NAND2X1 csa_tree_add_28_2_groupi_g699(.A
       (csa_tree_add_28_2_groupi_n_12), .B
       (csa_tree_add_28_2_groupi_n_33), .Y
       (csa_tree_add_28_2_groupi_n_38));
  NOR2X1 csa_tree_add_28_2_groupi_g701(.A
       (csa_tree_add_28_2_groupi_n_15), .B
       (csa_tree_add_28_2_groupi_n_35), .Y
       (csa_tree_add_28_2_groupi_n_36));
  ADDFX1 csa_tree_add_28_2_groupi_g703(.A (in2[6]), .B (in3[6]), .CI
       (in1[6]), .CO (csa_tree_add_28_2_groupi_n_34), .S
       (csa_tree_add_28_2_groupi_n_35));
  INVX1 csa_tree_add_28_2_groupi_g704(.A
       (csa_tree_add_28_2_groupi_n_32), .Y
       (csa_tree_add_28_2_groupi_n_33));
  ADDFHXL csa_tree_add_28_2_groupi_g705(.A (in2[2]), .B (in3[2]), .CI
       (in1[2]), .CO (csa_tree_add_28_2_groupi_n_31), .S
       (csa_tree_add_28_2_groupi_n_32));
  NAND2X1 csa_tree_add_28_2_groupi_g707(.A
       (csa_tree_add_28_2_groupi_n_22), .B
       (csa_tree_add_28_2_groupi_n_16), .Y
       (csa_tree_add_28_2_groupi_n_30));
  INVX1 csa_tree_add_28_2_groupi_g708(.A
       (csa_tree_add_28_2_groupi_n_28), .Y
       (csa_tree_add_28_2_groupi_n_29));
  NOR2X1 csa_tree_add_28_2_groupi_g709(.A
       (csa_tree_add_28_2_groupi_n_17), .B
       (csa_tree_add_28_2_groupi_n_23), .Y
       (csa_tree_add_28_2_groupi_n_28));
  NOR2X1 csa_tree_add_28_2_groupi_g710(.A
       (csa_tree_add_28_2_groupi_n_22), .B
       (csa_tree_add_28_2_groupi_n_16), .Y
       (csa_tree_add_28_2_groupi_n_27));
  INVX1 csa_tree_add_28_2_groupi_g712(.A
       (csa_tree_add_28_2_groupi_n_24), .Y
       (csa_tree_add_28_2_groupi_n_25));
  ADDFX1 csa_tree_add_28_2_groupi_g713(.A (in3[7]), .B (in2[7]), .CI
       (in1[7]), .CO (csa_tree_add_28_2_groupi_n_24), .S
       (csa_tree_add_28_2_groupi_n_26));
  INVX1 csa_tree_add_28_2_groupi_g715(.A
       (csa_tree_add_28_2_groupi_n_21), .Y
       (csa_tree_add_28_2_groupi_n_22));
  ADDFHXL csa_tree_add_28_2_groupi_g716(.A (in3[4]), .B (in2[4]), .CI
       (in1[4]), .CO (csa_tree_add_28_2_groupi_n_21), .S
       (csa_tree_add_28_2_groupi_n_23));
  ADDFHX1 csa_tree_add_28_2_groupi_g717(.A (in2[0]), .B (in3[0]), .CI
       (in1[0]), .CO (csa_tree_add_28_2_groupi_n_19), .S (out1[0]));
  ADDFXL csa_tree_add_28_2_groupi_g719(.A (in3[3]), .B (in2[3]), .CI
       (in1[3]), .CO (csa_tree_add_28_2_groupi_n_17), .S
       (csa_tree_add_28_2_groupi_n_18));
  CLKXOR2X1 csa_tree_add_28_2_groupi_g720(.A (in2[5]), .B
       (csa_tree_add_28_2_groupi_n_13), .Y
       (csa_tree_add_28_2_groupi_n_16));
  OAI2BB1X1 csa_tree_add_28_2_groupi_g722(.A0N (in1[5]), .A1N (in2[5]),
       .B0 (csa_tree_add_28_2_groupi_n_14), .Y
       (csa_tree_add_28_2_groupi_n_15));
  OAI21X1 csa_tree_add_28_2_groupi_g723(.A0 (in1[5]), .A1 (in2[5]), .B0
       (in3[5]), .Y (csa_tree_add_28_2_groupi_n_14));
  MXI2XL csa_tree_add_28_2_groupi_g724(.A (in1[5]), .B
       (csa_tree_add_28_2_groupi_n_11), .S0 (in3[5]), .Y
       (csa_tree_add_28_2_groupi_n_13));
  NAND2X1 csa_tree_add_28_2_groupi_g726(.A (in1[1]), .B (in2[1]), .Y
       (csa_tree_add_28_2_groupi_n_12));
  INVX1 csa_tree_add_28_2_groupi_g728(.A (in1[5]), .Y
       (csa_tree_add_28_2_groupi_n_11));
  CLKXOR2X1 csa_tree_add_28_2_groupi_g2(.A
       (csa_tree_add_28_2_groupi_n_103), .B
       (csa_tree_add_28_2_groupi_n_49), .Y (out1[2]));
  XNOR2XL csa_tree_add_28_2_groupi_g729(.A
       (csa_tree_add_28_2_groupi_n_55), .B
       (csa_tree_add_28_2_groupi_n_70), .Y (out1[7]));
  XNOR2XL csa_tree_add_28_2_groupi_g730(.A
       (csa_tree_add_28_2_groupi_n_53), .B
       (csa_tree_add_28_2_groupi_n_72), .Y (out1[6]));
  XNOR2X1 csa_tree_add_28_2_groupi_g731(.A
       (csa_tree_add_28_2_groupi_n_52), .B
       (csa_tree_add_28_2_groupi_n_64), .Y (out1[3]));
  XNOR2X1 csa_tree_add_28_2_groupi_g732(.A
       (csa_tree_add_28_2_groupi_n_46), .B
       (csa_tree_add_28_2_groupi_n_100), .Y (out1[4]));
  XNOR2XL csa_tree_add_28_2_groupi_g733(.A
       (csa_tree_add_28_2_groupi_n_45), .B
       (csa_tree_add_28_2_groupi_n_71), .Y (out1[5]));
  AND2X1 csa_tree_add_28_2_groupi_g734(.A
       (csa_tree_add_28_2_groupi_n_15), .B
       (csa_tree_add_28_2_groupi_n_35), .Y
       (csa_tree_add_28_2_groupi_n_4));
  NOR2BX1 csa_tree_add_28_2_groupi_g736(.AN
       (csa_tree_add_28_2_groupi_n_30), .B
       (csa_tree_add_28_2_groupi_n_28), .Y
       (csa_tree_add_28_2_groupi_n_3));
  AND2X1 csa_tree_add_28_2_groupi_g737(.A
       (csa_tree_add_28_2_groupi_n_17), .B
       (csa_tree_add_28_2_groupi_n_23), .Y
       (csa_tree_add_28_2_groupi_n_2));
  NAND2BX1 csa_tree_add_28_2_groupi_g738(.AN
       (csa_tree_add_28_2_groupi_n_12), .B
       (csa_tree_add_28_2_groupi_n_32), .Y
       (csa_tree_add_28_2_groupi_n_1));
  XOR2XL csa_tree_add_28_2_groupi_g739(.A (in1[1]), .B (in2[1]), .Y
       (csa_tree_add_28_2_groupi_n_0));
  INVXL csa_tree_add_28_2_groupi_fopt(.A
       (csa_tree_add_28_2_groupi_n_101), .Y
       (csa_tree_add_28_2_groupi_n_100));
  CLKINVX2 csa_tree_add_28_2_groupi_fopt740(.A
       (csa_tree_add_28_2_groupi_n_67), .Y
       (csa_tree_add_28_2_groupi_n_101));
  INVXL csa_tree_add_28_2_groupi_fopt741(.A
       (csa_tree_add_28_2_groupi_n_105), .Y
       (csa_tree_add_28_2_groupi_n_103));
  INVXL csa_tree_add_28_2_groupi_fopt742(.A
       (csa_tree_add_28_2_groupi_n_105), .Y
       (csa_tree_add_28_2_groupi_n_104));
  INVXL csa_tree_add_28_2_groupi_fopt743(.A
       (csa_tree_add_28_2_groupi_n_57), .Y
       (csa_tree_add_28_2_groupi_n_105));
  INVXL csa_tree_add_28_2_groupi_fopt744(.A
       (csa_tree_add_28_2_groupi_n_47), .Y
       (csa_tree_add_28_2_groupi_n_107));
endmodule


