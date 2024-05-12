resource "aws_instance" "chandu" {
  for_each = var.instance_names
  ami = var.ami_id
  vpc_security_group_ids = ["sg-0ad74b957b6b7351f"]
  instance_type = each.value
  subnet_id = "subnet-02438e2af84b2481e"

  tags = merge(
    var.common_tags,
    {
      Name = each.key
      Module = each.key
    }
  )
}