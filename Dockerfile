FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget build-essential -y
WORKDIR /opt/
RUN wget https://github.com/warthog-network/Warthog/releases/download/0.9.6/wart-node-linux
RUN wget https://github.com/warthog-network/Warthog/releases/download/0.9.6/wart-wallet-linux
RUN chmod +x wart-node-linux
RUN chmod +x wart-wallet-linux
RUN mv wart-node-linux /usr/bin/wartd
RUN mv wart-wallet-linux /usr/bin/wart-cli
CMD /usr/bin/wartd
