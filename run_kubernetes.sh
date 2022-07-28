#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=danietomiwa/ml_app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-microservice --image=danietomiwa/mlapp

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml-microservice2-5bcc5b44cf-gxgjt --address 0.0.0.0 8000:80
