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
* This file is used to wrap the three different versions of the DUT
* block called "GaussFilter". By default, it will include the behavioral
* model. Otherwise, it will include the RTL C++ or the RTL Verilog
* depending on the definition of either of "RTL" or "COSIM".
*
****************************************************************************/


#include	"GaussFilter_sc_wrap.h"
#include	"GaussFilter_sc_foreign.h"

// The following threads are used to connect structured ports to the actual
// RTL ports

void GaussFilter_wrapper::InitInstances(  )
{
	
            
    GaussFilter0 = new GaussFilter( "GaussFilter" );

    GaussFilter0->i_clk(i_clk);
    GaussFilter0->i_rst(i_rst);
    GaussFilter0->i_rgb_busy(i_rgb.busy);
    GaussFilter0->i_rgb_vld(i_rgb.vld);
    GaussFilter0->i_rgb_data(i_rgb.data);
    GaussFilter0->o_rgb_busy(o_rgb.busy);
    GaussFilter0->o_rgb_vld(o_rgb.vld);
    GaussFilter0->o_rgb_data(o_rgb.data);

}

void GaussFilter_wrapper::InitThreads()
{
    
}

void GaussFilter_wrapper::DeleteInstances()
{
    if (GaussFilter0)
    {
        delete GaussFilter0;
        GaussFilter0 = 0;
    }
}

