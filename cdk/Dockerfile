FROM alpine:latest

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source https://github.com/mijndert/dockerfiles

ENV CDK_VERSION=2.28.1

RUN apk -v --no-cache --update add \
        nodejs \
        npm \
        git \
        ca-certificates \
    && update-ca-certificates \
    && npm install -g aws-cdk@${CDK_VERSION}

VOLUME [ "/root/.aws" ]
VOLUME [ "/opt/app" ]

WORKDIR /opt/app

CMD ["cdk", "--version"]
