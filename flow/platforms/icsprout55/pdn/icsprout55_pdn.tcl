####################################
# global connections
####################################
add_global_connection -net {VDD} -inst_pattern {.*} -pin_pattern {^VDD$} -power
add_global_connection -net {VSS} -inst_pattern {.*} -pin_pattern {^VSS$} -ground
# Apply global-connection rules to the DB
global_connect

####################################
# voltage domains
####################################
set_voltage_domain -name {CORE} -power {VDD} -ground {VSS}

define_pdn_grid -name {grid} -voltage_domains {CORE} -pins {MET5}
add_pdn_stripe -grid {grid} -layer {MET1} \
  -width  {0.09} \
  -pitch  {0.20} \
  -offset {0.0} \
  -followpins
add_pdn_stripe -grid {grid} -layer {MET4} \
  -width   {0.40} \
  -spacing {0.40} \
  -pitch   {4.00} \
  -offset  {0.0}
add_pdn_stripe -grid {grid} -layer {MET5} \
  -width   {0.60} \
  -spacing {0.60} \
  -pitch   {20.0} \
  -offset  {0.0}
add_pdn_connect -grid {grid} -layers {MET1 MET4}
add_pdn_connect -grid {grid} -layers {MET4 MET5}