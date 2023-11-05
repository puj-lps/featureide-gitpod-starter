#!/bin/bash

docker build docker/feature-ide-3.10.0 -t jchavarr/gitpod-featureide:latest
docker build docker/feature-ide-3.10.0 -t jchavarr/gitpod-featureide:3.10.0
docker build docker/feature-ide-3.9.1 -t jchavarr/gitpod-featureide:3.9.1

docker push jchavarr/gitpod-featureide:latest
docker push jchavarr/gitpod-featureide:3.9.1
docker push jchavarr/gitpod-featureide:3.10.0