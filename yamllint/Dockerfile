FROM python:alpine

LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source https://github.com/mijndert/dockerfiles

RUN pip install --user yamllint

WORKDIR /workdir

ENTRYPOINT ["yamllint"]
