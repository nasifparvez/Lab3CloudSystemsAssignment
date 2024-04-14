resource "aws_vpc" "blue" {
  cidr_block = var.blue_vpc_cidr_block
  tags = {
    Name = "Blue"
  }
}

resource "aws_internet_gateway" "blue" {
  vpc_id = aws_vpc.blue.id
}

resource "aws_vpc" "green" {
  cidr_block = var.green_vpc_cidr_block
  tags = {
    Name = "Green"
  }
}

resource "aws_internet_gateway" "green" {
  vpc_id = aws_vpc.green.id
}

resource "aws_subnet" "blue_1a" {
  vpc_id            = aws_vpc.blue.id
  cidr_block        = var.blue_subnet_cidr_blocks[0]
  availability_zone = var.blue_subnet_availability_zones[0]
}

resource "aws_subnet" "blue_1b" {
  vpc_id            = aws_vpc.blue.id
  cidr_block        = var.blue_subnet_cidr_blocks[1]
  availability_zone = var.blue_subnet_availability_zones[1]
}

resource "aws_subnet" "blue_1c" {
  vpc_id            = aws_vpc.blue.id
  cidr_block        = var.blue_subnet_cidr_blocks[2]
  availability_zone = var.blue_subnet_availability_zones[2]
}

resource "aws_subnet" "green_1a" {
  vpc_id            = aws_vpc.green.id
  cidr_block        = var.green_subnet_cidr_blocks[0]
  availability_zone = var.green_subnet_availability_zones[0]
}

resource "aws_subnet" "green_1b" {
  vpc_id            = aws_vpc.green.id
  cidr_block        = var.green_subnet_cidr_blocks[1]
  availability_zone = var.green_subnet_availability_zones[1]
}

resource "aws_subnet" "green_1c" {
  vpc_id            = aws_vpc.green.id
  cidr_block        = var.green_subnet_cidr_blocks[2]
  availability_zone = var.green_subnet_availability_zones[2]
}
