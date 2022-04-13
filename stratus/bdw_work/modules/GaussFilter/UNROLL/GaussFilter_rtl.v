// Generated by stratus_hls 19.12-s100  (91710.131054)
// Tue Apr 12 21:44:21 2022
// from ../GaussFilter.cpp

`timescale 1ps / 1ps

      
module GaussFilter(i_clk, i_rst, i_rgb_busy, i_rgb_vld, i_rgb_data, o_rgb_busy, o_rgb_vld, o_rgb_data);

      input i_clk;
      input i_rst;
      input i_rgb_vld;
      input [23:0] i_rgb_data;
      input o_rgb_busy;
      output i_rgb_busy;
      output o_rgb_vld;
      output [23:0] o_rgb_data;
      reg [23:0] o_rgb_data;
      reg o_rgb_m_req_m_prev_trig_req;
      reg o_rgb_m_unacked_req;
      wire GaussFilter_Xor_1Ux1U_1U_1_1_out1;
      wire GaussFilter_Or_1Ux1U_1U_4_2_out1;
      reg GaussFilter_N_Muxb_1_2_3_4_4_out1;
      reg i_rgb_m_unvalidated_req;
      wire GaussFilter_gen_busy_r_4_50_gnew_req;
      wire GaussFilter_gen_busy_r_4_50_gdiv;
      wire GaussFilter_gen_busy_r_4_50_gen_busy_i_rgb_m_data_is_invalid_next;
      reg[3:0] global_state_next;
      wire GaussFilter_LessThan_29Sx9S_1U_4_35_out1;
      reg[28:0] GaussFilter_N_Mux_29_2_1_4_34_out1;
      wire GaussFilter_N_Mux_29_2_1_4_34_ctrl1;
      /*signed*/wire[28:0] GaussFilter_Add_28Sx1U_29S_4_33_out1;
      /*signed*/reg[27:0] GaussFilter_Add_28Sx1U_29S_4_33_in2;
      wire GaussFilter_And_1Ux1U_1U_4_31_out1;
      reg GaussFilter_And_1Ux1U_1U_4_31_in1;
      reg[1:0] gs_ctrl8;
      /*signed*/reg[11:0] GaussFilter_Add_32Sx12S_32S_4_12_in1;
      reg gs_ctrl7;
      /*signed*/reg[31:0] GaussFilter_Add_32Sx12S_32S_4_12_in2;
      reg[1:0] gs_ctrl6;
      /*signed*/wire[11:0] GaussFilter_Mul_8Ux4S_12S_4_11_out1;
      /*signed*/reg[3:0] GaussFilter_Mul_8Ux4S_12S_4_11_in1;
      reg[1:0] gs_ctrl5;
      reg[7:0] GaussFilter_Mul_8Ux4S_12S_4_11_in2;
      reg[2:0] gs_ctrl4;
      reg[1:0] GaussFilter_N_Mux_4_3_0_4_6_ctrl1;
      reg gs_ctrl0;
      wire GaussFilter_OrReduction_4U_1U_4_38_out1;
      wire GaussFilter_OrReduction_4U_1U_4_32_out1;
      wire GaussFilter_OrReduction_4U_1U_4_30_out1;
      wire GaussFilter_NotEQ_2Ux1U_1U_4_7_out1;
      reg[23:0] s_reg_51;
      reg s_reg_52;
      wire GaussFilter_Not_1U_1U_4_10_out1;
      reg[1:0] s_reg_50_slice;
      reg s_reg_49;
      wire[1:0] GaussFilter_Add_2Ux1U_2U_4_9_out1;
      reg[1:0] s_reg_48;
      wire GaussFilter_Equal_2Ux1U_1U_4_8_out1;
      reg s_reg_47;
      reg[2:0] GaussFilter_N_Mux_4_3_0_4_6_out1_slice;
      reg[31:0] s_reg_45;
      reg[31:0] s_reg_44;
      /*signed*/wire[31:0] GaussFilter_Add_32Sx12S_32S_4_12_out1;
      reg[31:0] s_reg_43;
      wire GaussFilter_And_1Ux1U_1U_4_48_out1;
      wire[2:0] GaussFilter_gen_busy_r_4_50_out1;
      wire GaussFilter_Not_1U_1U_1_3_out1;
      reg o_rgb_m_req_m_trig_req;
      wire GaussFilter_LessThan_2Ux2U_1U_4_27_out1;
      reg i_rgb_m_busy_req_0;
      reg[7:0] GaussFilter_N_Mux_8_2_2_4_36_out1;
      reg[7:0] s_reg_53;
      reg[7:0] s_reg_46;
      reg[3:0] global_state;
      reg stall0;

         // resource: mux_24bx2i0c
         // resource: regr_en_24
         always @(posedge i_clk)
          begin :drive_o_rgb_data
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd01, 4'd03:                      begin
                        o_rgb_data <= i_rgb_data;
                     end
                     
                     4'd12:                      begin
                        o_rgb_data <= {GaussFilter_N_Mux_8_2_2_4_36_out1, {s_reg_53, s_reg_46}};
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_1bx2i2c
         // resource: regr_en_ss_1
         always @(posedge i_clk)
          begin :drive_i_rgb_m_busy_req_0
            if (i_rst == 1'b0) begin
               i_rgb_m_busy_req_0 <= 1'd1;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state) 

                        4'd00, 4'd02, 4'd04, 4'd14:                         begin
                           i_rgb_m_busy_req_0 <= 1'd0;
                        end
                        
                        4'd01, 4'd03, 4'd05:                         begin
                           i_rgb_m_busy_req_0 <= 1'd1;
                        end
                        
                        4'd09:                         begin
                           if (GaussFilter_LessThan_2Ux2U_1U_4_27_out1) begin
                              i_rgb_m_busy_req_0 <= 1'd0;
                           end
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: regr_en_sc_1
         always @(posedge i_clk)
          begin :drive_o_rgb_m_req_m_trig_req
            if (i_rst == 1'b0) begin
               o_rgb_m_req_m_trig_req <= 1'd0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state) 

                        4'd12:                         begin
                           o_rgb_m_req_m_trig_req <= GaussFilter_Not_1U_1U_1_3_out1;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_1bx3i1c
         always @(GaussFilter_And_1Ux1U_1U_4_48_out1 or GaussFilter_gen_busy_r_4_50_out1[0] or global_state)
          begin :drive_stall0
            case (global_state) 

               4'd01, 4'd03, 4'd05:                begin
                  stall0 = GaussFilter_gen_busy_r_4_50_out1[0];
               end
               
               4'd13:                begin
                  stall0 = GaussFilter_And_1Ux1U_1U_4_48_out1;
               end
               
               default:                begin
                  stall0 = 1'b0;
               end
               
            endcase

         end

         // resource: mux_32bx2i1c
         // resource: regr_en_32
         always @(posedge i_clk)
          begin :drive_s_reg_43
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd14:                      begin
                        s_reg_43 <= 32'd0000000000;
                     end
                     
                     4'd01, 4'd04, 4'd07:                      begin
                        s_reg_43 <= GaussFilter_Add_32Sx12S_32S_4_12_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_32bx2i1c
         // resource: regr_en_32
         always @(posedge i_clk)
          begin :drive_s_reg_44
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd14:                      begin
                        s_reg_44 <= 32'd0000000000;
                     end
                     
                     4'd02, 4'd05, 4'd08:                      begin
                        s_reg_44 <= GaussFilter_Add_32Sx12S_32S_4_12_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_32bx2i1c
         // resource: regr_en_32
         always @(posedge i_clk)
          begin :drive_s_reg_45
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd14:                      begin
                        s_reg_45 <= 32'd0000000000;
                     end
                     
                     4'd03, 4'd06, 4'd09:                      begin
                        s_reg_45 <= GaussFilter_Add_32Sx12S_32S_4_12_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_8bx2i0c
         // resource: regr_en_8
         always @(posedge i_clk)
          begin :drive_s_reg_46
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd09, 4'd14:                      begin
                        s_reg_46 <= {5'd00, GaussFilter_N_Mux_4_3_0_4_6_out1_slice};
                     end
                     
                     4'd10:                      begin
                        s_reg_46 <= GaussFilter_N_Mux_8_2_2_4_36_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: regr_en_1
         always @(posedge i_clk)
          begin :drive_s_reg_47
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd09, 4'd14:                      begin
                        s_reg_47 <= GaussFilter_Equal_2Ux1U_1U_4_8_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: regr_en_2
         always @(posedge i_clk)
          begin :drive_s_reg_48
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd09, 4'd14:                      begin
                        s_reg_48 <= GaussFilter_Add_2Ux1U_2U_4_9_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_1bx2i1c
         // resource: regr_en_1
         always @(posedge i_clk)
          begin :drive_s_reg_49
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd14:                      begin
                        s_reg_49 <= 1'b0;
                     end
                     
                     4'd09:                      begin
                        s_reg_49 <= s_reg_48[0];
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_2bx2i0c
         // resource: regr_en_2
         always @(posedge i_clk)
          begin :drive_s_reg_50_slice
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd01:                      begin
                        s_reg_50_slice <= {s_reg_49, GaussFilter_Not_1U_1U_4_10_out1};
                     end
                     
                     4'd07:                      begin
                        s_reg_50_slice <= {s_reg_47, s_reg_52};
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: regr_en_24
         always @(posedge i_clk)
          begin :drive_s_reg_51
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd05:                      begin
                        s_reg_51 <= i_rgb_data;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: mux_1bx4i0c
         // resource: regr_en_1
         always @(posedge i_clk)
          begin :drive_s_reg_52
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  case (global_state) 

                     4'd00, 4'd14:                      begin
                        s_reg_52 <= GaussFilter_NotEQ_2Ux1U_1U_4_7_out1;
                     end
                     
                     4'd09:                      begin
                        if (GaussFilter_LessThan_2Ux2U_1U_4_27_out1) begin
                           s_reg_52 <= GaussFilter_NotEQ_2Ux1U_1U_4_7_out1;
                        end
                        else begin
                           s_reg_52 <= GaussFilter_OrReduction_4U_1U_4_30_out1;
                        end
                     end
                     
                     4'd10:                      begin
                        s_reg_52 <= GaussFilter_OrReduction_4U_1U_4_32_out1;
                     end
                     
                     4'd11:                      begin
                        s_reg_52 <= GaussFilter_OrReduction_4U_1U_4_38_out1;
                     end
                     
                  endcase

               end
               
            endcase

         end

         // resource: regr_en_8
         always @(posedge i_clk)
          begin :drive_s_reg_53
            case (stall0) 

               1'b1:                begin
               end
               
               1'b0:                begin
                  s_reg_53 <= GaussFilter_N_Mux_8_2_2_4_36_out1;
               end
               
            endcase

         end

         // resource: mux_2bx2i1c
         always @(s_reg_48 or gs_ctrl0)
          begin :drive_GaussFilter_N_Mux_4_3_0_4_6_ctrl1
            if (gs_ctrl0) begin
               GaussFilter_N_Mux_4_3_0_4_6_ctrl1 = s_reg_48;
            end
            else begin
               GaussFilter_N_Mux_4_3_0_4_6_ctrl1 = 2'd0;
            end
         end

         // resource: GaussFilter_N_Mux_4_3_0_4
         always @(GaussFilter_N_Mux_4_3_0_4_6_ctrl1)
          begin :GaussFilter_N_Mux_4_3_0_4_6
            case (GaussFilter_N_Mux_4_3_0_4_6_ctrl1) 

               2'd1:                begin
                  GaussFilter_N_Mux_4_3_0_4_6_out1_slice = 3'd4;
               end
               
               2'd3:                begin
                  GaussFilter_N_Mux_4_3_0_4_6_out1_slice = 3'd1;
               end
               
               default:                begin
                  GaussFilter_N_Mux_4_3_0_4_6_out1_slice = 3'd2;
               end
               
            endcase

         end

         // resource: GaussFilter_NotEQ_2Ux1U_1U_4  instance: GaussFilter_NotEQ_2Ux1U_1U_4_7
         assign GaussFilter_NotEQ_2Ux1U_1U_4_7_out1 = GaussFilter_N_Mux_4_3_0_4_6_ctrl1 != 2'd1;

         // resource: GaussFilter_Equal_2Ux1U_1U_4  instance: GaussFilter_Equal_2Ux1U_1U_4_8
         assign GaussFilter_Equal_2Ux1U_1U_4_8_out1 = GaussFilter_N_Mux_4_3_0_4_6_ctrl1 == 2'd1;

         // resource: GaussFilter_Add_2Ux1U_2U_4  instance: GaussFilter_Add_2Ux1U_2U_4_9
         assign GaussFilter_Add_2Ux1U_2U_4_9_out1 = GaussFilter_N_Mux_4_3_0_4_6_ctrl1 + 2'd1;

         // resource: GaussFilter_Not_1U_1U_4  instance: GaussFilter_Not_1U_1U_4_10
         assign GaussFilter_Not_1U_1U_4_10_out1 = !s_reg_49;

         // resource: mux_8bx7i0c
         always @(o_rgb_data or i_rgb_data[7:0] or s_reg_51 or gs_ctrl4)
          begin :drive_GaussFilter_Mul_8Ux4S_12S_4_11_in2
            case (gs_ctrl4) 

               3'd1:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in2 = o_rgb_data[15:8];
               end
               
               3'd2:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in2 = o_rgb_data[23:16];
               end
               
               3'd3:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in2 = o_rgb_data[7:0];
               end
               
               3'd4:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in2 = s_reg_51[7:0];
               end
               
               3'd5:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in2 = s_reg_51[15:8];
               end
               
               3'd6:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in2 = s_reg_51[23:16];
               end
               
               default:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in2 = i_rgb_data[7:0];
               end
               
            endcase

         end

         // resource: mux_4bx4i0c
         always @(s_reg_46[3:0] or s_reg_47 or s_reg_49 or s_reg_52 or GaussFilter_Not_1U_1U_4_10_out1 or gs_ctrl5 or s_reg_50_slice)
          begin :drive_GaussFilter_Mul_8Ux4S_12S_4_11_in1
            case (gs_ctrl5) 

               2'd1:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in1 = {2'd0, s_reg_50_slice};
               end
               
               2'd2:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in1 = s_reg_46[3:0];
               end
               
               2'd3:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in1 = {{2'b00, s_reg_47}, s_reg_52};
               end
               
               default:                begin
                  GaussFilter_Mul_8Ux4S_12S_4_11_in1 = {{2'b00, s_reg_49}, GaussFilter_Not_1U_1U_4_10_out1};
               end
               
            endcase

         end

         // resource: GaussFilter_Mul_8Ux4S_12S_4  instance: GaussFilter_Mul_8Ux4S_12S_4_11
         assign GaussFilter_Mul_8Ux4S_12S_4_11_out1 = {4'b0000, GaussFilter_Mul_8Ux4S_12S_4_11_in2}*{{ 8 {GaussFilter_Mul_8Ux4S_12S_4_11_in1[3]}}, GaussFilter_Mul_8Ux4S_12S_4_11_in1};

         // resource: mux_32bx3i0c
         always @(s_reg_43 or s_reg_44 or s_reg_45 or gs_ctrl6)
          begin :drive_GaussFilter_Add_32Sx12S_32S_4_12_in2
            case (gs_ctrl6) 

               2'd1:                begin
                  GaussFilter_Add_32Sx12S_32S_4_12_in2 = s_reg_44;
               end
               
               2'd2:                begin
                  GaussFilter_Add_32Sx12S_32S_4_12_in2 = s_reg_45;
               end
               
               default:                begin
                  GaussFilter_Add_32Sx12S_32S_4_12_in2 = s_reg_43;
               end
               
            endcase

         end

         // resource: mux_12bx2i0c
         always @(GaussFilter_Mul_8Ux4S_12S_4_11_out1 or gs_ctrl7)
          begin :drive_GaussFilter_Add_32Sx12S_32S_4_12_in1
            if (gs_ctrl7) begin
               GaussFilter_Add_32Sx12S_32S_4_12_in1 = GaussFilter_Mul_8Ux4S_12S_4_11_out1;
            end
            else begin
               GaussFilter_Add_32Sx12S_32S_4_12_in1 = {GaussFilter_Mul_8Ux4S_12S_4_11_out1[10], GaussFilter_Mul_8Ux4S_12S_4_11_out1[10:0]};
            end
         end

         // resource: GaussFilter_Add_32Sx12S_32S_4  instance: GaussFilter_Add_32Sx12S_32S_4_12
         assign GaussFilter_Add_32Sx12S_32S_4_12_out1 = GaussFilter_Add_32Sx12S_32S_4_12_in2 + {{ 20 {GaussFilter_Add_32Sx12S_32S_4_12_in1[11]}}, GaussFilter_Add_32Sx12S_32S_4_12_in1};

         // resource: GaussFilter_LessThan_2Ux2U_1U_4  instance: GaussFilter_LessThan_2Ux2U_1U_4_27
         assign GaussFilter_LessThan_2Ux2U_1U_4_27_out1 = s_reg_48 < 2'd3;

         // resource: GaussFilter_OrReduction_4U_1U_4  instance: GaussFilter_OrReduction_4U_1U_4_30
         assign GaussFilter_OrReduction_4U_1U_4_30_out1 = (|s_reg_43[3:0]);

         // resource: mux_1bx3i0c
         always @(s_reg_43[31] or s_reg_44[31] or s_reg_45[31] or gs_ctrl8)
          begin :drive_GaussFilter_And_1Ux1U_1U_4_31_in1
            case (gs_ctrl8) 

               2'd1:                begin
                  GaussFilter_And_1Ux1U_1U_4_31_in1 = s_reg_44[31];
               end
               
               2'd2:                begin
                  GaussFilter_And_1Ux1U_1U_4_31_in1 = s_reg_45[31];
               end
               
               default:                begin
                  GaussFilter_And_1Ux1U_1U_4_31_in1 = s_reg_43[31];
               end
               
            endcase

         end

         // resource: GaussFilter_And_1Ux1U_1U_4  instance: GaussFilter_And_1Ux1U_1U_4_31
         assign GaussFilter_And_1Ux1U_1U_4_31_out1 = s_reg_52 & GaussFilter_And_1Ux1U_1U_4_31_in1;

         // resource: GaussFilter_OrReduction_4U_1U_4  instance: GaussFilter_OrReduction_4U_1U_4_32
         assign GaussFilter_OrReduction_4U_1U_4_32_out1 = (|s_reg_44[3:0]);

         // resource: mux_28bx3i0c
         always @(s_reg_43[31:4] or s_reg_44[31:4] or s_reg_45[31:4] or gs_ctrl8)
          begin :drive_GaussFilter_Add_28Sx1U_29S_4_33_in2
            case (gs_ctrl8) 

               2'd1:                begin
                  GaussFilter_Add_28Sx1U_29S_4_33_in2 = s_reg_44[31:4];
               end
               
               2'd2:                begin
                  GaussFilter_Add_28Sx1U_29S_4_33_in2 = s_reg_45[31:4];
               end
               
               default:                begin
                  GaussFilter_Add_28Sx1U_29S_4_33_in2 = s_reg_43[31:4];
               end
               
            endcase

         end

         // resource: GaussFilter_Add_28Sx1U_29S_4  instance: GaussFilter_Add_28Sx1U_29S_4_33
         assign GaussFilter_Add_28Sx1U_29S_4_33_out1 = {GaussFilter_Add_28Sx1U_29S_4_33_in2[27], GaussFilter_Add_28Sx1U_29S_4_33_in2} + {28'b0000000000000000000000000000, GaussFilter_And_1Ux1U_1U_4_31_out1};

         // instance: drive_GaussFilter_N_Mux_29_2_1_4_34_ctrl1
         assign GaussFilter_N_Mux_29_2_1_4_34_ctrl1 = GaussFilter_Add_28Sx1U_29S_4_33_out1[28];

         // resource: GaussFilter_N_Mux_29_2_1_4
         always @(GaussFilter_Add_28Sx1U_29S_4_33_out1 or GaussFilter_N_Mux_29_2_1_4_34_ctrl1)
          begin :GaussFilter_N_Mux_29_2_1_4_34
            if (GaussFilter_N_Mux_29_2_1_4_34_ctrl1) begin
               GaussFilter_N_Mux_29_2_1_4_34_out1 = 29'd000000000;
            end
            else begin
               GaussFilter_N_Mux_29_2_1_4_34_out1 = GaussFilter_Add_28Sx1U_29S_4_33_out1;
            end
         end

         // resource: GaussFilter_LessThan_29Sx9S_1U_4  instance: GaussFilter_LessThan_29Sx9S_1U_4_35
         assign GaussFilter_LessThan_29Sx9S_1U_4_35_out1 = GaussFilter_N_Mux_29_2_1_4_34_out1[28] ^ GaussFilter_N_Mux_29_2_1_4_34_out1 < 29'd000000255;

         // resource: GaussFilter_N_Mux_8_2_2_4
         always @(GaussFilter_N_Mux_29_2_1_4_34_out1[7:0] or GaussFilter_LessThan_29Sx9S_1U_4_35_out1)
          begin :GaussFilter_N_Mux_8_2_2_4_36
            if (GaussFilter_LessThan_29Sx9S_1U_4_35_out1) begin
               GaussFilter_N_Mux_8_2_2_4_36_out1 = GaussFilter_N_Mux_29_2_1_4_34_out1[7:0];
            end
            else begin
               GaussFilter_N_Mux_8_2_2_4_36_out1 = 8'd255;
            end
         end

         // resource: GaussFilter_OrReduction_4U_1U_4  instance: GaussFilter_OrReduction_4U_1U_4_38
         assign GaussFilter_OrReduction_4U_1U_4_38_out1 = (|s_reg_45[3:0]);

         // resource: regr_en_sc_4
         always @(posedge i_clk)
          begin :drive_global_state
            if (i_rst == 1'b0) begin
               global_state <= 4'd00;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     global_state <= global_state_next;
                  end
                  
               endcase

            end
         end

         // resource: mux_4bx2i1c
         always @(GaussFilter_LessThan_2Ux2U_1U_4_27_out1 or global_state)
          begin :drive_global_state_next
            case (global_state) 

               4'd00, 4'd14:                begin
                  global_state_next = 4'd01;
               end
               
               4'd09:                begin
                  if (GaussFilter_LessThan_2Ux2U_1U_4_27_out1) begin
                     global_state_next = 4'd01;
                  end
                  else begin
                     global_state_next = global_state + 4'd01;
                  end
               end
               
               default:                begin
                  global_state_next = global_state + 4'd01;
               end
               
            endcase

         end

         // resource: mux_1bx2i2c
         // resource: regr_en_sc_1
         always @(posedge i_clk)
          begin :drive_gs_ctrl0
            if (i_rst == 1'b0) begin
               gs_ctrl0 <= 1'b0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state_next) 

                        4'd09:                         begin
                           gs_ctrl0 <= 1'b1;
                        end
                        
                        default:                         begin
                           gs_ctrl0 <= 1'b0;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_3bx7i7c
         // resource: regr_en_sc_3
         always @(posedge i_clk)
          begin :drive_gs_ctrl4
            if (i_rst == 1'b0) begin
               gs_ctrl4 <= 3'd0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state_next) 

                        4'd02, 4'd05:                         begin
                           gs_ctrl4 <= 3'd1;
                        end
                        
                        4'd03, 4'd06:                         begin
                           gs_ctrl4 <= 3'd2;
                        end
                        
                        4'd04:                         begin
                           gs_ctrl4 <= 3'd3;
                        end
                        
                        4'd07:                         begin
                           gs_ctrl4 <= 3'd4;
                        end
                        
                        4'd08:                         begin
                           gs_ctrl4 <= 3'd5;
                        end
                        
                        4'd09:                         begin
                           gs_ctrl4 <= 3'd6;
                        end
                        
                        default:                         begin
                           gs_ctrl4 <= 3'd0;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_2bx4i4c
         // resource: regr_en_sc_2
         always @(posedge i_clk)
          begin :drive_gs_ctrl5
            if (i_rst == 1'b0) begin
               gs_ctrl5 <= 2'd0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state_next) 

                        4'd02, 4'd03, 4'd08, 4'd09:                         begin
                           gs_ctrl5 <= 2'd1;
                        end
                        
                        4'd04, 4'd05, 4'd06:                         begin
                           gs_ctrl5 <= 2'd2;
                        end
                        
                        4'd07:                         begin
                           gs_ctrl5 <= 2'd3;
                        end
                        
                        default:                         begin
                           gs_ctrl5 <= 2'd0;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_2bx3i3c
         // resource: regr_en_sc_2
         always @(posedge i_clk)
          begin :drive_gs_ctrl6
            if (i_rst == 1'b0) begin
               gs_ctrl6 <= 2'd0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state_next) 

                        4'd02, 4'd05, 4'd08:                         begin
                           gs_ctrl6 <= 2'd1;
                        end
                        
                        4'd03, 4'd06, 4'd09:                         begin
                           gs_ctrl6 <= 2'd2;
                        end
                        
                        default:                         begin
                           gs_ctrl6 <= 2'd0;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_1bx2i2c
         // resource: regr_en_sc_1
         always @(posedge i_clk)
          begin :drive_gs_ctrl7
            if (i_rst == 1'b0) begin
               gs_ctrl7 <= 1'b0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state_next) 

                        4'd04, 4'd05, 4'd06:                         begin
                           gs_ctrl7 <= 1'b1;
                        end
                        
                        default:                         begin
                           gs_ctrl7 <= 1'b0;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // resource: mux_2bx3i3c
         // resource: regr_en_sc_2
         always @(posedge i_clk)
          begin :drive_gs_ctrl8
            if (i_rst == 1'b0) begin
               gs_ctrl8 <= 2'd0;
            end
            else begin
               case (stall0) 

                  1'b1:                   begin
                  end
                  
                  1'b0:                   begin
                     case (global_state_next) 

                        4'd11:                         begin
                           gs_ctrl8 <= 2'd1;
                        end
                        
                        4'd12:                         begin
                           gs_ctrl8 <= 2'd2;
                        end
                        
                        default:                         begin
                           gs_ctrl8 <= 2'd0;
                        end
                        
                     endcase

                  end
                  
               endcase

            end
         end

         // instance: drive_i_rgb_busy
         assign i_rgb_busy = GaussFilter_gen_busy_r_4_50_out1[2];

         // resource: GaussFilter_gen_busy_r_4  instance: GaussFilter_gen_busy_r_4_50
         assign GaussFilter_gen_busy_r_4_50_out1 = {GaussFilter_gen_busy_r_4_50_gnew_req, {GaussFilter_gen_busy_r_4_50_gdiv, GaussFilter_gen_busy_r_4_50_gen_busy_i_rgb_m_data_is_invalid_next}};

         // resource: GaussFilter_gen_busy_r_4  instance: GaussFilter_gen_busy_r_4_50
         assign GaussFilter_gen_busy_r_4_50_gen_busy_i_rgb_m_data_is_invalid_next = ~GaussFilter_gen_busy_r_4_50_gdiv;

         // resource: GaussFilter_gen_busy_r_4  instance: GaussFilter_gen_busy_r_4_50
         assign GaussFilter_gen_busy_r_4_50_gdiv = i_rgb_vld & !GaussFilter_gen_busy_r_4_50_gnew_req;

         // resource: GaussFilter_gen_busy_r_4  instance: GaussFilter_gen_busy_r_4_50
         assign GaussFilter_gen_busy_r_4_50_gnew_req = i_rgb_m_busy_req_0 & (i_rgb_m_unvalidated_req | i_rgb_vld);

         // resource: regr_ss_1
         always @(posedge i_clk)
          begin :drive_i_rgb_m_unvalidated_req
            if (i_rst == 1'b0) begin
               i_rgb_m_unvalidated_req <= 1'd1;
            end
            else begin
               i_rgb_m_unvalidated_req <= GaussFilter_N_Muxb_1_2_3_4_4_out1;
            end
         end

         // resource: GaussFilter_N_Muxb_1_2_3_4
         always @(i_rgb_vld or i_rgb_m_busy_req_0 or i_rgb_m_unvalidated_req)
          begin :GaussFilter_N_Muxb_1_2_3_4_4
            if (i_rgb_m_busy_req_0) begin
               GaussFilter_N_Muxb_1_2_3_4_4_out1 = i_rgb_m_unvalidated_req;
            end
            else begin
               GaussFilter_N_Muxb_1_2_3_4_4_out1 = i_rgb_vld;
            end
         end

         // instance: drive_o_rgb_vld
         assign o_rgb_vld = GaussFilter_Or_1Ux1U_1U_4_2_out1;

         // resource: GaussFilter_Or_1Ux1U_1U_4  instance: GaussFilter_Or_1Ux1U_1U_4_2
         assign GaussFilter_Or_1Ux1U_1U_4_2_out1 = o_rgb_m_unacked_req | GaussFilter_Xor_1Ux1U_1U_1_1_out1;

         // resource: regr_sc_1
         always @(posedge i_clk)
          begin :drive_o_rgb_m_unacked_req
            if (i_rst == 1'b0) begin
               o_rgb_m_unacked_req <= 1'd0;
            end
            else begin
               o_rgb_m_unacked_req <= GaussFilter_And_1Ux1U_1U_4_48_out1;
            end
         end

         // resource: GaussFilter_And_1Ux1U_1U_4  instance: GaussFilter_And_1Ux1U_1U_4_48
         assign GaussFilter_And_1Ux1U_1U_4_48_out1 = o_rgb_busy & o_rgb_vld;

         // resource: GaussFilter_Xor_1Ux1U_1U_1  instance: GaussFilter_Xor_1Ux1U_1U_1_1
         assign GaussFilter_Xor_1Ux1U_1U_1_1_out1 = o_rgb_m_req_m_trig_req ^ o_rgb_m_req_m_prev_trig_req;

         // resource: regr_sc_1
         always @(posedge i_clk)
          begin :drive_o_rgb_m_req_m_prev_trig_req
            if (i_rst == 1'b0) begin
               o_rgb_m_req_m_prev_trig_req <= 1'd0;
            end
            else begin
               o_rgb_m_req_m_prev_trig_req <= o_rgb_m_req_m_trig_req;
            end
         end

         // resource: GaussFilter_Not_1U_1U_1  instance: GaussFilter_Not_1U_1U_1_3
         assign GaussFilter_Not_1U_1U_1_3_out1 = !o_rgb_m_req_m_trig_req;


endmodule
