FROM alpine:3.9

#UPDATE
RUN apk update --no-cache

#DHCP
RUN apk add dhclient

#SNMPD
COPY archives/snmpd-patches /tmp/
RUN apk add  \
    curl \
    libressl \
    perl \
    perl-net-snmp \
    tzdata \
    zlib \
  && apk add -t build-dependencies \
    build-base \
    file \
    grep \
    perl-dev \
    libressl-dev \
    linux-headers \
    zlib-dev \
  && cd /tmp \
  && curl -L http://downloads.sourceforge.net/project/net-snmp/net-snmp/5.7.3/net-snmp-5.7.3.tar.gz -o net-snmp-5.7.3.tar.gz \
  && tar zxf net-snmp-5.7.3.tar.gz \
  && cd net-snmp-5.7.3 \
  && patch -p1 < ../netsnmp-swinst-crash.patch \
  && patch -p1 < ../fix-includes.patch \
  && patch -p1 < ../CVE-2015-5621.patch \
  && patch -p1 < ../remove-U64-typedef.patch \
  && patch -p1 < ../fix-Makefile-PL.patch \
  && echo "Replace /dev with /rootfs/dev in:" \
  && grep -lr '"/dev' agent/* | while read line; do echo "  - $line" && sed -i 's@"/dev@"/rootfs/dev@g' $line; done \
  && grep -lr '"/dev' apps/* | while read line; do echo "  - $line" && sed -i 's@"/dev@"/rootfs/dev@g' $line; done \
  && grep -lr '"/dev' snmplib/* | while read line; do echo "  - $line" && sed -i 's@"/dev@"/rootfs/dev@g' $line; done \
  && echo "Replace /etc with /rootfs/etc in:" \
  && grep -lr '"/etc' agent/* | while read line; do echo "  - $line" && sed -i 's@"/etc@"/rootfs/etc@g' $line; done \
  && grep -lr '"/etc' apps/* | while read line; do echo "  - $line" && sed -i 's@"/etc@"/rootfs/etc@g' $line; done \
  && grep -lr '"/etc' snmplib/* | while read line; do echo "  - $line" && sed -i 's@"/etc@"/rootfs/etc@g' $line; done \
  && echo "Replace /proc with /rootfs/proc in:" \
  && grep -lr '"/proc' agent/* | while read line; do echo "  - $line" && sed -i 's@"/proc@"/rootfs/proc@g' $line; done \
  && grep -lr '"/proc' apps/* | while read line; do echo "  - $line" && sed -i 's@"/proc@"/rootfs/proc@g' $line; done \
  && grep -lr '"/proc' snmplib/* | while read line; do echo "  - $line" && sed -i 's@"/proc@"/rootfs/proc@g' $line; done \
  && echo "Replace /sys with /rootfs/sys in:" \
  && grep -lr '"/sys' agent/* | while read line; do echo "  - $line" && sed -i 's@"/sys@"/rootfs/sys@g' $line; done \
  && grep -lr '"/sys' apps/* | while read line; do echo "  - $line" && sed -i 's@"/sys@"/rootfs/sys@g' $line; done \
  && grep -lr '"/sys' snmplib/* | while read line; do echo "  - $line" && sed -i 's@"/sys@"/rootfs/sys@g' $line; done \
  && ./configure --prefix=/usr/local --disable-ipv6 --with-defaults \
  && make \
  && make install \
  && ln -s /usr/local/net-snmp/bin/* /usr/local/bin/ 
COPY archives/snmpd.conf /etc/
EXPOSE 161/udp

#LLDP
RUN cd /tmp && \
  curl -L http://media.luffy.cx/files/lldpd/lldpd-1.0.3.tar.gz -o lldpd-1.0.3.tar.gz && \
  tar zxf lldpd-1.0.3.tar.gz && \
  cd lldpd-1.0.3 && \
  mkdir build && \
  cd build && \
  ../configure --with-snmp --with-privsep-user=root --with-privsep-group=root --localstatedir=/var --sysconfdir=/etc && \
  make && \
  make install

#BASIC
RUN apk add vim

# OpenvSwitch
RUN apk add openvswitch 


#Cleanup
RUN apk del build-dependencies \
  && rm -rf /tmp/* /var/cache/apk/*

VOLUME /etc/openvswitch/

ADD scripts/boot.sh /bin/boot.sh

ADD archives/sysctl.conf /etc/sysctl.conf

CMD /bin/sh /bin/boot.sh