terraform {
  backend "local" {
    path = "./state/terraform.tfstate"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}

resource "aws_db_instance" "db" {
    allocated_storage    = 2000
    engine               = "mysql8"
    engine_version       = "8.0.28"
    instance_class       = "db.t4g.micro"
    db_name              = "testdb"
    username             = "testuser"
    password             = "testpassword"
    max_allocated_storage = 0
    parameter_group_name = "default.mysql8.0"
 }
