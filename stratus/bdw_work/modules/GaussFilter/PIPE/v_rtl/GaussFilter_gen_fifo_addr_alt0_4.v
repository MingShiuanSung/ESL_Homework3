`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 21:28:32 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_gen_fifo_addr_alt0_4 (
	in1,
	in2,
	in3,
	in4,
	in5,
	out1
	); /* architecture "behavioural" */ 
input  in1,
	in2,
	in3,
	in4,
	in5;
output  out1;
wire  asc001,
	asc002,
	asc003,
	asc004,
	asc005,
	asc006;

assign asc001 = 
	(in3)
	&(in4)
	&((~in5));

assign asc002 = 
	((~in3))
	&((~in4))
	&(in5);

assign asc004 = 
	+(in2)
	+(1'B1);

assign asc006 = 
	+(in2)
	-(1'B1);

reg [0:0] asc005_tmp_0;
assign asc005 = asc005_tmp_0;
always @ (asc002 or asc006 or in1) begin
	case (asc002)
		1'B1 : asc005_tmp_0 = asc006 ;
		default : asc005_tmp_0 = in1 ;
	endcase
end

reg [0:0] asc003_tmp_1;
assign asc003 = asc003_tmp_1;
always @ (asc001 or asc004 or asc005) begin
	case (asc001)
		1'B1 : asc003_tmp_1 = asc004 ;
		default : asc003_tmp_1 = asc005 ;
	endcase
end

assign out1 = asc003;
endmodule

/* CADENCE  vLnySgE= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

