###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDQh+usb9TFobAuMH+pq+tUuGEzPFl4GY3JJBdZo+LVLy+5T5Y/3i+2Cf7NBsILwcEogDNncO0GO0mNiR+FiUTZcbUBbgvpDKKEW+kjBgoIMi9Y91iGrlAi6cixj64jCwt110N4VDCEgurMscjTx8Hp9LDfefGDVElJXLQMjOcWwKgMiiiJU2YTXwUC/WTIv0qfplGZuo2PUtY9IAOt+APQKl4jiNXqfjw+8WunV553bP0Df7pZymhhsJ4HNr6oJ30Za+nI8dc/eyqTwpZQRrTgXY8MC2XG1Iqt+aC1++3lYch01YZS04QJDdsidjznuM37+rpzNdyrd/ENdUvPBRzx user@localhost.localdomain"
  description = "ssh-keygen -t ed25519"
}

###yandex_compute_image vars
variable "vm_yc_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "ubuntu"
}

###yandex_compute_instance vars

variable "vm_web_vmname" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "vmname_web"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "cores" 
}

variable "vm_web_mem" {
  type        = number
  default     = 1
  description = "memory" 
}

variable "vm_web_frac" {
  type        = number
  default     = 5
  description = "fraction" 
}


variable "vm_db_vmname" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "vmname_db"
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "cores" 
}

variable "vm_db_mem" {
  type        = number
  default     = 2
  description = "memory" 
}

variable "vm_db_frac" {
  type        = number
  default     = 20
  description = "fraction" 
}
##name VM vars
variable "vm_web_web" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "vm1 name"
}

variable "vm_web_db" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "vm2 name"
}
