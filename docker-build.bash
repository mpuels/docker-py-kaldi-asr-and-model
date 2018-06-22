#!/bin/bash

MODEL_NAME=$(grep '^ARG MODEL_NAME=' Dockerfile | cut -f2 -d=)
TAG=${USER}/docker-py-kaldi-asr-and-model:${MODEL_NAME}

echo "Building ${TAG}"
docker build -t ${TAG} .
