#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=my_hello_world

# Step 2:  
# Authenticate & tag
docker login --username ahmedsamir2021
docker tag my_hello_world ahmedsamir2021/my_hello_world
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push ahmedsamir2021/my_hello_world:latest