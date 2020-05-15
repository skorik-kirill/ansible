FROM python:3.6-alpine

RUN apk add --update build-base python-dev py-pip jpeg-dev zlib-dev libffi-dev openssl-dev git openssh-client sshpass

RUN pip install --upgrade pip

ENV LIBRARY_PATH=/lib:/usr/lib

WORKDIR /ansible

VOLUME [ "/ansible" ]

ARG ANSIBLE_VERSION=2.5

RUN pip install ansible==$ANSIBLE_VERSION