quietly set ACTELLIBNAME proasic3
quietly set PROJECT_DIR "D:/Actelprj/1401/5932_digi_disp"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   vlib postsynth
}
vmap postsynth postsynth
vmap proasic3 "D:/Actel/Libero_v9.1/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -work postsynth "${PROJECT_DIR}/synthesis/dymamic_led.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -work postsynth "${PROJECT_DIR}/stimulus/textbench.v"

vsim -L proasic3 -L postsynth  -t 1ps postsynth.testbench
add wave /testbench/*
run 1000ns
