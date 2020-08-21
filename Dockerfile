# We're using ubuntu 18:04 LTS
FROM heroku/heroku:18

RUN apt update
RUN apt install -y sudo systemd
RUN useradd -m -s /bin/bash -r heroku
