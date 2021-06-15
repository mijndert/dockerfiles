FROM python:alpine
LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"

RUN pip install --user yamllint

WORKDIR /workdir

ENTRYPOINT ["yamllint"]
