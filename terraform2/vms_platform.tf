###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default = ""
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default = ""
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa 
  description = "ssh-keygen -t ed25519"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "family name"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "name"
}

#variable "vm_web_platform" {
#  type        = string
#  default     = "standard-v3"
#  description = "platform ID"
#}

#variable "vm_web_cores" {
#  type        = number
#  default     = 2
#  description = "cores"
#}

#variable "vm_web_memory" {
#  type        = number
#  default     = 1
#  description = "RAM"
#}

#variable "vm_web_fraction" {
#  type        = number
#  default     = 20
#  description = "fraction"
#}

#variable "vm_web_disk" {
#  type        = string
#  description = "disk type"
#  default     = "network-hdd"
#}

#variable "vm_web_disk_size" {
#  type        = number
#  default     = 10
#  description = "disk size"
#}

#variable "vm_web_preemptible" {
#  type        = bool
#  default     = true
#  description = "preemptible"
#}

#variable "vm_web_nat" {
#  type        = bool
#  default     = true
#  description = "NAT"
#}

###cloud vars


variable "cloud_id2" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
  default = ""
}

variable "folder_id2" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
  default = ""
}

variable "default_zone2" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr2" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name2" {
  type        = string
  default     = "db"
  description = "VPC network & subnet name"
}

###ssh vars

variable "vms_ssh_root_key2" {
  type        = string
  default     = "ssh-rsa 
}

variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "family name"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "name"
}

#variable "vm_db_platform" {
#  type        = string
#  default     = "standard-v3"
#  description = "platform ID"
#}

#variable "vm_db_cores" {
#  type        = number
#  default     = 2
#  description = "cores"
#}

#variable "vm_db_memory" {
#  type        = number
#  default     = 2
#  description = "RAM"
#}

#variable "vm_db_fraction" {
#  type        = number
#  default     = 20
#  description = "fraction"
#}

#variable "vm_db_disk" {
#  type        = string
#  description = "disk type"
#  default     = "network-hdd"
#}

#variable "vm_db_disk_size" {
#  type        = number
#  default     = 10
#  description = "disk size"
#}

#variable "vm_db_preemptible" {
#  type        = bool
#  default     = true
#  description = "preemptible"
#}

#variable "vm_db_nat" {
#  type        = bool
#  default     = true
#  description = "NAT"
#}

                      #outputs

variable "vm_web_a" {
  type        = string
  description = "name1"
  default     = "grr"
} 

variable "vm_web_b" {
  type        = string
  description = "name1"
  default     = "netology"
}

variable "vm_web_c" {
  type        = string
  description = "name1"
  default     = "web"
}

variable "vm_db_d" {
  type        = string
  description = "name1"
  default     = "grr"
}

variable "vm_db_e" {
  type        = string
  description = "name1"
  default     = "netology"
}

variable "vm_db_f" {
  type        = string
  description = "name1"
  default     = "db"
}


#map
variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    disk_type     = string
    disk_size     = number
    preemptible   = bool
    nat           = bool
    platform_id   = string
  }))
  description = "VM resources configuration for all instances"
}

variable "metadata" {
  type = map(string)
  description = "metadata"
  default = {
    serial-port-enable = "1"
  }
}