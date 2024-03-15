

include {
    path = find_in_parent_folders()
}



terraform {
    source = "../../modules/ec2-testInstance"
}

inputs = {
    instance_name = "Prod-TestInstance"
    bucket_name="terraform-test-state1"
}

