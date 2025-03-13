#!/bin/bash
echo "Deploying to Kubernetes"
kubectl apply -f k8s-manifests/security/
kubectl apply -f k8s-manifests/deployments/
