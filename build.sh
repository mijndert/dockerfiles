#!/bin/bash

green=`tput setaf 2`
reset=`tput sgr0`

set -e

echo "${green}enter github token${reset}" 
read -e token

echo $token | docker login ghcr.io -u mijndert --password-stdin

echo "${green}enter image name${reset}"
read -e image

export DOCKER_CLI_EXPERIMENTAL=enabled

docker buildx create --name builder
docker buildx inspect --bootstrap

cd $image
echo ${green}building $image${reset}
docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/mijndert/${image}:latest --push .

docker buildx rm builder
