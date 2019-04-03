FROM onosproject/onos

# Ports
# 6653 - OpenFlow
# 6640 - OVSDB
# 8181 - GUI - path: '/onos/ui', user: 'onos' and password 'rocks'
# 8101 - ONOS CLI
# 9876 - ONOS intra-cluster communication
EXPOSE 6653 6640 8181 8101 9876


# Get ready to run command
ENTRYPOINT ["./bin/onos-service"]
CMD ["server"]