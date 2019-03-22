tar -zcvf files/sonar-source.tar.gz ../../../sources
#tar -zcvf files/maven-data.tar.gz --directory=${HOME} .m2
#docker build -f Dockerfile -t meharsonar/sonar-dev-node --build-arg http_proxy=http://200.131.199.26:3128 .
docker build -f Dockerfile -t meharsonar/sonar-dev-node .