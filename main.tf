module "resource_group" {
    source      = "./modules/resource_group"
    rg_name     = var.resource_group_name
    location    = var.azure_region
}

module "aks_cluster" {
  source    = "./modules/aks"
  rg_name   = module.resource_group.rg_name
  location  = var.azure_region
  aks_name  = var.cluster_name
  node_vm_size = var.kubernetes_vm_size
}

module "acr" {
  source = "./modules/acr"
  rg_name = var.resource_group_name
  location = var.azure_region
  acr_name = var.acr_name
  aks_principal_id = module.aks.kubelet_identity_object_id
}