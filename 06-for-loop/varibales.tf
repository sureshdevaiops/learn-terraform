variable "environment" {
    default = "dev"
}

variable "project" {
    default = "roboshop"
}

variable "ami_id" {
  type        = string
  default     = "ami-0055977a6e828a4f4"
  description = "AMI ID of the instacne"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance type of EC2"

  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.large"], var.instance_type)
    error_message = "Instance type must be one of t3.micro, t3.small, t3.large"
  }
}

variable "instances" {
    type = map
    default = {
        mongodb = {
            instance_type = "t3.micro"
            port_no = 27017
        },
        redis = {
            instance_type = "t3.micro"
            port_no = 6379
        },
        mysql = {
            instance_type = "t3.micro"
            port_no = 3306
        },
        rabbitmq = {
            instance_type = "t3.micro"
            port_no = 5672
        },
        catalogue = {
            instance_type = "t3.micro"
            port_no = 8080
        },
        user = {
            instance_type = "t3.micro"
            port_no = 8080
        },
        cart = {
            instance_type = "t3.micro"
            port_no = 8080
        },
        shipping = {
            instance_type = "t3.micro"
            port_no = 8080
        },
        payment = {
            instance_type = "t3.micro"
            port_no = 8080
        },
        frontend = {
            instance_type = "t3.micro"
            port_no = 80
        }
    }
}

variable "zone_id" {
  default = "Z02114601C4WQYAIZ4N8K"
}

variable "domain_name" {
    default = "ksrdaws92s.store"
  
}