variable "PM_API_URL" {
  type        = string
  description = "Value of Proxmox API URL"
  sensitive   = true
}

variable "PM_USER" {
  type        = string
  description = "Value of Proxmox VM create user name"
  sensitive   = true
}

variable "PM_PASS" {
  type        = string
  description = "Value of Proxmox VM create user password"
  sensitive   = true
}

variable "SSH_PUB_KEYS" {
  type         = string
  desicription = "Value of SSH Public keys"
  sensitive    = true
}
