transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {G:/My Drive/Insti Material/03. Sem 3/01. EE214/EE214_DigitalLab/01. Experiments/06. Experiment 07 - Sequence Generator/07.1 SeqGen/SeqGen.vhdl}
vcom -93 -work work {G:/My Drive/Insti Material/03. Sem 3/01. EE214/EE214_DigitalLab/01. Experiments/06. Experiment 07 - Sequence Generator/07.1 SeqGen/DUT.vhdl}

vcom -93 -work work {G:/My Drive/Insti Material/03. Sem 3/01. EE214/EE214_DigitalLab/01. Experiments/06. Experiment 07 - Sequence Generator/07.1 SeqGen/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
