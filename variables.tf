variable "resource_group_name" {
    type = string  
}

variable "azure_region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "kubernetes_vm_size" {
  type = string
}

variable "acr_name" {
  type = string
}

variable "aks_principal_id" {
  type = string
  description = "Principal ID for AcrPull"
}