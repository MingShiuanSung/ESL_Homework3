`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 14:50:58 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_Add2i1u1_4 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input  in1;
output [1:0] out1;
wire [1:0] asc001;

assign asc001 = 
	+(in1)
	+(2'B01);

assign out1 = asc001;
endmodule

/* CADENCE  urf2Sgg= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

