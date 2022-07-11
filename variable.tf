/*variable "gcp_credentials" {
    type = string
    description = "Location of Service Account for GCP "
}*/

variable "gcp_project_id" {
   type = string
    description =  "GCP Project ID"
}

variable "gcp_region" {
   type = string
    description =  "GCP Region"
}

variable "gcp_cluster_name" {
   type = string
    description =  "GKE Cluster name"
}

variable "gke_zones" {
   type = list(string)
    description =  "List of zones for the GKE Cluster"
}

variable "gke_regional" {
   type = string
    description =  "List of zones for the GKE Cluster"
}
variable "gke_network" {
   type = string
    description =  "VPC network name"
}

variable "gke_subnetwork" {
   type = string
    description =  "VPC Sub network name"
}

variable "gke-default-noodepool-name" {
   type = string
    description =  "GKE Default Nodepool name"
}

variable "gke_service_account_name" {
   type = string
    description =  "GKE Service Account name"
}
