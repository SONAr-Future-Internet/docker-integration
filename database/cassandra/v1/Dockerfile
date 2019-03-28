FROM alpine:3.9
#UPDATE
RUN apk update --no-cache

#Java and Python
RUN apk --update --no-cache add ca-certificates openjdk8 python && \
    rm -rf /tmp/* /var/cache/apk/*

#Cassandra
RUN wget --output-document - http://ftp.riken.jp/net/apache/cassandra/3.11.4/apache-cassandra-3.11.4-bin.tar.gz | tar zxvf - && \
    mv apache-cassandra-3.11.4 /opt && \
    mkdir /var/lib/cassandra /var/log/cassandra
EXPOSE 9042 700 7001 7199

CMD [ "/opt/apache-cassandra-3.11.4/bin/cassandra", "-Rf" ]