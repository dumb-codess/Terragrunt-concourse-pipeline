terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.38.0, < 6.0.0"

    }
  }

  backend "s3" {
    bucket         = "your-bucket-name"
    key            = "path/to/your/state-file.tfstate" # Replace with your chosen state file key
    region         = "your-aws-region"
    encrypt        = true
    dynamodb_table = "your-lock-table-name"
  }
}

