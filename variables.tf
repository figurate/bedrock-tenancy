variable "aws_secure_baseline_enabled" {
  description = "Enable secure baseline configuration for an AWS account"
  default = false
}

variable "aws_alternate_contacts_enabled" {
  description = "Enable alternate contacts configuration for an AWS account"
  default = false
}

variable "aws_support_roles" {
  description = "A list of IAM roles for operations support"
  default = []
}

variable "aws_audit_log_bucket" {
    description = "Name of an S3 bucket used for audit logs"
    default = "audit_logs"
}
