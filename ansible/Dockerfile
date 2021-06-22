FROM alpine:latest

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source https://github.com/mijndert/dockerfiles

RUN apk update && \
    apk add --no-cache ansible && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*
