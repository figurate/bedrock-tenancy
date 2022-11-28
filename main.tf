module "aws-secure-baseline" {
  source = "./aws-secure-baseline"
  count = var.aws_secure_baseline_enabled ? 1 : 0

  support_iam_role_principal_arns = var.aws_support_roles
  audit_log_bucket_name = var.aws_audit_log_bucket

  providers = {
    aws                = aws
    aws.ap-northeast-1 = aws.ap-northeast-1
    aws.ap-northeast-2 = aws.ap-northeast-2
    aws.ap-northeast-3 = aws.ap-northeast-3
    aws.ap-south-1     = aws.ap-south-1
    aws.ap-southeast-1 = aws.ap-southeast-1
    aws.ap-southeast-2 = aws.ap-southeast-2
    aws.ca-central-1   = aws.ca-central-1
    aws.eu-central-1   = aws.eu-central-1
    aws.eu-north-1     = aws.eu-north-1
    aws.eu-west-1      = aws.eu-west-1
    aws.eu-west-2      = aws.eu-west-2
    aws.eu-west-3      = aws.eu-west-3
    aws.sa-east-1      = aws.sa-east-1
    aws.us-east-1      = aws.us-east-1
    aws.us-east-2      = aws.us-east-2
    aws.us-west-1      = aws.us-west-1
    aws.us-west-2      = aws.us-west-2
  }
}

module "aws-alternate-contacts" {
  source = "./aws-alternate-contacts"
  count = var.aws_alternate_contacts_enabled ? 1 : 0

  providers = {
    aws = aws
  }

  operations_email_address = ""
  operations_name = ""
  operations_phone_number = ""
  operations_title = ""

  billing_email_address = ""
  billing_name = ""
  billing_phone_number = ""
  billing_title = ""

  security_email_address = ""
  security_name = ""
  security_phone_number = ""
  security_title = ""
  
}
