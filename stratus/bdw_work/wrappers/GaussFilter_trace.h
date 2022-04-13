	if ( esc_trace_is_enabled( esc_trace_vcd ) ) {
		if ( GaussFilter0 != NULL ) {
			esc_trace_signal( &GaussFilter0->i_clk, ( std::string(name()) + std::string( ".GaussFilter.i_clk" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GaussFilter0->i_rst, ( std::string(name()) + std::string( ".GaussFilter.i_rst" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GaussFilter0->i_rgb.busy, ( std::string(name()) + std::string( ".GaussFilter.i_rgb.busy" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GaussFilter0->i_rgb.vld, ( std::string(name()) + std::string( ".GaussFilter.i_rgb.vld" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GaussFilter0->i_rgb.data, ( std::string(name()) + std::string( ".GaussFilter.i_rgb.data" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GaussFilter0->o_rgb.busy, ( std::string(name()) + std::string( ".GaussFilter.o_rgb.busy" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GaussFilter0->o_rgb.vld, ( std::string(name()) + std::string( ".GaussFilter.o_rgb.vld" ) ).c_str(), esc_trace_vcd );
			esc_trace_signal( &GaussFilter0->o_rgb.data, ( std::string(name()) + std::string( ".GaussFilter.o_rgb.data" ) ).c_str(), esc_trace_vcd );
		}
	}
	if ( esc_trace_is_enabled( esc_trace_fsdb ) ) {
		if ( GaussFilter0 != NULL ) {
			esc_trace_signal( &GaussFilter0->i_clk, ( std::string(name()) + std::string( ".GaussFilter.i_clk" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GaussFilter0->i_rst, ( std::string(name()) + std::string( ".GaussFilter.i_rst" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GaussFilter0->i_rgb.busy, ( std::string(name()) + std::string( ".GaussFilter.i_rgb.busy" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GaussFilter0->i_rgb.vld, ( std::string(name()) + std::string( ".GaussFilter.i_rgb.vld" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GaussFilter0->i_rgb.data, ( std::string(name()) + std::string( ".GaussFilter.i_rgb.data" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GaussFilter0->o_rgb.busy, ( std::string(name()) + std::string( ".GaussFilter.o_rgb.busy" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GaussFilter0->o_rgb.vld, ( std::string(name()) + std::string( ".GaussFilter.o_rgb.vld" ) ).c_str(), esc_trace_fsdb );
			esc_trace_signal( &GaussFilter0->o_rgb.data, ( std::string(name()) + std::string( ".GaussFilter.o_rgb.data" ) ).c_str(), esc_trace_fsdb );
		}
	}
