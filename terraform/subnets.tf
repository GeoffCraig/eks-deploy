resource "aws_subnets" "eks_subnets" {
    for_each = var.subnets
    
    vpc_id = aws_vpc.eks_dev_vpc.id
    cidr_block = each.cidr
    availability_zone = each.az
}