FROM ubuntu:trusty

MAINTAINER aherrera@mgage.com

RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    apt-get install -y libffi-dev \
                       libssl-dev \
                       libyaml-dev \
                       python-pip \
                       python-dev &&\
    pip install --upgrade pip &&\
    pip install -U distribute ansible==2.1.0
    # ansible 2.1.0 fail: https://github.com/ansible/ansible/issues/16015
