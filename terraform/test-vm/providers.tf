terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.61.0"
    }
  }
}

provider "proxmox" {
  endpoint  = var.proxmox_api_endpoint
  api_token = var.proxmox_api_token
  insecure  = true
  ssh {
    agent    = false
    username = "root"
  }
}
