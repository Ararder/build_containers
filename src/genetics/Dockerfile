FROM ubuntu:20.04

ENV TZ=Europe


WORKDIR /tmp
COPY src/genetics/install.sh .
RUN chmod +x install.sh && ./install.sh
