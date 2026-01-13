output "vpc_id" { value = aws_vpc.this.id }
output "public_subnet_id" { value = aws_subnet.public.id }
output "rds_subnet_id" {
  value = aws_subnet.rds_public.id
}
output "vpc_name" {
  value = var.vpc_name 
}