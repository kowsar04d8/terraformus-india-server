provider "aws" {
  region = "ap-south-1"
  alias  = "india"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "india-server" {
  ami           = "ami-02e94b011299ef128"
  instance_type = "t2.micro"
  provider      = aws.india

  tags = {
    Name = "india-server"
  }

}

resource "aws_instance" "us-server" {
  ami           = "ami-05c13eab67c5d8861"
  instance_type = "t2.micro"

  tags = {
    Name = "us-server"
  }
}
