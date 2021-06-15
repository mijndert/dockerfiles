#!/bin/bash

# This is a file that I personally use to launch ZNC
# Change stuff like ports and PGID/PUID before launching anything

docker run -d --name znc -p 9001:6667 -P -e LOCAL_USER_ID=`id -u $USER` --restart=always -v ~/znc:/znc-data mijndert/znc-docker
