variable "aws_region" { default = "us-west-2" }
variable "cluster_name" { default = "secure-eks-cluster" }
variable "subnet_ids" { type = list(string) }
