# # Provider configuration
# provider "aws" {
#   region = "us-east-1"  # Change this to your preferred region
# }

# # Security Group allowing SSH and HTTP
# resource "aws_security_group" "ec2_security_group" {
#   vpc_id = "vpc-0e38705949e1b8a24"

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
#   ami           = "ami-012967cc5a8c9f891"  # Amazon Linux 2 AMI ID (update this as needed)
#   instance_type = "t2.micro"               # Free tier instance type (adjust as needed)

#   subnet_id              = "subnet-09e5aa2470abbd59f"
#   vpc_security_group_ids = [aws_security_group.ec2_security_group.id]

#   key_name = "dev"  # Replace with your key pair name

#   tags = {
#     Name = "example-ec2-instance"
#   }
# }


################################################################


# Provider configuration
provider "aws" {
  region = "us-east-1"  # Change this to your preferred region
}

# Security Group allowing SSH and HTTP
resource "aws_security_group" "ec2_security_group" {
  vpc_id = "vpc-0e38705949e1b8a24"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH from anywhere
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTP from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }

  tags = {
    Name = "ec2-security-group"
  }
}

# EC2 Instance
resource "aws_instance" "example_ec2" {
  ami           = "ami-012967cc5a8c9f891"  # Amazon Linux 2 AMI ID (update this as needed)
  instance_type = "t2.micro"               # Free tier instance type (adjust as needed)

  subnet_id              = "subnet-09e5aa2470abbd59f"
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]

  key_name = "dev"  # Replace with your key pair name

  # User Data script to install Apache
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<html><h1>Apache Web Server Running in Terrafrom Class</h1></html>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "example-ec2-instance"
  }
}



