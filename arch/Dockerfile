FROM archlinux:latest

COPY authorized_keys /tmp/authorized_keys

RUN mkdir /root/.ssh
RUN cp -R /tmp/authorized_keys /root/.ssh
RUN chmod 0700 /root/.ssh
RUN chmod 0600 /root/.ssh/authorized_keys

RUN pacman --noconfirm -Sy sudo openssh python

EXPOSE 22
RUN ssh-keygen -A
RUN ssh-keygen -t rsa -P "" -f /root/.ssh/id_rsa -q
CMD ["/usr/sbin/sshd", "-D"]
