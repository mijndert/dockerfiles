# openttd-docker

![Docker Image CI](https://github.com/mijndert/openttd-docker/workflows/Docker%20Image%20CI/badge.svg)

Docker image for running a dedicated OpenTTD server.

```docker run -d --name openttd -e LOCAL_USER_ID=`id -u $USER` -p 3979:3979/tcp -p 3979:3979/udp --restart=always -v ~/openttd-data:/config:rw mijndert/openttd:latest```
