resource "proxmox_virtual_environment_file" "ubuntu_cloud_image" {
  content_type = "iso"
  datastore_id = "" # Storage Pool you use.
  node_name    = "" # Proxmox Node you're using

  source_file {
    # you may download this image locally on your workstation and then use the local path instead of the remote URL
    path      = "" # URL of cloud-init image you are using.

    # you may also use the SHA256 checksum of the image to verify its integrity
    checksum = ""
  }
}
