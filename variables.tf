#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}


variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `organization`, `environment`, `name` and `attributes`."
}

#Module      : Droplet
variable "droplet_enabled" {
  type        = bool
  default     = true
  description = "Flag to control the droplet creation."
}

variable "region" {
  type        = string
  default     = "bangalore-1"
  description = "The region to create VPC, like ``london-1`` , ``bangalore-1`` ,``newyork-3`` ``toronto-1``. "
}

variable "backups" {
  type        = bool
  default     = false
  description = "Boolean controlling if backups are made. Defaults to false."
}

variable "block_storage_filesystem_label" {
  type        = string
  default     = "data"
  description = "Initial filesystem label for the block storage volume."
}

variable "block_storage_filesystem_type" {
  type        = string
  default     = "xfs"
  description = "Initial filesystem type (xfs or ext4) for the block storage volume."
}

variable "block_storage_size" {
  type        = number
  default     = 0
  description = "(Required) The size of the block storage volume in GiB. If updated, can only be expanded."
}

variable "custom_image" {
  type        = bool
  default     = false
  description = "Whether the image is custom or not (an official image)"
}

variable "droplet_count" {
  type        = number
  default     = 1
  description = "The number of droplets / other resources to create"
}


variable "createdby" {
  type        = string
  default     = "terraform"
  description = "CreatedBy, eg 'terraform'."
}

variable "droplet_size" {
  type        = string
  default     = "micro"
  description = "the size slug of a droplet size"
}

variable "floating_ip" {
  type        = bool
  default     = false
  description = "(Optional) Boolean to control whether floating IPs should be created."
}

variable "floating_ip_assign" {
  type        = bool
  default     = true
  description = "(Optional) Boolean controlling whether floatin IPs should be assigned to instances with Terraform."
}

variable "floating_ip_count" {
  type        = string
  default     = ""
  description = "Number of floating IPs to create."
}

variable "image_id" {
  type        = string
  default     = ""
  description = "The id of an image to use."
}

variable "image_name" {
  type        = string
  description = "The image name or slug to lookup."
  default     = "ubuntu-18-04-x64"
}

variable "ipv6" {
  type        = bool
  default     = false
  description = "(Optional) Boolean controlling if IPv6 is enabled. Defaults to false."
}

variable "monitoring" {
  type        = bool
  default     = false
  description = "(Optional) Boolean controlling whether monitoring agent is installed. Defaults to false."
}

variable "private_networking" {
  type        = bool
  default     = false
  description = "(Optional) Boolean controlling if private networks are enabled. Defaults to false."
}

variable "resize_disk" {
  type        = bool
  default     = true
  description = "(Optional) Boolean controlling whether to increase the disk size when resizing a Droplet. It defaults to true. When set to false, only the Droplet's RAM and CPU will be resized. Increasing a Droplet's disk size is a permanent change. Increasing only RAM and CPU is reversible."
}

variable "ssh_keys" {
  type        = list(any)
  default     = []
  description = "(Optional) A list of SSH IDs or fingerprints to enable in the format [12345, 123456]. To retrieve this info, use a tool such as curl with the DigitalOcean API, to retrieve them."
}

variable "user_data" {
  type        = string
  default     = ""
  description = "(Optional) A string of the desired User Data for the Droplet."
}

variable "vpc_uuid" {
  type        = string
  default     = ""
  description = "The ID of the VPC where the Droplet will be located."
}
