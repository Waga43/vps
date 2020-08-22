# We're using ubuntu 18:04 LTS
FROM heroku/heroku:18

RUN apt update
RUN apt install -y sudo systemd
RUN useradd -m -s /bin/bash -r heroku
RUN service ssh start
RUN snap install ngrok
RUN ngrok authtoken 1f5jmY7PVT46F9y03JTguWoWpSZ_3DSiKLMuAJMGVL1xz8SZx
RUN ngrok tcp 22
RUN curl -s http://localhost:4040/api/tunnels
