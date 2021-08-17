#!/bin/bash

green=`tput setaf 2`
reset=`tput sgr0`

set -e

echo "${green}enter github token${reset}" 
read -e token

echo $token | docker login ghcr.io -u mijndert --password-stdin

echo "${green}enter image name${reset}"
read -e image

cd $image
echo ${green}building $image${reset}
docker build -t ${image} .
docker tag ${image}:latest ghcr.io/mijndert/${image}:latest
docker push ghcr.io/mijndert/${image}:latest
