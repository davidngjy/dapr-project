resource "helm_release" "dapr" {
  name       = "dapr-release"
  repository = "https://dapr.github.io/helm-charts"
  chart      = "dapr"
  version    = "1.10"
  namespace  = "dapr-system"

  atomic = true

  create_namespace = true
}