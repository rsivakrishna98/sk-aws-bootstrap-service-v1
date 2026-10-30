resource "aws_ssm_parameter" "state_bucket" {
  name  = "/${local.service_name}/state_bucket"
  type  = "String"
  value = aws_s3_bucket.terraform_state.bucket
  overwrite = true
}
