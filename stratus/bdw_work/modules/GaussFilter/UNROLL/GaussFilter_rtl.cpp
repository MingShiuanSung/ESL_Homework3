// Generated by stratus_hls 19.12-s100  (91710.131054)
// Tue Apr 12 21:44:20 2022
// from ../GaussFilter.cpp
#include "GaussFilter_rtl.h"

struct GaussFilter;
GaussFilter::GaussFilter(sc_module_name name) : sc_module(name) 
    ,i_clk("i_clk")
    ,i_rst("i_rst")
    ,i_rgb_busy("i_rgb_busy")
    ,i_rgb_vld("i_rgb_vld")
    ,i_rgb_data("i_rgb_data")
    ,o_rgb_busy("o_rgb_busy")
    ,o_rgb_vld("o_rgb_vld")
    ,o_rgb_data("o_rgb_data")
    ,o_rgb_m_req_m_prev_trig_req("o_rgb_m_req_m_prev_trig_req")
    ,GaussFilter_Xor_1Ux1U_1U_1_1_out1("GaussFilter_Xor_1Ux1U_1U_1_1_out1")
    ,o_rgb_m_unacked_req("o_rgb_m_unacked_req")
    ,GaussFilter_Or_1Ux1U_1U_4_2_out1("GaussFilter_Or_1Ux1U_1U_4_2_out1")
    ,GaussFilter_N_Muxb_1_2_3_4_4_out1("GaussFilter_N_Muxb_1_2_3_4_4_out1")
    ,i_rgb_m_unvalidated_req("i_rgb_m_unvalidated_req")
    ,GaussFilter_gen_busy_r_4_50_gen_busy_i_rgb_m_data_is_invalid_next("GaussFilter_gen_busy_r_4_50_gen_busy_i_rgb_m_data_is_invalid_next")
    ,GaussFilter_gen_busy_r_4_50_gdiv("GaussFilter_gen_busy_r_4_50_gdiv")
    ,GaussFilter_gen_busy_r_4_50_gnew_req("GaussFilter_gen_busy_r_4_50_gnew_req")
    ,global_state_next("global_state_next")
    ,GaussFilter_LessThan_29Sx9S_1U_4_35_out1("GaussFilter_LessThan_29Sx9S_1U_4_35_out1")
    ,GaussFilter_N_Mux_29_2_1_4_34_out1("GaussFilter_N_Mux_29_2_1_4_34_out1")
    ,GaussFilter_N_Mux_29_2_1_4_34_ctrl1("GaussFilter_N_Mux_29_2_1_4_34_ctrl1")
    ,GaussFilter_Add_28Sx1U_29S_4_33_out1("GaussFilter_Add_28Sx1U_29S_4_33_out1")
    ,GaussFilter_Add_28Sx1U_29S_4_33_in2("GaussFilter_Add_28Sx1U_29S_4_33_in2")
    ,GaussFilter_And_1Ux1U_1U_4_31_out1("GaussFilter_And_1Ux1U_1U_4_31_out1")
    ,GaussFilter_And_1Ux1U_1U_4_31_in1("GaussFilter_And_1Ux1U_1U_4_31_in1")
    ,gs_ctrl8("gs_ctrl8")
    ,GaussFilter_Add_32Sx12S_32S_4_12_in1("GaussFilter_Add_32Sx12S_32S_4_12_in1")
    ,gs_ctrl7("gs_ctrl7")
    ,GaussFilter_Add_32Sx12S_32S_4_12_in2("GaussFilter_Add_32Sx12S_32S_4_12_in2")
    ,gs_ctrl6("gs_ctrl6")
    ,GaussFilter_Mul_8Ux4S_12S_4_11_out1("GaussFilter_Mul_8Ux4S_12S_4_11_out1")
    ,GaussFilter_Mul_8Ux4S_12S_4_11_in1("GaussFilter_Mul_8Ux4S_12S_4_11_in1")
    ,gs_ctrl5("gs_ctrl5")
    ,GaussFilter_Mul_8Ux4S_12S_4_11_in2("GaussFilter_Mul_8Ux4S_12S_4_11_in2")
    ,gs_ctrl4("gs_ctrl4")
    ,GaussFilter_N_Mux_4_3_0_4_6_ctrl1("GaussFilter_N_Mux_4_3_0_4_6_ctrl1")
    ,gs_ctrl0("gs_ctrl0")
    ,GaussFilter_OrReduction_4U_1U_4_38_out1("GaussFilter_OrReduction_4U_1U_4_38_out1")
    ,GaussFilter_OrReduction_4U_1U_4_32_out1("GaussFilter_OrReduction_4U_1U_4_32_out1")
    ,GaussFilter_OrReduction_4U_1U_4_30_out1("GaussFilter_OrReduction_4U_1U_4_30_out1")
    ,GaussFilter_NotEQ_2Ux1U_1U_4_7_out1("GaussFilter_NotEQ_2Ux1U_1U_4_7_out1")
    ,s_reg_51("s_reg_51")
    ,s_reg_52("s_reg_52")
    ,GaussFilter_Not_1U_1U_4_10_out1("GaussFilter_Not_1U_1U_4_10_out1")
    ,s_reg_50_slice("s_reg_50_slice")
    ,s_reg_49("s_reg_49")
    ,GaussFilter_Add_2Ux1U_2U_4_9_out1("GaussFilter_Add_2Ux1U_2U_4_9_out1")
    ,s_reg_48("s_reg_48")
    ,GaussFilter_Equal_2Ux1U_1U_4_8_out1("GaussFilter_Equal_2Ux1U_1U_4_8_out1")
    ,s_reg_47("s_reg_47")
    ,GaussFilter_N_Mux_4_3_0_4_6_out1_slice("GaussFilter_N_Mux_4_3_0_4_6_out1_slice")
    ,s_reg_45("s_reg_45")
    ,s_reg_44("s_reg_44")
    ,GaussFilter_Add_32Sx12S_32S_4_12_out1("GaussFilter_Add_32Sx12S_32S_4_12_out1")
    ,s_reg_43("s_reg_43")
    ,GaussFilter_gen_busy_r_4_50_out1("GaussFilter_gen_busy_r_4_50_out1")
    ,GaussFilter_And_1Ux1U_1U_4_48_out1("GaussFilter_And_1Ux1U_1U_4_48_out1")
    ,GaussFilter_Not_1U_1U_1_3_out1("GaussFilter_Not_1U_1U_1_3_out1")
    ,o_rgb_m_req_m_trig_req("o_rgb_m_req_m_trig_req")
    ,GaussFilter_LessThan_2Ux2U_1U_4_27_out1("GaussFilter_LessThan_2Ux2U_1U_4_27_out1")
    ,i_rgb_m_busy_req_0("i_rgb_m_busy_req_0")
    ,GaussFilter_N_Mux_8_2_2_4_36_out1("GaussFilter_N_Mux_8_2_2_4_36_out1")
    ,s_reg_53("s_reg_53")
    ,s_reg_46("s_reg_46")
    ,global_state("global_state")
    ,stall0("stall0")
{
  SC_METHOD(drive_o_rgb_data);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_i_rgb_m_busy_req_0);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_o_rgb_m_req_m_trig_req);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_stall0);
  sensitive << ( global_state );
  sensitive << ( GaussFilter_gen_busy_r_4_50_out1 );
  sensitive << ( GaussFilter_And_1Ux1U_1U_4_48_out1 );

  SC_METHOD(drive_s_reg_43);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_s_reg_44);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_s_reg_45);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_s_reg_46);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_s_reg_47);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_s_reg_48);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_s_reg_49);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_s_reg_50_slice);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_s_reg_51);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_s_reg_52);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_s_reg_53);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_GaussFilter_N_Mux_4_3_0_4_6_ctrl1);
  sensitive << ( gs_ctrl0 );
  sensitive << ( s_reg_48 );

  SC_METHOD(GaussFilter_N_Mux_4_3_0_4_6);
  sensitive << ( GaussFilter_N_Mux_4_3_0_4_6_ctrl1 );

  SC_METHOD(GaussFilter_NotEQ_2Ux1U_1U_4_7);
  sensitive << ( GaussFilter_N_Mux_4_3_0_4_6_ctrl1 );

  SC_METHOD(GaussFilter_Equal_2Ux1U_1U_4_8);
  sensitive << ( GaussFilter_N_Mux_4_3_0_4_6_ctrl1 );

  SC_METHOD(GaussFilter_Add_2Ux1U_2U_4_9);
  sensitive << ( GaussFilter_N_Mux_4_3_0_4_6_ctrl1 );

  SC_METHOD(GaussFilter_Not_1U_1U_4_10);
  sensitive << ( s_reg_49 );

  SC_METHOD(drive_GaussFilter_Mul_8Ux4S_12S_4_11_in2);
  sensitive << ( gs_ctrl4 );
  sensitive << ( i_rgb_data );
  sensitive << ( o_rgb_data );
  sensitive << ( s_reg_51 );

  SC_METHOD(drive_GaussFilter_Mul_8Ux4S_12S_4_11_in1);
  sensitive << ( gs_ctrl5 );
  sensitive << ( GaussFilter_Not_1U_1U_4_10_out1 );
  sensitive << ( s_reg_49 );
  sensitive << ( s_reg_50_slice );
  sensitive << ( s_reg_46 );
  sensitive << ( s_reg_52 );
  sensitive << ( s_reg_47 );

  SC_METHOD(GaussFilter_Mul_8Ux4S_12S_4_11);
  sensitive << ( GaussFilter_Mul_8Ux4S_12S_4_11_in1 );
  sensitive << ( GaussFilter_Mul_8Ux4S_12S_4_11_in2 );

  SC_METHOD(drive_GaussFilter_Add_32Sx12S_32S_4_12_in2);
  sensitive << ( gs_ctrl6 );
  sensitive << ( s_reg_43 );
  sensitive << ( s_reg_44 );
  sensitive << ( s_reg_45 );

  SC_METHOD(drive_GaussFilter_Add_32Sx12S_32S_4_12_in1);
  sensitive << ( gs_ctrl7 );
  sensitive << ( GaussFilter_Mul_8Ux4S_12S_4_11_out1 );

  SC_METHOD(GaussFilter_Add_32Sx12S_32S_4_12);
  sensitive << ( GaussFilter_Add_32Sx12S_32S_4_12_in1 );
  sensitive << ( GaussFilter_Add_32Sx12S_32S_4_12_in2 );

  SC_METHOD(GaussFilter_LessThan_2Ux2U_1U_4_27);
  sensitive << ( s_reg_48 );

  SC_METHOD(GaussFilter_OrReduction_4U_1U_4_30);
  sensitive << ( s_reg_43 );

  SC_METHOD(drive_GaussFilter_And_1Ux1U_1U_4_31_in1);
  sensitive << ( gs_ctrl8 );
  sensitive << ( s_reg_43 );
  sensitive << ( s_reg_44 );
  sensitive << ( s_reg_45 );

  SC_METHOD(GaussFilter_And_1Ux1U_1U_4_31);
  sensitive << ( GaussFilter_And_1Ux1U_1U_4_31_in1 );
  sensitive << ( s_reg_52 );

  SC_METHOD(GaussFilter_OrReduction_4U_1U_4_32);
  sensitive << ( s_reg_44 );

  SC_METHOD(drive_GaussFilter_Add_28Sx1U_29S_4_33_in2);
  sensitive << ( gs_ctrl8 );
  sensitive << ( s_reg_43 );
  sensitive << ( s_reg_44 );
  sensitive << ( s_reg_45 );

  SC_METHOD(GaussFilter_Add_28Sx1U_29S_4_33);
  sensitive << ( GaussFilter_And_1Ux1U_1U_4_31_out1 );
  sensitive << ( GaussFilter_Add_28Sx1U_29S_4_33_in2 );

  SC_METHOD(drive_GaussFilter_N_Mux_29_2_1_4_34_ctrl1);
  sensitive << ( GaussFilter_Add_28Sx1U_29S_4_33_out1 );

  SC_METHOD(GaussFilter_N_Mux_29_2_1_4_34);
  sensitive << ( GaussFilter_N_Mux_29_2_1_4_34_ctrl1 );
  sensitive << ( GaussFilter_Add_28Sx1U_29S_4_33_out1 );

  SC_METHOD(GaussFilter_LessThan_29Sx9S_1U_4_35);
  sensitive << ( GaussFilter_N_Mux_29_2_1_4_34_out1 );

  SC_METHOD(GaussFilter_N_Mux_8_2_2_4_36);
  sensitive << ( GaussFilter_LessThan_29Sx9S_1U_4_35_out1 );
  sensitive << ( GaussFilter_N_Mux_29_2_1_4_34_out1 );

  SC_METHOD(GaussFilter_OrReduction_4U_1U_4_38);
  sensitive << ( s_reg_45 );

  SC_METHOD(drive_global_state);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_global_state_next);
  sensitive << ( global_state );
  sensitive << ( GaussFilter_LessThan_2Ux2U_1U_4_27_out1 );

  SC_METHOD(drive_gs_ctrl0);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_gs_ctrl4);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_gs_ctrl5);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_gs_ctrl6);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_gs_ctrl7);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_gs_ctrl8);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(drive_i_rgb_busy);
  sensitive << ( GaussFilter_gen_busy_r_4_50_out1 );

  SC_METHOD(GaussFilter_gen_busy_r_4_50_p8);
  sensitive << ( 
  GaussFilter_gen_busy_r_4_50_gen_busy_i_rgb_m_data_is_invalid_next );
  sensitive << ( GaussFilter_gen_busy_r_4_50_gdiv );
  sensitive << ( GaussFilter_gen_busy_r_4_50_gnew_req );

  SC_METHOD(GaussFilter_gen_busy_r_4_50_p7);
  sensitive << ( GaussFilter_gen_busy_r_4_50_gdiv );

  SC_METHOD(GaussFilter_gen_busy_r_4_50_p6);
  sensitive << ( GaussFilter_gen_busy_r_4_50_gnew_req );
  sensitive << ( i_rgb_vld );

  SC_METHOD(GaussFilter_gen_busy_r_4_50_p5);
  sensitive << ( i_rgb_vld );
  sensitive << ( i_rgb_m_unvalidated_req );
  sensitive << ( i_rgb_m_busy_req_0 );

  SC_METHOD(drive_i_rgb_m_unvalidated_req);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(GaussFilter_N_Muxb_1_2_3_4_4);
  sensitive << ( i_rgb_m_busy_req_0 );
  sensitive << ( i_rgb_m_unvalidated_req );
  sensitive << ( i_rgb_vld );

  SC_METHOD(drive_o_rgb_vld);
  sensitive << ( GaussFilter_Or_1Ux1U_1U_4_2_out1 );

  SC_METHOD(GaussFilter_Or_1Ux1U_1U_4_2);
  sensitive << ( GaussFilter_Xor_1Ux1U_1U_1_1_out1 );
  sensitive << ( o_rgb_m_unacked_req );

  SC_METHOD(drive_o_rgb_m_unacked_req);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(GaussFilter_And_1Ux1U_1U_4_48);
  sensitive << ( o_rgb_vld );
  sensitive << ( o_rgb_busy );

  SC_METHOD(GaussFilter_Xor_1Ux1U_1U_1_1);
  sensitive << ( o_rgb_m_req_m_prev_trig_req );
  sensitive << ( o_rgb_m_req_m_trig_req );

  SC_METHOD(drive_o_rgb_m_req_m_prev_trig_req);
  sensitive << i_clk.pos();
  dont_initialize();

  SC_METHOD(GaussFilter_Not_1U_1U_1_3);
  sensitive << ( o_rgb_m_req_m_trig_req );

}
// resource: mux_24bx2i0c
// resource: regr_en_24
void GaussFilter::drive_o_rgb_data(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 1ULL: case 3ULL: 
      o_rgb_data = i_rgb_data.read();
      break;
    case 12ULL: 
      o_rgb_data = ( (sc_uint<24> )(sc_bv<24>)((sc_bv<8>)(
                   GaussFilter_N_Mux_8_2_2_4_36_out1.read()), 
                   (sc_bv<16>)((sc_bv<8>)(s_reg_53.read()), 
                   (sc_bv<8>)(s_reg_46.read()))) );
      break;
    }
    break;
  }
}
// resource: mux_1bx2i2c
// resource: regr_en_ss_1
void GaussFilter::drive_i_rgb_m_busy_req_0(){
  if ( (i_rst.read() == 0ULL) ) {
    i_rgb_m_busy_req_0 = 1ULL;
  } else {
    switch( (sc_uint<1>)(stall0.read()) ) {
    case 1ULL: 
      break;
    case 0ULL: 
      switch( (sc_uint<4>)(global_state.read()) ) {
      case 0ULL: case 2ULL: case 4ULL: case 14ULL: 
        i_rgb_m_busy_req_0 = 0ULL;
        break;
      case 1ULL: case 3ULL: case 5ULL: 
        i_rgb_m_busy_req_0 = 1ULL;
        break;
      case 9ULL: 
        if ( GaussFilter_LessThan_2Ux2U_1U_4_27_out1.read() ) {
          i_rgb_m_busy_req_0 = 0ULL;
        } 
        break;
      }
      break;
    }
  }
}
// resource: regr_en_sc_1
void GaussFilter::drive_o_rgb_m_req_m_trig_req(){
  if ( (i_rst.read() == 0ULL) ) {
    o_rgb_m_req_m_trig_req = 0ULL;
  } else {
    switch( (sc_uint<1>)(stall0.read()) ) {
    case 1ULL: 
      break;
    case 0ULL: 
      switch( (sc_uint<4>)(global_state.read()) ) {
      case 12ULL: 
        o_rgb_m_req_m_trig_req = (sc_uint<1> ) (GaussFilter_Not_1U_1U_1_3_out1
                                 .read());
        break;
      }
      break;
    }
  }
}
// resource: mux_1bx3i1c
void GaussFilter::drive_stall0(){
  switch( (sc_uint<4>)(global_state.read()) ) {
  default:
    stall0 = 0ULL;
    break;
  case 1ULL: case 3ULL: case 5ULL: 
    stall0 = (sc_uint<1> )GaussFilter_gen_busy_r_4_50_out1.read();
    break;
  case 13ULL: 
    stall0 = GaussFilter_And_1Ux1U_1U_4_48_out1.read();
    break;
  }
}
// resource: mux_32bx2i1c
// resource: regr_en_32
void GaussFilter::drive_s_reg_43(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 0ULL: case 14ULL: 
      s_reg_43 = 0ULL;
      break;
    case 1ULL: case 4ULL: case 7ULL: 
      s_reg_43 = (sc_uint<32> ) (GaussFilter_Add_32Sx12S_32S_4_12_out1.read());
      break;
    }
    break;
  }
}
// resource: mux_32bx2i1c
// resource: regr_en_32
void GaussFilter::drive_s_reg_44(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 0ULL: case 14ULL: 
      s_reg_44 = 0ULL;
      break;
    case 2ULL: case 5ULL: case 8ULL: 
      s_reg_44 = (sc_uint<32> ) (GaussFilter_Add_32Sx12S_32S_4_12_out1.read());
      break;
    }
    break;
  }
}
// resource: mux_32bx2i1c
// resource: regr_en_32
void GaussFilter::drive_s_reg_45(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 0ULL: case 14ULL: 
      s_reg_45 = 0ULL;
      break;
    case 3ULL: case 6ULL: case 9ULL: 
      s_reg_45 = (sc_uint<32> ) (GaussFilter_Add_32Sx12S_32S_4_12_out1.read());
      break;
    }
    break;
  }
}
// resource: mux_8bx2i0c
// resource: regr_en_8
void GaussFilter::drive_s_reg_46(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 0ULL: case 9ULL: case 14ULL: 
      s_reg_46 = (sc_uint<8> ) ((sc_int<4> )(( (sc_uint<4> )(sc_bv<4>)(
                 (sc_bv<1>)(0ULL), 
                 (sc_bv<3>)(GaussFilter_N_Mux_4_3_0_4_6_out1_slice.read())) )));
      break;
    case 10ULL: 
      s_reg_46 = GaussFilter_N_Mux_8_2_2_4_36_out1.read();
      break;
    }
    break;
  }
}
// resource: regr_en_1
void GaussFilter::drive_s_reg_47(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 0ULL: case 9ULL: case 14ULL: 
      s_reg_47 = GaussFilter_Equal_2Ux1U_1U_4_8_out1.read();
      break;
    }
    break;
  }
}
// resource: regr_en_2
void GaussFilter::drive_s_reg_48(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 0ULL: case 9ULL: case 14ULL: 
      s_reg_48 = (sc_uint<2> ) (GaussFilter_Add_2Ux1U_2U_4_9_out1.read());
      break;
    }
    break;
  }
}
// resource: mux_1bx2i1c
// resource: regr_en_1
void GaussFilter::drive_s_reg_49(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 0ULL: case 14ULL: 
      s_reg_49 = 0ULL;
      break;
    case 9ULL: 
      s_reg_49 = (sc_uint<1> )s_reg_48.read();
      break;
    }
    break;
  }
}
// resource: mux_2bx2i0c
// resource: regr_en_2
void GaussFilter::drive_s_reg_50_slice(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 1ULL: 
      s_reg_50_slice = ( (sc_uint<2> )(sc_bv<2>)((sc_bv<1>)(s_reg_49.read()), 
                       (sc_bv<1>)(GaussFilter_Not_1U_1U_4_10_out1.read())) );
      break;
    case 7ULL: 
      s_reg_50_slice = ( (sc_uint<2> )(sc_bv<2>)((sc_bv<1>)(s_reg_47.read()), 
                       (sc_bv<1>)(s_reg_52.read())) );
      break;
    }
    break;
  }
}
// resource: regr_en_24
void GaussFilter::drive_s_reg_51(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 5ULL: 
      s_reg_51 = i_rgb_data.read();
      break;
    }
    break;
  }
}
// resource: mux_1bx4i0c
// resource: regr_en_1
void GaussFilter::drive_s_reg_52(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    switch( (sc_uint<4>)(global_state.read()) ) {
    case 0ULL: case 14ULL: 
      s_reg_52 = GaussFilter_NotEQ_2Ux1U_1U_4_7_out1.read();
      break;
    case 9ULL: 
      if ( GaussFilter_LessThan_2Ux2U_1U_4_27_out1.read() ) {
        s_reg_52 = GaussFilter_NotEQ_2Ux1U_1U_4_7_out1.read();
      } else {
        s_reg_52 = GaussFilter_OrReduction_4U_1U_4_30_out1.read();
      }
      break;
    case 10ULL: 
      s_reg_52 = GaussFilter_OrReduction_4U_1U_4_32_out1.read();
      break;
    case 11ULL: 
      s_reg_52 = GaussFilter_OrReduction_4U_1U_4_38_out1.read();
      break;
    }
    break;
  }
}
// resource: regr_en_8
void GaussFilter::drive_s_reg_53(){
  switch( (sc_uint<1>)(stall0.read()) ) {
  case 1ULL: 
    break;
  case 0ULL: 
    s_reg_53 = GaussFilter_N_Mux_8_2_2_4_36_out1.read();
    break;
  }
}
// resource: mux_2bx2i1c
void GaussFilter::drive_GaussFilter_N_Mux_4_3_0_4_6_ctrl1(){
  if ( gs_ctrl0.read() ) {
    GaussFilter_N_Mux_4_3_0_4_6_ctrl1 = (sc_uint<2> ) (s_reg_48.read());
  } else {
    GaussFilter_N_Mux_4_3_0_4_6_ctrl1 = 0ULL;
  }
}
// resource: GaussFilter_N_Mux_4_3_0_4
void GaussFilter::GaussFilter_N_Mux_4_3_0_4_6(){
  switch( (sc_uint<2>)(GaussFilter_N_Mux_4_3_0_4_6_ctrl1.read()) ) {
  default:
    GaussFilter_N_Mux_4_3_0_4_6_out1_slice = 2ULL;
    break;
  case 1ULL: 
    GaussFilter_N_Mux_4_3_0_4_6_out1_slice = 4ULL;
    break;
  case 3ULL: 
    GaussFilter_N_Mux_4_3_0_4_6_out1_slice = 1ULL;
    break;
  }
}
// resource: GaussFilter_NotEQ_2Ux1U_1U_4  instance: GaussFilter_NotEQ_2Ux1U_1U_4_7
void GaussFilter::GaussFilter_NotEQ_2Ux1U_1U_4_7(){
  GaussFilter_NotEQ_2Ux1U_1U_4_7_out1 = (GaussFilter_N_Mux_4_3_0_4_6_ctrl1
                                        .read() != 1ULL);
}
// resource: GaussFilter_Equal_2Ux1U_1U_4  instance: GaussFilter_Equal_2Ux1U_1U_4_8
void GaussFilter::GaussFilter_Equal_2Ux1U_1U_4_8(){
  GaussFilter_Equal_2Ux1U_1U_4_8_out1 = (GaussFilter_N_Mux_4_3_0_4_6_ctrl1
                                        .read() == 1ULL);
}
// resource: GaussFilter_Add_2Ux1U_2U_4  instance: GaussFilter_Add_2Ux1U_2U_4_9
void GaussFilter::GaussFilter_Add_2Ux1U_2U_4_9(){
  GaussFilter_Add_2Ux1U_2U_4_9_out1 = (/*cliff*/sc_uint<32>)(
                                      GaussFilter_N_Mux_4_3_0_4_6_ctrl1.read()
                                       + 1ULL);
}
// resource: GaussFilter_Not_1U_1U_4  instance: GaussFilter_Not_1U_1U_4_10
void GaussFilter::GaussFilter_Not_1U_1U_4_10(){
  GaussFilter_Not_1U_1U_4_10_out1 = !s_reg_49.read();
}
// resource: mux_8bx7i0c
void GaussFilter::drive_GaussFilter_Mul_8Ux4S_12S_4_11_in2(){
  switch( (sc_uint<3>)(gs_ctrl4.read()) ) {
  default:
    GaussFilter_Mul_8Ux4S_12S_4_11_in2 = (sc_uint<8> )i_rgb_data.read();
    break;
  case 1ULL: 
    GaussFilter_Mul_8Ux4S_12S_4_11_in2 = (sc_uint<8> ) (o_rgb_data.read().range(
                                         15,8));
    break;
  case 2ULL: 
    GaussFilter_Mul_8Ux4S_12S_4_11_in2 = (sc_uint<8> ) (o_rgb_data.read().range(
                                         23,16));
    break;
  case 3ULL: 
    GaussFilter_Mul_8Ux4S_12S_4_11_in2 = (sc_uint<8> )o_rgb_data.read();
    break;
  case 4ULL: 
    GaussFilter_Mul_8Ux4S_12S_4_11_in2 = (sc_uint<8> )s_reg_51.read();
    break;
  case 5ULL: 
    GaussFilter_Mul_8Ux4S_12S_4_11_in2 = (sc_uint<8> ) (s_reg_51.read().range(15
                                         ,8));
    break;
  case 6ULL: 
    GaussFilter_Mul_8Ux4S_12S_4_11_in2 = (sc_uint<8> ) (s_reg_51.read().range(23
                                         ,16));
    break;
  }
}
// resource: mux_4bx4i0c
void GaussFilter::drive_GaussFilter_Mul_8Ux4S_12S_4_11_in1(){
  switch( (sc_uint<2>)(gs_ctrl5.read()) ) {
  default:
    GaussFilter_Mul_8Ux4S_12S_4_11_in1 = (sc_int<4> ) ((sc_int<3> )(( (
                                         sc_uint<2> )(sc_bv<2>)((sc_bv<1>)(
                                         s_reg_49.read()), 
                                         (sc_bv<1>)(
                                         GaussFilter_Not_1U_1U_4_10_out1.read())
                                         ) )));
    break;
  case 1ULL: 
    GaussFilter_Mul_8Ux4S_12S_4_11_in1 = (sc_int<4> ) ((sc_int<3> )(( (
                                         sc_uint<3> )(sc_bv<3>)((sc_bv<1>)(0ULL)
                                         , 
                                         (sc_bv<2>)(s_reg_50_slice.read())) )));
    break;
  case 2ULL: 
    GaussFilter_Mul_8Ux4S_12S_4_11_in1 = (sc_int<4> )s_reg_46.read();
    break;
  case 3ULL: 
    GaussFilter_Mul_8Ux4S_12S_4_11_in1 = (sc_int<4> ) ((sc_int<3> )(( (
                                         sc_uint<2> )(sc_bv<2>)((sc_bv<1>)(
                                         s_reg_47.read()), 
                                         (sc_bv<1>)(s_reg_52.read())) )));
    break;
  }
}
// resource: GaussFilter_Mul_8Ux4S_12S_4  instance: GaussFilter_Mul_8Ux4S_12S_4_11
void GaussFilter::GaussFilter_Mul_8Ux4S_12S_4_11(){
  GaussFilter_Mul_8Ux4S_12S_4_11_out1 = (/*cliff*/sc_int<32>)
                                        GaussFilter_Mul_8Ux4S_12S_4_11_in2
                                        .read() * 
                                        GaussFilter_Mul_8Ux4S_12S_4_11_in1
                                        .read();
}
// resource: mux_32bx3i0c
void GaussFilter::drive_GaussFilter_Add_32Sx12S_32S_4_12_in2(){
  switch( (sc_uint<2>)(gs_ctrl6.read()) ) {
  default:
    GaussFilter_Add_32Sx12S_32S_4_12_in2 = (sc_int<32> ) (s_reg_43.read());
    break;
  case 1ULL: 
    GaussFilter_Add_32Sx12S_32S_4_12_in2 = (sc_int<32> ) (s_reg_44.read());
    break;
  case 2ULL: 
    GaussFilter_Add_32Sx12S_32S_4_12_in2 = (sc_int<32> ) (s_reg_45.read());
    break;
  }
}
// resource: mux_12bx2i0c
void GaussFilter::drive_GaussFilter_Add_32Sx12S_32S_4_12_in1(){
  if ( gs_ctrl7.read() ) {
    GaussFilter_Add_32Sx12S_32S_4_12_in1 = GaussFilter_Mul_8Ux4S_12S_4_11_out1
                                           .read();
  } else {
    GaussFilter_Add_32Sx12S_32S_4_12_in1 = (sc_int<12> ) ((sc_int<11> )
                                           GaussFilter_Mul_8Ux4S_12S_4_11_out1
                                           .read());
  }
}
// resource: GaussFilter_Add_32Sx12S_32S_4  instance: GaussFilter_Add_32Sx12S_32S_4_12
void GaussFilter::GaussFilter_Add_32Sx12S_32S_4_12(){
  GaussFilter_Add_32Sx12S_32S_4_12_out1 = (/*cliff*/sc_int<32>)(
                                          GaussFilter_Add_32Sx12S_32S_4_12_in2
                                          .read() + 
                                          GaussFilter_Add_32Sx12S_32S_4_12_in1
                                          .read());
}
// resource: GaussFilter_LessThan_2Ux2U_1U_4  instance: GaussFilter_LessThan_2Ux2U_1U_4_27
void GaussFilter::GaussFilter_LessThan_2Ux2U_1U_4_27(){
  GaussFilter_LessThan_2Ux2U_1U_4_27_out1 = (/*imp*/sc_uint<1>)((sc_uint<2> )
                                            s_reg_48.read() < (sc_uint<2> )3ULL)
  ;
}
// resource: GaussFilter_OrReduction_4U_1U_4  instance: GaussFilter_OrReduction_4U_1U_4_30
void GaussFilter::GaussFilter_OrReduction_4U_1U_4_30(){
  GaussFilter_OrReduction_4U_1U_4_30_out1 = ((sc_uint<4>)( (sc_uint<4> )s_reg_43
                                            .read() )).or_reduce();
}
// resource: mux_1bx3i0c
void GaussFilter::drive_GaussFilter_And_1Ux1U_1U_4_31_in1(){
  switch( (sc_uint<2>)(gs_ctrl8.read()) ) {
  default:
    GaussFilter_And_1Ux1U_1U_4_31_in1 = (sc_uint<1> ) (s_reg_43.read().range(31,
                                        31));
    break;
  case 1ULL: 
    GaussFilter_And_1Ux1U_1U_4_31_in1 = (sc_uint<1> ) (s_reg_44.read().range(31,
                                        31));
    break;
  case 2ULL: 
    GaussFilter_And_1Ux1U_1U_4_31_in1 = (sc_uint<1> ) (s_reg_45.read().range(31,
                                        31));
    break;
  }
}
// resource: GaussFilter_And_1Ux1U_1U_4  instance: GaussFilter_And_1Ux1U_1U_4_31
void GaussFilter::GaussFilter_And_1Ux1U_1U_4_31(){
  GaussFilter_And_1Ux1U_1U_4_31_out1 = s_reg_52.read() & 
                                       GaussFilter_And_1Ux1U_1U_4_31_in1.read();
}
// resource: GaussFilter_OrReduction_4U_1U_4  instance: GaussFilter_OrReduction_4U_1U_4_32
void GaussFilter::GaussFilter_OrReduction_4U_1U_4_32(){
  GaussFilter_OrReduction_4U_1U_4_32_out1 = ((sc_uint<4>)( (sc_uint<4> )s_reg_44
                                            .read() )).or_reduce();
}
// resource: mux_28bx3i0c
void GaussFilter::drive_GaussFilter_Add_28Sx1U_29S_4_33_in2(){
  switch( (sc_uint<2>)(gs_ctrl8.read()) ) {
  default:
    GaussFilter_Add_28Sx1U_29S_4_33_in2 = (sc_int<28> ) (((/*imp*/sc_uint<28> ) 
                                          s_reg_43.read().range(31,4)));
    break;
  case 1ULL: 
    GaussFilter_Add_28Sx1U_29S_4_33_in2 = (sc_int<28> ) (((/*imp*/sc_uint<28> ) 
                                          s_reg_44.read().range(31,4)));
    break;
  case 2ULL: 
    GaussFilter_Add_28Sx1U_29S_4_33_in2 = (sc_int<28> ) (((/*imp*/sc_uint<28> ) 
                                          s_reg_45.read().range(31,4)));
    break;
  }
}
// resource: GaussFilter_Add_28Sx1U_29S_4  instance: GaussFilter_Add_28Sx1U_29S_4_33
void GaussFilter::GaussFilter_Add_28Sx1U_29S_4_33(){
  GaussFilter_Add_28Sx1U_29S_4_33_out1 = (/*cliff*/sc_int<32>)(
                                         GaussFilter_Add_28Sx1U_29S_4_33_in2
                                         .read() + 
                                         GaussFilter_And_1Ux1U_1U_4_31_out1
                                         .read());
}
void GaussFilter::drive_GaussFilter_N_Mux_29_2_1_4_34_ctrl1(){
  GaussFilter_N_Mux_29_2_1_4_34_ctrl1 = (sc_uint<1> ) (((/*imp*/sc_uint<1> ) 
                                        GaussFilter_Add_28Sx1U_29S_4_33_out1
                                        .read().range(28,28)));
}
// resource: GaussFilter_N_Mux_29_2_1_4
void GaussFilter::GaussFilter_N_Mux_29_2_1_4_34(){
  if ( GaussFilter_N_Mux_29_2_1_4_34_ctrl1.read() ) {
    GaussFilter_N_Mux_29_2_1_4_34_out1 = 0ULL;
  } else {
    GaussFilter_N_Mux_29_2_1_4_34_out1 = (sc_uint<29> ) (
                                         GaussFilter_Add_28Sx1U_29S_4_33_out1
                                         .read());
  }
}
// resource: GaussFilter_LessThan_29Sx9S_1U_4  instance: GaussFilter_LessThan_29Sx9S_1U_4_35
void GaussFilter::GaussFilter_LessThan_29Sx9S_1U_4_35(){
  GaussFilter_LessThan_29Sx9S_1U_4_35_out1 = (/*imp*/sc_uint<1>)((sc_int<29> )
                                             GaussFilter_N_Mux_29_2_1_4_34_out1
                                             .read() < (sc_int<9> )255LL);
}
// resource: GaussFilter_N_Mux_8_2_2_4
void GaussFilter::GaussFilter_N_Mux_8_2_2_4_36(){
  if ( GaussFilter_LessThan_29Sx9S_1U_4_35_out1.read() ) {
    GaussFilter_N_Mux_8_2_2_4_36_out1 = (sc_uint<8> )
                                        GaussFilter_N_Mux_29_2_1_4_34_out1
                                        .read();
  } else {
    GaussFilter_N_Mux_8_2_2_4_36_out1 = 255ULL;
  }
}
// resource: GaussFilter_OrReduction_4U_1U_4  instance: GaussFilter_OrReduction_4U_1U_4_38
void GaussFilter::GaussFilter_OrReduction_4U_1U_4_38(){
  GaussFilter_OrReduction_4U_1U_4_38_out1 = ((sc_uint<4>)( (sc_uint<4> )s_reg_45
                                            .read() )).or_reduce();
}
// resource: regr_en_sc_4
void GaussFilter::drive_global_state(){
  if ( (i_rst.read() == 0ULL) ) {
    global_state = 0ULL;
  } else {
    switch( (sc_uint<1>)(stall0.read()) ) {
    case 1ULL: 
      break;
    case 0ULL: 
      global_state = global_state_next.read();
      break;
    }
  }
}
// resource: mux_4bx2i1c
void GaussFilter::drive_global_state_next(){
  switch( (sc_uint<4>)(global_state.read()) ) {
  default:
    global_state_next = (global_state.read() + 1ULL);
    break;
  case 0ULL: case 14ULL: 
    global_state_next = 1ULL;
    break;
  case 9ULL: 
    if ( GaussFilter_LessThan_2Ux2U_1U_4_27_out1.read() ) {
      global_state_next = 1ULL;
    } else {
      global_state_next = (global_state.read() + 1ULL);
    }
    break;
  }
}
// resource: mux_1bx2i2c
// resource: regr_en_sc_1
void GaussFilter::drive_gs_ctrl0(){
  if ( (i_rst.read() == 0ULL) ) {
    gs_ctrl0 = 0ULL;
  } else {
    switch( (sc_uint<1>)(stall0.read()) ) {
    case 1ULL: 
      break;
    case 0ULL: 
      switch( (sc_uint<4>)(global_state_next.read()) ) {
      default:
        gs_ctrl0 = 0ULL;
        break;
      case 9ULL: 
        gs_ctrl0 = 1ULL;
        break;
      }
      break;
    }
  }
}
// resource: mux_3bx7i7c
// resource: regr_en_sc_3
void GaussFilter::drive_gs_ctrl4(){
  if ( (i_rst.read() == 0ULL) ) {
    gs_ctrl4 = 0ULL;
  } else {
    switch( (sc_uint<1>)(stall0.read()) ) {
    case 1ULL: 
      break;
    case 0ULL: 
      switch( (sc_uint<4>)(global_state_next.read()) ) {
      default:
        gs_ctrl4 = 0ULL;
        break;
      case 2ULL: case 5ULL: 
        gs_ctrl4 = 1ULL;
        break;
      case 3ULL: case 6ULL: 
        gs_ctrl4 = 2ULL;
        break;
      case 4ULL: 
        gs_ctrl4 = 3ULL;
        break;
      case 7ULL: 
        gs_ctrl4 = 4ULL;
        break;
      case 8ULL: 
        gs_ctrl4 = 5ULL;
        break;
      case 9ULL: 
        gs_ctrl4 = 6ULL;
        break;
      }
      break;
    }
  }
}
// resource: mux_2bx4i4c
// resource: regr_en_sc_2
void GaussFilter::drive_gs_ctrl5(){
  if ( (i_rst.read() == 0ULL) ) {
    gs_ctrl5 = 0ULL;
  } else {
    switch( (sc_uint<1>)(stall0.read()) ) {
    case 1ULL: 
      break;
    case 0ULL: 
      switch( (sc_uint<4>)(global_state_next.read()) ) {
      default:
        gs_ctrl5 = 0ULL;
        break;
      case 2ULL: case 3ULL: case 8ULL: case 9ULL: 
        gs_ctrl5 = 1ULL;
        break;
      case 4ULL: case 5ULL: case 6ULL: 
        gs_ctrl5 = 2ULL;
        break;
      case 7ULL: 
        gs_ctrl5 = 3ULL;
        break;
      }
      break;
    }
  }
}
// resource: mux_2bx3i3c
// resource: regr_en_sc_2
void GaussFilter::drive_gs_ctrl6(){
  if ( (i_rst.read() == 0ULL) ) {
    gs_ctrl6 = 0ULL;
  } else {
    switch( (sc_uint<1>)(stall0.read()) ) {
    case 1ULL: 
      break;
    case 0ULL: 
      switch( (sc_uint<4>)(global_state_next.read()) ) {
      default:
        gs_ctrl6 = 0ULL;
        break;
      case 2ULL: case 5ULL: case 8ULL: 
        gs_ctrl6 = 1ULL;
        break;
      case 3ULL: case 6ULL: case 9ULL: 
        gs_ctrl6 = 2ULL;
        break;
      }
      break;
    }
  }
}
// resource: mux_1bx2i2c
// resource: regr_en_sc_1
void GaussFilter::drive_gs_ctrl7(){
  if ( (i_rst.read() == 0ULL) ) {
    gs_ctrl7 = 0ULL;
  } else {
    switch( (sc_uint<1>)(stall0.read()) ) {
    case 1ULL: 
      break;
    case 0ULL: 
      switch( (sc_uint<4>)(global_state_next.read()) ) {
      default:
        gs_ctrl7 = 0ULL;
        break;
      case 4ULL: case 5ULL: case 6ULL: 
        gs_ctrl7 = 1ULL;
        break;
      }
      break;
    }
  }
}
// resource: mux_2bx3i3c
// resource: regr_en_sc_2
void GaussFilter::drive_gs_ctrl8(){
  if ( (i_rst.read() == 0ULL) ) {
    gs_ctrl8 = 0ULL;
  } else {
    switch( (sc_uint<1>)(stall0.read()) ) {
    case 1ULL: 
      break;
    case 0ULL: 
      switch( (sc_uint<4>)(global_state_next.read()) ) {
      default:
        gs_ctrl8 = 0ULL;
        break;
      case 11ULL: 
        gs_ctrl8 = 1ULL;
        break;
      case 12ULL: 
        gs_ctrl8 = 2ULL;
        break;
      }
      break;
    }
  }
}
void GaussFilter::drive_i_rgb_busy(){
  i_rgb_busy = (sc_uint<1> ) (((/*imp*/sc_uint<1> ) 
               GaussFilter_gen_busy_r_4_50_out1.read().range(2,2)));
}
// resource: GaussFilter_gen_busy_r_4  instance: GaussFilter_gen_busy_r_4_50
void GaussFilter::GaussFilter_gen_busy_r_4_50_p8(){
  GaussFilter_gen_busy_r_4_50_out1 = (sc_uint<3> ) (( (sc_biguint<3> )(sc_bv<3>)
                                     ((sc_bv<1>)(
                                     GaussFilter_gen_busy_r_4_50_gnew_req.read()
                                     ), 
                                     (sc_bv<2>)(( (sc_biguint<2> )(sc_bv<2>)(
                                     (sc_bv<1>)(GaussFilter_gen_busy_r_4_50_gdiv
                                     .read()), 
                                     (sc_bv<1>)(GaussFilter_gen_busy_r_4_50_gen_busy_i_rgb_m_data_is_invalid_next
                                     .read())) ))) ));
}
// resource: GaussFilter_gen_busy_r_4  instance: GaussFilter_gen_busy_r_4_50
void GaussFilter::GaussFilter_gen_busy_r_4_50_p7(){
  GaussFilter_gen_busy_r_4_50_gen_busy_i_rgb_m_data_is_invalid_next = ~(sc_uint<1>)GaussFilter_gen_busy_r_4_50_gdiv
                                                                      .read();
}
// resource: GaussFilter_gen_busy_r_4  instance: GaussFilter_gen_busy_r_4_50
void GaussFilter::GaussFilter_gen_busy_r_4_50_p6(){
  GaussFilter_gen_busy_r_4_50_gdiv = (sc_uint<1> ) (i_rgb_vld.read() & !
                                     GaussFilter_gen_busy_r_4_50_gnew_req.read()
                                     );
}
// resource: GaussFilter_gen_busy_r_4  instance: GaussFilter_gen_busy_r_4_50
void GaussFilter::GaussFilter_gen_busy_r_4_50_p5(){
  GaussFilter_gen_busy_r_4_50_gnew_req = (sc_uint<1> ) (i_rgb_m_busy_req_0
                                         .read() & ( i_rgb_m_unvalidated_req
                                         .read() | (sc_uint<1> )i_rgb_vld.read()
                                          ));
}
// resource: regr_ss_1
void GaussFilter::drive_i_rgb_m_unvalidated_req(){
  if ( (i_rst.read() == 0ULL) ) {
    i_rgb_m_unvalidated_req = 1ULL;
  } else {
    i_rgb_m_unvalidated_req = (sc_uint<1> ) (GaussFilter_N_Muxb_1_2_3_4_4_out1
                              .read());
  }
}
// resource: GaussFilter_N_Muxb_1_2_3_4
void GaussFilter::GaussFilter_N_Muxb_1_2_3_4_4(){
  if ( i_rgb_m_busy_req_0.read() ) {
    GaussFilter_N_Muxb_1_2_3_4_4_out1 = (sc_uint<1> ) (i_rgb_m_unvalidated_req
                                        .read());
  } else {
    GaussFilter_N_Muxb_1_2_3_4_4_out1 = (sc_uint<1> ) (i_rgb_vld.read());
  }
}
void GaussFilter::drive_o_rgb_vld(){
  o_rgb_vld = (sc_uint<1> ) (GaussFilter_Or_1Ux1U_1U_4_2_out1.read());
}
// resource: GaussFilter_Or_1Ux1U_1U_4  instance: GaussFilter_Or_1Ux1U_1U_4_2
void GaussFilter::GaussFilter_Or_1Ux1U_1U_4_2(){
  GaussFilter_Or_1Ux1U_1U_4_2_out1 = (sc_uint<1> ) (o_rgb_m_unacked_req.read()
                                      | (sc_uint<1>)
                                     GaussFilter_Xor_1Ux1U_1U_1_1_out1.read());
}
// resource: regr_sc_1
void GaussFilter::drive_o_rgb_m_unacked_req(){
  if ( (i_rst.read() == 0ULL) ) {
    o_rgb_m_unacked_req = 0ULL;
  } else {
    o_rgb_m_unacked_req = (sc_uint<1> ) (GaussFilter_And_1Ux1U_1U_4_48_out1
                          .read());
  }
}
// resource: GaussFilter_And_1Ux1U_1U_4  instance: GaussFilter_And_1Ux1U_1U_4_48
void GaussFilter::GaussFilter_And_1Ux1U_1U_4_48(){
  GaussFilter_And_1Ux1U_1U_4_48_out1 = o_rgb_busy.read() & o_rgb_vld.read();
}
// resource: GaussFilter_Xor_1Ux1U_1U_1  instance: GaussFilter_Xor_1Ux1U_1U_1_1
void GaussFilter::GaussFilter_Xor_1Ux1U_1U_1_1(){
  GaussFilter_Xor_1Ux1U_1U_1_1_out1 = (sc_uint<1> ) (o_rgb_m_req_m_trig_req
                                      .read() ^ o_rgb_m_req_m_prev_trig_req
                                      .read());
}
// resource: regr_sc_1
void GaussFilter::drive_o_rgb_m_req_m_prev_trig_req(){
  if ( (i_rst.read() == 0ULL) ) {
    o_rgb_m_req_m_prev_trig_req = 0ULL;
  } else {
    o_rgb_m_req_m_prev_trig_req = o_rgb_m_req_m_trig_req.read();
  }
}
// resource: GaussFilter_Not_1U_1U_1  instance: GaussFilter_Not_1U_1U_1_3
void GaussFilter::GaussFilter_Not_1U_1U_1_3(){
  GaussFilter_Not_1U_1U_1_3_out1 = !o_rgb_m_req_m_trig_req.read();
}