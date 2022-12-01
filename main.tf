# module "aws-secure-baseline" {
#   source = "./aws-secure-baseline"
#   count = var.aws_secure_baseline_enabled ? 1 : 0

#   support_iam_role_principal_arns = var.aws_support_roles
#   audit_log_bucket_name = var.aws_audit_log_bucket

#   providers = {
#     aws                = aws
#     aws.ap-northeast-1 = aws.ap-northeast-1
#     aws.ap-northeast-2 = aws.ap-northeast-2
#     aws.ap-northeast-3 = aws.ap-northeast-3
#     aws.ap-south-1     = aws.ap-south-1
#     aws.ap-southeast-1 = aws.ap-southeast-1
#     aws.ap-southeast-2 = aws.ap-southeast-2
#     aws.ca-central-1   = aws.ca-central-1
#     aws.eu-central-1   = aws.eu-central-1
#     aws.eu-north-1     = aws.eu-north-1
#     aws.eu-west-1      = aws.eu-west-1
#     aws.eu-west-2      = aws.eu-west-2
#     aws.eu-west-3      = aws.eu-west-3
#     aws.sa-east-1      = aws.sa-east-1
#     aws.us-east-1      = aws.us-east-1
#     aws.us-east-2      = aws.us-east-2
#     aws.us-west-1      = aws.us-west-1
#     aws.us-west-2      = aws.us-west-2
#   }
# }

module "aws-alternate-contacts" {
  source = "./aws-alternate-contacts"
  count = var.aws_alternate_contacts_enabled ? 1 : 0

  providers = {
    aws = aws
  }

  operations_email_address = var.operations_email_address != null ? var.operations_email_address : "operations@example.com"
  operations_name = "Operations"
  operations_phone_number = var.operations_phone_number != null ? var.operations_phone_number : ""
  operations_title = ""

  billing_email_address = var.billing_email_address != null ? var.billing_email_address : "billing@example.com"
  billing_name = "Billing"
  billing_phone_number = var.billing_phone_number != null ? var.billing_phone_number : ""
  billing_title = ""

  security_email_address = var.security_email_address != null ? var.security_email_address : "security@example.com"
  security_name = "Security"
  security_phone_number = var.security_phone_number != null ? var.security_phone_number : ""
  security_title = ""
  
}
