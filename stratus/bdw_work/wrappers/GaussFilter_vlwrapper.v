/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/
/****************************************************************************
*
* Verilog Verification wrapper module for the GaussFilter module.
*
* This module contains the followng items:
*	- A foreign module definition for use in instantiatin the type_wrapper module
*      which contains the BEH module instance.
*	- An instance of the type_wrapper foreign module.
*   - alwyas blocks each type_wrapper output.
*
****************************************************************************/

`timescale 1 ps / 1 ps

module GaussFilter_vlwrapper(
      i_clk,
       i_rst,
       i_rgb_busy,
       i_rgb_vld,
       i_rgb_data,
       o_rgb_busy,
       o_rgb_vld,
       o_rgb_data

    );

	input i_clk;
	input i_rst;
	output i_rgb_busy;
	reg i_rgb_busy;
	wire m_i_rgb_busy;
	input i_rgb_vld;
	input [23:0] i_rgb_data;
	input o_rgb_busy;
	output o_rgb_vld;
	reg o_rgb_vld;
	wire m_o_rgb_vld;
	output [23:0] o_rgb_data;
	reg[23:0] o_rgb_data;
	wire [23:0] m_o_rgb_data;


    // Instantiate the Verilog module that instantiates the SystemC module
    GaussFilter_type_wrapper GaussFilter_sc(
        .i_clk(i_clk),
         .i_rst(i_rst),
         .i_rgb_busy(m_i_rgb_busy),
         .i_rgb_vld(i_rgb_vld),
         .i_rgb_data(i_rgb_data),
         .o_rgb_busy(o_rgb_busy),
         .o_rgb_vld(m_o_rgb_vld),
         .o_rgb_data(m_o_rgb_data)

    );

    // Always blocks for non-blocking assignments of type_wrapper outputs to
    // Verilog Verificatoin wrapper outputs.

    always @(m_i_rgb_busy)
     begin
      i_rgb_busy <= m_i_rgb_busy;
     end
    always @(m_o_rgb_vld)
     begin
      o_rgb_vld <= m_o_rgb_vld;
     end
    always @(m_o_rgb_data)
     begin
      o_rgb_data <= m_o_rgb_data;
     end


endmodule

// This is an internal module that instantiates the user's SystemC input module
// using the Incisive foreign module instantiation feature.
// The name of the module and the names of the inputs and outputs must match
// with those defined in the SystemC type_wrapper module
module GaussFilter_type_wrapper(
      i_clk,
       i_rst,
       i_rgb_busy,
       i_rgb_vld,
       i_rgb_data,
       o_rgb_busy,
       o_rgb_vld,
       o_rgb_data

    ) (* integer foreign = "SystemC";
    *);

	input i_clk;
	input i_rst;
	output i_rgb_busy;
	input i_rgb_vld;
	input [23:0] i_rgb_data;
	input o_rgb_busy;
	output o_rgb_vld;
	output [23:0] o_rgb_data;


endmodule
