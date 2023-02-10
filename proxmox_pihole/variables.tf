variable "pm_api_url" {
  type        = string
  description = "Value of Proxmox API host"
  sensitive   = true
}

variable "pm_node" {
  type        = string
  description = "Value of Proxmox node"
}

variable "pm_user" {
  type        = string
  description = "Value of Proxmox user name"
  sensitive   = true
}

variable "pm_pass" {
  type        = string
  description = "Value of Proxmox user password"
  sensitive   = true
}

variable "ssh_private_key_path" {
  type        = string
  description = "Value of SSH private keys path"
}

variable "ssh_public_key_path" {
  type        = string
  description = "Value of SSH public keys path"
}

variable "lxc_pass" {
  type        = string
  description = "Value of Proxmox LXC user password"
  sensitive   = true
}

variable "pi-hole_pass" {
  type        = string
  description = "Value of Pi-hole password"
  sensitive   = true
}

variable "zabbix_host" {
  type        = string
  description = "Value of Zabbix API host"
  sensitive   = true
}

variable "zabbix_port" {
  type        = number
  description = "Value of Zabbix API port"
  sensitive   = true
}

variable "zabbix_user" {
  type        = string
  description = "Value of Zabbix user name"
  sensitive   = true
}

variable "zabbix_pass" {
  type        = string
  description = "Value of Zabbix user password"
  sensitive   = true
}

variable "zabbix_agent_psk_identity" {
  type        = string
  description = "Value of Zabbix agent psk identity"
  sensitive   = true
}

variable "zabbix_agent_psk_secret" {
  type        = string
  description = "Value of Zabbix agent psk secret"
  sensitive   = true
}
