FROM dorowu/ubuntu-desktop-lxde-vnc
LABEL maintainer="hws689@gmail.com"
RUN echo "deb [arch=amd64] https://repo.fortinet.com/repo/ubuntu/ /bionic multiverse" | sudo tee -a /etc/apt/sources.list.d/fortinet.list
RUN wget -O - https://repo.fortinet.com/repo/ubuntu/DEB-GPG-KEY | sudo apt-key add -
RUN apt-get update; apt-get install -y git maven openjdk-8-jdk ssh
RUN update-java-alternatives -s java-1.8.0-openjdk-amd64
RUN apt install forticlient -y

