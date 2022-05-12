vpc_name = "EKS DEV VPC"
subnets = {
    "subnet1" = {
        az = "us-east-2a"
        cidr = "10.0.0.0/20"
    },
    "subnet2" = {
        az = "us-east-2b"
        cidr = "10.0.16.0/20"
    },
    "subnet3" = {
        az = "us-east-2c"
        cidr = "10.0.32.0/20"
    }
}