#!/bin/bash
docker run -d --name thelounge -p 9000:9000 -P --restart=always -v ~/data:/var/opt/thelounge mijndert/thelounge-docker
