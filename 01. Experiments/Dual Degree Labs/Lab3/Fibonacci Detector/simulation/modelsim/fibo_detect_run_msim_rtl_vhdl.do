transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab3/Fibonacci Detector/Gates.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab3/Fibonacci Detector/DUT.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab3/Fibonacci Detector/fibo_detect.vhdl}

vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab3/Fibonacci Detector/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
