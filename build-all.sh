#Generate Docker Images
cp templates/spring-boot-node/Dockerfile ../sonar/sonar-dashboard
mvn dockerfile:build -pl sonar-dashboard -f ../sonar/pom.xml

#Clean Unused Images and Containers
docker system prune -f
