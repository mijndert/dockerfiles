#!/bin/bash

green=`tput setaf 2`
reset=`tput sgr0`

set -e

echo "${green}enter github token${reset}" 
read -e token

echo $token | docker login ghcr.io -u mijndert --password-stdin

export DOCKER_CLI_EXPERIMENTAL=enabled

docker buildx create --name builder
docker buildx inspect --bootstrap

for d in */
do
	cd $d
  echo ${green}building $d${reset}
  docker buildx build --platform linux/amd64,linux/arm64 -t ghcr.io/mijndert/${d%?}:latest --push .
  cd ..
done

docker buildx rm builder
