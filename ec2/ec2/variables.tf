variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"  # Change this as needed
}

variable "vpc_id" {
  description = "ID of the VPC where the EC2 instance will be deployed"
  type        = string
}

variable "public_subnet_id" {
  description = "ID of the public subnet"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"  # Free tier eligible
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 (update as needed)
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
 
 
}
