FROM ubuntu:latest

RUN apt-get update &&\
  apt-get install -y openssh-server &&\
  apt-get install -y iptables &&\
  mkdir /var/run/sshd &&\
  useradd -s /bin/bash --password $(openssl passwd -1 "guest") guest

WORKDIR /etc/ssh

COPY ./setup_services.sh /usr/bin

RUN chmod +x /usr/bin/setup_services.sh

EXPOSE 22

CMD ["/usr/bin/setup_services.sh"]
