

include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../modules/ec2-testInstance"
}

inputs = {
    instance_name = "Staging-TestInstance"
}