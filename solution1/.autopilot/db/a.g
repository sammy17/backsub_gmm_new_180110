#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/zynq-fyp/Desktop/maxi_latest/backsub_gmm_new_180110/solution1/.autopilot/db/a.g.bc ${1+"$@"}
