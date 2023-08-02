# Configure the VMware vSphere Provider
provider "vsphere" {
  user           = "fill"
  password       = "fill"
  vsphere_server = "fill"

  # if you have a self-signed cert
  allow_unverified_ssl = true
}

# Deploy 2 linux VMs
module "example-server-linuxvm" {
  source    = "Terraform-VMWare-Modules/vm/vsphere"
  version   = "X.X.X"
  vmtemp    = "VM Template Name (Should Alrerady exist)"
  instances = 2
  vmname    = "example-server-linux"
  vmrp      = "esxi/Resources - or name of a resource pool"
  network = {
    "Name of the Port Group in vSphere" = ["10.13.113.2", "10.13.113.3"] # To use DHCP create Empty list ["",""]; You can also use a CIDR annotation;
  }
  vmgateway = "10.13.113.1"
  dc        = "Datacenter"
  datastore = "Data Store name(use datastore_cluster for datastore cluster)"
}