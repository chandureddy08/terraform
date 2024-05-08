resource "aws_instance" "chandu" {
    ami = var.images_id
    instance_type = var.instance_name == "db" ? "t2.large" : "t2.micro"
    subnet_id = "subnet-02438e2af84b2481e"

    tags = var.tags
}
