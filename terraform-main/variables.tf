variable "flow" {
  type    = string
  default = "24-01"
}

variable "cloud_id" {
  type    = string
  default = "b1gcbbk2u93go9vs8jgb"
}
variable "folder_id" {
  type    = string
  default = "b1gan2291vb9tp61ratp"
}

variable "test" {
  type = map(number)
  default = {
    cores         = 2
    memory        = 1
    core_fraction = 20
  }
}
