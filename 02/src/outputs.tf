output "external_ip_vmweb"{
value = yandex_compute_instance.vm_web.network_interface.0.nat_ip_address
value = yandex_compute_instance.vm_db.network_interface.0.nat_ip_address
}