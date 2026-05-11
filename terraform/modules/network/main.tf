resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "main-vpc"
  }
}

# PUBLIC SUBNETS (2 AZs REQUIRED FOR EKS)
resource "aws_subnet" "public" {
  count = 2

  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidrs[count.index]
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = true

 tags = {
  Name = "public-subnet-${count.index}"

  "kubernetes.io/cluster/devops-cluster" = "shared"
  "kubernetes.io/role/elb"               = "1"
}
}

# PRIVATE SUBNETS (2 AZs)
resource "aws_subnet" "private" {
  count = 2

  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidrs[count.index]
  availability_zone = var.azs[count.index]

  tags = {
  Name = "private-subnet-${count.index}"

  "kubernetes.io/cluster/devops-cluster"    = "shared"
  "kubernetes.io/role/internal-elb"         = "1"
}
}