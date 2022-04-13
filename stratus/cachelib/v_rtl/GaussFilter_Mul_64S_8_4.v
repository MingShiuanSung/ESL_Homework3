`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 20:35:10 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_Mul_64S_8_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [63:0] in2,
	in1;
output [63:0] out1;
wire  asc001;

assign asc001 = 
	+(in1[0] * in2[0]);

assign out1 = {{63{1'B0}}, asc001};
endmodule

/* CADENCE  ubLySQA= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


