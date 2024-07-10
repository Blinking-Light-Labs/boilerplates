resource "proxmox_virtual_environment_vm" "ubuntu_vm" {
  name      = "test-ubuntu"
  node_name = "INT-JNT-VMH-PVE01"

  initialization {
    datastore_id = "local-zfs"

    ip_config {
      ipv4 {
        address = "10.42.71.157/23"
        gateway = "10.42.71.1"
      }
    }

    user_account {
      username = "change-me!"
      password = "change-me!"
      
      
    }
  }

  disk {
    datastore_id = "SR-ZFS"
    file_id      = "NFS-ISO:iso/noble-server-cloudimg-amd64.img"
    interface    = "virtio0"
    iothread     = true
    discard      = "on"
    size         = 20
  }

  network_device {
    bridge = "vmbr0"
  }
}

