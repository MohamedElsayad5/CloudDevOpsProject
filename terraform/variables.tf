variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "ami_id" {
  default = "ami-04a81a99f5ec58529"
}

variable "instance_type" {
  default = "t3.small"
}

variable "key_name" {
  default = "devops-key"
}
variable "project_name" {
  default = "jenkins_project"
}
variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b"]
}