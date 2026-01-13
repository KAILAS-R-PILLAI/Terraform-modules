resource "aws_db_subnet_group" "this" {
  name       = "rds-subnet-group"
  subnet_ids = [var.subnet_id, var.rds_subnet_id]  
  tags = {
    Name = "RDS-SubnetGroup"
  }
}


resource "aws_db_instance" "this" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = var.username
  password             = var.password
  publicly_accessible  = true
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.this.name
}
