onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sum1bcc/A
add wave -noupdate /sum1bcc/B
add wave -noupdate /sum1bcc/Ci
add wave -noupdate /sum1bcc/Cout
add wave -noupdate /sum1bcc/S
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {779 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2074 ps}
