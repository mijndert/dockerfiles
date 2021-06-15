FROM alpine:latest as builder 

ARG version=3.4.2

RUN apk --update add --no-cache wget \
    && wget -q https://get.helm.sh/helm-v${version}-linux-amd64.tar.gz \
    && tar -zxvf helm-v${version}-linux-amd64.tar.gz \
    && cp linux-amd64/helm /usr/bin/

FROM scratch

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"

COPY --from=builder /usr/bin/helm /usr/bin/helm
