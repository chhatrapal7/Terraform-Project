resource "aws_security_group" "rds_sg" {
  name = "rds_sg"
  description = "Security group for RDS instance"
  
  ingress {
       from_port = 5432
       to_port   = 5432
       protocol = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
       
  }
  egress {
      to_port = 0
from_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
  }

  tags ={
    Name = "RDS Security Group"
  }
  
  }

resource "aws_db_subnet_group" "rds_subnet_group" {
  name = "rds_subnet_group"
  subnet_ids = [subnet-0579964b47796f8fd, subnet-064453a030d423413]
  tags = {
    Name = "RDS_SUBNET_GROUP"
  }
}

resource "aws_db_instance" "rds_instance" {
  allocated_storage = var.allocated_storage
  engine = var.db_engine
  engine_version = var.db_engine_version
  instance_class = var.db_instance_class
  db_name = var.db_name
  username = var.db_username
  password = var.db_password 
  parameter_group_name = var.db_parameter_group_name
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  backup_retention_period = var.backup_retention_period
   backup_window = var.backup_window
  maintenance_window = var.maintenance_window
  skip_final_snapshot = true
  tags = {
    Name = "Terraform_RDS_Instance"
  }



}














