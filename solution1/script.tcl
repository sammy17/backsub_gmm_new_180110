############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project backsub_gmm_new_180110
set_top bgsub
add_files backsub_gmm_new_180110/core.cpp
add_files backsub_gmm_new_180110/core.h
add_files -tb backsub_gmm_new_180110/cut_out.avi
add_files -tb backsub_gmm_new_180110/output.avi
add_files -tb backsub_gmm_new_180110/test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./backsub_gmm_new_180110/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
