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
  default = "jenkins-key"
}