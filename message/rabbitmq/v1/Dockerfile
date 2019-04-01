FROM rabbitmq:3.8-rc

# 4369: epmd, a peer discovery service used by RabbitMQ nodes and CLI tools
# 5671, 5672: used by AMQP 0-9-1 and 1.0 clients without and with TLS
# 25672: used by Erlang distribution for inter-node and CLI tools communication and is allocated from a dynamic range (limited to a single port by default, computed as AMQP port + 20000).
EXPOSE 4369 5671 5672 25672
CMD ["rabbitmq-server"]