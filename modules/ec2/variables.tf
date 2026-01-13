variable "ami_id" {
default = "ami-04808bdb94be6720e" 
}
variable "instance_type" {
default = "t2.micro"
}
variable "subnet_id" {
default = null
}

variable "instance_name" {
default = "public-ec2"
  
}