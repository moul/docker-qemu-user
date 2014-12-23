FROM ubuntu:latest
MAINTAINER Manfred Touron "m@42.am"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq -y update && \
    apt-get -qq -y install qemu-user qemu-user-static qemu-system && \
    apt-get clean
