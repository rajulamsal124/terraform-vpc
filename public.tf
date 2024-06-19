resource "aws_internet_gateway" "amc-vpc-igw" {
  vpc_id = aws_vpc.amc-vpc.id
  tags   = merge(var.tags, {})
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.amc-vpc.id
  tags              = merge(var.tags, {})
  cidr_block        = var.subnets.b
  availability_zone = "us-east-2b"
}

resource "aws_eip" "eip_b" {
  tags = merge(var.tags, {})
}

resource "aws_nat_gateway" "nat-gw-2b-public" {
  allocation_id = aws_eip.eip_b.id
  subnet_id     = aws_subnet.public_b.id
  tags          = merge(var.tags, {})
  depends_on    = [aws_eip.eip_b]
}


resource "aws_route_table" "rt_public_b" {
  vpc_id = aws_vpc.amc-vpc.id
  tags   = merge(var.tags, {})
}

resource "aws_route_table_association" "rt_assoc_public_b" {
  subnet_id      = aws_subnet.public_b.id
  route_table_id = aws_route_table.rt_public_b.id
}

resource "aws_route" "route_b" {
  route_table_id         = aws_route_table.rt_public_b.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.amc-vpc-igw.id
}

