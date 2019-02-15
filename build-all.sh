#Generate Docker Images
cp templates/spring-boot-node/Dockerfile ../sonar/sonar-dashboard
mvn clean package dockerfile:build -pl sonar-dashboard -f ../sonar/pom.xml
rm ../sonar/sonar-dashboard/Dockerfile

#Clean Unused Images and Containers
docker system prune -f
