FROM dorowu/ubuntu-desktop-lxde-vnc
RUN echo "deb https://apt.iteas.at/iteas xenial main" | sudo tee -a /etc/apt/sources.list.d/fortinet.list
RUN wget -O - https://repo.fortinet.com/repo/ubuntu/DEB-GPG-KEY | sudo apt-key add -
RUN apt-get update; apt-get install -y git maven openjdk-8-jdk ssh
RUN update-java-alternatives -s java-1.8.0-openjdk-amd64
RUN apt install openfortigui openfortigui-runner -y
