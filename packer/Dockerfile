FROM alpine:latest as builder 

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing packer 
    
FROM alpine:latest

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"

COPY --from=builder /usr/bin/packer /usr/bin/packer
