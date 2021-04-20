# reset
set_fp_rail_constraints -remove_all_layers
remove_fp_virtual_pad -all              
set_fp_rail_strategy -reset             
set_fp_block_ring_constraints -remove_all
set_fp_rail_region_constraints  -remove 
# global constraints
set_fp_rail_constraints -set_global 

# layer constraints
set_fp_rail_constraints -add_layer  -layer METAL7 -direction horizontal -max_strap 10 -min_strap 5 -max_width 5.000000 -min_width 2.000000 -spacing interleaving 
set_fp_rail_constraints -add_layer  -layer METAL6 -direction vertical -max_strap 10 -min_strap 5 -max_width 5.000000 -min_width 2.000000 -spacing interleaving 

# ring and strap constraints
set_fp_rail_constraints  -set_ring -nets { VDD VSS } -horizontal_ring_layer { METAL7 } -vertical_ring_layer { METAL6 } -ring_width 2.000000 -extend_strap core_ring 

# strategies
set_fp_rail_strategy  -use_tluplus true 

# block ring constraints

# regions

# virtual pads
create_fp_virtual_pad -net VDD -point { 0.805000 500.454987 }
create_fp_virtual_pad -net VDD -point { 796.224976 497.234985 }
create_fp_virtual_pad -net VSS -point { 0.805000 430.415009 }
create_fp_virtual_pad -net VSS -point { 795.419983 421.559998 }
create_fp_virtual_pad -net VDD -point { 0.805000 349.100006 }
create_fp_virtual_pad -net VDD -point { 796.224976 345.880005 }
create_fp_virtual_pad -net VSS -point { 0.805000 225.119995 }
create_fp_virtual_pad -net VSS -point { 796.224976 213.039993 }

# synthesize_fp_rail 
synthesize_fp_rail -nets { VDD VSS } -voltage_supply 1.500000 -power_budget 100.000000   
