resource "aws_account_alternate_contact" "operations_contact" {
  alternate_contact_type = "OPERATIONS"
  email_address          = var.operations_email_address
  name                   = var.operations_name
  phone_number           = var.operations_phone_number
  title                  = var.operations_title
}

resource "aws_account_alternate_contact" "billing_contact" {
  alternate_contact_type = "BILLING"
  email_address          = var.billing_email_address
  name                   = var.billing_name
  phone_number           = var.billing_phone_number
  title                  = var.billing_title
}

resource "aws_account_alternate_contact" "security_contact" {
  alternate_contact_type = "SECURITY"
  email_address          = var.security_email_address
  name                   = var.security_name
  phone_number           = var.security_phone_number
  title                  = var.security_title
}
