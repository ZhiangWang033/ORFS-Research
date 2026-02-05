set C_SCALE 0.001    
set R_SCALE 1.0

proc sc {x s} { expr {$x * $s} }

set_layer_rc -layer MET1 -resistance [sc 5.4286e-03 $R_SCALE] -capacitance [sc 7.41819e-02 $C_SCALE]
set_layer_rc -layer MET2 -resistance [sc 3.5714e-03 $R_SCALE] -capacitance [sc 6.74606e-02 $C_SCALE]
set_layer_rc -layer MET3 -resistance [sc 3.5714e-03 $R_SCALE] -capacitance [sc 8.88758e-02 $C_SCALE]
set_layer_rc -layer MET4 -resistance [sc 1.5000e-03 $R_SCALE] -capacitance [sc 1.07121e-01 $C_SCALE]
set_layer_rc -layer MET5 -resistance [sc 1.5000e-03 $R_SCALE] -capacitance [sc 1.08964e-01 $C_SCALE]

set_wire_rc -signal -layer MET3
set_wire_rc -clock  -layer MET5

