`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 21:20:24 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_Add_28Sx1U_29S_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [27:0] in2;
input  in1;
output [28:0] out1;
wire [28:0] asc001;

assign asc001 = 
	+({in2[27], in2})
	+(in1);

assign out1 = asc001;
endmodule

/* CADENCE  ubH1TAo= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

