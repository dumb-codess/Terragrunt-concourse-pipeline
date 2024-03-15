

include {
    path = find_in_parent_folders()
}


terraform {
  remote_state {
    backend = "s3"
    config = {
      bucket         = "terraform-test-state1"
      key            = "aws_key"
      region         = "ap-south-1"
      encrypt        = true
    }
  }
}

terraform {
    source = "../../modules/ec2-testInstance"
}

inputs = {
    instance_name = "Prod-TestInstance"
    bucket_name="terraform-test-state1"
}

