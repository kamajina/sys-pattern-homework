vms_resources = {
  web = {
    cores         = 2
    memory        = 1
    core_fraction = 20
    disk_type     = "network-hdd"
    disk_size     = 10
    preemptible   = true
    nat           = true
    platform_id   = "standard-v3"
  }
  db = {
    cores         = 2
    memory        = 2
    core_fraction = 20
    disk_type     = "network-hdd"
    disk_size     = 10
    preemptible   = true
    nat           = true
    platform_id   = "standard-v3"
  }
}

metadata = {
  serial-port-enable = "1"
  ssh-keys           = "ubuntu:ssh-rsa "
}