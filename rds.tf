resource "aws_db_instance" "rds" {
  identifier             = var.rds_identifier
  allocated_storage      = 10
  max_allocated_storage  = 50
  engine                 = "mysql"
  engine_version         = "8.0.20"
  instance_class         = "db.t2.micro"
  name                   = var.rds_db_name
  username               = var.rds_user
  password               = var.rds_passwd
  port                   = var.rds_port
  db_subnet_group_name   = aws_db_subnet_group.iti.id
  vpc_security_group_ids = [aws_security_group.rds.id]
  skip_final_snapshot    = true

  tags = {
    "Name" = "iti-rds"
  }
}

resource "aws_db_subnet_group" "iti" {
  name       = "iti-rds-subnet"
  subnet_ids = [module.network.public2_id, module.network.public4_id]

  tags = {
    Name = "iti"
  }
}
