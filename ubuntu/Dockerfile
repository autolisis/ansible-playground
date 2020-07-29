FROM ubuntu:latest

COPY . /tmp
RUN /tmp/bootstrap.sh

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y openssh-server sudo
RUN apt-get install -y python3

RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -P "" -f /root/.ssh/id_rsa -q
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
