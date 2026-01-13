variable "vpc_name" {
  default = "public-vpc"
}
variable "subnet_name" {
  default = "prod-public"
}

variable "rds_subnet_name" {
  default = "prod-rds-public"
}


variable "route_table" {
  default = "prod-rt"
}

variable "aws_igw" {
  default = "public-igw"
}



variable "vpc_cidr" {
default = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
default = "10.0.1.0/24"
}

variable "rds_subnet_cidr" { 
  default = "10.0.2.0/24" 
  }
variable "az1" { default = "ap-south-1a" }
variable "az2" { default = "ap-south-1b" }
