#!/bin/bash
echo "Rolling back to previous deployment"
kubectl rollout undo deployment/app-deployment
