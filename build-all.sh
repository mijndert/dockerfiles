#!/bin/bash

green=`tput setaf 2`
reset=`tput sgr0`

set -e

echo "${green}enter github token${reset}" 
read -e token

echo $token | docker login ghcr.io -u mijndert --password-stdin

for d in */
do
  cd $d
  echo ${green}building $d${reset}
  docker build -t ${d%?} .
  docker tag ${d%?}:latest ghcr.io/mijndert/${d%?}:latest
  docker push ghcr.io/mijndert/${d%?}:latest
  cd ..
done

