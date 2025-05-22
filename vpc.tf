provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "ecs_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "ecs-vpc" }
}

resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.ecs_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags              = { Name = "ecs-public-a" }
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.ecs_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags              = { Name = "ecs-public-b" }
}
