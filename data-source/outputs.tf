output "aws_vpc" {
    value = data.aws_vpc.default.id
}
output "aws_security_group" {
    value = data.aws_security_group.sg_id.id
  
}
output "aws_internet_gateway"{
    value = data.aws_internet_gateway.chandu.id
}

# output "ami_id" {
#     value = data.aws_ami.rhel.id
  
# }