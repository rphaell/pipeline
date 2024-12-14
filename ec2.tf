resource "aws_instance" "amb-prod3" {
  ami             = "ami-0e2c8caa4b6378d8c"
  instance_type   = "t2.micro"
  key_name        = "terraformkeypair"
  user_data       = file("script.sh")

  # Use the correct security group IDs you've found
  vpc_security_group_ids = [
    "sg-092146107363173b7",  # Correct ID for allow_ssh
    "sg-0a545046f38d4440f",  # Correct ID for allow_http
    "sg-06aece52ccf392d79"   # Correct ID for allow_egress
  ]

  tags = {
    Name = "amb-prod3"
  }
}
