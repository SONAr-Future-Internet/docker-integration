docker build -f Dockerfile -t meharsonar/dev-node-gui .

#With Proxy
#docker build -f Dockerfile -t meharsonar/dev-node-gui --build-arg http_proxy=http://200.131.199.26:3128 .