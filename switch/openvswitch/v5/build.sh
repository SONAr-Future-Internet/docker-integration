#Build without proxy
docker build -f Dockerfile -t meharsonar/openvswitchv5 .

#Build with proxy
#docker build -f Dockerfile -t meharsonar/openvswitch:v5 --build-arg http_proxy=http://200.131.199.26:3128 --build-arg https_proxy=http://200.131.199.26:3128 .
