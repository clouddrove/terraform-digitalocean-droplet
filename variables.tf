#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "application" {
  type        = string
  default     = ""
  description = "Application (e.g. `cd` or `clouddrove`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list
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
  description = "(Required) The size of the block storage volume in GiB. If updated, can only be expanded."
  default     = 0
}

variable "custom_image" {
  description = "Whether the image is custom or not (an official image)"
  default     = false
}

variable "droplet_count" {
  description = "The number of droplets / other resources to create"
  default     = 1
}


variable "createdby" {
  type        = string
  default     = "terraform"
  description = "CreatedBy, eg 'terraform'."
}

variable "droplet_size" {
  description = "the size slug of a droplet size"
  default     = "micro"
}

variable "floating_ip" {
  description = "(Optional) Boolean to control whether floating IPs should be created."
  default     = false
}

variable "floating_ip_assign" {
  description = "(Optional) Boolean controlling whether floatin IPs should be assigned to instances with Terraform."
  default     = true
}

variable "floating_ip_count" {
  description = "Number of floating IPs to create."
  default     = ""
}

variable "image_id" {
  description = "The id of an image to use."
  default     = ""
}

variable "image_name" {
  description = "The image name or slug to lookup."
  default     = "ubuntu-18-04-x64"
}

variable "ipv6" {
  description = "(Optional) Boolean controlling if IPv6 is enabled. Defaults to false."
  default     = false
}

variable "monitoring" {
  description = "(Optional) Boolean controlling whether monitoring agent is installed. Defaults to false."
  default     = false
}

variable "private_networking" {
  description = "(Optional) Boolean controlling if private networks are enabled. Defaults to false."
  default     = false
}

variable "resize_disk" {
  description = "(Optional) Boolean controlling whether to increase the disk size when resizing a Droplet. It defaults to true. When set to false, only the Droplet's RAM and CPU will be resized. Increasing a Droplet's disk size is a permanent change. Increasing only RAM and CPU is reversible."
  default     = true
}

variable "ssh_keys" {
  description = "(Optional) A list of SSH IDs or fingerprints to enable in the format [12345, 123456]. To retrieve this info, use a tool such as curl with the DigitalOcean API, to retrieve them."
  default     = []
}

variable "user_data" {
  description = "(Optional) A string of the desired User Data for the Droplet."
  default     = ""
}
