FROM ubuntu:latest

COPY ./setup_services.sh /usr/bin

WORKDIR /etc/ssh

RUN apt-get update &&\
  apt-get install -y openssh-server &&\
  apt-get install -y iptables &&\
  mkdir /var/run/sshd &&\
  chmod +x /usr/bin/setup_services.sh && \
  useradd -s /bin/bash --password $(openssl passwd -1 "guest") guest

EXPOSE 22

CMD ["/usr/bin/setup_services.sh"]
