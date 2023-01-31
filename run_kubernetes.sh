#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
# dockerpath=sklearn-project-app:v1.0.0
deployment_name="microservice-project-app"
app_name="microservices"
app_version="v1.0.0"
docker_id="peterhuynh99"
dockerpath="${docker_id}/${app_name}:${app_version}"
echo "image path: ${dockerpath}"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ${deployment_name} --image=${dockerpath} --port=80 --labels app=${app_name}

# Step 3:
# List kubernetes pods
kubectl get pods 

# Step 4:
# Forward the container port to a host
sleep 30
pod_name=$(kubectl get pods | grep ${deployment_name} | awk '{print $1}')
echo "pod name: ${pod_name}"
echo "Forwarding port..."
sleep 30
kubectl get pods 
kubectl port-forward pod/${pod_name} --address 0.0.0.0 8000:80

