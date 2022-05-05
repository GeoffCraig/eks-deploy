resource "aws_s3_bucket" "terraform_state_builder" {
    bucket = "terraform-state-builder-9999"
    force_destroy = false
    tags = {
        Name = "terraform-state-builder"
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state_builder_sse_config" {
    bucket = aws_s3_bucket.terraform_state_builder.bucket
    rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
    }
}

resource "aws_s3_bucket_versioning" "terraform_state_builder_bucket_versioning" {
    bucket = aws_s3_bucket.terraform_state_builder.id
    versioning_configuration {
      status = "Enabled"
    }
}

resource "aws_dynamodb_table" "terraform_state_builder_dynamodb_lock" {
    name = "terraform_state_builder_lock"
    read_capacity = 10
    write_capacity = 10
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }
    tags = {
        Name = "terraform-state-builder-dynamodb-lock"
    }
}