variable "image_id" {
  description = "OS Image ID"
  type        = string
  #default     = "fd80qm01ah03dkqb14lc"	#ubuntu 2004
  default = "fd87c0qpl9prjv5up7mc"	# ubuntu 24
  #default     = "fd86r2ig4hcmk7gk1928"	# freebsd

}

variable "zone_id" {
  description = "Zone ID"
  type        = string
  default     = "ru-central1-a"
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
  default     = "e9bs1c78bc49gtu8vbe0"
}

variable "network_zone" {
  description = "Yandex.Cloud network availability zones"
  type        = string
  default     = "ru-central1-a"
}
