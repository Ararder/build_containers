FROM ubuntu:20.04

ENV TZ=Europe
ENV DEBIAN_FRONTEND noninteractive  


WORKDIR /tmp
COPY /src/genetics/install.sh .
RUN chmod +x install.sh && ./install.sh
