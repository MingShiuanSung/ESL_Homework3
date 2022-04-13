#include <cmath>
#ifndef NATIVE_SYSTEMC
#include "stratus_hls.h"
#endif

#include "GaussFilter.h"

GaussFilter::GaussFilter( sc_module_name n ): sc_module( n )
{
	SC_THREAD( do_filter );
	sensitive << i_clk.pos();
	dont_initialize();
	reset_signal_is(i_rst, false);
        
#ifndef NATIVE_SYSTEMC
	i_rgb.clk_rst(i_clk, i_rst);
  	o_rgb.clk_rst(i_clk, i_rst);
#endif
}

GaussFilter::~GaussFilter() {}

// sobel mask
const int mask[MASK_X][MASK_Y] = { {1, 2, 1}, {2, 4, 2}, {1, 2, 1} };

void GaussFilter::do_filter() {
	{
#ifndef NATIVE_SYSTEMC
		HLS_DEFINE_PROTOCOL("main_reset");
		i_rgb.reset();
		o_rgb.reset();
#endif
		wait();
	}
	while (true) {
		red = 0;
		green = 0;
		blue = 0;
		for (unsigned int v = 0; v < MASK_Y; ++v) {
			for (unsigned int u = 0; u < MASK_X; ++u) {
				#if defined (II)
      				HLS_PIPELINE_LOOP(SOFT_STALL, II, "Loop" );
				#endif

				#ifdef UNROLL
					HLS_UNROLL_LOOP( ALL, "Unroll" );
				#endif

				sc_dt::sc_uint<24> rgb;
#ifndef NATIVE_SYSTEMC
				{
					HLS_DEFINE_PROTOCOL("input");
					rgb = i_rgb.get();
					wait();
				}
#else
				rgb = i_rgb.read();
#endif
				red += rgb.range(7,0) * mask[u][v];
				green += rgb.range(15,8) * mask[u][v];
				blue += rgb.range(23, 16) * mask[u][v];
			}
		}
		sc_dt::sc_uint<24> rgb;
		rgb.range(7, 0) = std::min(std::max(int(red / 16), 0), 255);
		rgb.range(15, 8) = std::min(std::max(int(green / 16), 0), 255);
		rgb.range(23, 16) = std::min(std::max(int(blue / 16), 0), 255);

#ifndef NATIVE_SYSTEMC
		{
			HLS_DEFINE_PROTOCOL("output");
			o_rgb.put(rgb);
			wait();
		}
#else
		o_rgb.write(rgb);
#endif
	}
}
