transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/PC/Desktop/CESI/CodesignCESI/EXO5/compteur_en.vhd}
vcom -93 -work work {C:/Users/PC/Desktop/CESI/CodesignCESI/EXO5/mae_go_20ms.vhd}
vcom -93 -work work {C:/Users/PC/Desktop/CESI/CodesignCESI/EXO5/exo5_top.vhd}

