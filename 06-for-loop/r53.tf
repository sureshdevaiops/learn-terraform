resource "aws_route53_record" "roboshop" {
  for_each = aws_instance.roboshop # EC2 output will become input to r53
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" # mongodb.ksrdaws92s.store
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}

resource "aws_route53_record" "frontend" {
  count = contains(keys(var.instances), "frontend") ? 1 : 0
  zone_id = var.zone_id
  name    = "${var.domain_name}"  #ksrdaws92s.store
  type    = "A"
  ttl     = 1
  records = [lookup(aws_instance.roboshop, "frontend").public_ip]  # lookup funcation we used here
  allow_overwrite = true
}




