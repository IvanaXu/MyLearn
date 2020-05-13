quietly set ACTELLIBNAME proasic3
quietly set PROJECT_DIR "D:/Actelprj/TRY/5932_ lights"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "D:/Actel/Libero_v9.1/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -work presynth "${PROJECT_DIR}/hdl/lights.v"
vlog -work presynth "${PROJECT_DIR}/component/work/XYF/XYF.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -work presynth "${PROJECT_DIR}/stimulus/textbench.v"

vsim -L proasic3 -L presynth  -t 1ps presynth.testbench
add wave /testbench/*
run 1000ns
