ghdl -a dff.vhd
ghdl -a traffic_control.vhd
ghdl -a traffic_control_tb.vhd
ghdl -e traffic_control_tb
ghdl -r traffic_control_tb --stop-time=200ns --wave=traffic_control_tb.ghw
gtkwave traffic_control_tb.ghw
