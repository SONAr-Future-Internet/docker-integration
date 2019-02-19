#Based on gns3/ubuntu:xenial basic apliance
FROM gns3/ubuntu:xenial

#Support
MAINTAINER Mauricio Amaral Gonçalves <mauricioamaralg@ufu.br>

#Run apt-get update + install openjdk-8-jre + clean apt/lists
RUN apt-get update && apt-get install -y --no-install-recommends \
		openjdk-8-jdk maven git vim \
	&& rm -rf /var/lib/apt/lists/*

#Set Default to UTF-8 file.encoding
ENV LANG C.UTF-8

#Copy settings
ADD ./docker/dev-node/settings.xml.ufu /root/.m2/settings.xml

#Copy source. Remember to 'git pull' the source.
ADD ./sonar /root/sonar

#Build and Install Code + Cretate maven repository
RUN mvn clean package install -f /root/sonar/pom.xml

RUN mvn dependency:resolve-plugins dependency:go-offline -f /root/sonar/pom.xml

#Run a module as example
RUN mvn spring-boot:start -f /root/sonar/pom.xml -pl sonar-dashboard

#Clean temporary files
RUN mvn clean -f /root/sonar/pom.xml