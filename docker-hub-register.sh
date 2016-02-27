#!/bin/bash

REPOSITORY=iwai/kibana
VERSION=4.4

cd $(dirname $0)/${VERSION}

docker build --no-cache -t ${REPOSITORY}:${VERSION} .

docker tag $(docker images -q ${REPOSITORY}:${VERSION}) ${REPOSITORY}:4
docker tag $(docker images -q ${REPOSITORY}:${VERSION}) ${REPOSITORY}:latest

docker push ${REPOSITORY}
