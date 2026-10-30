# state lock table for terraform
# Note: terraform supports native locking with s3 bucket.
# resource "aws_dynamodb_table" "locks" {
#   name         = "${local.service_name}-tf-locks"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"
  
#   attribute {
#     name = "LockID"
#     type = "S"
#   }
  
#   point_in_time_recovery { 
#     enabled = true 
#   }
# }
