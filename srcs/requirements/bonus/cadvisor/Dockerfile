FROM debian:buster

# update and upgrade the system, install curl and gpg
RUN apt-get update &&\
    apt-get -y upgrade && \
    apt install wget -y &&\
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/google/cadvisor/releases/download/v0.39.0/cadvisor && chmod +x cadvisor


CMD ["./cadvisor"]