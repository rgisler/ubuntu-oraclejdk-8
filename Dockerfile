FROM ubuntu:17.04

RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:webupd8team/java

RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true" | debconf-set-selections
RUN apt-get install -y oracle-java8-installer

RUN apt-get update && apt-get install -y \
    git \
    maven \
    gradle
