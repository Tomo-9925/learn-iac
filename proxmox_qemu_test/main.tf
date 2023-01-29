terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "~> 2.9.11"
    }
  }
}

provider "proxmox" {
  pm_tls_insecure = true
  # uncomment if you want log
  # pm_log_enable   = true
  # pm_log_file     = "terraform-plugin-proxmox.log"
  # pm_debug        = true
  # pm_log_levels = {
  # _default    = "debug"
  # _capturelog = ""
  # }

  # require "PM_API_URL" and "PM_USER" and "PM_PASS" at ".tfvars"
  pm_api_url  = var.PM_API_URL
  pm_user     = var.PM_USER
  pm_password = var.PM_PASS
}

resource "proxmox_vm_qemu" "terraform-test" {
  os_type     = "cloud-init"
  target_node = "hx90"
  clone       = "ubuntu-20-04-cloudinit" # Prepare Cloud-Init Template: https://pve.proxmox.com/wiki/Cloud-Init_Support
  vmid        = 128
  name        = "terraform-test"

  scsihw   = "virtio-scsi-pci"
  bootdisk = "scsi0"

  disk {
    type    = "scsi"
    slot    = 0
    size    = "10G"
    storage = "local-lvm"
  }

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  # Ignore changes to the network
  # MAC address is generated on every apply
  lifecycle {
    ignore_changes = [
      network
    ]
  }

  ipconfig0 = "ip=192.168.3.128/24,gw=192.168.3.1"
  # require "SSH_PUB_KEY" at ".tfvars"
  sshkeys = var.SSH_PUB_KEYS
}
