#!/bin/bash

# 1. update the apt manager
sudo apt-get update

# 2. Grant permission to Rbac, Using RBAC Authorization
kubectl apply -f ./rbac-permission.yaml

# 3. Installing tekton pipelines and CRDs
kubectl apply -f https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml

# 4. Installing Tekton Dashboard and CRDs
kubectl apply -f https://storage.googleapis.com/tekton-releases/dashboard/latest/release.yaml

