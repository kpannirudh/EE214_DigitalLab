transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {G:/My Drive/Insti Material/03. Sem 3/01. EE214/01. Experiments/02. Experiment 02 - Encoders/02.3 EighttoThreeEnc/Gates.vhdl}
vcom -93 -work work {G:/My Drive/Insti Material/03. Sem 3/01. EE214/01. Experiments/02. Experiment 02 - Encoders/02.3 EighttoThreeEnc/DUT.vhdl}
vcom -93 -work work {G:/My Drive/Insti Material/03. Sem 3/01. EE214/01. Experiments/02. Experiment 02 - Encoders/02.3 EighttoThreeEnc/EighttoThreeEnc.vhdl}

vcom -93 -work work {G:/My Drive/Insti Material/03. Sem 3/01. EE214/01. Experiments/02. Experiment 02 - Encoders/02.3 EighttoThreeEnc/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
