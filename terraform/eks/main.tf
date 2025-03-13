provider "aws" {
  region = var.aws_region
}

resource "aws_iam_role" "eks_cluster_role" {
  name = "eksClusterRole"
  assume_role_policy = file("${path.module}/iam_policies/eks-cluster-role.json")
}

resource "aws_eks_cluster" "eks" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

resource "aws_eks_node_group" "node_group" {
  cluster_name  = aws_eks_cluster.eks.name
  node_role_arn = aws_iam_role.eks_cluster_role.arn
  subnet_ids    = var.subnet_ids

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 3
  }
}
