output "instance_public_ip" {
  description = "The public IP address EC2 Cluster"
  value       = aws_instance.mycluster.public_ip
}

output "instance_url" {
  description = "The URL to access the My cluster"
  value       = "http://${aws_instance.mycluster.public_ip}"
}