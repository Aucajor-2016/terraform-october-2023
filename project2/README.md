# terraform-october-2023

module "vpc" {

    region = "us-east-2"
    key_name = "group-2"
    vpc_cidr = "10.0.0.0/16"
    vpc_name = "group-2"
    subnet1_cidr = "10.0.1.0/24"
    subnet2_cidr = "10.0.2.0/24"
    subnet3_cidr = "10.0.3.0/24"
    instance_type = "t2.micro"
    type = true
}