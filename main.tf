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
  access_key_id  = var.access_key_id
  secret_key_id  = var.secret_key_id
  region         = "eu-west-2"
  endpoints {
    api  = "api.eu-west-2.outscale.com"
    }
  x509_cert_path = "/tmp/client-certificate.pem"
  x509_key_path  = "/tmp/client-key.pem"
}



resource "aws_instance" "app_server" {
  ami           = "XXX"
  instance_type = "XXX"

  tags = {
    Name = var.instance_name
  }
}
