resource "aws_route_table" "route_table" {
  
  vpc_id = aws_vpc.eks_dev_vpc
  
  dynamic "route" {
    for_each = aws_subnet.eks_subnets
    content {
      cidr_block = "0.0.0.0/0"
      nat_gateway = aws_nat_gateway.nat_gateway[each.key].id
    }
  }
  dynamic "tags" {
    for_each = aws_subnet.eks_subnets
    content {
      Name = each.key
    }
  }
}