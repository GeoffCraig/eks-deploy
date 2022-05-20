resource "aws_nat_gateway" "nat_gateway" {
    for_each = aws_subnet.eks_subnets

    connectivity_type = "private"
    subnet_id = each.value.id
    tags = {
        Name = each.key
    }
}