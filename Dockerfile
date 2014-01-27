FROM ubuntu:precise
MAINTAINER Manfred Touron "m@42.am"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq -y update && \
    apt-get -qq -y install qemu-user qemu-user-static && \
    apt-get clean

ENTRYPOINT ["qemu-arm"]
