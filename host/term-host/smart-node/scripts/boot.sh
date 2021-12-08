#!/bin/sh

#dhclient et0
snmpd -c /etc/snmpd.conf
lldpd -x
zabbix-agentd

/bin/sh
