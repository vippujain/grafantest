FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN apt-get update
RUN apt-get install docker-ce docker-ce-cli containerd.io
CMD ["tail -f /dev/null", "-D"]
