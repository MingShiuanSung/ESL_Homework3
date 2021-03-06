`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 17.11-s014_1
// Generated on: Apr 12 2022 21:35:11 CST (Apr 12 2022 13:35:11 UTC)

module GaussFilter_Mul_8Ux3S_11S_4(in2, in1, out1);
  input [7:0] in2;
  input [2:0] in1;
  output [10:0] out1;
  wire [7:0] in2;
  wire [2:0] in1;
  wire [10:0] out1;
  wire mul_22_8_n_0, mul_22_8_n_1, mul_22_8_n_2, mul_22_8_n_3,
       mul_22_8_n_4, mul_22_8_n_5, mul_22_8_n_6, mul_22_8_n_7;
  wire mul_22_8_n_8, mul_22_8_n_9, mul_22_8_n_10, mul_22_8_n_11,
       mul_22_8_n_12, mul_22_8_n_13, mul_22_8_n_14, mul_22_8_n_15;
  wire mul_22_8_n_16, mul_22_8_n_17, mul_22_8_n_18, mul_22_8_n_19,
       mul_22_8_n_21, mul_22_8_n_22, mul_22_8_n_23, mul_22_8_n_24;
  wire mul_22_8_n_25, mul_22_8_n_26, mul_22_8_n_28, mul_22_8_n_29,
       mul_22_8_n_30, mul_22_8_n_31, mul_22_8_n_32, mul_22_8_n_33;
  wire mul_22_8_n_34, mul_22_8_n_35, mul_22_8_n_36, mul_22_8_n_37,
       mul_22_8_n_38, mul_22_8_n_39, mul_22_8_n_40, mul_22_8_n_41;
  wire mul_22_8_n_42, mul_22_8_n_43, mul_22_8_n_44, mul_22_8_n_45,
       mul_22_8_n_46, mul_22_8_n_47, mul_22_8_n_48, mul_22_8_n_49;
  wire mul_22_8_n_50, mul_22_8_n_51, mul_22_8_n_52, mul_22_8_n_53,
       mul_22_8_n_55, mul_22_8_n_56, mul_22_8_n_58, mul_22_8_n_59;
  wire mul_22_8_n_61, mul_22_8_n_62, mul_22_8_n_63, mul_22_8_n_65,
       mul_22_8_n_67, mul_22_8_n_68, mul_22_8_n_70, mul_22_8_n_72;
  INVX1 mul_22_8_g619(.A (mul_22_8_n_72), .Y (out1[10]));
  ADDFX1 mul_22_8_g620(.A (mul_22_8_n_70), .B (mul_22_8_n_28), .CI
       (mul_22_8_n_10), .CO (mul_22_8_n_72), .S (out1[9]));
  ADDFX1 mul_22_8_g621(.A (mul_22_8_n_67), .B (mul_22_8_n_29), .CI
       (mul_22_8_n_32), .CO (mul_22_8_n_70), .S (out1[8]));
  XNOR2X1 mul_22_8_g622(.A (mul_22_8_n_52), .B (mul_22_8_n_68), .Y
       (out1[7]));
  OAI21XL mul_22_8_g623(.A0 (mul_22_8_n_48), .A1 (mul_22_8_n_63), .B0
       (mul_22_8_n_47), .Y (mul_22_8_n_68));
  OAI211X1 mul_22_8_g624(.A0 (mul_22_8_n_47), .A1 (mul_22_8_n_44), .B0
       (mul_22_8_n_65), .C0 (mul_22_8_n_56), .Y (mul_22_8_n_67));
  XNOR2X1 mul_22_8_g625(.A (mul_22_8_n_51), .B (mul_22_8_n_63), .Y
       (out1[6]));
  AOI21X1 mul_22_8_g626(.A0 (mul_22_8_n_49), .A1 (mul_22_8_n_61), .B0
       (mul_22_8_n_42), .Y (mul_22_8_n_65));
  XNOR2X1 mul_22_8_g627(.A (mul_22_8_n_50), .B (mul_22_8_n_62), .Y
       (out1[5]));
  NOR2X1 mul_22_8_g628(.A (mul_22_8_n_55), .B (mul_22_8_n_61), .Y
       (mul_22_8_n_63));
  NAND2X1 mul_22_8_g629(.A (mul_22_8_n_37), .B (mul_22_8_n_59), .Y
       (mul_22_8_n_62));
  NOR2X1 mul_22_8_g630(.A (mul_22_8_n_43), .B (mul_22_8_n_59), .Y
       (mul_22_8_n_61));
  XNOR2X1 mul_22_8_g631(.A (mul_22_8_n_45), .B (mul_22_8_n_58), .Y
       (out1[4]));
  NAND2BX1 mul_22_8_g632(.AN (mul_22_8_n_36), .B (mul_22_8_n_58), .Y
       (mul_22_8_n_59));
  ADDFX1 mul_22_8_g633(.A (mul_22_8_n_53), .B (mul_22_8_n_30), .CI
       (mul_22_8_n_24), .CO (mul_22_8_n_58), .S (out1[3]));
  NAND2XL mul_22_8_g634(.A (mul_22_8_n_49), .B (mul_22_8_n_55), .Y
       (mul_22_8_n_56));
  OAI21X1 mul_22_8_g635(.A0 (mul_22_8_n_37), .A1 (mul_22_8_n_43), .B0
       (mul_22_8_n_46), .Y (mul_22_8_n_55));
  ADDFX1 mul_22_8_g636(.A (mul_22_8_n_25), .B (mul_22_8_n_19), .CI
       (mul_22_8_n_26), .CO (mul_22_8_n_53), .S (out1[2]));
  OR2XL mul_22_8_g637(.A (mul_22_8_n_42), .B (mul_22_8_n_44), .Y
       (mul_22_8_n_52));
  NOR2BX1 mul_22_8_g638(.AN (mul_22_8_n_47), .B (mul_22_8_n_48), .Y
       (mul_22_8_n_51));
  NAND2BX1 mul_22_8_g639(.AN (mul_22_8_n_43), .B (mul_22_8_n_46), .Y
       (mul_22_8_n_50));
  NOR2XL mul_22_8_g640(.A (mul_22_8_n_44), .B (mul_22_8_n_48), .Y
       (mul_22_8_n_49));
  NOR2X1 mul_22_8_g641(.A (mul_22_8_n_38), .B (mul_22_8_n_41), .Y
       (mul_22_8_n_48));
  NAND2X1 mul_22_8_g642(.A (mul_22_8_n_38), .B (mul_22_8_n_41), .Y
       (mul_22_8_n_47));
  NAND2XL mul_22_8_g643(.A (mul_22_8_n_34), .B (mul_22_8_n_39), .Y
       (mul_22_8_n_46));
  NAND2BX1 mul_22_8_g644(.AN (mul_22_8_n_36), .B (mul_22_8_n_37), .Y
       (mul_22_8_n_45));
  NOR2X1 mul_22_8_g645(.A (mul_22_8_n_40), .B (mul_22_8_n_33), .Y
       (mul_22_8_n_44));
  NOR2X1 mul_22_8_g646(.A (mul_22_8_n_34), .B (mul_22_8_n_39), .Y
       (mul_22_8_n_43));
  AND2XL mul_22_8_g647(.A (mul_22_8_n_40), .B (mul_22_8_n_33), .Y
       (mul_22_8_n_42));
  ADDFX1 mul_22_8_g648(.A (mul_22_8_n_6), .B (mul_22_8_n_12), .CI
       (mul_22_8_n_13), .CO (mul_22_8_n_40), .S (mul_22_8_n_41));
  ADDFX1 mul_22_8_g649(.A (mul_22_8_n_8), .B (mul_22_8_n_2), .CI
       (mul_22_8_n_15), .CO (mul_22_8_n_38), .S (mul_22_8_n_39));
  NAND2X1 mul_22_8_g650(.A (mul_22_8_n_31), .B (mul_22_8_n_35), .Y
       (mul_22_8_n_37));
  NOR2XL mul_22_8_g651(.A (mul_22_8_n_31), .B (mul_22_8_n_35), .Y
       (mul_22_8_n_36));
  ADDFX1 mul_22_8_g652(.A (mul_22_8_n_5), .B (mul_22_8_n_17), .CI
       (mul_22_8_n_16), .CO (mul_22_8_n_34), .S (mul_22_8_n_35));
  ADDFX1 mul_22_8_g653(.A (mul_22_8_n_18), .B (mul_22_8_n_14), .CI
       (mul_22_8_n_0), .CO (mul_22_8_n_32), .S (mul_22_8_n_33));
  ADDFX1 mul_22_8_g654(.A (mul_22_8_n_7), .B (mul_22_8_n_3), .CI
       (mul_22_8_n_1), .CO (mul_22_8_n_31), .S (mul_22_8_n_30));
  ADDHX1 mul_22_8_g655(.A (mul_22_8_n_4), .B (mul_22_8_n_9), .CO
       (mul_22_8_n_28), .S (mul_22_8_n_29));
  AOI21X1 mul_22_8_g656(.A0 (mul_22_8_n_23), .A1 (mul_22_8_n_11), .B0
       (mul_22_8_n_25), .Y (out1[1]));
  OAI2BB1X1 mul_22_8_g657(.A0N (mul_22_8_n_22), .A1N (mul_22_8_n_21),
       .B0 (mul_22_8_n_24), .Y (mul_22_8_n_26));
  NOR2X1 mul_22_8_g658(.A (mul_22_8_n_23), .B (mul_22_8_n_11), .Y
       (mul_22_8_n_25));
  OR2X1 mul_22_8_g659(.A (mul_22_8_n_21), .B (mul_22_8_n_22), .Y
       (mul_22_8_n_24));
  AND2XL mul_22_8_g660(.A (in2[0]), .B (in1[0]), .Y (out1[0]));
  AND2XL mul_22_8_g661(.A (in2[2]), .B (in1[0]), .Y (mul_22_8_n_19));
  NAND2X1 mul_22_8_g662(.A (in2[0]), .B (in1[1]), .Y (mul_22_8_n_23));
  NAND2X1 mul_22_8_g663(.A (in2[0]), .B (in1[2]), .Y (mul_22_8_n_22));
  AND2XL mul_22_8_g664(.A (in2[1]), .B (in1[1]), .Y (mul_22_8_n_21));
  AND2XL mul_22_8_g665(.A (in2[6]), .B (in1[1]), .Y (mul_22_8_n_18));
  NAND2X1 mul_22_8_g666(.A (in2[2]), .B (in1[2]), .Y (mul_22_8_n_17));
  AND2XL mul_22_8_g667(.A (in2[4]), .B (in1[0]), .Y (mul_22_8_n_16));
  AND2XL mul_22_8_g668(.A (in2[4]), .B (in1[1]), .Y (mul_22_8_n_15));
  NAND2X1 mul_22_8_g669(.A (in2[5]), .B (in1[2]), .Y (mul_22_8_n_14));
  AND2XL mul_22_8_g670(.A (in2[6]), .B (in1[0]), .Y (mul_22_8_n_13));
  AND2XL mul_22_8_g671(.A (in2[5]), .B (in1[1]), .Y (mul_22_8_n_12));
  NAND2X1 mul_22_8_g672(.A (in2[7]), .B (in1[2]), .Y (mul_22_8_n_10));
  NAND2X1 mul_22_8_g673(.A (in2[1]), .B (in1[0]), .Y (mul_22_8_n_11));
  AND2XL mul_22_8_g674(.A (in2[7]), .B (in1[1]), .Y (mul_22_8_n_9));
  NAND2X1 mul_22_8_g675(.A (in2[3]), .B (in1[2]), .Y (mul_22_8_n_8));
  AND2XL mul_22_8_g676(.A (in2[2]), .B (in1[1]), .Y (mul_22_8_n_7));
  NAND2X1 mul_22_8_g677(.A (in2[4]), .B (in1[2]), .Y (mul_22_8_n_6));
  AND2XL mul_22_8_g678(.A (in2[3]), .B (in1[1]), .Y (mul_22_8_n_5));
  NAND2X1 mul_22_8_g679(.A (in2[6]), .B (in1[2]), .Y (mul_22_8_n_4));
  NAND2X1 mul_22_8_g680(.A (in2[1]), .B (in1[2]), .Y (mul_22_8_n_3));
  AND2XL mul_22_8_g681(.A (in2[5]), .B (in1[0]), .Y (mul_22_8_n_2));
  AND2XL mul_22_8_g682(.A (in2[3]), .B (in1[0]), .Y (mul_22_8_n_1));
  AND2XL mul_22_8_g683(.A (in2[7]), .B (in1[0]), .Y (mul_22_8_n_0));
endmodule


