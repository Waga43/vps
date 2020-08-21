# We're using ubuntu 18:04 LTS
FROM heroku/heroku:18

RUN apt update
RUN apt install -y sudo systemd
RUN chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo
RUN useradd -m -s /bin/bash -r heroku
