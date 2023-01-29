variable "PM_API_URL" {
  type        = string
  description = "Value of Proxmox API URL"
}

variable "PM_USER" {
  type        = string
  description = "Value of Proxmox VM create user name"
}

variable "PM_PASS" {
  type        = string
  description = "Value of Proxmox VM create user password"
}

variable "SSH_PUB_KEYS" {
  type = string
  desicription = "Value of SSH Public keys"
}
