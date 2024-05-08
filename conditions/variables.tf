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

variable "instance_name" {
    default = "frontend"
}