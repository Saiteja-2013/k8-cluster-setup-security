resource "kubernetes_network_policy" "deny-all" {
  metadata {
    name      = "deny-all"
    namespace = "default"
  }

  spec {
    pod_selector {}
    policy_types = ["Ingress", "Egress"]
  }
}

resource "kubernetes_role" "pod_security" {
  metadata {
    name      = "pod-security-role"
    namespace = "default"
  }

  rules {
    api_groups = [""]
    resources  = ["pods"]
    verbs      = ["get", "list", "watch"]
  }
}
