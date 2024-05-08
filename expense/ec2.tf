resource "aws_instance" "expense" {
    count = length(var.instance_name)
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.chandu_allow_ssh.id]
    instance_type = var.instance_name[count.index] == "db" ? "t2.micro" : "t2.micro"
    subnet_id = "subnet-02438e2af84b2481e"

    tags = merge(
      var.common_tags,
      {
        Name = var.instance_name[count.index]
        Module = var.instance_name[count.index]
      }

    )
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
        cidr_blocks = var.cidr_blocks
    }
    tags = {
      Name = "chandu_allow_ssh"
      CreatedBy = "chandu reddy"
    }
  
}