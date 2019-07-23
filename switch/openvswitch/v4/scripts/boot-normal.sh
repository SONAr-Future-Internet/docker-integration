#!/bin/sh

if [ ! -d "/var/run/openvswitch" ]
then
  mkdir /var/run/openvswitch
fi

if [ ! -f "/etc/openvswitch/conf.db" ]
then
  ovsdb-tool create /etc/openvswitch/conf.db /usr/share/openvswitch/vswitch.ovsschema

  ovsdb-server --detach --remote=punix:/var/run/openvswitch/db.sock --remote=ptcp:6640
  ovs-vswitchd --detach --pidfile=/var/run/openvswitch/ovs-vswitchd.pid 
  ovs-vsctl --no-wait init

  ovs-vsctl add-br br0
  #ovs-vsctl set bridge br0 stp_enable=true

  x=0
  until [ $x = "16" ]; do
    ovs-vsctl add-port br0 eth$x
    # ovs-vsctl set Interface eth$x lldp:enable=true
    x=$((x+1))
  done

else
  ovsdb-server --detach --remote=punix:/var/run/openvswitch/db.sock --remote=ptcp:6640
  ovs-vswitchd --detach --pidfile=/var/run/openvswitch/ovs-vswitchd.pid

  #Cleanup
  controller=`ovs-vsctl get-controller br0 | cut -d':' -f2`
  if [ ! -z $controller ] 
  then
    controllerFlowLines=`ovs-ofctl dump-flows br0 | grep $controller`
    if [ -z $controllerFlowLines ]
    then
      #ovs-vsctl set bridge br0 stp_enable=true
      ovs-vsctl del-controller br0 
      ovs-vsctl set bridge br0 protocols=[]
    fi
  fi

fi

ip link set dev br0 up

dhclient br0

snmpd -c /etc/snmpd.conf
lldpd -x

/bin/sh
