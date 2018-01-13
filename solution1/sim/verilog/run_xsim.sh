
xelab xil_defaultlib.apatb_bgsub_top -prj bgsub.prj --lib "ieee_proposed=./ieee_proposed" -s bgsub -debug wave
xsim --noieeewarnings bgsub -tclbatch bgsub.tcl

