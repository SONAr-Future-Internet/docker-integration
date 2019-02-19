#Based on custom node
FROM meharsonar/dev-node

#Support
MAINTAINER Mauricio Amaral Gonçalves <mauricioamaralg@ufu.br>

# Install LXDE, VNC server, eclipse, wget, firefox
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y lxde-core lxterminal tightvncserver eclipse firefox wget && \
  rm -rf /var/lib/apt/lists/*

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y apt-transport-https ca-certificates && \
  rm -rf /var/lib/apt/lists/*

RUN wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - && \
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y sublime-text && \
  rm -rf /var/lib/apt/lists/*


#Run a module as example
RUN mvn eclipse:eclipse -f /root/sonar/pom.xml -pl sonar-dashboard
