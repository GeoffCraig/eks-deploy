resource "aws_subnet" "eks_subnets" {
    for_each = var.subnets
    
    vpc_id = aws_vpc.eks_dev_vpc.id
    cidr_block = each.value.cidr
    availability_zone = each.value.az
}