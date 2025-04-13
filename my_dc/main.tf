module "network" {
  source = "../modules/mod-network"
  subnets = var.subnets
}

module "bastion" {
  source         = "../modules/mod-bastion"
  region         = var.region
  zone           = var.zone
  network_name   = var.network_name
  subnet_id      = var.subnet_id
  ssh_public_key = var.ssh_public_key
  depends_on     = [module.network]
}

/*
module "cluster" {
  source           = "../modules/mod-cluster"
  project_id       = var.project_id
  gke_cluster_name = var.gke_cluster_name
  region           = var.region
  depends_on       = [module.network]
} */

/*
module "argocd" {
  source = "../modules/mod-argocd"
  providers = {
    helm.with_kubeconfig       = helm.with_kubeconfig
    kubernetes.with_kubeconfig = kubernetes.with_kubeconfig
  }
  depends_on = [module.cluster]
} */
