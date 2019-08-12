#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=seiyamiyaoka/house-prediction

# Step 2:
# Authenticate & tag
# Login
echo "Longin start"
docker login
# add tag
docker tag ${dockerpath} ${dockerpath}:0.1
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository. this mean is upload docker hub
# https://forums.docker.com/t/docker-push-error-fata-0001-respository-does-not-exist/1309/24
docker push docker.io/${dockerpath}
