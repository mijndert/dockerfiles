FROM python:alpine
LABEL maintainer Mijndert Stuij "mijndert@mijndertstuij.nl"

RUN pip install cfn-lint

WORKDIR /workdir

ENTRYPOINT ["cfn-lint"]
CMD []
