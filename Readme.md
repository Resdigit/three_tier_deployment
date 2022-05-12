## Creates basic three tier deployment of VPC with EC2's  in private and public Subnets and a database, These EC2's have Apache Serve installed. I use it for when i study. 

It uses the latest AMI and adds you current IP address to Security Group ingress_cidr_blocks.

The End.


terraform plan -var-file="terraform.tfvars"