resource "aws_instance" "db" {
    ami = local.ami_id
    vpc_security_group_ids = [local.sg_id]
    instance_type = local.instance_type
    subnet_id = local.subnet_id

    tags = local.tags
}
