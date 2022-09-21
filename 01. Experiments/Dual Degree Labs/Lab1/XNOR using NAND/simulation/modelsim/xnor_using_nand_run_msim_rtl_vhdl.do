transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab1/XNOR using NAND/Gates.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab1/XNOR using NAND/DUT.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab1/XNOR using NAND/xnor_using_nand.vhdl}

vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab1/XNOR using NAND/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
