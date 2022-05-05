resource "helm_release" "jenkins" {
  name       = "jenkins"
  repository = "https://charts.jenkins.io"
  chart      = "jenkins"

   namespace = var.jenkins_namespace
   create_namespace = true

  values = [
    "${file("jenkins-values.yaml")}"
  ]
}