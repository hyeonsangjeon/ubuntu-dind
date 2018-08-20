FROM ubuntu:18.04
USER root
RUN apt-get update && apt-get -y install vim git wget openssh-server net-tools


#RUN wget https://get.docker.com/builds/Linux/x86_64/docker-17.05.0-ce.tgz
RUN wget https://download.docker.com/linux/static/edge/x86_64/docker-18.06.0-ce.tgz
RUN tar xvfz docker-18.06.0-ce.tgz
RUN   rm -rf /var/lib/apt/lists/*
RUN   cp ./docker/docker /usr/bin/


#CMD ["/bootstrap.sh"]

