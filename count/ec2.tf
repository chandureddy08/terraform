resource "aws_instance" "chandu" {
    count = length(var.instance_names)
    #count = 3
    ami = "ami-090252cbe067a9e58"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.chandu_allow_ssh.id]
    subnet_id = "subnet-02438e2af84b2481e"
    tags = {
      Name = var.instance_names[count.index]
    }
}

resource "aws_security_group" "chandu_allow_ssh" {
    name = "chandu_allow_ssh"
    description = "aalowing ssh access"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
      Name = "chandu_allow_ssh"
      CreatedBy = "chandu reddy"
    }
  
}