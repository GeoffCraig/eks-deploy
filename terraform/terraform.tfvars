vpc_name = "EKS DEV VPC"
subnets = [
    {
        az = "us-east-2a"
        cidr = "10.0.0.0/20"
    },
    {
        az = "us-east-2b"
        cidr = "10.0.16.0/20"
    },
    {
        az = "us-east-2c"
        cidr = "10.0.32.0/20"
    }
]