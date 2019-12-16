FROM alpine:3.9

#UPDATE
RUN apk update --no-cache

#INSTALL bind
RUN apk --update add bind

EXPOSE 53

#Cleanup
RUN apk del build-dependencies \
  && rm -rf /tmp/* /var/cache/apk/*

VOLUME /etc/bind/

ADD archives/* /etc/bind/

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
