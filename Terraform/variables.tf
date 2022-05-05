variable "kind_cluster_config_path" {
  type        = string
  description = "The cluster's kubeconfig location."
  default     = "~/.kube/config"
}

variable "jenkins_namespace" {
  type        = string
  description = "The jenkins namespace (it will be created if needed)."
  default     = "jenkins"
}

variable "keycloak_namespace" {
  type        = string
  description = "The keycloak namespace (it will be created if needed)."
  default     = "keycloak"
}



