variable "subnet_id" {
  description = "Subnet ID"
  type        = string
  default     = "e9bs1c78bc49gtu8vbe0"
}

variable "cloud_id" {
  description = "Cloud ID"
  type        = string
  default     = "b1g3jddf4nv5e9okle7p"
}

variable "folder_id" {
  description = "Folder ID"
  type        = string
  default     = "b1g3ht3298osdcvd027i"
  #  default     = "b1gjl0mvmfr2qade13rn" #tshoot
}

variable "image_id" {
  description = "OS Image ID"
  type        = string
  #  default     = "fd80qm01ah03dkqb14lc"
  default = "fd87c0qpl9prjv5up7mc"
}

variable "zone_id" {
  description = "Zone ID"
  type        = string
  default     = "ru-central1-a"
}

# Accept network_id as a variable
#variable "network_id" {
#  description = "The ID of the VPC network"
#}

#variable "network_zone" {
#  description = "Yandex.Cloud network availability zones"
#  type        = string
#  default     = "ru-central1-a"
#}
