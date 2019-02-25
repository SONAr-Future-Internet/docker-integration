#https://github.com/GNS3/gns3-registry/blob/master/docker/openvswitch
FROM alpine:3.6

RUN apk update && \
apk add openvswitch && \
apk add dhclient vim open-lldp net-snmp && \
rm -rf /var/cache/apk/*

VOLUME /etc/openvswitch/

ADD scripts/boot.sh /bin/boot.sh

CMD /bin/sh /bin/boot.sh