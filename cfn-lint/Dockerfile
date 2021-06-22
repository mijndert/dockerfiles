FROM python:alpine

LABEL maintainer = "mijndert@mijndertstuij.nl"
LABEL org.opencontainers.image.source = "https://github.com/mijndert/dockerfiles" 

RUN pip install cfn-lint

WORKDIR /workdir

ENTRYPOINT ["cfn-lint"]
CMD []
