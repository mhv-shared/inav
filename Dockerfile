FROM ubuntu:trusty

RUN apt-get update && \
apt-get install -y software-properties-common && \
add-apt-repository ppa:terry.guo/gcc-arm-embedded && \
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6D1D8367A3421AFB && \
apt-get update && \
apt-get install -y gcc-arm-none-eabi=4.9.3.2015q3-1trusty1
RUN apt-get install -y build-essential git