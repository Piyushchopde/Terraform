terraform {
  backend "s3" {
    bucket = "bucket-state-store"
    key = "sbo/terraform.tfstate"
    dynamodb_table = "StateLock"
    region = "us-east-1"
    encrypt = true
    
  }
}
provider "aws" {
    region = "us-east-1"
  
}
resource "aws_s3_bucket" "state-file" {
    bucket = "bucket-state-store"
    

    versioning {
        enabled = true
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
    lifecycle {
      prevent_destroy = true
    }
    
}


resource "aws_dynamodb_table" "State-lock" {
    name = "StateLock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
    lifecycle {
      prevent_destroy = true
    }
}
