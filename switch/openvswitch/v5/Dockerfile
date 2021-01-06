FROM alpine:3.9

#UPDATE
RUN apk update --no-cache

#DHCP
RUN apk add dhclient

#SNMPD
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
  && curl -L http://downloads.sourceforge.net/project/net-snmp/net-snmp/5.9/net-snmp-5.9.tar.gz -o net-snmp-5.9.tar.gz \
  && tar zxf net-snmp-5.9.tar.gz \
  && cd net-snmp-5.9 \
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
