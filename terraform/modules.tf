module "network" {
  source = "./modules/network"

  vpc_cidr = var.vpc_cidr

  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.3.0/24"]
  private_subnet_cidrs = ["10.0.2.0/24", "10.0.4.0/24"]

  azs          = ["us-east-1a", "us-east-1b"]
  project_name = var.project_name

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
  subnet_id         = module.network.public_subnet_ids[0]
  security_group_id = module.security.security_group_id
  key_name          = var.key_name
  name              = "jenkins_server"
}
module "eks" {
  source = "./modules/eks"

  cluster_name       = "devops-cluster"
  subnet_ids         = module.network.private_subnet_ids
  node_instance_type = "t3.small"
}

module "ecr" {
  source    = "./modules/ecr"
  repo_name = "myapp"
}