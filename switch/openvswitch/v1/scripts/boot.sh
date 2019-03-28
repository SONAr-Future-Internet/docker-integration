#!/bin/sh
#
# Copyright (C) 2015 GNS3 Technologies Inc.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


if [ ! -f "/etc/openvswitch/conf.db" ]
then
  ovsdb-tool create /etc/openvswitch/conf.db /usr/share/openvswitch/vswitch.ovsschema

  ovsdb-server --detach --remote=punix:/var/run/openvswitch/db.sock
  ovs-vswitchd --detach --pidfile=/var/run/openvswitch/ovs-vswitchd.pid 
  ovs-vsctl --no-wait init

  ovs-vsctl add-br br0
  ovs-vsctl set bridge br0 stp_enable=true

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
