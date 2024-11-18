### Variables for VPC

variable "aws_region" {
  description = "The AWS region to create resources in"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC"
  default     = "main-vpc"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "public_subnet_name" {
  description = "The name of the public subnet"
  default     = "public-subnet"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "private_subnet_name" {
  description = "The name of the private subnet"
  default     = "private-subnet"
}

variable "availability_zone" {
  description = "The availability zone for subnets"
  default     = "us-east-1a"
}

variable "internet_gateway_name" {
  description = "The name of the Internet Gateway"
  default     = "main-internet-gateway"
}

variable "public_route_table_name" {
  description = "The name of the public route table"
  default     = "public-route-table"
}

variable "private_route_table_name" {
  description = "The name of the private route table"
  default     = "private-route-table"
}
