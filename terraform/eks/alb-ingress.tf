resource "aws_iam_role" "alb_ingress_role" {
  name = "eks-alb-ingress-role"
  assume_role_policy = file("${path.module}/iam_policies/alb-ingress-role.json")
}

resource "aws_eks_addon" "alb_controller" {
  cluster_name             = aws_eks_cluster.eks.name
  addon_name               = "aws-load-balancer-controller"
  addon_version            = "v2.4.1"
  service_account_role_arn = aws_iam_role.alb_ingress_role.arn
}
