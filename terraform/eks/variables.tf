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
