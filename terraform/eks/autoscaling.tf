resource "aws_autoscaling_group" "eks_autoscaler" {
  name                 = "eks-autoscaler"
  min_size             = 1
  max_size             = 5
  desired_capacity     = 2
  vpc_zone_identifier  = var.subnet_ids

  launch_configuration = aws_launch_configuration.eks_lc.id

  tag {
    key                 = "kubernetes.io/cluster/${aws_eks_cluster.eks.name}"
    value               = "owned"
    propagate_at_launch = true
  }
}

resource "aws_launch_configuration" "eks_lc" {
  name          = "eks-node-launch"
  image_id      = "ami-0c55b159cbfafe1f0" # Update with latest EKS-optimized AMI
  instance_type = "t3.medium"
}
