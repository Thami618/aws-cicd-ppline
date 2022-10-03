resource "aws_vpc" "tf_demo" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_hostnames = false
    tags = {
      "Name" = "tf_demo"
    }
}
resource "aws_subnet" "subnet-tf-public" {
    vpc_id = aws_vpc.tf_demo.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    tags = {
      "Name" = "subnet-tf-public"
    }
}
resource "aws_subnet" "subnet-tf-private1" {
    vpc_id = aws_vpc.tf_demo.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1b"
    tags = {
      "Name" = "subnet-tf-private"
    }
}
