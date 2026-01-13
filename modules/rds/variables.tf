variable "subnet_id" {
  description = "First public subnet ID"
}

variable "rds_subnet_id" {
  description = "Second public subnet ID for RDS"
}

variable "username" {
  default = "admin"
}

variable "password" {
  default = "Admin12345"
}
