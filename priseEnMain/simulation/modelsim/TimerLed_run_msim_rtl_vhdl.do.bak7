transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Etudiant/Desktop/DBIBIH_OUSSAMA/CodesignCESI/priseEnMain/TimerLed.vhd}

vcom -93 -work work {C:/Users/Etudiant/Desktop/DBIBIH_OUSSAMA/CodesignCESI/priseEnMain/simulation/modelsim/TB_TimerLed.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  TB_TimerLed

add wave *
view structure
view signals
run 20 ns
