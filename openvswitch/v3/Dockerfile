FROM alpine:3.9

#https://pkgs.alpinelinux.org/
RUN apk update && \
apk add openvswitch && \
apk add dhclient vim open-lldp net-snmp net-snmp-tools && \
rm -rf /var/cache/apk/*

VOLUME /etc/openvswitch/

ADD scripts/boot.sh /bin/boot.sh

CMD /bin/sh /bin/boot.sh