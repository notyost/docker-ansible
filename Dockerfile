FROM alpine:3.4

MAINTAINER aherrera@mgage.com

RUN apk update &&\
    apk upgrade &&\
    apk add ansible \
            docker \
            git \
            libffi-dev \
            musl-dev \
            openssl-dev \
            py-pip \
            sshpass &&\
    pip install awscli \
                boto \
                boto3 \
                credstash &&\
    adduser -h /ansible -D ansible ansible

USER ansible
WORKDIR /ansible

ENV PYTHONUNBUFFERED=1
ENV ANSIBLE_FORCE_COLOR=true
