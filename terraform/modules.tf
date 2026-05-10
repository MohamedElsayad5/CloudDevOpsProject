module "network" {
  source = "./modules/network"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
}

module "security" {
  source = "./modules/security-group"

  vpc_id   = module.network.vpc_id
  ssh_cidr = "196.135.150.93/32"
}

module "jenkins" {
  source = "./modules/server"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.security.security_group_id
  key_name          = var.key_name
  name              = "jenkins-server"
}