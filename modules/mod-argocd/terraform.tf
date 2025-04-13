terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.11.0"
      configuration_aliases = [helm.with_kubeconfig]
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.24.0"
      configuration_aliases = [kubernetes.with_kubeconfig]
    }
  }
}

