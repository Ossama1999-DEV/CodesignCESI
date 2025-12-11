onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_timerled/clk
add wave -noupdate /tb_timerled/clk_period
add wave -noupdate /tb_timerled/rst
add wave -noupdate -radix decimal /tb_timerled/led
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {500000140000 ps} 0} {{Cursor 2} {1000000120000 ps} 0} {{Cursor 3} {1499775810000 ps} 0} {{Cursor 4} {82282790000 ps} 0}
quietly wave cursor active 3
configure wave -namecolwidth 181
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 150
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {2100 ms}
