FROM ubuntu:latest

RUN apt-get update &&\
  apt-get install -y openssh-server &&\
  apt-get install -y vim &&\
  mkdir /var/run/sshd &&\
  apt-get install -y libpam-google-authenticator

WORKDIR /etc/ssh

COPY ./setup_googleauth.sh /usr/bin/setup_googleauth.sh
COPY ./sshd_config /etc/ssh/sshd_config
COPY ./id_rsa.pub /etc/ssh/id_rsa.pub
COPY ./sshd /etc/pam.d/sshd

RUN ssh-keygen -h -s ssh_host_rsa_key -n localhost,$(hostname),127.0.0.1 -I $(hostname) ssh_host_rsa_key.pub &&\
  chmod +x /usr/bin/setup_googleauth.sh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]