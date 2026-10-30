terraform {
  # Enable below code after state lock bucket is created.
  # backend "s3" {
  #   bucket         = "sk-aws-bootstrap-service-v1-tfstate"
  #   key            = "sk-aws-bootstrap-service-v1/terraform.tfstate"
  #   region         = "ap-south-1"
  #   # dynamodb_table = data.aws_ssm_parameter.state_lock_table.value ## latest terraform version supports native locking with s3 bucket.
  #   use_lockfile   = true
  #   encrypt        = true
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.13"
}
