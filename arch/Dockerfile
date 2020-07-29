FROM archlinux:latest

COPY . /tmp
RUN /tmp/bootstrap.sh

RUN pacman --noconfirm -Sy sudo openssh python

RUN ssh-keygen -A
RUN ssh-keygen -t rsa -P "" -f /root/.ssh/id_rsa -q
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
