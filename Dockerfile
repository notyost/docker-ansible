FROM ubuntu:trusty

MAINTAINER aherrera

RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    apt-get install -y python-dev &&\
    apt-get install -y python-pip &&\
    pip install --upgrade pip &&\
    pip install ansible==1.9.4
