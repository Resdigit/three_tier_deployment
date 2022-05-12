output "public_IP_Weberver1" {
  value = aws_instance.webserver1.public_ip
}

output "public_IP_Weberver2" {
  value = aws_instance.webserver2.public_ip
}


output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.external-elb.dns_name
}