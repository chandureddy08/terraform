locals {
  ami_id = "ami-090252cbe067a9e58"
  sg_id = "sg-0ad74b957b6b7351f"
  #instance_type = "t2.micro"
  instance_type = var.instance_name == "db" ? "t2.small" : "t2.micro"
  subnet_id = "subnet-02438e2af84b2481e"
  tags ={
    Name = "db"
  }

}