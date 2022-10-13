transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {G:/My Drive/Insti Material/03. Sem 3/01. EE214/EE214_DigitalLab/01. Experiments/09. Experiment 09 - Clock Divider/09.1 ClockDiv/clock_divider.vhdl}

vcom -93 -work work {G:/My Drive/Insti Material/03. Sem 3/01. EE214/EE214_DigitalLab/01. Experiments/09. Experiment 09 - Clock Divider/09.1 ClockDiv/clock_divider_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  clock_divider_tb

add wave *
view structure
view signals
run -all
