variable "aws_region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "flask-eks-cluster"
}

variable "vpc_name" {
  default = "flask-vpc"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  default = [
    "10.0.3.0/24",
    "10.0.4.0/24"
  ]
}

variable "azs" {
  default = [
    "ap-south-1a",
    "ap-south-1b"
  ]
}