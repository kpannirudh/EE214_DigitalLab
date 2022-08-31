transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Projects/01. EE214 Quartus/03. Experiment 01/Gates.vhdl}
vcom -93 -work work {C:/Projects/01. EE214 Quartus/03. Experiment 01/DUT.vhdl}
vcom -93 -work work {C:/Projects/01. EE214 Quartus/03. Experiment 01/FULL_ADDER.vhdl}

vcom -93 -work work {C:/Projects/01. EE214 Quartus/03. Experiment 01/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
