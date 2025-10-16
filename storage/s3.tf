    resource "aws_s3_bucket" "terraform_state_bucket" {
      bucket = "ashtfstatebucket16Oct25" # Replace with a globally unique name

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

      # Optional: Add a bucket policy for access control if needed
    }