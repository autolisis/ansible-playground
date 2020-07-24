FROM ubuntu:latest

COPY authorized_keys /tmp/authorized_keys
RUN mkdir /root/.ssh
RUN cp -R /tmp/authorized_keys /root/.ssh
RUN chmod 0700 /root/.ssh
RUN chmod 0600 /root/.ssh/authorized_keys

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y openssh-server sudo
RUN apt-get install -y python3

RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -P "" -f /root/.ssh/id_rsa -q
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
