output "instances_info" {
  #value = aws_instance.roboshop
  value = aws_instance.roboshop[0].private_ip
}


# terraform output -json > outputs.json
