data "aws_ami" "aws_linux_latest" {
    most_recent = true
    
    filter {
        name = "name"
        values = ["amzn2-ami-hvm-*-x86_64-ebs"]
        }
        
        owners = ["amazon"]
}

resource "aws_instance" "ec2-1" {
  ami           = data.aws_ami.aws_linux_latest.id
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
  vpc_security_group_ids = [aws_security_group.allow_ports.id]
  key_name = aws_key_pair.keys.key_name
  user_data = file("apache.sh")

  tags =  {
    Name = "Homework-ec2"
  }

}