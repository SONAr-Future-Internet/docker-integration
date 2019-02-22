#Bridge Creation
ovs-vsctl add-br br0
ovs-vsctl set bridge br0 datapath_type=netdev
until [ $x = "16" ]; do
    ovs-vsctl add-port br0 eth$x
    ovs-vsctl set Interface eth$x lldp:enable=true
    x=$((x+1))
done

#Enabling Openflow
ovs-vsctl set bridge br0 protocols=OpenFlow10,OpenFlow11,OpenFlow12,OpenFlow13