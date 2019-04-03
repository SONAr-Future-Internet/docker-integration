#Build without proxy
#docker build -f Dockerfile -t meharsonar/onos .

#Build with proxy
docker build -f Dockerfile -t meharsonar/onos --build-arg http_proxy=http://200.131.199.26:3128 --build-arg https_proxy=http://200.131.199.26:3128 .