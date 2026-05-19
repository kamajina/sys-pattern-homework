resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

resource "yandex_vpc_subnet" "develop2" {
  name           = var.vpc_name2
  zone           = var.default_zone2
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr2
}

data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_family
}
resource "yandex_compute_instance" "platform" {
  name        = local.web_vm
  # platform_id = var.vm_web_platform
  # resources {
  #   cores         = var.vm_web_cores
  #   memory        = var.vm_web_memory
  #   core_fraction = var.vm_web_fraction
  platform_id = var.vms_resources["web"].platform_id 
  resources {
    cores         = var.vms_resources["web"].cores
    memory        = var.vms_resources["web"].memory
    core_fraction = var.vms_resources["web"].core_fraction
 }  
  
  # boot_disk {
  #   initialize_params {
  #     image_id = data.yandex_compute_image.ubuntu.image_id
  #     type     = var.vm_web_disk
  #     size     = var.vm_web_disk_size
  #  }
  boot_disk {
    initialize_params {
     image_id = data.yandex_compute_image.ubuntu.image_id
     type     = var.vms_resources["web"].disk_type
     size     = var.vms_resources["web"].disk_size
    }
  }
  #scheduling_policy {
  #  preemptible = var.vm_web_preemptible
  scheduling_policy {
    preemptible = var.vms_resources["web"].preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
  #  nat       = var.vm_web_nat
    nat       = var.vms_resources["web"].nat
  }

  # metadata = {
  #   serial-port-enable = 1
  #   ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  # }
  metadata = var.metadata
}

#2


resource "yandex_compute_instance" "platform2" {
  name        = local.db_vm
  # platform_id = var.vm_db_platform
  # resources {
  #   cores         = var.vm_db_cores
  #   memory        = var.vm_db_memory
  #   core_fraction = var.vm_db_fraction
  # }
  platform_id = var.vms_resources["db"].platform_id
  resources {
    cores         = var.vms_resources["db"].cores
    memory        = var.vms_resources["db"].memory
    core_fraction = var.vms_resources["db"].core_fraction
  }
  # boot_disk {
  #   initialize_params {
  #     image_id = data.yandex_compute_image.ubuntu.image_id
  #     type     = var.vm_db_disk
  #     size     = var.vm_db_disk_size
  # }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      type     = var.vms_resources["db"].disk_type
      size     = var.vms_resources["db"].disk_size
    }
  }

  scheduling_policy {
  #  preemptible = var.vm_db_preemptible
    preemptible = var.vms_resources["db"].preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
  #  nat       = var.vm_db_nat
    nat       = var.vms_resources["db"].nat
  }

  # metadata = {
  #   serial-port-enable = 1
  #   ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  # }
  metadata = var.metadata
}
