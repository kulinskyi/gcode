;Sliced at: {day} {date} {time}
G21        ;metric values
G90        ;absolute positioning
M82        ;set extruder to absolute mode
M107       ;start with the fan off

G28 X0 Y0  ;move X/Y to min endstops

G32

G1 Z5
G1 X110 Y60 F3600
G30 Z0.4
G1 Z5

G0 X0 Y15 F9000 ; Go to front
G0 Z0.15 ; Drop to bed
G92 E0 ; zero the extruded length
G1 X40 E25 F500 ; Extrude 25mm of filament in a 4cm line
G92 E0 ; zero the extruded length
G1 E-1 F500 ; Retract a little
G1 X80 F4000 ; Quickly wipe away from the filament line
G1 Z0.3 ; Raise and begin printing.