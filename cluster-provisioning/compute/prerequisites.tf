# Availability domain is required for compute instances
data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

locals {
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  vm_user             = "ubuntu"
}

# module "kubeadm-token" {
#   source = "github.com/scholzj/terraform-kubeadm-token"
# }

locals {
  # k8s_discovery_token = module.kubeadm-token.token # Will generate token on each terraform apply.
  k8s_discovery_token = "1qqih3.vpeipt4judm83tov" # Predefined token, to avoid instances drop-and-reacreate when possible.
  script = {
    reset-iptables  = file("${path.module}/bootstrap/scripts/reset-iptables.sh")
    install-kubeadm = file("${path.module}/bootstrap/scripts/install-kubeadm.sh")
  }
}
