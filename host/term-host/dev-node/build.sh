docker build -f Dockerfile -t meharsonar/dev-node `readlink -f ../..`

#With Proxy
#docker build -f Dockerfile -t meharsonar/dev-node --build-arg http_proxy=http://200.131.199.26:3128 `readlink -f ../..`