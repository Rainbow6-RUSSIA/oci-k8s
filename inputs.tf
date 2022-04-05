variable "tenancy_ocid" { type = string }
variable "region" { type = string }
variable "user_ocid" { type = string }
variable "fingerprint" { type = string }

variable "private_key_path" { type = string }
variable "private_key_password" {
  type    = string
  default = ""
}

variable "ssh_key_path" { type = string }
variable "ssh_key_pub_path" { type = string }

variable "cluster_public_dns_name" {
  type    = string
  default = null
}
variable "letsencrypt_registration_email" { type = string }

variable "windows_overwrite_local_kube_config" {
  type    = bool
  default = false
}

variable "debug_create_cluster_admin" {
  type    = bool
  default = false
}

variable "os_image" {
  type    = string
  default = "Canonical-Ubuntu-20.04-aarch64-2022.03.02-0"
}

variable "compute_shape" {
  type    = string
  default = "VM.Standard.A1.Flex"
}
