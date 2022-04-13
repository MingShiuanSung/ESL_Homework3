`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 21:20:20 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_LessThan_29Sx9S_1U_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [28:0] in2;
input [8:0] in1;
output  out1;
wire  asc001;

assign asc001 = ((34'B1000000000000000000000000000000000 ^ {{25{in1[8]}}, in1})>(34'B1000000000000000000000000000000000
    ^ {{5{in2[28]}}, in2}));

assign out1 = asc001;
endmodule

/* CADENCE  uLTxSAs= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


