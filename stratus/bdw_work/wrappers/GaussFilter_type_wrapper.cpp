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
* This file contains the GaussFilter_type_wrapper module
* for use in the verilog verification wrapper GaussFilter_vlwrapper.v
* It creats an instance of the GaussFilter module and has threads
* for converting the BEH ports to RTL level ports on the wrapper.
*
****************************************************************************/

#include "GaussFilter_type_wrapper.h"


SC_MODULE_EXPORT(GaussFilter_type_wrapper)

// The following threads are used to connect RTL ports to the actual
// structured ports

void GaussFilter_type_wrapper::InitInstances()
{
    GaussFilter0 = new GaussFilter( "GaussFilter" );

    GaussFilter0->i_clk(i_clk);
    GaussFilter0->i_rst(i_rst);
    GaussFilter0->i_rgb.busy(i_rgb_busy);
    GaussFilter0->i_rgb.vld(i_rgb_vld);
    GaussFilter0->i_rgb.data(i_rgb_data);
    GaussFilter0->o_rgb.busy(o_rgb_busy);
    GaussFilter0->o_rgb.vld(o_rgb_vld);
    GaussFilter0->o_rgb.data(o_rgb_data);

}

void GaussFilter_type_wrapper::InitThreads()
{
    
}

void GaussFilter_type_wrapper::DeleteInstances()
{
        delete GaussFilter0;
        GaussFilter0 = 0;
}

