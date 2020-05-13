quietly set ACTELLIBNAME proasic3
quietly set PROJECT_DIR "D:/Actelprj/5932/5932_74HC02"

if {[file exists ../designer/impl1/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/impl1/simulation/postlayout already exists"
} else {
   vlib ../designer/impl1/simulation/postlayout
}
vmap postlayout ../designer/impl1/simulation/postlayout
vmap proasic3 "D:/Actel/Libero_v9.1/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -work postlayout "${PROJECT_DIR}/designer/impl1/HC02_ba.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -work postlayout "${PROJECT_DIR}/stimulus/testbench02.v"

vsim -L proasic3 -L postlayout  -t 1ps -sdfmax /u1=${PROJECT_DIR}/designer/impl1/HC02_ba.sdf postlayout.testbench
add wave /testbench/*
run 80ns
