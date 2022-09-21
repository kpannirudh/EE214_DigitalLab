transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab5/uni_shift/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab5/uni_shift/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab5/uni_shift/TopLevel.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab5/uni_shift/Gates.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab5/uni_shift/DUT.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab5/uni_shift/mux.vhdl}
vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab5/uni_shift/uni_shift.vhdl}

vcom -93 -work work {C:/IITB 3rd Semester/EE214/Lab5/uni_shift/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
