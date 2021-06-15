FROM alpine:latest
LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"

RUN apk update && \
    apk add --no-cache ansible && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*
