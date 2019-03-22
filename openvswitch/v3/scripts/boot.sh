#!/bin/sh

if [ ! -d "/var/run/openvswitch" ]
then
  mkdir /var/run/openvswitch
fi

if [ ! -f "/etc/openvswitch/conf.db" ]
then
  ovsdb-tool create /etc/openvswitch/conf.db /usr/share/openvswitch/vswitch.ovsschema

  ovsdb-server --detach --remote=punix:/var/run/openvswitch/db.sock
  ovs-vswitchd --detach --pidfile=/var/run/openvswitch/ovs-vswitchd.pid 
  ovs-vsctl --no-wait init

  ovs-vsctl add-br br0
  #ovs-vsctl set bridge br0 stp_enable=true

  x=0
  until [ $x = "16" ]; do
    ovs-vsctl add-port br0 eth$x
    ovs-vsctl set Interface eth$x lldp:enable=true
    x=$((x+1))
  done

else
  ovsdb-server --detach --remote=punix:/var/run/openvswitch/db.sock
  ovs-vswitchd --detach --pidfile=/var/run/openvswitch/ovs-vswitchd.pid
fi

ip link set dev br0 up

dhclient br0

/bin/sh
