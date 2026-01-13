output "instance_id" {
  value = aws_instance.this.id
}

output "instance_name" {
  value = var.instance_name
}