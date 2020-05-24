provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"
  #
}

module "vpc" {
  source      = "git::https://github.com/clouddrove/terraform-digitalocean-vpc.git?ref=tags/0.12.0"
  name        = "vpc"
  application = "clouddrove"
  environment = "test"
  label_order = ["environment", "application", "name"]
  enable_vpc  = true
  region      = "bangalore-1"
}


module "ssh_key" {
  source         = "git::https://github.com/clouddrove/terraform-digitalocean-ssh-key.git?ref=tags/0.12.0"
  key_path       = "~/.ssh/id_rsa.pub"
  key_name       = "devops"
  enable_ssh_key = true
}

module "droplet" {
  source             = "./../"
  name               = "droplet"
  application        = "clouddrove"
  environment        = "test"
  label_order        = ["environment", "application", "name"]
  droplet_count      = 1
  region             = "bangalore-1"
  ssh_keys           = [module.ssh_key.fingerprint]
  vpc_uuid           = module.vpc.id
  droplet_size       = "nano"
  monitoring         = false
  private_networking = true
  ipv6               = false
  floating_ip        = true
  block_storage_size = 5
  user_data          = file("user-data.sh")
}
