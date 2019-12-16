#!/bin/sh

#Cleanup for experiments
rm -rf /var/run/openvswitch
rm -rf /etc/openvswitch/conf.db

if [ ! -d "/var/run/openvswitch" ]
then
  time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" mkdir /var/run/openvswitch
fi

if [ ! -f "/etc/openvswitch/conf.db" ]
then
  time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" ovsdb-tool create /etc/openvswitch/conf.db /usr/share/openvswitch/vswitch.ovsschema

  time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" ovsdb-server --detach --remote=punix:/var/run/openvswitch/db.sock --remote=ptcp:6640
  time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" ovs-vswitchd --detach --pidfile=/var/run/openvswitch/ovs-vswitchd.pid --log-file=/var/log/ovs-vswitchd.log
  time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" ovs-vsctl --no-wait init

  time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" ovs-vsctl add-br br0
  #time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" ovs-vsctl set bridge br0 stp_enable=true

  x=0
  until [ $x = "16" ]; do
    time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" ovs-vsctl add-port br0 eth$x
    #time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" ovs-vsctl set Interface eth$x lldp:enable=true
    x=$((x+1))
  done
fi

time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" ip link set dev br0 up

time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" dhclient br0

time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" snmpd -c /etc/snmpd.conf
time -a -o /tmp/time.info -f "`hostname`;%C;%e;%P" lldpd -x

#Cleanup for experiments
ovs-vsctl del-controller br0
ovs-vsctl set bridge br0 protocols=[]

/bin/sh
