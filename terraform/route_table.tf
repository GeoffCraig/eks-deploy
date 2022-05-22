resource "aws_route_table" "route_table" {
  for_each = aws_subnet.eks_subnets
  vpc_id = aws_vpc.eks_dev_vpc
  
  route {
      cidr_block = "0.0.0.0/0",
      nat_gateway_id = aws_nat_gateway.nat_gateway[each.key].id

    }
  tags =  {
    Name = each.key
  }
}