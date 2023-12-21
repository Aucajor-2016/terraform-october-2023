resource "aws_key_pair" "lp-key" {
  name   = "my_laptop_key"
}
#  $ terraform import aws_key_pair.lp-key my-laptop-key

resource "aws_security_group" "sg1" {
  id = "sg-041954be7cb81ede4"
}
# $ terraform import aws_security_group.sg1 sg-041954be7cb81ede4



resource "aws_instance" "Elima" {
  ami = "ami-0ee4f2271a4df2d7d" #id = i-048f84de1a8721884
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
}

# $ terraform import aws_instance.Elima i-048f84de1a8721884
