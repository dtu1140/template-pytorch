#!/bin/bash
DOCKER_IMAGE_TAG="1.2-cuda10.0-cudnn7-runtime"

BASEDIR=$(cd `dirname $0`/..; pwd)
PROGRAM_DIR="${BASEDIR}/src"
WORKDIR="${BASEDIR}/workspace"

docker pull pytorch/pytorch:${DOCKER_IMAGE_TAG}
docker run --init --rm -it --gpus all -u ${UID}:${GID} \
  -v ${PROGRAM_DIR}:/workspace/src \
  -v ${WORKDIR}:/workspace/workspace \
  pytorch/pytorch:${DOCKER_IMAGE_TAG} \
  bash
