resource "aws_instance" "chandu" {
    ami = var.images_id
    vpc_security_group_ids = [aws_security_group.chandu_allow_ssh.id]
    instance_type = var.instance_type
    subnet_id = "subnet-02438e2af84b2481e"

    tags = var.tags
}

resource "aws_security_group" "chandu_allow_ssh" {
    name = var.sg_name
    description = var.sg_description

    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        protocol = var.protocol
        cidr_blocks = var.cidr_blocks
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