resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}


data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image_name
}

resource "yandex_compute_instance" "vm_web" {
# name        = var.vm_web_vmname
  name = "${ local.org }-${ local.project }-${ local.instance }-web"
  platform_id = "standard-v1"
  allow_stopping_for_update = true

  resources {
    cores  = var.vm_web_resources.cores
    memory = var.vm_web_resources.memory
    core_fraction = var.vm_web_resources.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

metadata  =  var.auth-ssh

/* 
  metadata = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  }
 */

  }

resource "yandex_compute_instance" "vm_db" {
# name        = var.vm_db_vmname
  name = "${ local.org }-${ local.project }-${ local.instance }-db"
  platform_id = "standard-v1"
  allow_stopping_for_update = true

  resources {
    cores  = var.vm_db_resources.cores
    memory = var.vm_db_resources.memory
    core_fraction = var.vm_db_resources.core_fraction
  }
  
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata  =  var.auth-ssh
  
  
}



