# # Provider configuration
# provider "aws" {
# region = var.region
# }

# # Security Group allowing SSH and HTTP
# resource "aws_security_group" "ec2_security_group" {
#   vpc_id = var.vpc_id

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from anywhere
#   }

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]  # Allow HTTP from anywhere
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
#   }

#   tags = {
#     Name = "ec2-security-group"
#   }
# }

# # EC2 Instance
# resource "aws_instance" "example_ec2" {
#   ami           = var.ami_id
#   instance_type = var.instance_type

#   subnet_id              = var.public_subnet_id
#   vpc_security_group_ids = [aws_security_group.ec2_security_group.id]

#   key_name = var.key_name

#   tags = {
#     Name = "example-ec2-instance"
#   }
# }
