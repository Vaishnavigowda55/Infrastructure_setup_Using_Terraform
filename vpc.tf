#create VPC 
resource "aws_vpc" "my-vpc" {
    cidr_block = "10.0.0.0/16"
    tags= {
        Name="MyVpc"
    }
}

#Private subnet

resource "aws_subnet" "private_subnet" {
    cidr_block = "10.0.1.0/24"
    vpc_id = aws_vpc.my-vpc.id
    tags={
        Name="private-subnets"
    }
  
}

#public subnets
resource "aws_subnet" "public_subnet" {
    cidr_block = "10.0.2.0/24"
    vpc_id = aws_vpc.my-vpc.id
    map_public_ip_on_launch = true   # Enable public IP assignment
    tags={
        Name="public-subnets"
    }
  
}

#Interet Gateway 
resource "aws_internet_gateway" "myinternetgateway" {
    vpc_id = aws_vpc.my-vpc.id
    tags={
        Name="my-iG"
    }
  
}

#route table
resource "aws_route_table" "myroutetable" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block="0.0.0.0/0"
        gateway_id= aws_internet_gateway.myinternetgateway.id
    }
  
}

resource "aws_route_table_association" "myrouteasscia" {
    route_table_id = aws_route_table.myroutetable.id
    subnet_id = aws_subnet.public_subnet.id
  
}
