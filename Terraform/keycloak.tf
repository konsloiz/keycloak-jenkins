resource "helm_release" "keycloak" {
  name       = "keycloak"
  repository = "https://codecentric.github.io/helm-charts"
  chart      = "keycloak"

   namespace = var.keycloak_namespace
   create_namespace = true

  values = [
    "${file("keycloak-values.yaml")}"
  ]
}