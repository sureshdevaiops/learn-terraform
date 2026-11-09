variable "ingress_rules" {
    default = {
        ssh = {
            port = 22
            cidr_blocks = ["0.0.0.0/0"]
            description = "Opening port 22 from all IP for SSH access"
        },
        mysql = {
            port = 3306
            cidr_blocks = ["0.0.0.0/0"]
            description = "Opening port 3306 for database access"
        },
        http = {
            port = 80
            cidr_blocks = ["0.0.0.0/0"]
            description = "Opening port 80 for web access"
        },
        tcp = {
            port = 8081
            cidr_blocks = ["0.0.0.0/0"]
            description = "Opening port 8081 for custom protocol"
        }
    }
  
}