transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab4/Gates.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab4/DUT.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab4/full_adder.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab4/bit4_add_sub.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab4/num_sub.vhdl}

vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab4/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
