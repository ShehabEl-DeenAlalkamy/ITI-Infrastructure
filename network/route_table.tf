# Routing Tables
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.iti.id

  tags = {
    "Name" = "public"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.iti.id

  tags = {
    "Name" = "private"
  }
}

# Routes
resource "aws_route" "public" {
  route_table_id              = aws_route_table.public.id
  destination_cidr_block      = "0.0.0.0/0"
  destination_ipv6_cidr_block = "::/0"
  gateway_id                  = aws_internet_gateway.iti.id
}

resource "aws_route" "private" {
  route_table_id              = aws_route_table.private.id
  destination_cidr_block      = "0.0.0.0/0"
  destination_ipv6_cidr_block = "::/0"
  gateway_id                  = aws_internet_gateway.iti.id
}

# Route Tables Associations
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public3" {
  subnet_id      = aws_subnet.public3.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public4" {
  subnet_id      = aws_subnet.public4.id
  route_table_id = aws_route_table.public.id
}
