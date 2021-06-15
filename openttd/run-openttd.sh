#!/bin/bash
docker run -d --name openttd -e LOCAL_USER_ID=`id -u $USER` -p 3979:3979/tcp -p 3979:3979/udp --restart=always --log-opt max-size=50m -v ~/openttd-data:/config:rw mijndert/openttd-docker:latest
