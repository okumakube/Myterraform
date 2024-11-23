output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.example_ec2.id
}

#output "apache_url" {
#  description = "The Apache Web Server URL"
#  value       = "http://${aws_instance.example_ec2.public_ip}:80"
#}
