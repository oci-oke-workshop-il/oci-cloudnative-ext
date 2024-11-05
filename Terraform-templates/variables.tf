# variables.tf
variable "oci_cli_profile" {
  description = "The OCI CLI profile to use for authentication"
  type        = string
  default     = "DEFAULT"
}

variable "compartment_id" {
  description = "The OCID of the compartment to create the VCN in"
  type        = string
}

variable "vcn_display_name" {
  description = "The display name of the VCN"
  type        = string
}

variable "vcn_dns_label" {
  description = "The DNS label of the VCN"
  type        = string
}

variable "vcn_cidr" {
  description = "The CIDR block of the VCN"
  type        = string
}

variable "service_cidr" {
  description = "The Service CIDR for the region"
  type        = string
}

variable "lb_subnet_cidr" {
  description = "CIDR for the load balancer subnet"
  type        = string
}

variable "node_subnet_cidr" {
  description = "CIDR for the node subnet"
  type        = string
}

variable "api_endpoint_subnet_cidr" {
  description = "CIDR for the Kubernetes API endpoint subnet"
  type        = string
}

variable "freeform_tags" {
  description = "Freeform tags to apply to all resources created by this module"
  type        = map(string)
  default     = {}
}

# variables.tf

# Existing VCN variables...

variable "cluster_name" {
  description = "The name of the OKE cluster"
  type        = string
  default     = "oke-workshop"
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use for the OKE cluster"
  type        = string
  default     = "v1.30.1"
}

variable "node_pool_name" {
  description = "The name of the node pool"
  type        = string
  default     = "pool1"
}

variable "node_pool_shape" {
  description = "The shape of the nodes in the node pool"
  type        = string
  default     = "VM.Standard.E5.Flex"
}

variable "node_pool_node_memory_in_gbs" {
  description = "The amount of memory to allocate to each node in the node pool, in gigabytes"
  type        = number
  default     = 12
}

variable "node_pool_node_ocpus" {
  description = "The number of OCPUs to allocate to each node in the node pool"
  type        = number
  default     = 1
}

variable "node_pool_size" {
  description = "The number of nodes in the node pool"
  type        = number
  default     = 3
}

variable "node_pool_image_id" {
  description = "The OCID of the image to use for nodes in the node pool"
  type        = string
  # You'll need to provide a default value or set this in your terraform.tfvars file
}

variable "availability_domain" {
  description = "The availability domain in which to place nodes"
  type        = string
  # You'll need to provide a default value or set this in your terraform.tfvars file
}

#ADB
variable "adb_name" {
  type = string
}

variable "adb_display_name" {
  type = string
}

variable "adb_admin_password" {
  type = string
}

variable "adb_cpu_core_count" {
  type = number
}

variable "adb_data_storage_size_in_tbs" {
  type = number
}

variable "adb_is_free_tier" {
  type    = bool
  default = false
}

variable "adb_license_model" {
  type    = string
  default = "BRING_YOUR_OWN_LICENSE"
}

variable "adb_whitelisted_ips" {
  type    = list(string)
  default = []
}

variable "adb_customer_contact_email" {
  type    = string
  default = ""
}

variable "adb_defined_tags" {
  type    = map(string)
  default = {}
}
variable "adb_db_version" {
  type    = string
  default = "23ai"
}

variable "vault_name" {
  type        = string
  description = "The name of the vault"
}

variable "vault_key_name" {
  type        = string
  description = "The name of the key in the vault"
}

variable "oke_dynamic_group_name" {
  type        = string
  description = "The name of the dynamic group for OKE nodes"
}

variable "tenancy_ocid" {
  type        = string
  description = "The name of the tenancy_ocid"
}