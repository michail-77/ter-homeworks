###ssh vars

variable auth-ssh {
  type = map
  default = {
   serial-port-enable = 1 
   ssh-keys = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQAB..........7+rpzNdyrd/ENdUvPBRzx user@localhost.localdomain"
  }
}

###family vars
variable vm_web_image_name {
  type = string
  default = "ubuntu-2004-lts"
  description = "ubuntu"
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


variable "vm_web_resources"{
type = map
default = {
  cores = 2
  memory = 1
  core_fraction = 5
}
}

variable "vm_db_vmname" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "vmname_db"
}

variable "vm_db_resources"{
type = map
default = {
  cores = 2
  memory = 2
  core_fraction = 20
}
}