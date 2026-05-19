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

variable "vm_web_platform" {
  type        = string
  default     = "standard-v3"
  description = "platform ID"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "cores"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "RAM"
}

variable "vm_web_fraction" {
  type        = number
  default     = 20
  description = "fraction"
}

variable "vm_web_disk" {
  type        = string
  description = "disk type"
  default     = "network-hdd"
}

variable "vm_web_disk_size" {
  type        = number
  default     = 10
  description = "disk size"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "preemptible"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "NAT"
}