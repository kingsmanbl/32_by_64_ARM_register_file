onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /regdemo/ReadRegister1
add wave -noupdate -radix unsigned /regdemo/ReadRegister2
add wave -noupdate -radix unsigned /regdemo/WriteRegister
add wave -noupdate -radix unsigned /regdemo/WriteData
add wave -noupdate -radix unsigned /regdemo/RegWrite
add wave -noupdate -radix unsigned /regdemo/clk
add wave -noupdate -radix unsigned /regdemo/ReadData1
add wave -noupdate -radix unsigned /regdemo/ReadData2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {66125421110 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 169
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {65787295 ns} {66613288783 ps}
