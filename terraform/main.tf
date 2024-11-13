provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "hubii_db" {
  identifier        = "my-db-instance"
  engine            = "mysql"
  instance_class    = "db.t2.micro"
  allocated_storage = 20
  username          = "admin"
  password          = "Hubii@sre"
  db_name           = "mydb"
  skip_final_snapshot = true
}
