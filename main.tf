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
  access_key_id = var.access_key_id
  secret_key_id = var.secret_key_id
  region = var.region
  x509_cert_path = "/myrepository/certificate/client_ca.crt"
  x509_key_path = "/myrepository/certificate/client_ca.key"
}



resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
