variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "acr_name" {
  type = string
}

variable "aks_principal_id" {
  type = string
  description = "Principal ID for AcrPull"
}