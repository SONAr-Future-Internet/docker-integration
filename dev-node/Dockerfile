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