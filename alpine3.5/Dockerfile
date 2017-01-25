FROM alpine:3.5

MAINTAINER aherrera@mgage.com

ENV ANSIBLE_VERSION=2.1.4
ENV CREDSTASH_VERSION=1.13.2

RUN apk --update add ca-certificates \
                     git \
                     python \
                     py2-pip &&\
    apk --update add --virtual build-deps \
                     build-base \
                     libffi-dev \
                     openssl-dev \
                     python-dev &&\
    pip install -U pip &&\
    pip install ansible==${ANSIBLE_VERSION} \
                awscli \
                boto \
                boto3 \
                credstash==${CREDSTASH_VERSION} &&\
    apk del build-deps &&\
    rm -rf /var/cache/apk/* ~/.cache/pip/*

ENV PYTHONUNBUFFERED=1
ENV ANSIBLE_FORCE_COLOR=true
