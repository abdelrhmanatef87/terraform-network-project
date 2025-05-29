resource "aws_eip" "public1_eip" {

}



resource "aws_nat_gateway" "public1_Nat" {
  allocation_id = aws_eip.public1_eip.id
  subnet_id     = aws_subnet.public1.id



  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  #   depends_on = [aws_internet_gateway.public1_eip]
}