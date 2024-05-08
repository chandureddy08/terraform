#ec2 variables
variable "instance_name" {
    type = list
    default = ["db","backend","frontend"]
}

variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "Amazon machine image id"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "Yes"
    }  
}

#sg variables
variable "sg_name" {
    default = "chandu_allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
  type = list(string)
}

#r53 variables
variable "zone_id" {
    default = "Z1007947UZZMRR34QF56"
    type = string
}

variable "domain_name" {
    default = "chandureddy.online"
    type = string
}