variable "vpc_name" {
    type = string
}

variable "subnets" {
    type = map(object({
        az = string
        cidr = string
    }))
}