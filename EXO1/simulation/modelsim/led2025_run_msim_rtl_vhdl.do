transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Etudiant/Desktop/DBIBIH_OUSSAMA/CodesignCESI/compteur_en.vhd}
vcom -93 -work work {C:/Users/Etudiant/Desktop/DBIBIH_OUSSAMA/CodesignCESI/mae_go_20ms.vhd}
vcom -93 -work work {C:/Users/Etudiant/Desktop/DBIBIH_OUSSAMA/CodesignCESI/exo5_top.vhd}

