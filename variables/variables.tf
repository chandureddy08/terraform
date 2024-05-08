variable "images_id" {
    type = string
    default = "ami-090252cbe067a9e58l"
    description = "Amazon machine image id"
  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "db"
        Name = "db"
    }  
}

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

