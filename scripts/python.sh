#!/bin/bash
DOCKER_IMAGE_TAG="1.2-cuda10.0-cudnn7-runtime"

docker pull pytorch/pytorch:${DOCKER_IMAGE_TAG}
docker run --init --rm -it --gpus all -u ${UID}:${GID} \
  pytorch/pytorch:${DOCKER_IMAGE_TAG} \
  python
