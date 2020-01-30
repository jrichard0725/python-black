#! /bin/bash
REGISTRY="jrichard0725"
SERVICE_NAME="python-black"
VERSION="3.8" # this should match the python version in the base dockerfile

docker build -t ${SERVICE_NAME} .

docker tag ${SERVICE_NAME} ${REGISTRY}/${SERVICE_NAME}:${VERSION}
docker tag ${SERVICE_NAME} ${REGISTRY}/${SERVICE_NAME}:latest

docker push ${REGISTRY}/${SERVICE_NAME}:${VERSION}
docker push ${REGISTRY}/${SERVICE_NAME}:latest
