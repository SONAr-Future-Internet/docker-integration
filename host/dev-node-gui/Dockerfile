#Based on gns3/ubuntu:xenial basic apliance
FROM gns3/webterm

#Support
MAINTAINER Mauricio Amaral Gonçalves <mauricioamaralg@ufu.br>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends git vim libxtst6 bzip2 && rm -rf /var/lib/apt/lists/*

#Install JDK
#ADD https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u202-b08/OpenJDK8U-jdk_x64_linux_hotspot_8u202b08.tar.gz /opt
COPY files/OpenJDK8U-jdk_x64_linux_hotspot_8u202b08.tar.gz /opt
RUN cd /opt && tar -xzvf OpenJDK8U-jdk_x64_linux_hotspot_8u202b08.tar.gz && rm OpenJDK8U-jdk_x64_linux_hotspot_8u202b08.tar.gz
RUN echo "\nPATH=\"$PATH:/opt/jdk8u202-b08/bin:/opt/jdk8u202-b08/db/bin:/opt/jdk8u202-b08/jre/bin\"\n\
J2SDKDIR=\"/opt/jdk8u202-b08\"\n\
J2REDIR=\"/opt/jdk8u202-b08/jre\"\n\
JAVA_HOME=\"/opt/jdk8u202-b08\"\n\
DERBY_HOME=\"/opt/jdk8u202-b08/db\"" >> /etc/environment && \
update-alternatives --install "/usr/bin/java" "java" "/opt/jdk8u202-b08/bin/java" 0 && \
update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk8u202-b08/bin/javac" 0 && \
update-alternatives --set java /opt/jdk8u202-b08/bin/java && \
update-alternatives --set javac /opt/jdk8u202-b08/bin/javac

#Install Maven
#ADD https://www-eu.apache.org/dist/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz /opt
COPY files/apache-maven-3.6.0-bin.tar.gz /opt
RUN cd /opt && tar -xzvf apache-maven-3.6.0-bin.tar.gz && rm apache-maven-3.6.0-bin.tar.gz && \
echo "\nPATH=\"$PATH:/opt/apache-maven-3.6.0/bin\"\n\
M2_HOME=\"/opt/apache-maven-3.6.0\"" >> /etc/environment && \
update-alternatives --install "/usr/bin/mvn" "mvn" "/opt/apache-maven-3.6.0/bin/mvn" 0 && \
update-alternatives --set mvn /opt/apache-maven-3.6.0/bin/mvn


#Install Sublime
#ADD https://download.sublimetext.com/sublime_text_3_build_3176_x64.tar.bz2 /opt
#COPY files/sublime_text_3_build_3176_x64.tar.bz2 /opt
#RUN cd /opt && tar -xjvf sublime_text_3_build_3176_x64.tar.bz2 && rm sublime_text_3_build_3176_x64.tar.bz2 && \
#ln -s /opt/sublime_text_3/sublime_text /usr/bin/sublime

#Install Eclipse
#ADD http://mirror.math.princeton.edu/pub/eclipse//technology/epp/downloads/release/neon/3/eclipse-java-neon-3-linux-gtk-x86_64.tar.gz /opt
COPY files/eclipse-java-neon-3-linux-gtk-x86_64.tar.gz /opt
RUN cd /opt && tar -xzvf eclipse-java-neon-3-linux-gtk-x86_64.tar.gz && rm eclipse-java-neon-3-linux-gtk-x86_64.tar.gz && \
ln -s /opt/eclipse/eclipse /usr/bin/eclipse

#ADD https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64 /usr/local/sbin/dumb-init
COPY files/dumb-init_1.2.2_amd64 /usr/local/sbin/dumb-init
RUN set -ex && chmod 755 /usr/local/sbin/dumb-init 

#RUN /bin/echo -e '\x23!/bin/sh\n[ $$ -eq 1 ] && exec dumb-init "$0" "$@"\n\ncd\nexport SHELL=/bin/bash\neclipse &\njwm' > /etc/init.sh

CMD ["eclipse"]