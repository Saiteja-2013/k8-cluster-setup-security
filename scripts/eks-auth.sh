#!/bin/bash
echo "Updating kubeconfig for EKS"
aws eks update-kubeconfig --region us-west-2 --name secure-eks-cluster
