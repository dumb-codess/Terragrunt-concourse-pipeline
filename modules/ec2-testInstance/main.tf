terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.38.0, < 6.0.0"

    }
  }

  backend "s3" {
    bucket         = "terraform-test-state1"
    key            = "aws_key" # Replace with your chosen state file key
    region         = "ap-south-1"
    encrypt        = true
  }
}
