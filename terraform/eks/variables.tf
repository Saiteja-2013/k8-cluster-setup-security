variable "github_owner" {
  description = "GitHub organization or username"
  type        = string
  default     = "your-github-owner"
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "your-repo-name"
}

variable "github_oauth_token" {
  description = "GitHub OAuth Token for CodePipeline access"
  type        = string
  sensitive   = true
}

variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-west-2"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "secure-eks-cluster"
}

variable "s3_bucket_name" {
  description = "S3 bucket name for CodePipeline artifacts"
  type        = string
  default     = "eks-codepipeline-artifacts"
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS cluster"
  type        = list(string)
}
