#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

version="v1.0.1"
# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=peterhuynh99/microservices

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag sklearn-project-app peterhuynh99/microservices:${version}

# Step 3:
# Push image to a docker repository
docker push peterhuynh99/microservices:${version}