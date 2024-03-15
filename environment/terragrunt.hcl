
generate "provider" {
    path = "provider.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
    provider "aws"{
        region = "ap-south-1"
    }
    EOF
}


inputs = {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  port1         = 443
  port2         = 80
}

