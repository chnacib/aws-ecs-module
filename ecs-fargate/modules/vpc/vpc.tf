resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name = "vpc-${var.proj_name}"
  }
}

resource "aws_subnet" "public-subnet-1" {
  cidr_block        = var.public_subnet_1_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-1a-pub-${var.proj_name}"
  }
}

resource "aws_subnet" "public-subnet-2" {
  cidr_block        = var.public_subnet_2_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.region}c"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-1c-pub-${var.proj_name}"
  }
}

resource "aws_subnet" "public-subnet-3" {
  cidr_block        = var.public_subnet_3_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.region}b"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-1b-pub-${var.proj_name}"
  }
}

resource "aws_subnet" "private-subnet-1" {
  cidr_block        = var.private_subnet_1_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.region}a"

  tags = {
    Name = "subnet-1a-priv-${var.proj_name}"
  }
}

resource "aws_subnet" "private-subnet-2" {
  cidr_block        = var.private_subnet_2_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.region}c"

  tags = {
    Name = "subnet-1c-priv-${var.proj_name}"
  }
}

resource "aws_subnet" "private-subnet-3" {
  cidr_block        = var.private_subnet_3_cidr
  vpc_id            = aws_vpc.main.id
  availability_zone = "${var.region}b"

  tags = {
    Name = "subnet-1b-priv-${var.proj_name}"
  }
}

resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "rt-pub-${var.proj_name}"
  }
}

resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "rt-priv-${var.proj_name}"
  }
}

resource "aws_route_table_association" "public-route-1-association" {
  route_table_id = aws_route_table.public-route-table.id
  subnet_id      = aws_subnet.public-subnet-1.id
}

resource "aws_route_table_association" "public-route-2-association" {
  route_table_id = aws_route_table.public-route-table.id
  subnet_id      = aws_subnet.public-subnet-2.id
}

resource "aws_route_table_association" "public-route-3-association" {
  route_table_id = aws_route_table.public-route-table.id
  subnet_id      = aws_subnet.public-subnet-3.id
}

resource "aws_route_table_association" "private-route-1-association" {
  route_table_id = aws_route_table.private-route-table.id
  subnet_id      = aws_subnet.private-subnet-1.id
}

resource "aws_route_table_association" "private-route-2-association" {
  route_table_id = aws_route_table.private-route-table.id
  subnet_id      = aws_subnet.private-subnet-2.id
}

resource "aws_route_table_association" "private-route-3-association" {
  route_table_id = aws_route_table.private-route-table.id
  subnet_id      = aws_subnet.private-subnet-3.id
}

resource "aws_eip" "elastic-ip-for-nat-gw" {
  vpc                       = true

  tags = {
    Name = "elastic-nat-${var.proj_name}"
  }

  depends_on = [aws_internet_gateway.terraform-igw]
}

resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.elastic-ip-for-nat-gw.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "nat-${var.proj_name}"
  }

}

resource "aws_route" "nat-gw-route" {
  route_table_id         = aws_route_table.private-route-table.id
  nat_gateway_id         = aws_nat_gateway.nat-gw.id
  destination_cidr_block = "0.0.0.0/0"
}


resource "aws_internet_gateway" "terraform-igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "igw-${var.proj_name}"
  }
}

resource "aws_route" "public-internet-igw-route" {
  route_table_id         = aws_route_table.public-route-table.id
  gateway_id             = aws_internet_gateway.terraform-igw.id
  destination_cidr_block = "0.0.0.0/0"
}

output "vpc_id" {
description = "ID of project VPC"
value = aws_vpc.main.id
}

output "public_subnet-1_id" {
  value = aws_subnet.public-subnet-1.id
}

output "public_subnet-2_id" {
  value = aws_subnet.public-subnet-2.id
}

output "public_subnet-3_id" {
  value = aws_subnet.public-subnet-3.id
}

output "private_subnet-1_id" {
  value = aws_subnet.private-subnet-1.id
}

output "private_subnet-2_id" {
  value = aws_subnet.private-subnet-2.id
}

output "private_subnet-3_id" {
  value = aws_subnet.private-subnet-3.id
}