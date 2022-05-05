terraform {
    backend "s3" {
        bucket = "terraform-state-builder-9999"
        key = "dev/terraform.tfstate"
        region = "us-east-2"
        encrypt = "true"
        dynamodb_table = "terraform_state_builder_lock"
    }
}

provider "aws" {
  region = "us-east-2"
}
