quietly set ACTELLIBNAME proasic3
quietly set PROJECT_DIR "D:/Actelprj/1231/5932_00_153_194"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   vlib postsynth
}
vmap postsynth postsynth
vmap proasic3 "D:/Actel/Libero_v9.1/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -work postsynth "${PROJECT_DIR}/synthesis/XYF.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -work postsynth "${PROJECT_DIR}/stimulus/testbench.v"

vsim -L proasic3 -L postsynth  -t 1ps postsynth.testbench
add wave /testbench/*
run 500ns
