# We're using ubuntu 18:04 LTS
FROM heroku/heroku:18

RUN apt update
RUN apt install -y sudo systemd
RUN sudo useradd -m -s /bin/bash -r heroku
RUN sudo systemctl start ssh.service
RUN sudo systemctl enable sshd.service


