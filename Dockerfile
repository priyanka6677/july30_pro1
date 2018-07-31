FROM ubuntu
FROM tomcat:8.0
MAINTAINER employers@nexa.com
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y sudo
RUN apt-get install -y openssh-server
RUN apt-get install -y sshpass
RUN apt-get install -y net-tools
RUN cd /usr/local/tomcat/webapps && wget http://192.168.31.39:8081/nexus/service/local/repositories/releases/content/com/july30/julyproject/1.0.01/julyproject-1.0.01.war
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash
