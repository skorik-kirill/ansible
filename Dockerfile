FROM python:3.8-alpine

RUN apk add --update build-base python-dev py-pip jpeg-dev zlib-dev libffi-dev openssl-dev git openssh-client sshpass

RUN pip install --upgrade pip

ENV LIBRARY_PATH=/lib:/usr/lib

WORKDIR /ansible

VOLUME [ "/ansible" ]

ARG ANSIBLE_VERSION=2.6

RUN pip install ansible==$ANSIBLE_VERSION

RUN adduser -D -g '' skorikkirill7
