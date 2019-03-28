FROM ubuntu:18.10

MAINTAINER Mauricio Amaral Gonçalves <mauricioamaralg@ufu.br>

ADD files/apt.conf /etc/apt/apt.conf

RUN apt-get update && apt-get install -y --no-install-recommends \
		openvswitch-switch vim lldpd snmpd isc-dhcp-client net-tools\
	&& rm -rf /var/lib/apt/lists/*

VOLUME /etc/openvswitch/

ADD scripts/boot.sh /bin/boot.sh

CMD /bin/sh /bin/boot.sh