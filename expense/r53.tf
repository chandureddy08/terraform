resource "aws_route53_record" "expense" {
    zone_id = var.zone_id
    count = length(var.instance_name)
    type = "A" 
    ttl = 1
    allow_overwrite = true
    #if recors exists it will overwrite
    records = var.instance_name[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
    name = var.instance_name[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${var.domain_name}"
     ##inter polation adding and calling two variables at a time
}