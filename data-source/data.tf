data "aws_vpc" "default" {
    default = true
}
data "aws_security_group"  "sg_id"{
    
    filter {
        name = "group-name"
        values = ["allow-all"]
    }
}
data "aws_internet_gateway" "chandu" {
    filter {
      name = "attachment.vpc-id"
      values = ["vpc-0edd64d1710f3e23f"]
    }
}


# data "aws_ami" "rhel" {

#     most_recent = true
#     owners = ["973714476881"]
    
#     filter {
#         name = "name"
#         values = ["RHEL-9-DevOps-practice"]
#     }
#     filter {
#         name = "root-device-type"
#         values = ["ebs"]
#     }
#   filter {
#         name = "virtualization-type"
#         values = ["hvm"]
#   }
# }