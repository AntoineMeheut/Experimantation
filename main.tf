terraform {
  required_providers {
    outscale = {
      source = "outscale-dev/outscale"
      version = "0.5.4"
    }
  }
}

provider "outscale" {
  # Configuration options
}



resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
