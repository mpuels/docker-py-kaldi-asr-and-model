#!/bin/bash

MODEL_NAME=$(grep '^ARG MODEL_NAME=' Dockerfile | cut -f2 -d=)
TAG=${USER}/docker-py-kaldi-asr-and-model:${MODEL_NAME}

echo "Starting ${TAG}"
docker run --rm -p 127.0.0.1:8080:80/tcp ${TAG}
